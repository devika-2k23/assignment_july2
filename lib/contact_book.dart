import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:ListView1()));
}

class  ListView1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SimpleContactList",),
        ),
        body:ListView(
          children:[
            Card(child:
            ListTile(
              title: Text('Rahul',style: TextStyle(fontSize:15 )),
              leading: Icon(Icons.account_circle,
                color: Colors.blue,
                size: 40,),
              subtitle: Text('63739745637',style: TextStyle(fontSize:12 )),
              trailing:Icon(Icons.arrow_forward_ios_sharp),
            )),

            Card(child:
            ListTile(
              title: Text('Sandra',style: TextStyle(fontSize:15 )),
              leading: Icon(Icons.account_circle,
                color: Colors.purpleAccent,
                size: 40,),
              subtitle:Text('63739745637',style: TextStyle(fontSize:12 )),
              trailing:Icon(Icons.arrow_forward_ios),
            )),

            Card(child:
            ListTile(
              title :Text('Devika',style: TextStyle(fontSize:15 )),
              leading: Icon(Icons.account_circle_rounded,
                color: Colors.orange,
                size: 40,),
              subtitle: Text('63739745637',style: TextStyle(fontSize:12 )),
              trailing: Icon(Icons.arrow_forward_ios),
            )),

            Card(child:
            ListTile(
              title: Text('Suraj',style: TextStyle(fontSize:15 )),
              leading: Icon(Icons.account_circle_rounded,
                color: Colors.blue,
                size: 40,),
              subtitle: Text('63739745637',style: TextStyle(fontSize:12 )),
              trailing: Icon(Icons.arrow_forward_ios),
            )),

            Card(child:
            ListTile(
              title: Text('Madhavi',style: TextStyle(fontSize:15 )),
              leading: Icon(Icons.account_circle_rounded,
                color: Colors.green,
                size: 40,),
              trailing: Icon(Icons.arrow_forward_ios),
              subtitle: Text("63739745637",style: TextStyle(fontSize:12 )),
            )),

            Card(child:
            ListTile(
              title: Text('Arya',style: TextStyle(fontSize:15 )),
              leading: Icon(Icons.account_circle_rounded,
                color:Colors.red ,
                size: 40,),
              subtitle: Text('63739745637',style: TextStyle(fontSize:12 )),
              trailing: Icon(Icons.arrow_forward_ios),
            )),

            Card(child:
            ListTile(
              title: Text('Nived',style: TextStyle(fontSize:15 )),
              leading: Icon(Icons.account_circle_rounded,
                color: Colors.yellowAccent,
                size: 40,),
              trailing:Icon(Icons.arrow_forward_ios),
              subtitle: Text('63739745637',style: TextStyle(fontSize:12 )),
            )),

            Card(child:
            ListTile(
              title: Text('Anna',style: TextStyle(fontSize:15 )),
              leading: Icon(Icons.account_circle_rounded,
                color: Colors.blueAccent,
                size: 40,),
              trailing: Icon(Icons.arrow_forward_ios),
              subtitle: Text('63739745637',style: TextStyle(fontSize:12 ),),
            )),
          ],
        )
    );
  }
}