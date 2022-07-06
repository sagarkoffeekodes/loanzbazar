import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../color/appcolor.dart';
import '../components/component.dart';


class SignupPage extends StatefulWidget {
    SignupPage({Key key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final key = GlobalKey<FormState>();


  bool isLoading = false;



  addDeviceData()async{

    setState(() {
      isLoading = true;
    });

    // final uri = 'https://quickmudrafinonline.in/app-inquiry/api/insertcontact';
    var request = http.MultipartRequest("POST", Uri.parse("https://quickmudrafinonline.in/app-inquiry/api/insertcontact"));


    // request.fields[‘key_value_from_api’]=”YOUR_VALUE”;
    request.fields['visitor_name']= name.text;
    request.fields['visitor_email']= email.text;
    request.fields['visitor_loan_type']=_value1;
    request.fields['visitor_phone']=mobile.text;
    request.fields['state']=_value;
    request.fields['city']= city.text;
    request.fields['comment_box']= commentBox.text;
    var response =await request.send();
    // var map =new Map<String,dynamic>();
    // map['visitor_name']= name.text;
    // map['visitor_email']= email.text;
    // map['visitor_loan_type']=_value1;
    // map['visitor_phone']=mobile.text;
    // map['state']=_value;
    // map['city']= city.text;
    // map['comment_box']= commentBox.text;
    // http.Response response = await http.post(uri, body: map,);


    // var data = {
    //
    //   "visitor_name": name.text,
    //   "visitor_email": email.text,
    //   "visitor_loan_type": _value1,
    //   "visitor_phone":mobile.text ,
    //   "state": _value,
    //   "city": city.text,
    //   "comment_box": commentBox.text,
    // };

    print("hiiiii:${response}");

    // var response = await CallApi().postData(map,'app-inquiry/api/insertcontact');

    if (response.statusCode == 200) {
      // var body = json.decode(response.body);
      // print(body);
      setState(() {
        isLoading= false;
      });
      // Navigator.pop(context,'refresh');
      isLoading=false;
    }

    else {
      setState(() {
        isLoading= false;
      });

      throw Exception('Failed to load ');
    }
  }




  String _value1 = 'Select Loan';
  String _value = 'Select State';

  var items =  ['Select Loan','Start Up Loan','Education Loan','Car loan','Home Loan','Other'];
  var items2 =  [  "Select State", "Andhra Pradesh","Arunachal Pradesh","Assam",   "Bihar", "Goa", "Gujarat","Haryana", "Himachal Pradesh",
    "Jharkhand",  "Karnataka",   "Kerala", "Madhya Pradesh" , "Mizoram", "Meghalaya",   "Bihar","Manipur","Nagaland",
    "Odisha","Punjab","Rajasthan","Sikkim","Tamil Nadu","Telangana","Tripura","Uttar Pradesh","Uttarakhand","West Bengal","Maharashtra"];

  // List<ListItem> _dropdownItems1 = [
  // ListItem(0, "Select Loan"),
  // ListItem(1, "Start Up Loan"),
  // ListItem(2, "Education Loan"),
  // ListItem(3, "Car loan"),
  // ListItem(4, "Home Loan"),
  //   ListItem(5, "Other"),
  // ];


  List<ListItem> _dropdownItems = [


  ];
  TextEditingController email=TextEditingController();
  TextEditingController name=TextEditingController();
  TextEditingController mobile=TextEditingController();
  TextEditingController city=TextEditingController();
  TextEditingController commentBox=TextEditingController();



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // addDeviceData();

  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColor.white,
      body: Form(
        key: key,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(

              children: [

                Container(
                    alignment: Alignment.center,
                    child: Image.asset("assets/images/Loanz PNG.png")),


                SizedBox(height: 20,),


                Container(
                  alignment: Alignment.center,

                  padding: EdgeInsets.only(left: 30),
                  child: Text("New Customer Registration",textAlign: TextAlign.center,
                      style: TextStyle(color:AppColor.lightblack,fontWeight: FontWeight.bold,fontSize: 16,fontFamily: 'NotoSans-Regular')),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: 30),
                  child: Text("Loan Amount :MinLimits-50,000/-MaxLimits-10,00,000/",textAlign: TextAlign.center,
                      style: TextStyle(color:Colors.deepOrange,fontWeight: FontWeight.bold,fontSize: 14,fontFamily: 'NotoSans-Regular')),
                ),


SizedBox(height: 50,),

              //  SizedBox(height: 10,),



                Container(
                    width: 320,
                    padding: EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: name,
                      validator: validatename,
                      style: TextStyle(

                          color: AppColor.darkblack
                      ),

                      autocorrect: true,
                      decoration:Inputdec1.inputDecoration.copyWith( hintText: 'FullName',
                        prefixIcon:Padding(
                          padding:  EdgeInsets.all(14.0),
                          child:Icon(Icons.account_circle,color: AppColor.grey,),
                        ),
                        hintStyle: TextStyle(color: AppColor.Blacktext),
                        filled: true,
                        fillColor:AppColor.white,

                      ),


                      ),
                ),

                SizedBox(height: 10,),

                //SizedBox(height: 10,),
                Container(
                    width: 320,
                    padding: EdgeInsets.all(10.0),
                    child: TextFormField(
                      style: TextStyle(
                          color: AppColor.darkblack

                      ),
                       controller: email,
    //                   validator: (value){
    //                if (!RegExp(
    //       r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
    //     .hasMatch(value)) {
    // return 'INVALID MAIL';}
    //                   },
                      autocorrect: true,
                      decoration:Inputdec1.inputDecoration.copyWith(
                        hintText: 'Enter Your Mail (Optional)',

                        prefixIcon:Padding(
                          padding:  EdgeInsets.all(14.0),
                          child: Icon(Icons.email_outlined),
                        ),
                        hintStyle: TextStyle(color: AppColor.Blacktext),
                        filled: true,
                        fillColor:AppColor.white,
                      ),)
                ),



                SizedBox(height: 10,),
                Padding(
                  padding:  EdgeInsets.only(left: 50,right: 50),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColor.black3button)
                    ),
                    padding: EdgeInsets.only(left: 30,right: 30),
                    child:DropdownButtonHideUnderline(
                      child: DropdownButton(
                        value: _value1,
                        items:items.map((String items) {
                          return DropdownMenuItem(
                              value: items,
                              child: Text(items)
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _value1 = value;
                          });
                        },
                        hint:Text("Select Loan Type"),
                        disabledHint:Text("Disabled"),
                        elevation: 8,
                        style:TextStyle( color: AppColor.darkblack
                            , fontSize: 16),
                        icon: Icon(Icons.arrow_drop_down_circle),
                        iconDisabledColor: Colors.red,
                        iconEnabledColor: Colors.black,
                        isExpanded: true,
                        dropdownColor: Colors.white,


                      ),
                    ),
                  ),
                ),



                Container(
                    width: 320,
                    padding: EdgeInsets.all(10.0),
                    child: TextFormField(
                      // controller: name,
                      validator: validatephone,
                      style: TextStyle(

                          color: AppColor.darkblack

                      ),
                      controller: mobile,
                      keyboardType:TextInputType.number,
                      autocorrect: true,
                      decoration:Inputdec1.inputDecoration.copyWith(
                        hintText: 'Enter Mobile',

                        prefixIcon:Padding(
                          padding:  EdgeInsets.all(14.0),
                          child:Icon(Icons.phone,color: AppColor.grey,),
                        ),
                        hintStyle: TextStyle(color: AppColor.Blacktext),
                        filled: true,
                        fillColor:AppColor.white,

                      ),)
                ),
                SizedBox(height: 10,),
                Padding(
                  padding:  EdgeInsets.only(left: 50,right: 50),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColor.black3button)
                    ),
                    padding: EdgeInsets.only(left: 30,right: 30),
                    child:DropdownButtonHideUnderline(
                      child: DropdownButton(
                        value: _value,
                        items:items2.map((String items) {
                          return DropdownMenuItem(
                              value: items,
                              child: Text(items)
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        },
                        hint:Text("Select item"),
                        disabledHint:Text("Disabled"),
                        elevation: 8,
                        style:TextStyle(color: AppColor.darkblack
                            , fontSize: 16),
                        icon: Icon(Icons.arrow_drop_down_circle),
                        iconDisabledColor: Colors.red,
                        iconEnabledColor: Colors.black,
                        isExpanded: true,
                        dropdownColor: Colors.white,


                      ),
                    ),
                  ),
                ),


                SizedBox(height: 10,),
                Container(
                    width: 320,
                    padding: EdgeInsets.all(10.0),
                    child: TextFormField(
                      // controller: name,
                      validator: validatecity,
                      style: TextStyle(

                          color: AppColor.darkblack

                      ),
                       controller: city,
                      autocorrect: true,
                      decoration:Inputdec1.inputDecoration.copyWith(
                        hintText: 'Enter City Name',
                        prefixIcon:Padding(
                          padding:  EdgeInsets.all(14.0),
                          child: Icon(Icons.location_city_rounded),
                        ),
                        hintStyle: TextStyle(color: AppColor.Blacktext),
                        filled: true,
                        fillColor:AppColor.white,
                      ),)
                ),
                SizedBox(height: 10,),
                Container(
                    width: 320,
                    padding: EdgeInsets.all(10.0),
                    child: TextFormField(
                      // controller: name,
                      maxLines: 3,


                      style: TextStyle(

                          color: AppColor.darkblack

                      ),
                      controller: commentBox,
                      autocorrect: true,
                      decoration:Inputdec1.inputDecoration.copyWith(
                        hintText: 'Comment Box',


                        hintMaxLines: 5,
                        prefixIcon:Padding(
                          padding:  EdgeInsets.all(14.0),
                          child: Icon(Icons.comment_bank_outlined),
                        ),
                        hintStyle: TextStyle(color: AppColor.Blacktext),
                        filled: true,
                        fillColor:AppColor.white,

                      ),)
                ),




                SizedBox(height: 10,),




SizedBox(height: 20,),

                Container(
                    padding: EdgeInsets.only(left: 30,right: 30),
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(onPressed: (){
                      if(key.currentState.validate()){
                        addDeviceData();
                        Fluttertoast.showToast(
                            msg: "Thank you for your Registration",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.black,
                            textColor: Colors.white,
                            fontSize: 16.0
                        );

// ignore: missing_required_param
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (BuildContext context) =>SignupPage()));
                      }
                    },
                        style: ButtonStyle( shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),

                            )
                        ),
                          backgroundColor: MaterialStateProperty.all<Color>(AppColor.darkblack),
                        ),
                        child: Text("Submit",style: TextStyle(
                            color: Colors.white,fontFamily: 'NotoSans-Bold',fontWeight: FontWeight.bold,fontSize: 16
                        ),))),
                SizedBox(height: 30,)



              ],





            ),
          ),
        ),
      ),

    );
  }
}




String validatename(String value) {
  if (value.isEmpty) {
    return  'ENTER YOUR NAME';
  }

  return null;
}
String validatephone(String value) {
  if (value.isEmpty) {
    return  'ENTER YOUR PHONE';
  }

  return null;
}
String validatecity(String value) {
  if (value.isEmpty) {
    return  'ENTER YOUR CITY';
  }

  return null;
}


String validatePassword(String value) {
  if (value.isEmpty) {
    return  'ENTER YOUR PASSWORD';
  }
  if (value.length < 5) {
    return  'Use More than 5 Character';
  }
  return null;
}


String validateName(String value) {
  // if(value.isEmpty){
  //   return "Enter your EMAIL";
  // }
  Pattern pattern =
      '@gmail.com';
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(value)) {
    return '@gmail.com must be require';
  }

  return null;
}


class ListItem{
  int value;
  String name;
  ListItem(this.value, this.name);
}