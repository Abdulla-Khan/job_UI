import 'package:flutter/material.dart';
import 'package:job_ui/model/jobs.dart';
import 'package:job_ui/widgets/home_page_widgets/icon_text.dart';

class JobItem extends StatelessWidget {
  final Job job;
  final bool showTime;
  const JobItem({Key? key, required this.job, this.showTime = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.1)),
                  child: Image.asset(job.logUrl),
                ),
                SizedBox(width: 10),
                Text(
                  job.company,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Icon(
              job.isMark ? Icons.bookmark : Icons.bookmark_outline,
              color: job.isMark ? Theme.of(context).primaryColor : Colors.black,
            ),
          ],
        ),
        SizedBox(height: 15),
        Text(
          job.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconText(icon: Icons.location_on_outlined, text: job.location),
            if (showTime)
              IconText(icon: Icons.access_time_rounded, text: job.time)
          ],
        )
      ]),
    );
  }
}
