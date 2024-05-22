import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../../../constant.dart';
import '../../../Autre_Projet/test.dart';
import '../boutonRegister/boutonRegisterDetail.dart';

class NewFormulaire extends StatefulWidget {
  NewFormulaire({super.key});

  @override
  State<NewFormulaire> createState() => _NewFormulaireState();
}

class _NewFormulaireState extends State<NewFormulaire> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  bool isLoading = false;

  //  [Connexion utilisateur] Fonctionqui gère la connexion
  Future<String?> userLogin({
    required final String email,
    required final String password,
  }) async {
    final response = await supabase.auth
        .signInWithPassword(email: email, password: password);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _header(context),
          _inputField(context),
          _forgotPassword(context),
          _signup(context),
        ],
      ),
    );
  }

  _header(context) {
    return Column(
      children: [
        Text(
          "Redaction Reporting",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          "Veillez vous connectez !!!",
          style: TextStyle(
              fontSize: 10, fontWeight: FontWeight.bold, color: Colors.red),
        ),
      ],
    );
  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          controller: _emailController,
          decoration: InputDecoration(
            hintText: "Email",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none,
            ),
            fillColor: Colors.purple.withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.person),
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          controller: _passwordController,
          decoration: InputDecoration(
            hintText: "Mot de passe",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none,
            ),
            fillColor: Colors.purple.withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.password),
          ),
          obscureText: true,
        ),
        const SizedBox(height: 10),
        isLoading
            ? Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(color: Colors.white),
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              )
            : ElevatedButton(
                onPressed: () async {
                  setState(() {
                    isLoading = true;
                  });
                  dynamic loginValue = await userLogin(
                      email: _emailController.text,
                      password: _passwordController.text);
                  setState(() {
                    isLoading = false;
                  });
                  if (loginValue != null) {
                    Navigator.pushReplacementNamed(context, "/publication");
                  } else {
                    context.showErrorMessage("Email ou Mot de passe Invalid");
                  }
                },
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: Colors.purple,
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
      ],
    );
  }

  _forgotPassword(context) {
    return TextButton(
      onPressed: () {
        // Ajouter la logique de réinitialisation de mot de passe ici
      },
      child: const Text(
        "Mot de passe oublié ?",
        style: TextStyle(color: Colors.purple),
      ),
    );
  }

  _signup(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Vous n'avez pas de compte ? "),
        TextButton(
          onPressed: () {
            // Fermer le dialogue actuel
            Navigator.pop(context);
            // Ouvrir un nouveau dialogue avec le formulaire d'inscription
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  content:
                      NewRegister(), // Afficher le formulaire d'inscription complet
                );
              },
            );
          },
          child: const Text(
            "S'inscrire",
            style: TextStyle(color: Colors.purple),
          ),
        ),
      ],
    );
  }
}
