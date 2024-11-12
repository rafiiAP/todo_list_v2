import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import 'package:todo_list/data/constant/config.dart';

import '../../data/constant/color.dart';
import '../../data/constant/enum.dart';
import '../function/main_function.dart';

part 'bottomsheet_widget.dart';
part 'text_widget.dart';
part 'button_widget.dart';
part 'padding_widget.dart';
part 'input_widget.dart';

MainWidget get W => MainWidget();

class MainWidget with BottomsheetWidget, TextWidget, ButtonWidget, PaddingWidget, InputWidget {
  static final MainWidget _instance = MainWidget._internal();

  MainWidget._internal();

  factory MainWidget() {
    return _instance;
  }
}
