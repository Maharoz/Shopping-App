 import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoppingapp/providers/orders.dart' show Orders;
import 'package:shoppingapp/widgets/app_drawer.dart';
import '../widgets/order_item.dart' ;

 class OrdersScreen extends StatelessWidget {

   static const routeName = '/orders';
  @override
  Widget build(BuildContext context) {

    final orderData = Provider.of<Orders>(context);
    return Scaffold(
      appBar:AppBar(
        title:Text('Your Orders'),

      ),
      drawer: AppDrawer(),
      body:ListView.builder(itemCount: orderData.order.length,
      itemBuilder:(ctx,i)=>OrderItem(orderData.order[i]) ,),
    );
  }
}