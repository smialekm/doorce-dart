import 'package:flutter/material.dart';
import 'package:order_management/dto/order.dart';
import 'package:order_management/view/controllers/c_add_order_window.dart';

class VAddOrderWindow extends StatelessWidget {
  VAddOrderWindow(this._cAddOrderWindow, {super.key});
  static const routeName = "/add_order";
  final CAddOrderWindow _cAddOrderWindow;
  String? _title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
            child: Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
              labelText: 'Title', labelStyle: TextStyle(fontSize: 18)),
          initialValue: "",
          onSaved: (val) => _title = val,
        ),
        ElevatedButton(
          onPressed: () => _cAddOrderWindow.submitSelected,
          child: const Text('Submit'),
        ),
      ],
    )));
  }
}

class VAddOrderWindowFactory {
  const VAddOrderWindowFactory(this._cAddOrderWindow);
  final CAddOrderWindow _cAddOrderWindow;
  VAddOrderWindow get(List<Order> orders) => VAddOrderWindow(_cAddOrderWindow);
}
