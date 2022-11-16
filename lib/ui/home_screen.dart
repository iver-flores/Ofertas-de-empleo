import 'package:examen/model/my_work.dart';
import 'package:examen/navigation/routes.dart';
import 'package:examen/ui/view_my_work_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: AppBar(
            title: const Text("OFERTAS DE TRABAJO"),
            toolbarHeight: 80,
            leading: Image.asset('assets/images/oferta.png', width: 100.0, height: 60.0), //insert logo image
            titleTextStyle: TextStyle(fontSize: 20.0, color: Colors.white),
            actions: [
              IconButton(onPressed: () {
                SystemNavigator.pop();
              },
                  icon: const Icon(Icons.exit_to_app)
              )
            ],
          )
      ),
        body: ListView(
          children: ListTile.divideTiles(
            color: Colors.red,
            tiles: myWorks.map((data) => ListTile(
              title: new Text(data.name + '\n', style: TextStyle(color: Colors.indigo),),
              subtitle: new Text(data.description + '\n\n${data.experience}',
                style: TextStyle(color: Colors.black54),),
              leading: new Icon(Icons.contactless_sharp, color: Colors.red, size: 30.0,),
              onTap: (){
                Navigator.pushNamed(context, Routes.ViewWord, arguments: data);
              },
            )).toList(),
          ).toList(),
        )
    );
  }
}

/*
//tiles: myWorks.map(_buildItem).toList()

Widget _buildItem(MyWork myWork) {
  return ListTile(
    title: new Text(myWork.name + '\n', style: TextStyle(color: Colors.indigo),),
    subtitle: new Text(myWork.description + '\n\nExperiencia: ${myWork.experience}',
      style: TextStyle(color: Colors.black54),),
    leading: new Icon(Icons.contactless_sharp, color: Colors.red, size: 30.0,),
    onTap: (){
      Navigator.push(, MaterialPageRoute(
              builder: (context) => ViewMyWorkScreen(myWork: myWork)
              ));
    },
  );
}*/
