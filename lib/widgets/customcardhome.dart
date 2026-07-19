import 'package:flutter/material.dart';


class CustomCardHome extends StatelessWidget {

  final String title;

  final Color color;
  final String route;

  


  const CustomCardHome({

    required this.title,

    required this.color,
    required this.route,

    super.key,

  });

  @override
  Widget build(BuildContext context) {
    return Card(
    
      color: color,
    
      child: Column(
    
        children: [
    
          ListTile(
    
            title: Text(title, textAlign: TextAlign.center,),
            textColor: Colors.white,
            onTap: () => Navigator.pushNamed(context, route),
            
          ),

        ],
      )
    );
  }
}