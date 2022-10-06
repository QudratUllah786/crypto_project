import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
                SafeArea(
                  child: Padding(padding: EdgeInsets.only(top: 30.h),
                  child: SingleChildScrollView(
                    child: Column(
                     // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Sign Up',style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700,color: Color.fromRGBO(255, 255, 255, 1)),),
                        SizedBox(height: 10,),
                        Text("Create new account to begin your",style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child: Text("journey with Crypto Alert",style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),fontSize: 16),),
                        ),
                        SizedBox(height: 50.h,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Name',
                              hintStyle: TextStyle(
                                  color: Color.fromRGBO(58, 52, 52, 1)
                              ),
                              prefixIcon: Icon(Icons.person, color: Color.fromRGBO(58, 52, 52, 1)),
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
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Email',
                              hintStyle: TextStyle(
                                  color: Color.fromRGBO(58, 52, 52, 1)
                              ),
                              prefixIcon: Icon(Icons.mail, color: Color.fromRGBO(58, 52, 52, 1)),
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
                              suffixIcon: Icon(Icons.remove_red_eye,color: Color.fromRGBO(58, 52, 52, 1)),
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                  color: Color.fromRGBO(58, 52, 52, 1)
                              ),
                              prefixIcon: Icon(Icons.lock, color: Color.fromRGBO(58, 52, 52, 1)),
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
                              suffixIcon: Icon(Icons.remove_red_eye,color: Color.fromRGBO(58, 52, 52, 1)),
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Confirm Password',
                              hintStyle: TextStyle(
                                  color: Color.fromRGBO(58, 52, 52, 1)
                              ),
                              prefixIcon: Icon(Icons.lock, color: Color.fromRGBO(58, 52, 52, 1)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Checkbox(value: false, onChanged: null,side: BorderSide(
                                color: Colors.white
                            ),),
                            Text('I agree',style: TextStyle(color: Colors.white),),
                            TextButton(onPressed: (){}, child: Text('privacy policies',style: TextStyle(color: Color.fromRGBO(207, 254, 95, 1)),)),
                            Text('and',style: TextStyle(color: Colors.white),),
                          ],
                        ),
                        TextButton(onPressed: (){}, child: Text('Terms and Conditions',style: TextStyle(color: Color.fromRGBO(207, 254, 95, 1)),)),

                        Container(
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
                          child: Text('Sign Up',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700),),
                        ),
                        SizedBox(height: 10.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an account?",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: Color.fromRGBO(255, 255, 255, 1)),),
                            TextButton(onPressed: (){
                              Navigator.pop(context);
                            }, child: Text('Sign In',style: TextStyle(color: Color.fromRGBO(207, 254, 95, 1)),)),
                          ],
                        )
                      ],
                    ),
                  ),),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
