import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:order_management/services/i_order_list.dart';
import 'package:order_management/usecases/uc_add_order.dart';
import 'package:order_management/usecases/uc_show_order_list.dart';
import 'package:order_management/view/add_order_window.dart';
import 'package:order_management/view/controllers/c_add_order_window.dart';
import 'package:order_management/view/controllers/c_main_menu.dart';
import 'package:order_management/view/order_list_window.dart';
import 'package:order_management/view/presenters/p_add_order_window.dart';
import 'package:order_management/view/presenters/p_order_list_window.dart';
import 'package:provider/single_child_widget.dart';
import 'view/main_menu.dart';

void main() {
  MultiProvider provider =  setupDependencies();
  runApp(provider);
}

MultiProvider setupDependencies(){
  List<SingleChildWidget> providerList = List<SingleChildWidget>.empty(growable: true);

  // Services (access to the backend)
  providerList.add(Provider<IOrderList>(create: (context) => OrderListMock()));

  // View widgets with Controllers and Presenters
  providerList.add(Provider(create: (context) => CMainMenu()));
  providerList.add(Provider(create: (context) => VMainMenuFactory(context.read())));
 
  providerList.add(Provider(create: (context) => CAddOrderWindow()));
  providerList.add(Provider(create: (context) => VAddOrderWindowFactory(context.read())));
  providerList.add(Provider(create: (context) => PAddOrderWindow(context.read())));

  providerList.add(Provider(create: (context) => const VOrderListWindowFactory()));
  providerList.add(Provider(create: (context) => POrderListWindow(context.read())));
 
  // Use Cases
  providerList.add(Provider(create: (context) => UCShowOrderList(context.read(),context.read())));
  providerList.add(Provider(create: (context) => UCAddOrder(context.read(),context.read())));
  
  return MultiProvider(providers: providerList, child: const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (RouteSettings routeSettings) {
        return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (context) {
            switch (routeSettings.name) {
              case VMainMenu.routeName: 
              default:
                VMainMenuFactory mf = context.read();
                return mf.get();
            }
          },
        );
      },
    );
  }
}
