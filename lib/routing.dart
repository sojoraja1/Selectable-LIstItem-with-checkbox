import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './main.dart';
class Router{
static Route<dynamic> onGenerateRoutes(RouteSettings routeSettings){
var arguments = routeSettings.arguments;

switch (routeSettings.name) {
  case '/home':
          return MaterialPageRoute(builder:(_)=>Home());    
  case '/dash':
          return MaterialPageRoute(builder:(_)=>Dash());    
  case '/logout':
          return MaterialPageRoute(builder: (_)=>Logout());
  default:
          return MaterialPageRoute(builder: (_){

            return Container(

              child: Text("Error Page"),
            );
          });
}



 
  
}

}