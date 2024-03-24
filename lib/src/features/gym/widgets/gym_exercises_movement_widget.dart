import 'package:flutter/material.dart';

class GymExercisesMovementWidget extends StatelessWidget {
  const GymExercisesMovementWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: ImageIcon(AssetImage("images/flutter.png")),
              title: Text(
                'Abs',
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text('28 Exercises'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Next'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
