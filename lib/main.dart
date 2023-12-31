import 'package:animation_liquid_swipe/routes/app_routes.dart';
import 'package:animation_liquid_swipe/themes/colors_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

import 'modules/agents/agents_binding.dart';
import 'modules/agents/agents_page.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'AgentX',
      theme: ThemeData(
        fontFamily: GoogleFonts.capriola().fontFamily,
      ).copyWith(
          colorScheme: ThemeData()
              .colorScheme
              .copyWith(primary: ThemeColor.primaryDark)),
      home: const AgentsPage(),
      initialBinding: AgentsBinding(),
      getPages: AppPages.pages,
    );
  }
}
