import 'package:flutter/material.dart';
import 'package:order_management/usecases/uc_add_order.dart';
import 'package:order_management/usecases/uc_show_order_list.dart';

class CMainMenu{

  final UCShowOrderList _ucShowOrderList;
  final UCAddOrder _ucAddOrder;

  const CMainMenu(this._ucShowOrderList, this._ucAddOrder);

  showOrderListSelected(BuildContext context){
    _ucShowOrderList.showOrderListSelected(context);
  }

  addOrderSelected(BuildContext context){
    _ucAddOrder.submitSelected(context);
  }

}