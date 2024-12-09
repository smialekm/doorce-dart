import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:order_management/usecases/uc_add_order.dart';
import 'package:order_management/usecases/uc_show_order_list.dart';

class CMainMenu{

  const CMainMenu();

  showOrderListSelected(BuildContext context){
    UCShowOrderList ucs = context.read();
    ucs.showOrderListSelected(context);
  }

  addOrderSelected(BuildContext context){
    UCAddOrder uca = context.read();
    uca.addOrderSelected(context);
  }

}