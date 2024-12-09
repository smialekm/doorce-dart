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
  setup();
  runApp(const MainApp());
}

late final IOrderList _iOrderList;

late final CMainMenu _cMainMenu;
late final VMainMenuFactory _vMainMenuFactory;

late final CAddOrderWindow _cAddOrderWindow;
late final VAddOrderWindowFactory _vAddOrderWindowFactory;
late final PAddOrderWindow _pAddOrderWindow;

late final VOrderListWindowFactory _vOrderListWindowFactory;
late final POrderListWindow _pOrderListWindow;
 
late final UCShowOrderList _ucShowOrderList;
late final UCAddOrder _ucAddOrder;

void setup(){
  _iOrderList = OrderListMock();

  _cMainMenu = CMainMenu();
  _vMainMenuFactory = VMainMenuFactory(_cMainMenu);

  _cAddOrderWindow = CAddOrderWindow();
  _vAddOrderWindowFactory = VAddOrderWindowFactory(_cAddOrderWindow);
  _pAddOrderWindow = PAddOrderWindow();
  _pAddOrderWindow.inject(_vAddOrderWindowFactory);

  _vOrderListWindowFactory = const VOrderListWindowFactory();
  _pOrderListWindow = POrderListWindow();
  _pOrderListWindow.inject(_vOrderListWindowFactory);
 
  _ucShowOrderList = UCShowOrderList();
  _ucShowOrderList.inject(_pOrderListWindow, _iOrderList);
  _ucAddOrder = UCAddOrder();
  _ucAddOrder.inject(_pAddOrderWindow, _iOrderList);

  _cAddOrderWindow.inject(_ucAddOrder);
  _cMainMenu.inject(_ucShowOrderList, _ucAddOrder);
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

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
                return _vMainMenuFactory.get();
            }
          },
        );
      },
    );
  }
}
