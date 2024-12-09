import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:order_management/usecases/uc_add_order.dart';
import 'package:order_management/usecases/uc_show_order_list.dart';

class CMainMenu{

  final BuildContext _context;
  late final UCShowOrderList _ucShowOrderList = _context.read();
  late final UCAddOrder _ucAddOrder = _context.read();

  CMainMenu(this._context);

  showOrderListSelected(BuildContext context){
    _ucShowOrderList.showOrderListSelected(context);
  }

  addOrderSelected(BuildContext context){
    _ucAddOrder.addOrderSelected(context);
  }

}