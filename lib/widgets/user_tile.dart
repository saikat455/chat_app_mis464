import 'package:flutter/material.dart';

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
import 'package:flutter/material.dart';

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
