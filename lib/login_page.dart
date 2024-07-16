
import 'package:flutter/material.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
        
        
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16,70,16,40),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment:MainAxisAlignment.start,
            children: <Widget>[
              const Image(
                image: AssetImage('assets/logo.png'), 
                height: 100,
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
                          builder: (context) => const HomePage(),
                        ),
                      );
                    }
                  },
                
                child: const Text('Login'),
              ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text("Don't have an account? ",style: TextStyle( color: Colors.black),),
                  TextButton(
                    style: TextButton.styleFrom(

               side: const BorderSide(width: 2,), backgroundColor:Colors.black, 
          
             ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterPage(),
                        ),
                      );
                    },
                    child: const Text('Register',
                    style: TextStyle( color: Colors.white ),
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

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: const Center(
        child: Text(
          'Welcome to Home Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: const Center(
        child: Text(
          'Register Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
