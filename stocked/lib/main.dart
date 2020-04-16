import 'package:flutter/material.dart';
import 'stocked.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData.dark()
            .copyWith(scaffoldBackgroundColor: Colors.blueAccent),
        home: Stocked(),
        debugShowCheckedModeBanner: false,
      ),
    );
