import 'package:flutter/material.dart';

import '../dummy_jobs.dart';

class JobDetail extends StatelessWidget {
  const JobDetail({Key? key}) : super(key: key);
  static const routeName = '/job-detail';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final id = routeArgs['id'];
    final selectedJob = DUMMY_JOBS.firstWhere((job) => job.id == id);

    return Scaffold(
      appBar: AppBar(
        title: Text('Rozgaar'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Text(
              selectedJob.title,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/dp.jpg'),
                  radius: 60,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.corporate_fare),
                        Text(
                          selectedJob.organisation,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        Icon(Icons.add_location_rounded),
                        Text(
                          selectedJob.location,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
