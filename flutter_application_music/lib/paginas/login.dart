import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_music/SQLite/database_helper.dart';
import 'package:flutter_application_music/paginas/Methods/textfield.dart';
import 'package:flutter_application_music/paginas/Model/user_model.dart';
import 'package:flutter_application_music/paginas/Screens/home_screen.dart';
import 'package:flutter_application_music/paginas/signup.dart';
import 'package:flutter_application_music/paginas/menu.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final userName = TextEditingController();
  final userPassword = TextEditingController();

  final formKey = GlobalKey<FormState>();

  static var result;

  login() async {
    final db = DatabaseHelper();
    db.authentication(Users(
      userName: userName.text,
      userPassword: userPassword.text,
      userId: '',
    ));
    if (result == result) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Menu()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Username and password is incorrect")));
    }
  }

//para que la contraseña no se vea
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formKey,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromARGB(255, 105, 170, 179),
                    Color(0xFF1DE9B6),
                    Color(0xFF80CBC4),
                    Color(0xFF004D40),
                  ]),
            ),
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assest/img/music (3).png",
                  height: 100,
                  width: 100,
                ),
                Text(
                  'Higth Music',
                  style: TextStyle(
                    color: Color.fromARGB(255, 7, 138, 105),
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  'Inicia Sesión',
                  style: TextStyle(
                    color: Color.fromARGB(255, 5, 48, 44),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.teal.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    controller: userName,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Username",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Icon(
                          FontAwesomeIcons.userCircle,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username is empty";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.teal.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    controller: userPassword,
                    obscureText: _obscureText,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Icon(
                          FontAwesomeIcons.lock,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password is empty";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    minWidth: size.width * .90,
                    height: 50,
                    color: Color.fromARGB(255, 2, 104, 78),
                    child: Text(
                      "Iniciar",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        //Login funtions
                        login();
                      }
                    }),
                SizedBox(
                  height: 100,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an Account?",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp()));
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color.fromARGB(255, 5, 48, 44),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
