import 'package:flutter/material.dart';
import 'package:order_management/services/i_order_list.dart';
import 'package:order_management/view/presenters/p_order_list_window.dart';

class UCShowOrderList{

  late final POrderListWindow _pOrderListWindow;
  late final IOrderList _iOrderList;

  UCShowOrderList();
  
  void inject(POrderListWindow pOrderListWindow, IOrderList iOrderList){_pOrderListWindow = pOrderListWindow; _iOrderList = iOrderList;}

  showOrderListSelected(BuildContext context){
    var orders = _iOrderList.getOrders();
    _pOrderListWindow.show(context, orders);
  }
}