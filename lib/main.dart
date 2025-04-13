import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wollet/i18n/strings.g.dart';
import 'package:wollet/ui/screen/addtransaction/screen_addtransaction.dart';
import 'package:wollet/ui/screen/main/screen_main.dart';

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
      theme: ThemeData(primarySwatch: Colors.red, useMaterial3: true),
      routes: {
        ScreenMain.routeName: (context) => const ScreenMain(),
        ScreenAddtransaction.routeName:
            (context) => const ScreenAddtransaction(),
      },
    );
  }
}
