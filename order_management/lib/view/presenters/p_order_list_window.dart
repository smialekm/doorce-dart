import 'package:flutter/material.dart';
import 'package:order_management/dto/order.dart';
import 'package:order_management/view/order_list_window.dart';

class POrderListWindow {
  final VOrderListWindowFactory _vOrderListWindowFactory;
  const POrderListWindow(this._vOrderListWindowFactory);
  show(BuildContext context, List<Order> orders) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => _vOrderListWindowFactory.get(orders)),
    );
  }
}
