// Audio Service Singleton
import 'package:audio_service/audio_service.dart';
import 'package:just_audio/just_audio.dart';

class AudioServiceSingleton {
  static final AudioServiceSingleton _instance =
      AudioServiceSingleton._internal();
  late AudioHandler audioHandler;

  factory AudioServiceSingleton() {
    return _instance;
  }

  AudioServiceSingleton._internal();
}

// Custom AudioPlayerHandler class that extends BaseAudioHandler
class AudioPlayerHandler extends BaseAudioHandler {
  final AudioPlayer _player = AudioPlayer();
  String? _currentAssetPath;

  AudioPlayerHandler() {
    _init();
  }

  Future<void> _init() async {
    // Listen for the player's playback state changes
    _player.playbackEventStream.listen((event) {
      if (event.processingState == ProcessingState.completed) {
        _resetPlayer();
      }
    });
  }

  Future<void> _setAudioSource(String assetPath) async {
    _currentAssetPath = assetPath;
    await _player.setAudioSource(AudioSource.asset(assetPath));
  }

  void _resetPlayer() {
    _player.seek(Duration.zero); // Seek to the beginning
    playbackState.add(playbackState.value.copyWith(
      playing: false,
      controls: [MediaControl.play], // Update controls
    ));
  }

  // New method for playing specific audio from an asset
  Future<void> playAudioFromAsset(String assetPath) async {
    // Stop current audio before starting a new one
    if (_player.playing) {
      await stop(); // Stop current audio if it's playing
    }

    try {
      await _setAudioSource(assetPath);
      await _player.play();
      playbackState.add(playbackState.value.copyWith(
        playing: true,
        controls: [MediaControl.pause, MediaControl.stop],
      ));
    } catch (e) {
      print("Error playing audio: $e");
    }
  }

  // Override the play method to adhere to BaseAudioHandler's signature
  @override
  Future<void> play() async {
    if (_currentAssetPath != null) {
      await _player.play();
    }
  }

  @override
  Future<void> pause() async {
    await _player.pause();
    playbackState.add(playbackState.value.copyWith(
      playing: false,
      controls: [MediaControl.play, MediaControl.stop],
    ));
  }

  @override
  Future<void> stop() async {
    await _player.stop();
    _resetPlayer(); // Reset player state when stopped
  }
}

