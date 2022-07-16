import 'package:flutter/material.dart';

import '../../infrastructure/utils/app_utils.dart';
import '../../widgets/play_button/models/playback_state.dart';
import '../../widgets/play_button/toggle_button.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late GlobalKey<ToggleButtonState> toggleButtonKey;
  late ToggleButton toggleButton;

  void _refresh() {
    setState(() {});
  }

  @override
  void initState() {
    toggleButtonKey = GlobalKey<ToggleButtonState>();
    toggleButton = ToggleButton(
      key: toggleButtonKey,
      initState: PlaybackState.stop,
      notifyParent: _refresh,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        margin: const EdgeInsets.all(AppUtils.mediumSize),
        child: Center(
          child: Column(
            verticalDirection: VerticalDirection.up,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              toggleButton,
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'currently ',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    TextSpan(
                      text: toggleButtonKey.currentState?.playbackState.state,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
