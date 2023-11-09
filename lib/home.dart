import 'package:flutter/material.dart';
import 'package:flutter_application_1/header.drawer.dart';
import 'package:flutter_application_1/page.berita.dart';
import 'package:flutter_application_1/page.topup.dart';
import 'package:flutter_application_1/page.kalkulator.dart';
import 'package:flutter_application_1/page.kalender.dart';
import 'package:flutter_application_1/page.home.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text("Menu Aplikasi"),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyHeaderDrawer(),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Beranda"),
                onTap: (){Navigator.pop(context);},
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("Pengaturan"),
                onTap: (){Navigator.pop(context);},
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text("Logout"),
                onTap: (){Navigator.pop(context);},
              ),
            ],
          ),
        ),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(Icons.home, size: 70, color: Colors.blueAccent,),
                    Text("Home", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
               Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Berita()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(Icons.newspaper, size: 70, color: Colors.grey,),
                    Text("Berita", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
               Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Calender()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(Icons.calendar_month, size: 70, color: Colors.red,),
                    Text("Kalender", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
               Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Kalkulator()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(Icons.calculate, size: 70, color: Colors.black,),
                    Text("Kalkulator", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
               Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => TopUp()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(Icons.payment, size: 70, color: Colors.greenAccent,),
                    Text("TopUp", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
               Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(Icons.note, size: 70, color: Colors.blueAccent,),
                    Text("Catatan", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}