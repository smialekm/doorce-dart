import 'package:flutter/material.dart';
import 'package:order_management/dto/order.dart';
import 'package:order_management/view/order_list_window.dart';

class POrderListWindow {
  late final VOrderListWindowFactory _vOrderListWindowFactory;
  
  POrderListWindow();
  
  void inject(VOrderListWindowFactory vOrderListWindowFactory){_vOrderListWindowFactory = vOrderListWindowFactory;}
  
  show(BuildContext context, List<Order> orders) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => _vOrderListWindowFactory.get(orders)),
    );
  }
}
