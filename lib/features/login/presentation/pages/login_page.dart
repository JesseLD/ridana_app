import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Login Page',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                ),
                const SizedBox(height: 20),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Telefone',
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 24,
                          ),
                          fillColor: Theme.of(context).colorScheme.onPrimary,
                          filled: true,
                          labelStyle: TextStyle(
                            color: Theme.of(
                              context,
                            ).colorScheme.onPrimaryContainer.withAlpha(100),
                          ),
                          prefixIcon: Icon(
                            Icons.phone,
                            color: Theme.of(
                              context,
                            ).colorScheme.onPrimaryContainer.withAlpha(100),
                          ),
                        ),
                        keyboardType: TextInputType.phone,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          TelefoneInputFormatter(),
                        ],
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        obscureText: true,

                        decoration: InputDecoration(
                          labelText: 'Senha',
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 24,
                          ),
                          fillColor: Theme.of(context).colorScheme.onPrimary,
                          filled: true,
                          labelStyle: TextStyle(
                            color: Theme.of(
                              context,
                            ).colorScheme.onPrimaryContainer.withAlpha(100),
                          ),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Theme.of(
                              context,
                            ).colorScheme.onPrimaryContainer.withAlpha(100),
                          ),
                        ),

                        // keyboardType: TextInputType.phone,
                        // inputFormatters: [
                        //   FilteringTextInputFormatter.digitsOnly,
                        //   TelefoneInputFormatter()
                        // ],
                      ),
                      const SizedBox(height: 32),
                      ElevatedButton(
                        onPressed: () {
                          // Handle login logic here
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Login button pressed',
                                style: TextStyle(
                                  color:
                                      Theme.of(
                                        context,
                                      ).colorScheme.onPrimaryContainer,
                                ),
                              ),
                              backgroundColor:
                                  Theme.of(
                                    context,
                                  ).colorScheme.primaryContainer,
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                          minimumSize: const Size(double.infinity, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 24,
                          ),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),
                      Text(
                        'Esqueci minha senha',
                        style: TextStyle(
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        'Não tem uma conta? Crie uma',
                        style: TextStyle(
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
