import 'package:flutter/material.dart';

class SocietyDashboard extends StatelessWidget {
  const SocietyDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Society Metrics
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Society Metrics',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _MetricCard(
                    title: 'Residents',
                    count: 500,
                    icon: Icons.people,
                    color: Colors.green,
                  ),
                  _MetricCard(
                    title: 'Visitors',
                    count: 50,
                    icon: Icons.person_outline,
                    color: Colors.orange,
                  ),
                  _MetricCard(
                    title: 'Workers',
                    count: 100,
                    icon: Icons.work_outline,
                    color: Colors.blue,
                  ),
                  _MetricCard(
                    title: 'Security Staff',
                    count: 10,
                    icon: Icons.security_outlined,
                    color: Colors.red,
                  ),
                ],
              ),
            ),

            // Parking Availability
            Padding(
              padding: const EdgeInsets.all(26.0),
              child: Text(
                'Parking Availability',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Visitor Parking',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Text(
                        'Available',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Resident Parking',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Text(
                        'Limited Availability',
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),

            // Maintenance Due
            Padding(
              padding: const EdgeInsets.all(26.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Maintenance Due',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        color: Colors.red.shade300),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Your maintenance is due on May 30th',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Pay Now'),
                  ),
                ],
              ),
            ),

            // Recent Announcements
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recent Announcements',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  _AnnouncementCard(
                    title: 'Annual General Meeting',
                    subtitle: 'May 15th, 2023 at 3:00pm',
                    icon: Icons.event,
                  ),
                  SizedBox(height: 8.0),
                  _AnnouncementCard(
                    title: 'New Parking Policy',
                    subtitle: 'Effective June 1st, 2023',
                    icon: Icons.local_parking,
                  ),
                  SizedBox(height: 8.0),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('View All Announcements'),
                  ),
                ],
              ),
            ),

            // Upcoming Events
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Upcoming Events',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  _EventCard(
                    title: 'Summer Picnic',
                    subtitle: 'July 10th, 2023 at 12:00pm',
                    icon: Icons.emoji_food_beverage,
                  ),
                  SizedBox(height: 8.0),
                  _EventCard(
                    title: 'Fitness Bootcamp',
                    subtitle: 'Every Saturday at 7:00am',
                    icon: Icons.fitness_center,
                  ),
                  SizedBox(height: 8.0),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('View All Events'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MetricCard extends StatelessWidget {
  final String title;
  final int count;
  final IconData icon;
  final Color color;

  const _MetricCard({
    Key? key,
    required this.title,
    required this.count,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      padding: EdgeInsets.all(16.0),
      width: 180.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 8.0,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 48.0,
            color: color,
          ),
          SizedBox(height: 16.0),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            '$count',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),
          ),
        ],
      ),
    );
  }
}

class _AnnouncementCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const _AnnouncementCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 8.0,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 48.0,
            color: Colors.blue,
          ),
          SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _EventCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const _EventCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 8.0,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 48.0,
            color: Colors.orange,
          ),
          SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
