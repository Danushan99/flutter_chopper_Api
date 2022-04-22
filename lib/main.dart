import 'package:flutter/material.dart';
import 'package:http_app/data/post_api_service.dart';
import 'package:http_app/homepage.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      builder: (_) => PostApiService.create(),
    dispose: (_,PostApiService service ) => service.client.dispose(),
      child: MaterialApp(
        title: 'myapp',
        home: HomePage(),

      ),
    );
  }
}
