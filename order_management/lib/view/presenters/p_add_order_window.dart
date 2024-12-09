import 'package:flutter/material.dart';
import 'package:order_management/view/add_order_window.dart';
import 'package:order_management/view/viewmodels/m_add_order_window.dart';

class PAddOrderWindow {
  final VAddOrderWindowFactory _vAddOrderWindowFactory;

  const PAddOrderWindow(this._vAddOrderWindowFactory);

  show(BuildContext context){
    MAddOrderWindow model = MAddOrderWindow();
    
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => _vAddOrderWindowFactory.get(model)),
    );
  }

  close(BuildContext context){
    Navigator.pop(context);
  }
}
