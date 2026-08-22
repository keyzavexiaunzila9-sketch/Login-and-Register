import 'package:flutter/material.dart';
import 'Register.dart';

// 1. StatefulWidget
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChecked = false;
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),

      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 500,
            padding: const EdgeInsets.all(20),

            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor:
                       const Color.fromARGB(255, 213, 234, 255),
                  child: Icon(
                    Icons.lock,
                    size: 40,
                    color: const Color.fromARGB(255, 42, 77, 123),
                  ),
                ),

                const SizedBox(height: 20),

                const Text(
                  'Selamat Datang',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  'Silakan login untuk melanjutkan',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 20),

                Card(
                  color: const Color.fromARGB(255, 222, 234, 248),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 3,

                  child: Padding(
                    padding: const EdgeInsets.all(20),

                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Email'),
                        ),

                        const SizedBox(height: 5),

                        // 2. TextField
                        const TextField(
                          decoration: InputDecoration(
                            labelText: 'Email',
                            border: OutlineInputBorder(),
                          ),
                        ),

                        const SizedBox(height: 15),

                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Password'),
                        ),

                        const SizedBox(height: 5),

                        // 3. TextField
                        TextField(
                          obscureText: !isPasswordVisible,

                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            labelText: 'Password',

                            // 4. IconButton
                            suffixIcon: IconButton(
                              icon: Icon(
                                isPasswordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  isPasswordVisible =
                                      !isPasswordVisible;
                                });
                              },
                            ),
                          ),
                        ),

                        // 5. Checkbox
                        Row(
                          children: [
                            Checkbox(
                              value: isChecked,

                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),

                            const Text('Ingat saya'),

                            const Spacer(),

                            // 6. TextButton
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Lupa Password?',
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 5),

                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('LOGIN'),
                        ),

                        const SizedBox(height: 15),

                        Row(
                          children: const [
                            Expanded(
                              child: Divider(),
                            ),

                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              child: Text('atau'),
                            ),

                            Expanded(
                              child: Divider(),
                            ),
                          ],
                        ),

                        const SizedBox(height: 15),

                        OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const Register(),
                              ),
                            );
                          },
                          child: const Text(
                            'BUAT AKUN BARU',
                          ),
                        ),
                      ],
                    ),
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