import 'dart:async';
import 'package:beauty_booking_app/agora/utills/setting.dart';
import 'package:flutter/material.dart';
import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:get/get.dart';

class CallingPage extends StatefulWidget {
  final String? channel;
  final ClientRoleType? role;
  const CallingPage({Key? key, this.channel, this.role}) : super(key: key);

  @override
  State<CallingPage> createState() => _CallingPageState();
}

class _CallingPageState extends State<CallingPage> {
  final _user = <int>[];
  final infoString = <String>[];
  bool muted = false;
  bool viewPanel = false;
  late RtcEngine engine;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    intialize();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    infoString.clear();
    engine.leaveChannel();
  }

  Future<void> intialize() async {
    if (appId.isEmpty) {
      setState(() {
        infoString.add("APP_Id missig,please provide app id in setting.dart");
        infoString.add("Agora Engine is not started");
      });
      return;
    }
// intitAgoraRtcEgine
    engine = createAgoraRtcEngine();
    await engine.initialize(const RtcEngineContext(
      appId: appId,
      channelProfile: ChannelProfileType.channelProfileLiveBroadcasting,
    ));
    engine.enableAudio();
    engine.enableVideo();
    engine.setChannelProfile(ChannelProfileType.channelProfileLiveBroadcasting);
    engine.setClientRole(role: widget.role!);
    // agoraEventHandler
    addAgoraEventHandler();
    VideoDimensions dimensions = VideoDimensions(width: 1920, height: 1020);
    VideoEncoderConfiguration configuration =
        VideoEncoderConfiguration(dimensions: dimensions);
    engine.joinChannel(
        token: appToken, channelId: "", uid: 0, options: ChannelMediaOptions());

    await engine.setVideoEncoderConfiguration(configuration);
  }

  addAgoraEventHandler() {
    engine.registerEventHandler(
      RtcEngineEventHandler(
        onJoinChannelSuccess: (RtcConnection connection, int elapsed) {
          setState(() {
            infoString.add("local user ${connection.localUid} joined");
          });
        },
        onUserJoined: (RtcConnection connection, int remoteUid, int elapsed) {
          debugPrint("remote user $remoteUid joined");
          setState(() {
            infoString.add("remote user $remoteUid joined");
          });
        },
        onUserOffline: (RtcConnection connection, int remoteUid,
            UserOfflineReasonType reason) {
          debugPrint("remote user $remoteUid left channel");
          setState(() {
            infoString.add("remote user $remoteUid left channel");
          });
        },
        onTokenPrivilegeWillExpire: (RtcConnection connection, String token) {
          debugPrint(
              '[onTokenPrivilegeWillExpire] connection: ${connection.toJson()}, token: $token');
        },
      ),
    );
  }

  Widget row() {
    final List<StatefulWidget> list = [];
    if (widget.role == ClientRoleType.clientRoleBroadcaster) {
      list.add(AgoraVideoView(
        controller: VideoViewController(
          rtcEngine: engine,
          canvas: const VideoCanvas(uid: 0),
        ),
      ));
      for (var uid in _user) {
        list.add(AgoraVideoView(
          controller: VideoViewController.remote(
            rtcEngine: engine,
            canvas: VideoCanvas(uid: uid),
            connection: RtcConnection(channelId: widget.channel),
          ),
        ));
      }
    }
    final views = list;
    return Column(
        children: List.generate(
            views.length, (index) => Expanded(child: views[index])));
  }

  Widget toolBar() {
    if (widget.role == ClientRoleType.clientRoleAudience) return SizedBox();
    return Container(
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.symmetric(vertical: 48),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          RawMaterialButton(
            onPressed: () {
              setState(() {
                muted = !muted;
              });
              engine.muteLocalAudioStream(muted);
            },
            child: Icon(
              muted ? Icons.mic_off : Icons.mic,
              color: muted ? Colors.white : Colors.blue,
              size: 16,
            ),
            shape: CircleBorder(),
            elevation: 5,
            fillColor: muted ? Colors.blueAccent : Colors.white,
          ),
          RawMaterialButton(
            onPressed: () {
              Get.back();
            },
            child: Icon(
              Icons.call_end,
              color: Colors.white,
              size: 24,
            ),
            shape: CircleBorder(),
            elevation: 5,
            fillColor: Colors.red,
          ),
          RawMaterialButton(
            onPressed: () {
              engine.switchCamera();
            },
            child: Icon(
              Icons.cameraswitch,
              color: Colors.blue,
              size: 24,
            ),
            shape: CircleBorder(),
            elevation: 5,
            fillColor: Colors.white,
          )
        ],
      ),
    );
  }

  Widget panel() {
    return Visibility(
        child: Container(
      padding: EdgeInsets.symmetric(vertical: 48),
      alignment: Alignment.bottomCenter,
      child: FractionallySizedBox(
        heightFactor: 0.5,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 48),
          child: ListView.builder(
              reverse: true,
              itemCount: infoString.length,
              itemBuilder: (contetxt, index) {
                return Text(infoString[index]);
              }),
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agora"),
        centerTitle: true,
        actions: [IconButton(onPressed: (){
          setState(() {
            viewPanel=!viewPanel;
          });
        }, icon: Icon(Icons.info_outline))],
        backgroundColor: Colors.black,

      ),
      body: Stack(children: [
        row(),
        panel(),
        toolBar()
      ],),
    );
  }
}
