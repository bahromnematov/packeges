import 'package:flutter/material.dart';
import 'package:packages/model/user_model.dart';
import 'package:packages/pages/language_page.dart';
import 'package:packages/service/pref_service.dart';
import 'package:packages/service/secure_storage.dart';

class SharedPage extends StatefulWidget {
  const SharedPage({super.key});

  @override
  State<SharedPage> createState() => _SharedPageState();
}

class _SharedPageState extends State<SharedPage> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  void login() {
    String email = _emailController.text.trim().toString();
    String password = _passwordController.text.trim().toString();
    SharedPrefService.setName(email);
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {
      return LanguagePage();
    }));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    User user1 = User("name", "email", "password");

    SecureStorage.setApi("2eebeaa50122431cb3c2a603d3920bae");
    SecureStorage.getApi().then((value) => {print(value.toString())});

    SecureStorage.removeApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Login",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 45,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                  hintText: "Type Your username",
                  prefixIcon: Icon(Icons.person)),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                  hintText: "Type your Password", prefixIcon: Icon(Icons.lock)),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forget Password",
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                login();
              },
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(
                        colors: [Colors.blue, Colors.purpleAccent])),
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "Or Sign Up Using",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.indigo),
                    child: Center(
                      child: Icon(
                        Icons.facebook,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue),
                    child: Center(
                      child: Icon(
                        Icons.flutter_dash,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.red),
                    child: Center(
                      child: Icon(
                        Icons.g_mobiledata,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
