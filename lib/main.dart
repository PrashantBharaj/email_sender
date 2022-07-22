import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  static String? encodeQueryParameters(Map<String, String> params) {
    return params.entries.map((MapEntry<String, String> e) =>  '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}').join('&');
  }
  static Uri createEmailUri(String name, String email, String link){
    return Uri(
      scheme: 'mailto',
      path: 'support@rangde.in',
      query: encodeQueryParameters(<String, String>{
        'subject': 'Delete my Account',
        'body': "Hello! My name is $name. I'd like to request my Rang De account to be deleted at the earliest. My email address is $email. I confirm that I've read and understand Rang De's policy regarding account deletion.\nlink: $link",
      }),
    );
  }

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
