import 'package:flutter/material.dart';
import 'package:spotify/pages/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final TextEditingController logidController = TextEditingController();
final TextEditingController passwordController = TextEditingController();


class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                child: Text("S"),
                radius: 40,
              ),
              const SizedBox(
                height: 35,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child: TextField(
                  controller: logidController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Login ID",
                    labelText: "Login ID",
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                height: 50,
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Password",
                    labelText: "Password",
                  ),
                ),
              ),
              ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.green),
                ),
                onPressed: (){
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context)=> const HomeScreen()),
                  // );
                  print(logidController.text);
                },
                child: const Text("Sign in",
                style: TextStyle(
                  color: Colors.black
                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
