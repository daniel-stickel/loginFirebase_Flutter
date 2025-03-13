import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart'
import 'package:teste_firebase/screens/home_screen.dart';;
import 'package:teste_firebase/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
WidgetsFlutterBinding.ensureInitialized();

await Firebase.initializeApp(
options: DefaultFirebaseOptions.currentPlatform,
);
runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  double largura = 100;
  double altura = 100;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'horas V3',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          useMaterial3: true,
        ),
        home: const RoteadorTelas(),
         );
  }
}

class RoteadorTelas extends StatelessWidget {
  const RoteadorTelas({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(stream: FirebaseAuth.instance.userChanges(), builder: (context, snapshot){
      if(snapshot.connectionState == ConnectionState.waiting) {
        return const Center(
        child: CircularProgressIndicator()
        );
        }else {
        if(snapshot.hasData) {
          return HomeScreen(user: snapshot.data!);
        } else {
          return LoginSreen();
        }
      }
    });
  }
}
