import 'package:flutter/material.dart';

import '../widgets/job_info.dart';
import '../dummy_jobs.dart';
import '../models/job.dart';

class PersonalizedJobs extends StatelessWidget {
  PersonalizedJobs({Key? key}) : super(key: key);
  static const routeName = '/personalized-jobs';

  final List<Job> job_list = DUMMY_JOBS;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rozgaar'),
      ),
      body: ListView.builder(
          itemCount: job_list.length,
          itemBuilder: (BuildContext ctx, index) {
            return Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  JobInfo(jobInfo: job_list[index]),
                ],
              ),
            );
          }),
    );
  }
}
