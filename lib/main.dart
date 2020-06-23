import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Homme(),
    );
  }
}

class Homme extends StatefulWidget {
  Homme({Key key}) : super(key: key);

  @override
  _HommeState createState() => _HommeState();
}

class _HommeState extends State<Homme> {
  bool checked=false;
  final items = List<String>.generate(20, (i) => "Item ${i + 1}");
  final check =List<bool>.generate(20, (index) => true);
  List<String> selected = new List<String>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: ListView.builder(itemBuilder:(_,int index){
          var item = items[index];
                    return ListTile(title:Text(item),
                    
                    key: Key(item),
                    trailing: check[index]?Icon(Icons.check_box_outline_blank):Icon(Icons.check_box),

                    onTap: (){
                      print(check);
                       setState(() {
                
                selected.add(item);
                print(selected);
                check.insert(index, false);
                });


                    },
                    
                    
                    );

        },itemCount:items.length,)
      );
  }
}