import 'package:flutter/material.dart';
import 'package:order_management/dto/order.dart';
import 'package:order_management/usecases/uc_add_order.dart';

class CAddOrderWindow{

  late final UCAddOrder _ucAddOrder;
  String? _title;

  CAddOrderWindow();
  
  void inject(UCAddOrder ucAddOrder){_ucAddOrder = ucAddOrder;}

  submitSelected(BuildContext context){
    Order order = Order(_title ?? "");
    _ucAddOrder.submitSelected(context, order);
  }

  void setTitle(String? title) => _title = title;

}