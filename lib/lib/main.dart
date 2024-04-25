import 'package:chat/lib/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'config/app_themes.dart';
import 'features/dashboard/chat/chat_history.dart';
import 'features/landing/presentation/screens/splash_screen.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDir = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);

  Hive.registerAdapter(ChatHistoryAdapter());
  await Hive.openBox<ChatHistory>(kHiveBox);


  // Register the adapter
  runApp(const MyChatGpt());
}

class MyChatGpt extends StatelessWidget {
  const MyChatGpt({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.themeData(context: context, isDarkTheme: true),
      home: const SplashScreen(),
    );
  }
}



