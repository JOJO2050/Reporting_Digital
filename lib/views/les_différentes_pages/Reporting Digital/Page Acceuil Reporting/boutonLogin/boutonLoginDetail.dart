import 'package:flutter/material.dart';
import '../../../Autre_Projet/test.dart';
import '../boutonRegister/boutonRegisterDetail.dart';

class NewFormulaire extends StatelessWidget {
  const NewFormulaire({super.key});

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
        ElevatedButton(
          onPressed: () {
            // Ajouter la logique de connexion ici
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
