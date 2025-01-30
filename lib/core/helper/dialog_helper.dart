import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DialogHelper {
  static showSnackbar({required BuildContext context, required String text}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }
  static showBottomDialog(){
    
  }
}