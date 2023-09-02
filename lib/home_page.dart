import 'package:flutter/material.dart';
import 'app_bar.dart';
import 'body.dart';

class MyHomePage extends StatelessWidget {

  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
    appBar: CustomAppBar(),
     body: MyBody(),
    );

  }

}

