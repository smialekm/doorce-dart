import 'package:flutter/material.dart';
import 'package:order_management/services/i_order_list.dart';
import 'package:order_management/view/presenters/p_order_list_window.dart';

class UCShowOrderList{

  final POrderListWindow _pOrderListWindow;
  final IOrderList _iOrderList;

  const UCShowOrderList(this._pOrderListWindow, this._iOrderList);

  showOrderListSelected(BuildContext context){
    var orders = _iOrderList.getOrders();
    _pOrderListWindow.show(context, orders);
  }
}