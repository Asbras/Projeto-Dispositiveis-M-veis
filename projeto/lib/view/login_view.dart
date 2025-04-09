import 'package:flutter/material.dart';
import 'package:projeto/view/about_view.dart';
import 'package:projeto/view/forgot_password_view.dart';
import 'package:projeto/view/register_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Login', style: TextStyle(color: Colors.white)),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.account_circle, size: 150, color: Colors.blueAccent),
            SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Bem-vindo!',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Por favor, faça login para continuar',
                  style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                ),
              ],
            ),
            SizedBox(height: 16),
            Container(height: 20),

            TextField(
              decoration: InputDecoration(
                labelText: 'E-mail',
                labelStyle: TextStyle(color: Colors.blueAccent),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Colors.blueAccent),
                ),
                prefixIcon: Icon(Icons.email, color: Colors.blueAccent),
                filled: true,
                fillColor: Colors.grey[800],
              ),
              style: TextStyle(color: Colors.white),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),

            TextField(
              decoration: InputDecoration(
                labelText: 'Senha',
                labelStyle: TextStyle(color: Colors.blueAccent),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Colors.blueAccent),
                ),
                prefixIcon: Icon(Icons.lock, color: Colors.blueAccent),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: Colors.blueAccent,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
                filled: true,
                fillColor: Colors.grey[800],
              ),
              obscureText: _obscureText,
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterView()),
                  );
                },
                child: Align(
                  child: Text(
                    'Não tem uma conta? Registre-se',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),

            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForgotPasswordView(),
                    ),
                  );
                },
                child: Align(
                  child: Text(
                    'Esqueceu a senha?',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),

            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutView()),
                  );
                },
                child: Align(
                  child: Text(
                    'Sobre o projeto',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),

            Expanded(child: SizedBox()),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/main');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              child: Text(
                'Entrar',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
