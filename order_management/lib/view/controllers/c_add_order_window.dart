import 'package:flutter/material.dart';
import 'package:order_management/dto/order.dart';
import 'package:order_management/usecases/uc_add_order.dart';
import 'package:order_management/view/viewmodels/m_add_order_window.dart';
import 'package:provider/provider.dart';

class CAddOrderWindow{

  const CAddOrderWindow();

  submitSelected(BuildContext context, MAddOrderWindow model){
    UCAddOrder uca = context.read();
    Order order = model.getOrder();
    uca.submitSelected(context, order);
  }

}