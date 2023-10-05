import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ignore: must_be_immutable
class MyWebView extends StatelessWidget {
  
  MyWebView({super.key, required this.url});
  late String url = "https://khandokeranan.com";

  @override
  Widget build(BuildContext context) {
    WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..loadRequest(Uri.parse(url));
    return Scaffold(
      appBar: AppBar(
        title: Text("Beneath The Surface", style: TextStyle(
                  fontFamily: GoogleFonts.lobster().fontFamily,
                  fontSize: 24,
                )),),
      body: WebViewWidget(controller: controller),
    );
  }
}