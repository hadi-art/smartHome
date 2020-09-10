import 'package:smart_home/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:jitsi_meet/jitsi_meet.dart';

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
      body: Container(
//        child: _buildWebView(),
        child: _joinMeeting(),
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

  _joinMeeting() async {
    try {
      var options = JitsiMeetingOptions()
        ..room = "wsh1670wla4883" // Required, spaces will be trimmed
        ..serverURL = "https://meet.jit.si"
        ..subject = "Intercom"
        ..userDisplayName = "hadi"
        ..userEmail = "hadidin4423@gmail.com"
        ..audioOnly = false
        ..audioMuted = false
        ..videoMuted = false;

      return await JitsiMeet.joinMeeting(options);
    } catch (error) {
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

