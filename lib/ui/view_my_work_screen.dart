
import 'package:examen/model/my_work.dart';
import 'package:examen/navigation/routes.dart';
import 'package:flutter/material.dart';

class ViewMyWorkScreen extends StatelessWidget {
  const ViewMyWorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final myWork = ModalRoute.of(context)?.settings.arguments as MyWork?;

    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(80.0),
            child: AppBar(
              title: Text(myWork!.name.toString()),
              toolbarHeight: 80,
              leading: Image.asset('assets/images/oferta.png', width: 100.0, height: 60.0), //insert logo image
              titleTextStyle: TextStyle(fontSize: 20.0, color: Colors.white),
              actions: [
                IconButton(onPressed: () {
                  Navigator.pushNamed(context, Routes.home, arguments: "");
                  //SystemNavigator.pop();
                },
                    icon: const Icon(Icons.assignment_return)
                )
              ],
            )
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Column(
              children:<Widget>[ //Image.asset
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5.0),
                    bottomLeft: Radius.circular(5.0),
                    topLeft: Radius.circular(5.0),
                    bottomRight: Radius.circular(5.0),

                  ),
                  child: FadeInImage(
                    placeholder:
                    AssetImage('assets/images/dev1.png'),
                    height: 200,
                    width: 300,
                    fit: BoxFit.fill, image: AssetImage('assets/images/${myWork.image}'),
                  ),
                ),
                Text(""),
                Text('Direccion: ${myWork.city}',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Roboto',
                    letterSpacing: 0.5,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(""),
                Text('descripcion:\n${myWork.description}',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Roboto',
                    letterSpacing: 0.5,
                    fontSize: 15,
                  ),
                ),
                Text(""),
                Text('Experiencia:\n${myWork.experience}',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Roboto',
                    letterSpacing: 0.5,
                    fontSize: 15,
                  ),
                ),
                Text(""),
                Text('Enviar correo con hoja de vida a: ${myWork.email}',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Roboto',
                    letterSpacing: 0.5,
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }
}
