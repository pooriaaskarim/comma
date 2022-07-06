import 'package:flutter/material.dart';

import '../../widgets/play_button/models/playback_state.dart';
import '../../widgets/play_button/toggle_button.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.grey,
      body: Center(
        child: Wrap(
          verticalDirection: VerticalDirection.down,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'currently ',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  const TextSpan(text: 'playing!')
                ],
              ),
            ),
            const ToggleButton(
              initState: PlaybackState.stop,
            )
          ],
        ),
      ),
    );
  }
}
