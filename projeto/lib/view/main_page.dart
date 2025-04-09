import 'package:flutter/material.dart';
import 'conversation_page.dart';
import 'package:projeto/view/login_view.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conversas', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => LoginView()),
              (route) => false,
            );
          },
        ),
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          ListTile(
            tileColor: Colors.grey[800],
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blueAccent,
              child: Icon(Icons.account_circle, size: 40, color: Colors.white),
            ),
            title: Text('Usuário 1', style: TextStyle(color: Colors.white)),
            subtitle: Text(
              'Oi, tudo bem?',
              style: TextStyle(color: Colors.white70),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ConversationPage(username: 'Usuário 1'),
                ),
              );
            },
          ),
          ListTile(
            tileColor: Colors.grey[800],
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blueAccent,
              child: Icon(Icons.account_circle, size: 40, color: Colors.white),
            ),
            title: Text('Usuário 2', style: TextStyle(color: Colors.white)),
            subtitle: Text(
              'Olá! Como vai?',
              style: TextStyle(color: Colors.white70),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ConversationPage(username: 'Usuário 2'),
                ),
              );
            },
          ),
          ListTile(
            tileColor: Colors.grey[800],
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blueAccent,
              child: Icon(Icons.account_circle, size: 40, color: Colors.white),
            ),
            title: Text('Usuário 3', style: TextStyle(color: Colors.white)),
            subtitle: Text(
              'Essa é uma mensagem de exemplo.',
              style: TextStyle(color: Colors.white70),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ConversationPage(username: 'Usuário 3'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
