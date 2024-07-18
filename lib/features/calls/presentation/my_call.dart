import 'package:flutter/material.dart';
import 'package:video_calling_app/auth/presentation/login_screen.dart';
import 'package:video_calling_app/constant/variable.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

//! GEGOCLOUD Link --> https://console.zegocloud.com/dashboard

class MyCall extends StatefulWidget {
  const MyCall({super.key, required this.callID});
  final String callID;

  @override
  State<MyCall> createState() => _MyCallState();
}

class _MyCallState extends State<MyCall> {
  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: CommonVariables
          .appID, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: CommonVariables
          .appSign, // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: userIdController.text,
      userName: nameController.text,
      callID: widget.callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
