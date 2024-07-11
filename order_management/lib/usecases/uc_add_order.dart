import 'package:flutter/material.dart';
import 'package:order_management/services/i_order_list.dart';
import 'package:order_management/view/presenters/p_add_order_window.dart';

class UCAddOrder{

  final PAddOrderWindow _pAddOrderWindow;
  final IOrderList _iOrderList;

  const UCAddOrder(this._pAddOrderWindow, this._iOrderList);

  submitSelected(BuildContext context){
    var orders = _iOrderList.getOrders();
    _pAddOrderWindow.show(context, orders);
  }
}