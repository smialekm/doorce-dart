import 'package:order_management/dto/order.dart';

abstract interface class IOrderList{
  List<Order> getOrders();
  void addOrder(Order order);
}

class OrderListMock implements IOrderList{
  List<Order> orders = List<Order>.empty(growable: true);

  OrderListMock(){
    orders.add(Order("First", 0));
    orders.add(Order("Second", 1));
    orders.add(Order("Third", 2));
  }
  @override
  List<Order> getOrders() => orders;
  @override
  void addOrder(Order order){
    order.id = orders.length;
    orders.add(order);
  }
}