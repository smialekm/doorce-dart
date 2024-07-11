import 'package:flutter/material.dart';
import 'package:order_management/view/add_order_window.dart';

class PAddOrderWindow {
  late final VAddOrderWindowFactory _vAddOrderWindowFactory;

  PAddOrderWindow();
  
  void inject (VAddOrderWindowFactory vAddOrderWindowFactory){_vAddOrderWindowFactory = vAddOrderWindowFactory;}

  show(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => _vAddOrderWindowFactory.get()),
    );
  }

  close(BuildContext context){
    Navigator.pop(context);
  }
}
