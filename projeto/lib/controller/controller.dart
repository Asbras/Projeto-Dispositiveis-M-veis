import 'package:flutter/material.dart';
import 'package:projeto/view/about_view.dart';

class LoginController {
  static void navigateToHome(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Página Inicial')),
      body: Center(
        child: Text(
          'Bem-vindo à Página Inicial!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class AboutController {
  static void navigateToAboutView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AboutView()),
    );
  }

  static void goBackToLogin(BuildContext context) {
    Navigator.popUntil(context, ModalRoute.withName('/'));
  }
}

class MessageTile extends StatelessWidget {
  final String username;
  final String message;

  const MessageTile({super.key, required this.username, required this.message});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(username, style: TextStyle(color: Colors.white)),
      subtitle: Text(message, style: TextStyle(color: Colors.white70)),
      tileColor: Colors.grey[800],
    );
  }
}

class ConversationController {
  final TextEditingController messageController = TextEditingController();
  final FocusNode focusNode = FocusNode();
  final List<Map<String, String>> messages = [
    {'username': 'Usuário 1', 'message': 'Oi, tudo bem?'},
    {'username': 'Você', 'message': 'Olá! Sim, e você?'},
    {'username': 'Usuário 1', 'message': 'Estou bem, obrigado!'},
    {'username': 'Você', 'message': 'Que bom!'},
  ];

  void sendMessage(Function updateUI) {
    String text = messageController.text.trim();
    if (text.isNotEmpty) {
      messages.add({'username': 'Você', 'message': text});
      messageController.clear();
      updateUI();

      Future.delayed(Duration(milliseconds: 100), () {
        focusNode.requestFocus();
      });
    }
  }

  void dispose() {
    messageController.dispose();
    focusNode.dispose();
  }
}
