import 'package:flutter/material.dart';
import 'package:order_management/dto/order.dart';
import 'package:order_management/view/add_order_window.dart';

class PAddOrderWindow {
  final VAddOrderWindowFactory _vAddOrderWindowFactory;

  const PAddOrderWindow(this._vAddOrderWindowFactory);

  show(BuildContext context, List<Order> orders) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => _vAddOrderWindowFactory.get(orders)),
    );
  }
}
