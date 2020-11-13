import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() =>  new HomePageState();
}

class  HomePageState extends State<HomePage> {

  double no1 ,no2,value ;


  final TextEditingController t1= new TextEditingController(text:'');
  final TextEditingController t2= new TextEditingController(text:'');

  void doSum(){
    setState(() {
      no1 = double.parse(t1.text);
      no2 = double.parse(t2.text);
      value = no1 + no2;

    });
  }
  void doSubtraction(){
    setState(() {
      no1 = double.parse(t1.text);
      no2 = double.parse(t2.text);
      value = no1 - no2;

    });
  }
  void doMul(){
    setState(() {
      no1 = double.parse(t1.text);
      no2 = double.parse(t2.text);
      value = no1 * no2;

    });
  }
  void doDiv(){
    setState(() {
      no1 = double.parse(t1.text);
      no2 = double.parse(t2.text);
      value = (no1 ~/ no2 ).toDouble() ;


    });
  }
  void doClear(){
    setState(() {
     t1.text="";
     t2.text="";

    });
  }



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: new AppBar(
        title: new Text(('Calculator')),

      ) ,

      body:new Container(

        margin: new EdgeInsets.only(top:100),
        padding: const EdgeInsets.all(5.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start ,
            children: <Widget>[
              Divider(color: Colors.blueGrey),

              new TextField(
                enabled: false,
                keyboardType: TextInputType.number ,
                decoration: new InputDecoration(
                    contentPadding:EdgeInsets.fromLTRB(130,10,10,10),

                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Result = $value  "
                ) ,

                  style: new TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,

                  ),
                
              ),
              new Padding(
                padding: const EdgeInsets.only(bottom:60.0)),

              new TextField(
                keyboardType: TextInputType.number ,

                decoration: new InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Enter The First Number" ,
                ) ,
                controller:t1,
              ),
              new Padding(
                padding: const EdgeInsets.only(top:10.0),
              ),
              new TextField(
                keyboardType: TextInputType.number ,
                decoration: new InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Enter The Second Number "
                ) ,
                controller:t2,
              ),
              new Padding(
              padding: const EdgeInsets.only(top:40.0),
              ),

             ButtonTheme(
              minWidth: 300.0,
              height: 50.0,
                 child: new Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    new RaisedButton (

                        child: new Text("+", style: TextStyle(fontSize: 30)),
                        color: Colors.lightGreen,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.black)
                      ),
                        onPressed: doSum,

                    ),
                    ],
                    ),
             ),
              new Padding(
                padding: const EdgeInsets.only(top:10.0),
              ),

              ButtonTheme(
                 minWidth: 300.0,
                 height: 50.0,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: <Widget>[

                    new  RaisedButton(
                        child: new Text("-", style: TextStyle(fontSize: 30)),
                        color: Colors.lightGreen,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.black)
                      ),
                        onPressed: doSubtraction,
                    ),

                  ],
                  ),
                   ),

             new Padding(
             padding: const EdgeInsets.only(top:10.0),
             ),

                ButtonTheme(
                  minWidth: 300.0,
                  height: 50.0,
                    child: new Row(

                     mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                       new RaisedButton(
                          child: new Text("×", style: TextStyle(fontSize: 30)),
                         color: Colors.lightGreen,
                         shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(18.0),
                         side: BorderSide(color: Colors.black)
                         ),
                         onPressed: doMul,
                        ),
                        ],
                        ),
                        ),
              new Padding(
                padding: const EdgeInsets.only(top:10.0),
              ),


              ButtonTheme(
              minWidth: 300.0,
              height: 50.0,
                child: new Row(

                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: <Widget>[

                 new RaisedButton(
                   child: new Text("÷", style: TextStyle(fontSize: 30)),
                     color: Colors.lightGreen,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(18.0),
                     side: BorderSide(color: Colors.black)
                   ),
                     onPressed: doDiv,
                 ),
                   ],
               ),
               ),
              new Padding(
                padding: const EdgeInsets.only(top:10.0),
              ),


               ButtonTheme(
               minWidth: 300.0,
               height: 50.0,
                 child: new Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                  new RaisedButton(
                   child: new Text("AC", style: TextStyle(fontSize: 20)),
                    color: Colors.lightGreen,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.black)
                  ),
                 onPressed: doClear,
                ),

              ],
              ),
               ),
            ],

        ),

      ),
    );
  }
}

