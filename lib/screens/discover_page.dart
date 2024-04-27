import 'package:flutter/material.dart';

class DiscoverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Discover Page'),
      ),
      body: ListView(
        children: [
          UserTile(
            username: 'Saikat',
            lastLoginTime: 'Last seen 2 hours ago',
            isActive: false,
          ),
          UserTile(
            username: 'Sayed',
            lastLoginTime: 'Last seen 1 day ago',
            isActive: true,
          ),
          // Add more user tiles as needed
        ],
      ),
    );
  }
}

class UserTile extends StatelessWidget {
  final String username;
  final String lastLoginTime;
  final bool isActive;

  UserTile({required this.username, required this.lastLoginTime, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(username[0]),
      ),
      title: Text(username),
      subtitle: Text(lastLoginTime),
      trailing: isActive ? Icon(Icons.circle, color: Colors.green) : null,
    );
  }
}
