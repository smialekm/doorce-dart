import 'package:flutter/material.dart';
import 'package:order_management/dto/order.dart';
import 'package:order_management/usecases/uc_add_order.dart';
import 'package:order_management/view/viewmodels/m_add_order_window.dart';

class CAddOrderWindow{

  final UCAddOrder _ucAddOrder;

  const CAddOrderWindow(this._ucAddOrder);

  submitSelected(BuildContext context, MAddOrderWindow model){
    Order order = model.getOrder();
    _ucAddOrder.submitSelected(context, order);
  }

}