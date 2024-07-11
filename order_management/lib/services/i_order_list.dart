import 'package:order_management/dto/order.dart';

abstract interface class IOrderList{
  List<Order> getOrders();
  void addOrder(Order order);
}

class OrderListMock implements IOrderList{
  List<Order> orders = List<Order>.empty(growable: true);

  OrderListMock(){
    orders.add(Order("01", "First"));
    orders.add(Order("02", "Second"));
    orders.add(Order("03", "Third"));
  }
  @override
  List<Order> getOrders() => orders;
  @override
  void addOrder(Order order) => orders.add(order);
}