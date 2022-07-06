import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

import '../color/appcolor.dart';


class Inputdec1 {
  static InputDecoration inputDecoration = InputDecoration(

    hintStyle: TextStyle(color: AppColor.Blacktext),
    errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.white)
    ),

    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    ),

    filled: true,
    fillColor: AppColor.black2button,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
      borderSide: BorderSide(color: AppColor.black3button, width: 2),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
      borderSide: BorderSide(color: AppColor.black3button, width: 2),
    ),
  );
}


