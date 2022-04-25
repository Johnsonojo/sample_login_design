import 'package:flutter/material.dart';
import 'package:sample_login_design/home/homepage.dart';
import 'package:sample_login_design/tracking/tracking_usage.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorObservers: <NavigatorObserver>[
        TrackingUsage().appAnalyticsObserver()
      ],
      home: const Homepage(),
    );
  }
}
