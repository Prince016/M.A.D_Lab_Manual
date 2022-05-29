import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:music_app/config/themes/color_theme.dart';
// import 'package:music_app/services/post_operations.dart';
import '/screens/list_of_songs.dart';
import 'config/themes/color_theme.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(MaterialApp(
    theme: getColorTheme(),
    title: 'Music App 2022',
    home: ListOfSongs(),
  ));
}
