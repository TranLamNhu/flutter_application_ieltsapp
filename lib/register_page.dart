
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'login_page.dart';
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        centerTitle: true,
        
        
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16,70,16,60.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment:MainAxisAlignment.start,
            children: <Widget>[
              const Image(
                image: AssetImage('assets/logo.png'), 
                height: 100,
              ), const Text(
              'Dolphin IELTS App',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
              const SizedBox(height: 16), 
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email ';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'Re-enter the password',
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Re-Enterpassword';
                  }
                  return null;
                },
              ),
             const SizedBox(height: 32),
              SizedBox(
                
                width: 200, 
        
                child: ElevatedButton(
                   style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, 
                    backgroundColor:  Colors.black,
                    ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Perform login action
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>   const HomePage(),
                        ),
                      );
                    }
                  },
                
                child: const Text('Register'),
              ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text("Don't have an account? ",style: TextStyle( color: Colors.black),),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    child: const Text('Login',
                    style: TextStyle( color: Colors.red),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

