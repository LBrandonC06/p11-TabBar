import 'package:flutter/material.dart';

void main() => runApp(AppTabBar());

class AppTabBar extends StatelessWidget {
  const AppTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sabritas",
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: MiPaguinaInicial(),
    );
  }
}

class MiPaguinaInicial extends StatefulWidget {
  const MiPaguinaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaguinaInicial> createState() => _MiPaguinaInicialState();
}

class _MiPaguinaInicialState extends State<MiPaguinaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: "inicio",
              ),
              Tab(
                text: "Tarifas",
              ),
              Tab(
                text: "Servicios",
              ),
              Tab(
                text: "Ayuda",
              ),
              Tab(
                text: "Contacto",
              ),
            ],
          ),
          title: Text('CFE'),
        ),
        body: TabBarView(
          children: [
            Icon(
              Icons.account_circle_rounded,
              size: 350,
              color: Colors.red,
            ),
            Icon(
              Icons.attach_money_sharp,
              size: 350,
              color: Colors.green,
            ),
            Icon(
              Icons.calendar_month,
              size: 350,
              color: Colors.blue,
            ),
            Icon(
              Icons.mark_chat_read,
              size: 350,
              color: Colors.blue,
            ),
            Icon(
              Icons.call_sharp,
              size: 350,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
