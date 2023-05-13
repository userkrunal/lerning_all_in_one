import 'package:flutter/material.dart';
import 'package:lerning_all_in_one/provider/one_provider.dart';
import 'package:lerning_all_in_one/view/all_in_one_app.dart';
import 'package:lerning_all_in_one/view/web_screen.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main()
{
  runApp(
    Sizer(builder: (context, orientation, deviceType) {
      return ChangeNotifierProvider(
        create: (context) => LerningProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/':(context) => AllInOneApp(),
            'screen':(context) => WebScreen(),
          },
        ),
      );
    },)
  );
}