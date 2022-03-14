import 'package:flutter/material.dart';
import 'package:rozgaar_app/screens/account_page.dart';

import './screens/personalized_jobs.dart';
import './screens/profile_page.dart';
import './screens/job_detail.dart';

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
      home: ProfilePage(),
      routes: {
        ProfilePage.routeName: (context) => ProfilePage(),
        Account.routeName:(context) => Account(),
        PersonalizedJobs.routeName: (context) => PersonalizedJobs(),
        JobDetail.routeName: (context) => JobDetail(),

      },
    );
  }
}
