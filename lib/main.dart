import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wollet/i18n/strings.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocaleSettings.setLocaleRaw(AppLocale.id.languageCode);
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(body: Center(child: Text(t.hello(name: 'JOHN')))),
    );
  }
}
