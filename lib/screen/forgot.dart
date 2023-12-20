import 'package:flutter/material.dart';
import 'package:fyp_pro/screen/login.dart';


class forgot extends StatefulWidget {
  const forgot({super.key});

  @override
  State<forgot> createState() => _forgotState();
}

class _forgotState extends State<forgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title:
    Center(child: Text("Forgot Password ",
      style: TextStyle(fontStyle: FontStyle.italic,color: Colors.white),)),

    ),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
              height: 50,
              width: 45,
              image: AssetImage('images/forgot.png')
          ),

          SizedBox(height: 30,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextFormField(

              decoration: InputDecoration(

                  hintText: "Enter Old Password",
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),

                  )),

            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextFormField(

              decoration: InputDecoration(
                  hintText: "Enter New Password",
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
              ),
            ),
          ),
          SizedBox(height: 30,),
          Container(
            height: 40,
            width: 115,
            decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(color: Colors.pink.withOpacity(0.5),

                  )
                ]
            ),
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
            },
                style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,

                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                child: Text(
                  "Update",
                  style:TextStyle(
                    fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,

                  fontWeight: FontWeight.bold,


                ),
                  maxLines: 1,
                //  overflow: TextOverflow.ellipsis,

                ),

            ),
          )
        ],),
    );
  }
}