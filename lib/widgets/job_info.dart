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
        Navigator.of(context).pushNamed(
          '/job-detail',
          arguments: {
            'id': jobInfo.id,
          },
        );
      },
      style: ElevatedButton.styleFrom(
        elevation: 5,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0),
        ),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 5,
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/dp.jpg'),
              radius: 45,
            ),
            const SizedBox(
              width: 7,
            ),
            Column(
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
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(Icons.corporate_fare),
                    Text(
                      jobInfo.organisation,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.add_location_rounded),
                    Text(
                      jobInfo.location,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
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
