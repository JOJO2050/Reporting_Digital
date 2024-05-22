import 'package:flutter/material.dart';

import '../../../../constant.dart';
import '../boutonLogin/boutonLoginDetail.dart';
import 'package:supabase_flutter/supabase_flutter.dart'; // il s'agi d'importer le package supabase

class NewRegister extends StatefulWidget {
  NewRegister({super.key});

  @override
  State<NewRegister> createState() => _NewRegisterState();
}

class _NewRegisterState extends State<NewRegister> {
  final supabase = Supabase.instance.client;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _header(context),
          _inputFields(context),
          _loginPrompt(context),
        ],
      ),
    );
  }

  _header(context) {
    return Column(
      children: [
        Text(
          "Inscription",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          "Créez votre compte",
          style: TextStyle(
              fontSize: 10, fontWeight: FontWeight.bold, color: Colors.red),
        ),
      ],
    );
  }

  _inputFields(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "Nom d'utilisateur",
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
          controller: emailController,
          decoration: InputDecoration(
            hintText: "Email",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none,
            ),
            fillColor: Colors.purple.withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.email),
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          controller: passwordController,
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
          onPressed: () async {
            print("bouton appuye");
            // Ajouter la logique d'inscription ici
            final sm = ScaffoldMessenger.of(context);
            try {
              final AuthResponse = await supabase.auth.signUp(
                  password: passwordController.text,
                  email: emailController.text);
            } catch (e) {
              print(e);
            }

            /*   sm.showSnackBar(SnackBar(
                content:
                    Text("Vous êtes inscrit: ${AuthResponse.user!.email!}"))); */
          },
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(vertical: 16),
            backgroundColor: Colors.purple,
          ),
          child: const Text(
            "S'inscrire",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ],
    );
  }

  _loginPrompt(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Vous avez déjà un compte ? "),
        TextButton(
          onPressed: () {
            // Fermer le dialogue actuel
            Navigator.pop(context);
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  content:
                      NewFormulaire(), // Afficher le formulaire de connexion complet
                );
              },
            );
          },
          child: const Text(
            "Se connecter",
            style: TextStyle(color: Colors.purple),
          ),
        ),
      ],
    );
  }
}
