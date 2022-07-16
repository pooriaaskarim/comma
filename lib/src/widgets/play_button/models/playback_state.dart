import 'package:flutter/material.dart';

enum PlaybackState { play, pause, stop, loading, seeking }

extension PlaybackExtentrions on PlaybackState {
  static const Widget stopIcon = Icon(Icons.stop);
  static const Widget playIcon = Icon(Icons.play_arrow_sharp);
  static const Widget pauseIcon = Icon(Icons.pause);
  static const Widget loadingIcon = CircularProgressIndicator(
    color: Colors.white,
    strokeWidth: 2,
  );
  static const Widget seekingIcon = Icon(Icons.forward);

  String get state {
    switch (this) {
      case PlaybackState.play:
        return 'playing';
      case PlaybackState.pause:
        return 'paused';
      case PlaybackState.stop:
        return 'stopped';
      case PlaybackState.loading:
        return 'loading';
      case PlaybackState.seeking:
        return 'seeking';
    }
  }

  Widget get widget {
    switch (this) {
      case PlaybackState.play:
        return playIcon;
      case PlaybackState.pause:
        return pauseIcon;
      case PlaybackState.stop:
        return stopIcon;
      case PlaybackState.loading:
        return loadingIcon;
      case PlaybackState.seeking:
        return seekingIcon;
    }
  }
}
