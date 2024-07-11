import 'package:flutter/material.dart';
import 'package:order_management/services/i_order_list.dart';
import 'package:order_management/usecases/uc_add_order.dart';
import 'package:order_management/usecases/uc_show_order_list.dart';
import 'package:order_management/view/add_order_window.dart';
import 'package:order_management/view/controllers/c_add_order_window.dart';
import 'package:order_management/view/controllers/c_main_menu.dart';
import 'package:order_management/view/order_list_window.dart';
import 'package:order_management/view/presenters/p_add_order_window.dart';
import 'package:order_management/view/presenters/p_order_list_window.dart';
import 'view/main_menu.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  static const IOrderList _iOrderList = OrderListMock();
  static const CAddOrderWindow _cAddOrderWindow = CAddOrderWindow(_ucAddOrder);
  static const VOrderListWindowFactory _vOrderListWindowFactory = VOrderListWindowFactory();
  static const VAddOrderWindowFactory _vAddOrderWindowFactory = VAddOrderWindowFactory(_cAddOrderWindow);
  static const POrderListWindow _pOrderListWindow = POrderListWindow(_vOrderListWindowFactory);
  static const PAddOrderWindow _pAddOrderWindow = PAddOrderWindow(_vAddOrderWindowFactory);
  static const UCShowOrderList _ucShowOrderList = UCShowOrderList(_pOrderListWindow, _iOrderList);
  static const UCAddOrder _ucAddOrder = UCAddOrder(_pAddOrderWindow, _iOrderList);
  static const CMainMenu _cMainMenu = CMainMenu(_ucShowOrderList, _ucAddOrder);
  static const VMainMenu _vMainMenu = VMainMenu(_cMainMenu);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (RouteSettings routeSettings) {
        return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) {
            switch (routeSettings.name) {
              case VMainMenu.routeName: 
              default:
                return _vMainMenu;
            }
          },
        );
      },
    );
  }
}
