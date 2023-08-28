import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Society Management'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Announcements',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  _buildAnnouncementItem(
                    context,
                    'Maintenance dues for the month of May are due on the 15th',
                    'May 1, 2023',
                  ),
                  _buildAnnouncementItem(
                    context,
                    'Community clean-up event on May 22nd, please participate',
                    'April 18, 2023',
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('View all announcements'),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Upcoming Events',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  _buildEventItem(
                    context,
                    'Society Picnic',
                    'June 12, 2023',
                    '10:00 AM - 3:00 PM',
                  ),
                  _buildEventItem(
                    context,
                    'Annual General Meeting',
                    'July 1, 2023',
                    '2:00 PM - 4:00 PM',
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('View all events'),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Quick Links',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  _buildQuickLinkItem(
                    context,
                    Icons.home,
                    'My Home',
                    () => print('Navigate to My Home'),
                  ),
                  _buildQuickLinkItem(
                    context,
                    Icons.payments,
                    'Pay Dues',
                    () => print('Navigate to Pay Dues'),
                  ),
                  _buildQuickLinkItem(
                    context,
                    Icons.contacts,
                    'Contact Us',
                    () => print('Navigate to Contact Us'),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Society News',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  _buildNewsItem(
                    context,
                    'New playground equipment installed in the park',
                    'April 15, 2023',
                  ),
                  _buildNewsItem(
                    context,
                    'New security measures implemented in the society',
                    'April 5, 2023',
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('View all news'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnnouncementItem(
      BuildContext context, String title, String date) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.announcement,
            color: Theme.of(context).accentColor,
          ),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  date,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEventItem(
      BuildContext context, String title, String date, String time) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.event,
            color: Theme.of(context).accentColor,
          ),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  '$date, $time',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickLinkItem(BuildContext context, IconData icon, String title,
      VoidCallback onPressed) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      child: ElevatedButton.icon(
          onPressed: onPressed,
          icon: Icon(icon),
          label: Text(title),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 16),
          )),
    );
  }

  Widget _buildNewsItem(BuildContext context, String title, String date) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.article,
            color: Theme.of(context).accentColor,
          ),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  date,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
