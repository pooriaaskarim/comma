import 'package:flutter/material.dart';

import 'models/playback_state.dart';

class ToggleButton extends StatefulWidget {
  final PlaybackState initState;
  const ToggleButton({required this.initState, Key? key}) : super(key: key);

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  late PlaybackState _playbackState;
  late Color _buttonBGColor;
  late double _buttonSize;
  late ButtonStyle _buttonStyle;
  late double _buttonElevation;
  @override
  void initState() {
    _playbackState = widget.initState;
    _buttonSize = 100.0;
    _buttonElevation = 1.0;
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _buttonBGColor = Theme.of(context).primaryColorDark;
    _buttonStyle = ButtonStyle(
      alignment: Alignment.center,
      elevation: MaterialStateProperty.all(_buttonElevation),
      fixedSize: MaterialStateProperty.all(Size(_buttonSize, _buttonSize)),
      backgroundColor: MaterialStateProperty.all(_buttonBGColor),
      shape: MaterialStateProperty.all(const CircleBorder()),
    );
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) => toggleButton();

  Widget toggleButton() {
    return ElevatedButton(
      onPressed: _onPressed(),
      onLongPress: _onLongPress(),
      style: _buttonStyle,
      child: _playbackState.widget,
    );
  }

  void Function() _onPressed() {
    switch (_playbackState) {
      case (PlaybackState.play):
        return () => setState(() => _playbackState = PlaybackState.pause);
      case PlaybackState.pause:
        return () => setState(() => _playbackState = PlaybackState.play);
      case PlaybackState.stop:
        return () => setState(() => _playbackState = PlaybackState.play);
      case PlaybackState.loading:
        return () {};
      case PlaybackState.seeking:
        return () {};
      default:
        return () {};
    }
  }

  void Function() _onLongPress() {
    switch (_playbackState) {
      case (PlaybackState.play):
        return () => setState(() => _playbackState = PlaybackState.stop);
      case PlaybackState.pause:
        return () => setState(() => _playbackState = PlaybackState.stop);
      case PlaybackState.stop:
        return () => setState(() => _playbackState = PlaybackState.play);
      case PlaybackState.loading:
        return () {};
      case PlaybackState.seeking:
        return () {};
      default:
        return () {};
    }
  }
}
