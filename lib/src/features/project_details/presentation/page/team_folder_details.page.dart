import 'package:flutter/material.dart';

class TeamFolderDetailsPage extends StatelessWidget {
  const TeamFolderDetailsPage({super.key, this.folderName});
  final String? folderName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Folder Details'),
      ),
      body: Placeholder(
        child: Text('folderNumber'),
      ),
    );
  }
}
