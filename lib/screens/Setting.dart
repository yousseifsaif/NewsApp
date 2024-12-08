import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';



class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  // State variables for settings
  bool _darkMode = false;
  String _language = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          // Dark mode toggle
          ListTile(
            leading: Icon(Icons.dark_mode),
            title: Text('Dark Mode'),
            trailing: Switch(
              value: _darkMode,
              onChanged: (value) {
                setState(() {
                  _darkMode = value;
                });
              },
            ),
          ),
          // Language dropdown
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Language'),
            trailing: DropdownButton<String>(
              value: _language,
              items: ['English', 'Spanish', 'French','Arabic']
                  .map((lang) => DropdownMenuItem(
                        value: lang,
                        child: Text(lang),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _language = value!;
                });
              },
            ),
          ),
          // Notifications option
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            onTap: () {
              // Navigate to notifications settings
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationSettingsPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

// Notification Settings Page
class NotificationSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification Settings'),
      ),
      body: Center(
        child: Text(
          'Notification settings content goes here.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
void _saveDarkMode(bool value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool('darkMode', value);
}

Future<bool> _loadDarkMode() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getBool('darkMode') ?? false; // Default is false
}