import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  final bool isDarkModeEnabled;
  final Function(bool) onDarkModeSwitchChanged;
  const DrawerWidget({
    super.key,
    required this.isDarkModeEnabled,
    required this.onDarkModeSwitchChanged,
  });

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.orange,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/kucing.jpg'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        'Elvin',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        '@elvinpratama',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(color: Colors.white54),
            ListTile(
              leading: const Icon(
                Icons.nightlight_round,
                color: Colors.white,
              ),
              title: const Text(
                'Dark Mode',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: Switch(
                value: widget.isDarkModeEnabled,
                onChanged: (value) {
                  widget.onDarkModeSwitchChanged(value);
                },
                activeColor: Colors.black,
              ),
              onTap: () {
                widget.onDarkModeSwitchChanged(!widget.isDarkModeEnabled);
              },
            ),
          ],
        ),
      ),
    );
  }
}
