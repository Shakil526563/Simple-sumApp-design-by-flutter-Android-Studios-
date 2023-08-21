import 'package:flutter/material.dart';

InputDecoration inputstyle(label){
   return InputDecoration(
     contentPadding: EdgeInsets.all(20),
     filled: true,
     fillColor: Colors.greenAccent,
     labelText: label,
     border: OutlineInputBorder(),
   );
}
TextStyle textStyle(){
  return TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20,
  );
}
ButtonStyle buttonStyle(){
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(30),
    backgroundColor: Colors.indigo,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(40)),
    )

  );
}

