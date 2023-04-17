import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_music/SQLite/database_helper.dart';
import 'package:flutter_application_music/paginas/Methods/textfield.dart';
import 'package:flutter_application_music/paginas/Model/user_model.dart';
import 'package:flutter_application_music/paginas/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final userId = TextEditingController();
  final userName = TextEditingController();
  final userEmail = TextEditingController();
  final userPassword = TextEditingController();
  final userCPassword = TextEditingController();

  final formKey = GlobalKey<FormState>();

  createUsers() {
    final db = DatabaseHelper();
    var result = db.createUsers(Users(
        userName: userName.text,
        userPassword: userPassword.text,
        userId: userId.text,
        userEmail: userEmail.text));
    // ignore: unrelated_type_equality_checks
    if (result != -1) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Login()));
    } else {
      print("Failed sign up");
    }
  }

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Form(
          //key: formkey,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xFF80CBC4),
                    Color(0xFF80DEEA),
                    Color(0xFF1DE9B6),
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
                  'Regístrate ',
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
                    controller: userId,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "ID Usuario",
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
                        return "ID is empty";
                      } else {
                        userId.text = value;
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
                      } else {
                        userName.text = value;
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
                    controller: userEmail,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email",
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
                        return "Email is empty";
                      } else {
                        userEmail.text = value;
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
                      } else {
                        userPassword.text = value;
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
                      "Registrarse",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        //Login funtions
                        createUsers();
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
                      "Ya tienes cuenta?",
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
                                builder: (context) => const Login()));
                      },
                      child: Text(
                        'Log In',
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
