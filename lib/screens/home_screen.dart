import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


import '../components/menu.dart';
import '../helpers/hour_helpers.dart';
import '../models/hour.dart';

class HomeScreen extends StatefulWidget {
  final User user;

  HomeScreen({super.key, required this.user});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Hour> listHours = [];
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(user: widget.user),
      appBar: AppBar(
        title: Text('Horas V3'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: (listHours.isEmpty)
          ? const Center(
        child: Text(
          'Nada por aqui.\nVamos registrar um dia de trabalho?',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      )
          : ListView(
        padding: EdgeInsets.only(left: 4, right: 4),
        children: List.generate(
          listHours.length,
              (index) {
            Hour model = listHours[index];
            return Dismissible(
              key: ValueKey<Hour>(model),
              direction: DismissDirection.endToStart,
              background: Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: 12),
                color: Colors.red,
                child: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
              onDismissed: (direction) {
                remove(model);
              },
              child: Card(
                elevation: 2,
                child: Column(
                    children: [
                    ListTile(
                    onLongPress: ()
                {},
                onTap: () {},
                leading: Icon(
                  Icons.list_alt_rounded,
                  size: 56,
                ),
                title: Text(
                      "Data: ${model.data} hora: ${HourHelper.minutesToHours(
                          model.minutos) }"),
                  subtitle: Text(model.descricao!),
                )
                ],
              ),
            ),);
          },
        ),
      ),
    );
  }

  void remove(Hour model) {}
}