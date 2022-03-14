import 'package:flutter/material.dart';

import '../models/job.dart';

class JobInfo extends StatelessWidget {
  final Job jobInfo;

  JobInfo({
    required this.jobInfo,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamed('/job-detail');
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: Theme.of(context).primaryColor,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              jobInfo.title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              jobInfo.organisation,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              jobInfo.location,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
