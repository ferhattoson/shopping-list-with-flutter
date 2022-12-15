import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "alisverişe hazır mısıb?",
      home: anasayfa(),
    );
  }
}
class anasayfa extends StatefulWidget {
  const anasayfa({Key? key}) : super(key: key);

  @override
  State<anasayfa> createState() => _anasayfaState();
}

class _anasayfaState extends State<anasayfa> {
  List l1=["su","ekmek"];
  TextEditingController t1= TextEditingController();
  ekle(){

    setState(() {
      l1.add(t1.text);
      t1.clear();
    });
  }
  cikar(){
    setState(() {
      l1.remove(t1.text);
      t1.clear();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("alisveriş Listem"),),
      body: Container(
        child: Column(

          children: <Widget>[
            Flexible(child:

            ListView.builder(
                itemCount: l1.length,
                itemBuilder: (context,index)=>ListTile(
                  title: Text(l1[index]))
            ),
            ),
            TextField(
              controller: t1,
            ),
            RaisedButton(onPressed: ekle,child: Text("ekle")),
            RaisedButton(onPressed: cikar,child: Text("çıkar"),)

        ],),
      ),
    ) ;


  }
}
