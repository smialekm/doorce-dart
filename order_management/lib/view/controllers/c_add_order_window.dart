import 'package:flutter/material.dart';
import 'package:order_management/usecases/uc_add_order.dart';

class CAddOrderWindow{

  final UCAddOrder _ucAddOrder;

  const CAddOrderWindow(this._ucAddOrder);

  submitSelected(BuildContext context){
    _ucAddOrder.submitSelected(context);
  }

}