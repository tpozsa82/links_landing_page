import 'package:flutter/material.dart';
import 'package:links_landing_page/constants.dart';

class ButtonSettingSection extends StatelessWidget {
  const ButtonSettingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            color: Colors.blueGrey[50],
            child: Column(
              children: [
                SizedBox(height: 40.0),
                Text(
                  'Your Links',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                SizedBox(height: 100.0),
                SizedBox(
                  width: constraints.maxWidth * 0.6,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                        Colors.tealAccent,
                      ),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Add button'),
                  ),
                ),
                SizedBox(height: 30.0),
                SizedBox(
                  child: SizedBox(
                    width: constraints.maxWidth * 0.6,
                    height: constraints.maxHeight * 0.5,
                    child: ReorderableListView(
                      children: [
                        for (var document in documents)
                          ListTile(
                            contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                            title: Text(document.title),
                            key: Key(document.title),
                            leading: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.edit),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.delete),
                                ),
                              ],
                            ),
                          ),
                      ],
                      onReorder: (oldIndex, newIndex) {},
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
