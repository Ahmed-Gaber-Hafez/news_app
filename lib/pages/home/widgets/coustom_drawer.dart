import 'package:flutter/material.dart';

class CoustomDrawer extends StatelessWidget {
  const CoustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var theme = Theme.of(context);

    return Container(
      width: mediaQuery.size.width * 0.7,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: mediaQuery.size.width * 0.7,
            height: mediaQuery.size.height * 0.15,
            color: theme.primaryColor,
            child: const Text(
              "News App",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
              children: [
                Icon(Icons.settings, size: 38),
                SizedBox(width: 10),
                Text(
                  "settings",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
