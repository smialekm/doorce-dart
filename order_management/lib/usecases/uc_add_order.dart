import 'package:flutter/material.dart';
import 'package:order_management/dto/order.dart';
import 'package:order_management/services/i_order_list.dart';
import 'package:order_management/view/presenters/p_add_order_window.dart';

class UCAddOrder{

  late final PAddOrderWindow _pAddOrderWindow;
  late final IOrderList _iOrderList;

  UCAddOrder();
  
  void inject(PAddOrderWindow pAddOrderWindow, IOrderList iOrderList){_pAddOrderWindow = pAddOrderWindow; _iOrderList = iOrderList;}

  addOrderSelected(BuildContext context){
    _pAddOrderWindow.show(context);
  }
  
  submitSelected(BuildContext context, Order order){
    _iOrderList.addOrder(order);
    _pAddOrderWindow.close(context);
  }
}