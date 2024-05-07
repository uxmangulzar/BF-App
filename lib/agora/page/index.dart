import 'dart:developer';

import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:beauty_booking_app/agora/page/calling.dart';
import 'package:beauty_booking_app/agora/page/testfile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final _textController = TextEditingController();
  bool _validator = false;
  ClientRoleType? role = ClientRoleType.clientRoleBroadcaster;
  @override
  void dispose() {
    _textController.clear();

    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Agora"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Icon(
            Icons.call,
            size: 120,
          ),
          TextFormField(
            controller: _textController,
            decoration: InputDecoration(
                hintText: "channel name",
                errorText: _validator ? "channel name required" : null),
          ),
          RadioListTile(
              title: Text("Broadcast"),
              value: ClientRoleType.clientRoleBroadcaster,
              groupValue: role,
              onChanged: (ClientRoleType? nRole) {
                setState(() {
                  role = nRole;
                });
              }),
          RadioListTile(
              title: const Text("Audience"),
              value: ClientRoleType.clientRoleAudience,
              groupValue: role,
              onChanged: (ClientRoleType? nRole) {
                setState(() {
                  role = nRole;
                });
              }),
          ElevatedButton(onPressed: true? join:(){
            Get.to(()=>TestApp(channel: _textController.text,));
          }, child: const Text("Join"))
        ],
      ),
    );
  }

  Future<void> join() async {
    setState(() {
      _textController.text.isEmpty ? _validator = true : _validator = false;
    });
    if (_textController.text.isNotEmpty) {
      await _handleCameraAndMic(Permission.camera);
      await _handleCameraAndMic(Permission.microphone);
      Get.to(()=>CallingPage(channel: _textController.text.trim(),role: role,));
    }
  }
  Future<void>  _handleCameraAndMic(Permission permission)async {
    final status =permission.request();
    log(status.toString());
  }
}
