import 'package:flutter/material.dart';
import 'package:order_management/view/controllers/c_main_menu.dart';

class VMainMenu extends StatelessWidget {
  final CMainMenu _cMainMenu;
  static const routeName = "/";

  const VMainMenu(this._cMainMenu, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Main Menu')),
      body: Center(
        child: Row(children: [
          ElevatedButton(
            onPressed: () => _cMainMenu.addOrderSelected(context),
            child: const Text('Add order'),
          ),
          ElevatedButton(
            onPressed: () => _cMainMenu.showOrderListSelected(context),
            child: const Text('Show orders'),
          ),
        ]),
      ),
    );
  }
}
