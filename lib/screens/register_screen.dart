import 'package:flutter/material.dart';
import 'package:teste_firebase/services/auth_service.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  final TextEditingController _confirmaSenhaController =
  TextEditingController();
  final TextEditingController _nomeControler = TextEditingController();

  AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  FlutterLogo(size: 76),
                  const SizedBox(
                    height: 16,
                  ),
                  TextField(
                    controller: _nomeControler,
                    decoration: InputDecoration(hintText: "Nome"),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(hintText: "Email"),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextField(
                    obscureText: true,
                    controller: _senhaController,
                    decoration: InputDecoration(hintText: "Senha"),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    obscureText: true,
                    controller: _confirmaSenhaController,
                    decoration:
                    InputDecoration(hintText: "Confirme sua senha "),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(onPressed: () {}, child: Text("Cadastrar")),
                  const SizedBox(height: 16),
                  ElevatedButton(
                      onPressed: () {
                        if (_senhaController.text ==
                            _confirmaSenhaController.text) {
                          authService
                              .cadastrarUsuario(
                              email: _emailController.text,
                              Senha: _senhaController.text,
                              nome: _nomeControler.text)
                              .then((String? erro) {
                            if (erro != null) {
                              final snackBar = SnackBar(
                                content: Text(erro),
                                backgroundColor: Colors.red,
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            } else {
                              Navigator.pop(context);
                            }
                          });
                        } else {
                          const snackBar = SnackBar(
                            content: Text('As senhas não correspondem'),
                            backgroundColor: Colors.red,
                          );
                          ScaffoldMessenger.of(context)
                              .showSnackBar(snackBar);
                        }
                      },
                      child: const Text("Cadastrar")),
                  const SizedBox(height: 16),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
