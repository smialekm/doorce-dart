import 'package:order_management/dto/order.dart';

class MAddOrderWindow{
  String title="";

  MAddOrderWindow([Order? order]){
    title = null != order ? order.title : "";
  }

  Order getOrder(){
    return Order(title);
  }

}