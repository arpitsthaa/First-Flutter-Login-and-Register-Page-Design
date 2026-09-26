import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// MAIN APP
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      home: const LoginPage(),
    );
  }
}


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            const Text(
              "My App",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.pinkAccent,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              "Welcome Back!",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),

            const SizedBox(height: 30),

            TextField(
              decoration: InputDecoration(
                labelText: "Email / Username",
                hintText: "Enter your email or username",
                prefixIcon: const Icon(Icons.person),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            const SizedBox(height: 15),

            // PASSWORD
            TextField(
              obscureText: hidePassword,

              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter your password",

                prefixIcon: const Icon(Icons.lock),

                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      hidePassword = !hidePassword;
                    });
                  },

                  icon: Icon(
                    hidePassword ? Icons.visibility : Icons.visibility_off,
                  ),
                ),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            // FORGOT PASSWORD
            Align(
              alignment: Alignment.centerRight,

              child: TextButton(
                onPressed: () {},

                child: const Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.pinkAccent),
                ),
              ),
            ),

            const SizedBox(height: 10),

            // LOGIN BUTTON
            SizedBox(
              width: double.infinity,
              height: 50,

              child: ElevatedButton(
                onPressed: () {},

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                ),

                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // REGISTER LINK
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                const Text("Don't have an account?"),

                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterPage(),
                      ),
                    );
                  },

                  child: const Text(
                    "Register",
                    style: TextStyle(
                      color: Colors.pinkAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// REGISTER PAGE
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool hidePassword = true;
  bool hideConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            // APPLICATION NAME
            const Text(
              "My App",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.pinkAccent,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              "Create your account",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),

            const SizedBox(height: 30),

            // FULL NAME
            TextField(
              decoration: InputDecoration(
                labelText: "Full Name",
                hintText: "Enter your full name",
                prefixIcon: const Icon(Icons.person),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            const SizedBox(height: 15),

            // EMAIL
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Enter your email",
                prefixIcon: const Icon(Icons.email),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            const SizedBox(height: 15),

            // PASSWORD
            TextField(
              obscureText: hidePassword,

              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter your password",

                prefixIcon: const Icon(Icons.lock),

                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      hidePassword = !hidePassword;
                    });
                  },

                  icon: Icon(
                    hidePassword ? Icons.visibility : Icons.visibility_off,
                  ),
                ),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            const SizedBox(height: 15),

            // CONFIRM PASSWORD
            TextField(
              obscureText: hideConfirmPassword,

              decoration: InputDecoration(
                labelText: "Confirm Password",
                hintText: "Re-enter your password",

                prefixIcon: const Icon(Icons.lock),

                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      hideConfirmPassword = !hideConfirmPassword;
                    });
                  },

                  icon: Icon(
                    hideConfirmPassword
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                ),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // REGISTER BUTTON
            SizedBox(
              width: double.infinity,
              height: 50,

              child: ElevatedButton(
                onPressed: () {},

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                ),

                child: const Text(
                  "Create Account",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // LOGIN LINK
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                const Text("Already have an account?"),

                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },

                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.pinkAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
