import 'package:flutter/material.dart';
import 'package:order_management/view/controllers/c_add_order_window.dart';
import 'package:order_management/view/viewmodels/m_add_order_window.dart';

class VAddOrderWindow extends StatelessWidget {
  const VAddOrderWindow(this._cAddOrderWindow, this._model, {super.key});
  static const routeName = "/add_order";
  final CAddOrderWindow _cAddOrderWindow;
  final MAddOrderWindow _model;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      body: Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'Title', labelStyle: TextStyle(fontSize: 18)),
              validator: (val) {
                return _model.validateTitle(val);
              },
              initialValue: _model.title,
              onSaved: (val) => _model.title = val,
            ),
            ElevatedButton(
              onPressed: () {
                final form = formKey.currentState; 
                if (form!.validate()) {
                  form.save();
                  _cAddOrderWindow.submitSelected(context, _model);
                }
              },
              child: const Text('Submit'),
            ),
          ],
        )
      )
    );
  }
}

class VAddOrderWindowFactory {
  const VAddOrderWindowFactory(this._cAddOrderWindow);
  final CAddOrderWindow _cAddOrderWindow;
  VAddOrderWindow get(MAddOrderWindow model) =>
      VAddOrderWindow(_cAddOrderWindow, model);
}
