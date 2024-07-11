import 'package:flutter/material.dart';
import 'package:order_management/usecases/uc_add_order.dart';
import 'package:order_management/usecases/uc_show_order_list.dart';

class CMainMenu{

  late final UCShowOrderList _ucShowOrderList;
  late final UCAddOrder _ucAddOrder;

  CMainMenu();
  void inject(UCShowOrderList ucShowOrderList, UCAddOrder ucAddOrder){_ucShowOrderList = ucShowOrderList; _ucAddOrder = ucAddOrder;}

  showOrderListSelected(BuildContext context){
    _ucShowOrderList.showOrderListSelected(context);
  }

  addOrderSelected(BuildContext context){
    _ucAddOrder.addOrderSelected(context);
  }

}