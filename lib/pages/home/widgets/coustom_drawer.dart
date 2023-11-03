import 'package:flutter/material.dart';
import 'package:news_app/pages/settings/settings_view.dart';

class CoustomDrawer extends StatelessWidget {
  final Function onCategoryClicked;

  const CoustomDrawer({super.key, required this.onCategoryClicked});

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
          GestureDetector(
            onTap: () {
              onCategoryClicked();
            },
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, SettingsView.routeName);
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Navigator(
                  child: Padding(
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
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
