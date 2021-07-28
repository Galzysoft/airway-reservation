import 'package:airway_reservation/net/flutterFire.dart';
import 'package:airway_reservation/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Authentication extends StatefulWidget {
  const Authentication({ Key ?key}) : super(key: key);

  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: new Text("Airway Reservation "),),
      backgroundColor: Colors.red,
      body: new Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          width: MediaQuery
              .of(context)
              .size
              .width,
          child: Form(
            key: _formkey,
            child: Center(child: Column(
              children: [
                SizedBox(height: 70.h,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _email,
                    keyboardType:
                    TextInputType.emailAddress,
                    style: TextStyle(fontSize: 16.sp,
                        color: Colors.black,
                        fontWeight:
                        FontWeight.bold),
                    decoration: InputDecoration(
                        fillColor:
                        Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide:
                            BorderSide(style: BorderStyle.none, width: 0),

                            borderRadius: BorderRadius.all(
                                Radius.circular(
                                    27.0.r))),
                        // prefixIcon:
                        // Padding(
                        //   padding:  EdgeInsets.all(4.0.w),
                        //   child: Container(
                        //       decoration:
                        //       BoxDecoration(
                        //         color:Color(0xFFFFFFFF).withOpacity(0.4),
                        //         borderRadius:
                        //         BorderRadius.only(
                        //           topLeft:
                        //           Radius.circular(80.0.r),
                        //           topRight:
                        //           Radius.circular(80.0.r),
                        //           bottomLeft:
                        //           Radius.circular(80.0.r),
                        //           bottomRight:
                        //           Radius.circular(80.0.r),
                        //         ),
                        //       ),
                        //       // child: Image.asset("assets/images/PASSWORD.png",height: 40.h,width: 40.w,
                        //       //     color: Color(
                        //       //         0XFF00AFEF))
                        //
                        //   ),
                        // ),

                        labelText:
                        "Email"
                            "",
                        labelStyle: TextStyle(fontSize: 16.sp,
                            color: Colors
                                .black54)
                    ),

                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter _email";
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _password,
                    obscureText: true,
                    keyboardType:
                    TextInputType.emailAddress,
                    style: TextStyle(fontSize: 16.sp,
                        color: Colors.black,
                        fontWeight:
                        FontWeight.bold),
                    decoration: InputDecoration(
                        fillColor:
                        Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide:
                            BorderSide(style: BorderStyle.none, width: 0),

                            borderRadius: BorderRadius.all(
                                Radius.circular(
                                    27.0.r))),
                        // prefixIcon:
                        // Padding(
                        //   padding:  EdgeInsets.all(4.0.w),
                        //   child: Container(
                        //       decoration:
                        //       BoxDecoration(
                        //         color:Color(0xFFFFFFFF).withOpacity(0.4),
                        //         borderRadius:
                        //         BorderRadius.only(
                        //           topLeft:
                        //           Radius.circular(80.0.r),
                        //           topRight:
                        //           Radius.circular(80.0.r),
                        //           bottomLeft:
                        //           Radius.circular(80.0.r),
                        //           bottomRight:
                        //           Radius.circular(80.0.r),
                        //         ),
                        //       ),
                        //       // child: Image.asset("assets/images/PASSWORD.png",height: 40.h,width: 40.w,
                        //       //     color: Color(
                        //       //         0XFF00AFEF))
                        //
                        //   ),
                        // ),

                        labelText:
                        "password",
                        labelStyle: TextStyle(fontSize: 16.sp,
                            color: Colors
                                .black54)
                    ),

                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter _email";
                      }
                    },
                  ),
                ),

                SizedBox(height: 70.h,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.all(
                            Radius.circular(
                                27.0.r))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(onPressed: () async {
                        bool shouldnavigate =await Login(
                            _email.text, _password.text);
                        if(shouldnavigate){

                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (
                                      BuildContext context) =>
                                      HomePage()));


                        }
                      },
                          elevation: 50,
                          splashColor: Colors.red,
                          textColor: Colors.red,
                          child: Center(child: Text("login"),)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                          Radius.circular(
                              27.0.r))
                  ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(onPressed: () async {
                        bool shouldnavigate =await Register(
                            _email.text,_password.text);
                   if(shouldnavigate){

                     Navigator.pushReplacement(
                         context,
                         MaterialPageRoute(
                             builder: (
                                 BuildContext context) =>
                                 HomePage()));


                   }
                      },
                          elevation: 50,
                          splashColor: Colors.red,
                          textColor: Colors.red,
                          child: Center(child: Text("signup"),)),
                    ),
                  ),
                )
              ],
            )),
          )),);
  }
}
