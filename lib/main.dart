
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sumapp/style.dart';

void main(){
  runApp(const myapp());
}
class myapp extends StatelessWidget{
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sum App",
      home: homeactivity(),
    );
  }

}
class homeactivity extends StatefulWidget{
  const homeactivity({super.key});

  @override
  State<StatefulWidget> createState() {
    return homeactivityUi();
  }

}
class homeactivityUi extends State<homeactivity>{
  double sum=0;
  Map<String,double>formvalue={"num1":0,"num2":0,"num3":0};
  MyInputonchange(inputKey,inputValue){
    setState(() {
      formvalue.update(inputKey, (value) => double.parse(inputValue));
    });
  }
  Addnumber(){
    setState(() {
      sum=formvalue['num1']!+formvalue['num2']!+formvalue['num3']!;
    });

 }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SumApp"),

      ),
      body: Padding(
        padding:EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Text(sum.toString(),style: textStyle(),),
            SizedBox(height: 10,),
            TextFormField(onChanged: (value){
              MyInputonchange("num1", value);
            },
              decoration: inputstyle("First Number"),),
            SizedBox(height: 10,),
            TextFormField(onChanged: (value){
              MyInputonchange("num2", value);
            },

              decoration: inputstyle("Second Number"),),
            SizedBox(height: 10,),
            TextFormField(onChanged: (value){
              MyInputonchange("num3", value);
            },

              decoration: inputstyle("Third Number"),),
            SizedBox(height: 10,),
            Container(
              width: double.infinity,
              child: ElevatedButton(

              style: buttonStyle(),
              child: Text("ADD"),
              onPressed: (){
                Addnumber();

              },
            ),),
          ],
        ),
      ),
    );
  }

}