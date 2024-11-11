import 'package:audio_service/audio_service.dart';
import 'package:auxzon/core/functions/audio_player.dart';
import 'package:auxzon/screens/home/layout/home_layout.dart';
import 'package:auxzon/screens/intro/intro_screen.dart';
import 'package:auxzon/screens/product/product_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

late AudioServiceSingleton audioServiceSingleton;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  audioServiceSingleton = AudioServiceSingleton();
  audioServiceSingleton.audioHandler = await AudioService.init(
    builder: () => AudioPlayerHandler(),
    config: const AudioServiceConfig(
      androidNotificationChannelId: 'com.ryanheise.myapp.channel.audio',
      androidNotificationChannelName: 'Audio playback',
      androidNotificationOngoing: true,
    ),
  );

  // Lock in portrait mode
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => GetStartedScreen(),
        '/home': (context) => const HomeLayout(),
        '/productDetails': (context) => const ProductDetailScreen(),
      },
    );
  }
}
//-------------------------------------------------------------------------
