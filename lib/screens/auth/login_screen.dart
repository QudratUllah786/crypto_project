import 'package:cryptoproject/screens/auth/signup_screen.dart';
import 'package:cryptoproject/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('asstes/images/login_img.png'),fit: BoxFit.cover),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('asstes/images/blur effect.png'),fit: BoxFit.cover),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Sign In',style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700,color: Color.fromRGBO(255, 255, 255, 1)),),
                      SizedBox(height: 10,),
                      Text('Sign in your account to get started',style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),),
                      SizedBox(height: 100.h,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Email',
                            hintStyle: TextStyle(
                            ),
                            prefixIcon: Icon(Icons.mail,color: Colors.black,),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.h,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.remove_red_eye,color: Colors.black,),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Password',
                            hintStyle: TextStyle(
                            ),
                            prefixIcon: Icon(Icons.lock,color: Colors.black,),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 130),
                        child: TextButton(onPressed: (){}, child: Text('forgot password?',style: TextStyle(color: Color.fromRGBO(215, 214, 214, 1)),)),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>Homepage()));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 241.w,
                          height: 41.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(154, 201, 56, 1)
                            // gradient: LinearGradient(colors: [
                            //   Color.fromRGBO(154, 201, 56, 1),
                            //   Color.fromRGBO(207, 254, 95, 1),
                            // ])
                          ),
                          child: Text('Sign In',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700),),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account?",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: Color.fromRGBO(255, 255, 255, 1)),),
                          TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (builder)=>SignupScreen()));
                          }, child: Text('Sign Up',style: TextStyle(color: Color.fromRGBO(207, 254, 95, 1)),)),
                        ],
                      )

                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

