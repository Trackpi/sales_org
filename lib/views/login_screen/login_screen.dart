import 'package:flutter/material.dart';
import 'package:sales_org/gen/assets.gen.dart';
import 'package:sales_org/routes/app_routes.dart';
import 'package:sales_org/utils/size_utils.dart';
import 'package:sales_org/widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeUtils.width * .05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: SizeUtils.height * 0.06,
                ),
                Text(
                  "Login",
                  style: TextStyle(
                    color: Color(0xFFFCB205),
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: SizeUtils.height * 0.04,
                ),
                //Company logo
                Image.asset(
                  Assets.png.logo.path,
                  height: SizeUtils.height * 0.14,
                ),
                SizedBox(
                  height: SizeUtils.height * 0.02,
                ),
                Text(
                  "Your Strategic Growth Partner",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: SizeUtils.height * 0.07,
                ),
                //two custom textfields
                CustomTextfield(
                  hintText: "Employee ID",
                  isLoginPage: true,
                ),
                SizedBox(
                  height: SizeUtils.height * 0.02,
                ),
                CustomTextfield(
                  hintText: "Password",
                  isLoginPage: true,
                  isPassword: true,
                ),
                SizedBox(
                  height: SizeUtils.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        //forgot passwor alertbox popup
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              backgroundColor: Color(0xFF1A1A1A),
                              content: Container(
                                width: SizeUtils.width * .8,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Forgot Password ?",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                      ),
                                    ),
                                    SizedBox(
                                      height: SizeUtils.height * 0.02,
                                    ),
                                    Text(
                                      textAlign: TextAlign.center,
                                      "If you Forget Password \n please check your offer letter or \n contact your manager !!",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 13,
                                      ),
                                    ),
                                    SizedBox(
                                      height: SizeUtils.height * 0.02,
                                    ),
                                    Divider(
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                              ),
                              actions: [
                                Center(
                                  child: InkWell(
                                    onTap: () {
                                      //to pop back from alertbox
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      "OK",
                                      style: TextStyle(
                                        color: Color(0xFFFCB205),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Text(
                        "Forgot Password ?",
                        style: TextStyle(
                          color: Color(0xFFFCB205),
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: SizeUtils.height * 0.05,
                ),
                //login button
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.homeScreen);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFFCB205),
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeUtils.height * 0.1,
                ),
                //navigate to register screen
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      width: SizeUtils.width * 0.01,
                    ),
                    Text(
                      "Register",
                      style: TextStyle(
                        color: Color(0xFFFCB205),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeUtils.height * 0.07,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
