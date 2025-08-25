import 'package:flutter/material.dart';
import 'package:untitled1/signup.dart';
import '../services/auth_service.dart'; // <-- add this

class HomeScreen extends StatefulWidget {
  static const String id = "home_screen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isLoading = false;

  Future<void> _handleLogin() async {
    setState(() => _isLoading = true);

    final success = await AuthService.login(
      _emailController.text.trim(),
      _passwordController.text.trim(),
    );

    setState(() => _isLoading = false);

    if (success) {
      Navigator.pushReplacementNamed(context, '/dashboard');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Login failed")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(
                        height: 50,
                        width: 50,
                        image: AssetImage('images/logo.png'),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Maintenance',
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Zaki Medium',
                              color: Color(0xff2D3142),
                            ),
                          ),
                          Text(
                            'Box',
                            style: TextStyle(
                              fontSize: 26,
                              fontFamily: 'Zaki Medium',
                              color: Color(0xffF9703B),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  const Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Zaki Medium',
                        color: Color(0xff2D3142),
                      ),
                    ),
                  ),
                  const SizedBox(height: 7),
                  const Text(
                    'Follow this for more interactive \ndesign and recent clips.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Zaki Regular',
                      color: Color(0xff4C5980),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Email
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      fillColor: const Color(0xfff8F9FA),
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.alternate_email,
                        color: Color(0xff323f4b),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Password
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      fillColor: const Color(0xfff8F9FA),
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.lock_open,
                        color: Color(0xff323f4b),
                      ),
                      suffixIcon: const Icon(Icons.visibility_off_outlined),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationThickness: 1,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),

                  // Login Button with Loader
                  InkWell(
                    onTap: _isLoading ? null : _handleLogin,
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xffF9703B),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Center(
                        child: _isLoading
                            ? const CircularProgressIndicator(
                                color: Colors.white,
                              )
                            : const Text(
                                'Log In',
                                style: TextStyle(
                                  fontFamily: 'Zaki Medium',
                                  fontSize: 17,
                                  color: Colors.white,
                                ),
                              ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 14),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Do you have an account?',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Zaki Regular',
                          color: Color(0xff4C5980),
                        ),
                      ),
                      const SizedBox(width: 5),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, ScreenTwo.id);
                        },
                        child: const Text(
                          'Signup',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Zaki Medium',
                            color: Color(0xffF9703B),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
