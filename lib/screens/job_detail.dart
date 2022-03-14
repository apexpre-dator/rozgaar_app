import 'package:flutter/material.dart';

class JobDetail extends StatelessWidget {
  const JobDetail({Key? key}) : super(key: key);
  static const routeName = '/job-detail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rozgaar'),
      ),
      body: Center(
        child: Text(
          'Job-Detail',
        ),
      ),
    );
  }
}
