import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage2 extends StatefulWidget {
  const SettingsPage2({Key? key}) : super(key: key);

  @override
  State<SettingsPage2> createState() => _SettingsPage2State();
}

class _SettingsPage2State extends State<SettingsPage2> {
  bool _isDark = false;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: _isDark ? ThemeData.dark() : ThemeData.light(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Settings"),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(CupertinoIcons.person_alt_circle, size: 40,),
            ),
          ],
        ),
        body: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 400),
            child: ListView(
              children: [
                Divider(),
                _SingleSection(
                  title: "Account Settings",
                  children: [
                    const _CustomListTile(
                        title: "Edit profile",),

                    const _CustomListTile(
                        title: "Change password",
                        ),

                    const _CustomListTile(
                      title: "Language",),

                    const _CustomListTile(
                      title: "Push notifications"),

                    _CustomListTile(
                        title: "Dark Mode",
                        trailing: Switch(
                            value: _isDark,
                            onChanged: (value) {
                              setState(() {
                                _isDark = value;
                              });
                            })),
                  ],
                ),
                const Divider(),
                const _SingleSection(
                  title: "More",
                  children: [
                    _CustomListTile(
                        title: "About us"),
                    _CustomListTile(
                        title: "Privacy policy"),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CustomListTile extends StatelessWidget {
  final String title;
  final Widget? trailing;
  const _CustomListTile(
      {Key? key, required this.title, this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: trailing ?? const Icon(CupertinoIcons.forward, size: 18),
      onTap: () {},
    );
  }
}

class _SingleSection extends StatelessWidget {
  final String? title;
  final List<Widget> children;
  final Widget? trailing;
  const _SingleSection({
    Key? key,
    this.title,
    required this.children,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title!,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        Column(
          children: children,

        ),
      ],
    );
  }
}