import 'package:duckcination/functions/call.dart';
import 'package:duckcination/ui/screens/history_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BigButton extends StatefulWidget {
  const BigButton({Key? key, required this.iconData, required this.title, required this.target_screen, required this.option}) : super(key: key);
  final IconData iconData;
  final String title;
  final Widget target_screen;
  final String option;

  @override
  State<BigButton> createState() => _BigButtonState();
}

class _BigButtonState extends State<BigButton> {
  List<Widget> getContent(){
    if (widget.option=='days'){
      return [
        Text('14', style: const TextStyle(fontSize:44,fontWeight: FontWeight.bold, color: Colors.orange),),
        Text(widget.title.split('-')[0], style: const TextStyle(fontWeight: FontWeight.bold),),
        Text(widget.title.split('-')[1], style: const TextStyle(fontWeight: FontWeight.bold),),
      ];
    }
    return [
      Icon(widget.iconData, size: 50, color: Colors.orange,),
      Text(widget.title.split('-')[0], style: const TextStyle(fontWeight: FontWeight.bold),),
      Text(widget.title.split('-')[1], style: const TextStyle(fontWeight: FontWeight.bold),),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(widget.option=="call"){
          whoCalledTheDoctor();
        }else if(widget.option=="history"){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => widget.target_screen),
          );
        }
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5,20,5,0),
        child: Container(
          padding: const EdgeInsets.all(5),
          /*decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.grey[100]!,Colors.grey[400]!]),
              borderRadius: const BorderRadius.all(Radius.circular(20))),*/
          decoration: BoxDecoration(
            color: Color.fromRGBO(252, 252, 252, 100),
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10,10,10,10),
            child: Column(
              children: getContent(),
            ),
          ),
        ),
      ),
    );
  }
}
