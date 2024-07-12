import 'package:order_management/dto/order.dart';

class MAddOrderWindow{
  String? title="";

  String? validateTitle(String? title){
    if (title!.isEmpty) return "Title cannot be empty";
    return null;
  }

  MAddOrderWindow([Order? order]){
    title = null != order ? order.title : "";
  }

  Order getOrder(){
    return Order(title ?? "");
  }

}