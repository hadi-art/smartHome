import 'package:smart_home/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:smart_home/main.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:jitsi_meet/feature_flag/feature_flag_enum.dart';
import 'package:jitsi_meet/jitsi_meet.dart';
import 'package:jitsi_meet/jitsi_meeting_listener.dart';
import 'package:jitsi_meet/room_name_constraint.dart';
import 'package:jitsi_meet/room_name_constraint_type.dart';
import 'dart:io';

class IntercomScreen extends StatefulWidget {
  @override
  _IntercomScreenState createState() => _IntercomScreenState();
}

class _IntercomScreenState extends State<IntercomScreen> {
  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text('Intercom'),
            Text('ok')
//            _buildWebView2(),
          ],
        ),
      ),
      body: Center(child: const Text('Answer the intercom call!')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          _joinMeeting();
        },
        child: Icon(Icons.call),
        backgroundColor: Colors.green,
      ),

    );
//    return Container(
//      child: Text('ss'),
//    );
  }

  Widget _buildWebView() {
    return WebView(
      javascriptMode: JavascriptMode.unrestricted,
      initialUrl: 'https://meet.jit.si/wsh1670wla4883',
    );
  }

  _joinMeeting(){
    try {

      Map<FeatureFlagEnum, bool> featureFlags = {
        FeatureFlagEnum.WELCOME_PAGE_ENABLED: false,
      };

      featureFlags[FeatureFlagEnum.CHAT_ENABLED] = true;
      // Here is an example, disabling features for each platform
      if (Platform.isAndroid) {
        // Disable ConnectionService usage on Android to avoid issues (see README)
        featureFlags[FeatureFlagEnum.INVITE_ENABLED] = false;
      } else if (Platform.isIOS) {
        // Disable PIP on iOS as it looks weird
        featureFlags[FeatureFlagEnum.INVITE_ENABLED] = false;
      }

//      print('aaaaaaaaaaaaaaaaaaaaaaaaaaa');
//      print(featureFlags);
//      print('bbbbbbbbbbbbbbbbbbbbbbbbbbbbb');
//      sleep(const Duration(seconds: 5));


      var options = JitsiMeetingOptions()
        ..room = "wsh1670wla4883" // Required, spaces will be trimmed
        ..serverURL = "https://meet.jit.si"
        ..subject = "Intercom"
        ..userDisplayName = "hadi"
        ..userEmail = "hadidin4423@gmail.com"
        ..audioOnly = false
        ..audioMuted = false
        ..videoMuted = false
        ..featureFlags.addAll(featureFlags);;

      return JitsiMeet.joinMeeting(options);
    } catch (error) {
      Navigator.pop(context);
      debugPrint("error: $error");
    }
  }

//  Widget _buildWebView2() {
//    return WebView(
//      javascriptMode: JavascriptMode.unrestricted,
//      initialUrl: 'https://meet.jit.si/wsh1670wla4883',
//    );
//  }

}

