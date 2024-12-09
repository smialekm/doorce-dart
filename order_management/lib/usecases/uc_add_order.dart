import 'package:flutter/material.dart';
import 'package:order_management/dto/order.dart';
import 'package:order_management/services/i_order_list.dart';
import 'package:order_management/view/presenters/p_add_order_window.dart';

class UCAddOrder{

  final PAddOrderWindow _pAddOrderWindow;
  final IOrderList _iOrderList;

  const UCAddOrder(this._pAddOrderWindow, this._iOrderList);

  addOrderSelected(BuildContext context){
    _pAddOrderWindow.show(context);
  }
  
  submitSelected(BuildContext context, Order order){
    _iOrderList.addOrder(order);
    _pAddOrderWindow.close(context);
  }
}