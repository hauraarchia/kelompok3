import 'package:flutter/material.dart';

class SettingsUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Setting UI",
      home: EditProfilePage(),
    );
  }
}

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'profilku',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 16, top: 25,),
        children: [
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: EdgeInsets.only(right: 16),
            child:  Center(
            child: Stack(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: Icon(
                    Icons.account_circle_rounded,
                    color: Colors.black,
                    size: 140,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(width: 4, color: Colors.white),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 10,
                          color: Colors.white.withOpacity(0.1),
                          offset: Offset(0, 10))
                    ],
                    shape: BoxShape.circle,
                  ),
                ),
                Positioned(
                    top: -85,
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 4,
                          color: Colors.white,
                        ),
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.add_photo_alternate_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                    )),
              ],
            ),
          ),
          ),
         
          SizedBox(
            height: 25,
          ),
          Container(
            alignment: Alignment(-1.0, 0.0),
            child: Text(
              "Edit Profile",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildTextField("Nama", "", false),
          buildTextField("Nomor hp", "", false),
          buildTextField("Kelas", "", false),
          SizedBox(
            height: 0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 50,
              ),
              Padding(
                padding: EdgeInsets.only(right: 16),
                child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                  side: BorderSide(color: Colors.black),
                ),
                child: Text(
                  "Simpan",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.2,
                      color: Colors.black),
                ),
              ) ,
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            alignment: Alignment(-1.0, 0.0),
            child: Text(
              "Akun",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          buildTextField("E-mail", "", false),
          buildTextField("Password", "", true),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 50,
              ),
              Padding(
                padding: EdgeInsets.only(right: 16),
                child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                  side: BorderSide(color: Colors.black),
                ),
                child: Text(
                  "Simpan",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.2,
                      color: Colors.black),
                ),
              ) ,
              ),
            ],
          ),
          Container(
           
            height: 150,
            child:Stack(
              children: [
                Positioned(
              right: -140.0,
              top: -00.0,
            child: ClipOval(
              child: Container(
                  height: 200,
                  width: 270,
                  color: Colors.lightBlue.withOpacity(0.1))) ,
          ),
          Positioned(
              right: 0.0,
              top: 60.0,
            child: ClipOval(
              child: Container(
                  height: 200,
                  width: 270,
                  color: Colors.lightBlue.withOpacity(0.1))) ,
          ),
              ],

            ),
          )
          
        ],
      ),
    );
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0, left: 35.0, right: 16),
      child: TextField(
        obscureText: isPasswordTextField ? showPassword : false,
        decoration: InputDecoration(
            suffixIcon: isPasswordTextField
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
                  )
                : null,
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
    );
  }
}
