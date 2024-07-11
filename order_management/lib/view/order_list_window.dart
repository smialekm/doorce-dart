import 'package:flutter/material.dart';
import 'package:order_management/dto/order.dart';

class VOrderListWindow extends StatelessWidget{
  const VOrderListWindow(this.orders, {super.key});
  static const routeName = "/order_list";
  final List<Order> orders;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
         itemCount: orders.length,
         itemBuilder: (context, index) {
            return GestureDetector(
               child: Text("${orders[index].id} ${orders[index].title}"), 
               //onTap: () {}, 
            ); 
         }, 
      ),
    );
  }
  
}

class VOrderListWindowFactory{
  const VOrderListWindowFactory();
  VOrderListWindow get(List<Order> orders) => VOrderListWindow(orders);
}