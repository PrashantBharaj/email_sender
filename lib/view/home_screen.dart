

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utility/uri_helper.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: (){
                final uri = createEmailUri("Prashant Singh", "prashant.bharaj@gmail.com", "https://www.rangde.in");
                launchUrl(uri);
              },
              child: const Text("send mail", style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}