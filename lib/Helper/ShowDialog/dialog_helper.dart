import 'package:flutter/material.dart';
import 'package:flutter_template/Helper/ShowDialog/loading_dialog.dart';

class DialogHelper {
  static loadingDialog(context) => showDialog(context:context, barrierDismissible: false, builder: (context) => LoadingDialog());
}