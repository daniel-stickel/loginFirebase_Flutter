import "package:flutter/material.dart";
import "package:teste_firebase/screens/register_screen.dart";

class LoginSreen extends StatelessWidget {
  LoginSreen({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.blue,
      padding: EdgeInsets.all(16),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  FlutterLogo(size: 76),
                  SizedBox(
                    height: 16,
                  ),
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(hintText: 'E-mail'),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextField(
                    obscureText: true,
                    controller: _senhaController,
                    decoration: InputDecoration(hintText: 'Senha'),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('Entrar')),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Entrar com Google"),
                  ),
                  SizedBox(height: 16),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
                          ));
                    },
                    child: Text("Ainda não tem uma conta, crie uma"),// Parei em Criando nossa classe
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
