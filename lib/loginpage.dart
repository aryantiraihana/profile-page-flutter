import 'package:flutter/material.dart';
import 'profilemenu.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late Color myColor;
  late Size mediaSize;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _roleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _schoolController = TextEditingController();
  bool rememberUser = false;

  @override
  Widget build(BuildContext context) {
    myColor = Colors.green.shade400;
    mediaSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: myColor,
        image: DecorationImage(
            image: const AssetImage("assets/images/bglogin.png"),
            fit: BoxFit.cover,
            colorFilter:
                ColorFilter.mode(myColor.withOpacity(0.2), BlendMode.dstATop)),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              // Positioned(top: 80, child: _buildTop()),
              Positioned(top: 160, bottom: 0, child: _buildBottom()),
            ],
          )),
    );
  }

  // Widget _buildTop(){
  //   return SizedBox(
  //     width: mediaSize.width,
  //     child:  const Column(
  //       mainAxisSize: MainAxisSize.min,
  //       children: [
  //         Icon(Icons.location_on_sharp, size: 100, color: Colors.white),
  //         Text("Go Map", style: TextStyle(
  //           color: Colors.white,
  //           fontWeight: FontWeight.bold,
  //           fontSize: 40,
  //           letterSpacing: 2),
  //         )
  //       ],
  //     ),
  //   );
  // }

  Widget _buildBottom() {
    return SizedBox(
      width: mediaSize.width,
      child: Card(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: Padding(
            padding: const EdgeInsets.all(64.0),
            child: _buildForm(),
          )),
    );
  }

  Widget _buildForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Welcome",
            style: TextStyle(
                color: myColor, fontSize: 32, fontWeight: FontWeight.w500)),
        _buildGreyText("Please input with your information"),
        const SizedBox(height: 60),
        _buildGreyText("Name"),
        _buildInputField(_nameController, "Please input your name"),
        const SizedBox(height: 40),
        _buildGreyText("Role"),
        _buildInputField(_roleController, "Please input your role"),
        const SizedBox(height: 40),
        _buildGreyText("Self Description"),
        _buildInputField(
            _descriptionController, "Please input your description"),
        const SizedBox(height: 40),
        _buildGreyText("School"),
        _buildInputField(_schoolController, "Please input your school"),
        const SizedBox(height: 20),
        // _buildRememberForgot(),
        const SizedBox(height: 20),
        _buildLoginButton(),
        const SizedBox(height: 20),
        // _buildOtherLogin(),
      ],
    );
  }

  Widget _buildGreyText(String text) {
    return Text(
      text,
      style: const TextStyle(color: Colors.grey),
    );
  }

  // Widget _buildInputField(TextEditingController controller,
  //   {isPassword = false}){
  //     return TextField(
  //       controller: controller,
  //       decoration: InputDecoration(
  //         suffixIcon: isPassword?Icon(Icons.remove_red_eye):Icon(Icons.done),
  //       ),
  //       obscureText: isPassword,
  //     );
  //   }

  Widget _buildInputField(TextEditingController controller, String hintText) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    );
  }

  // Widget _buildRememberForgot(){
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //     children: [
  //       Row(
  //         children: [
  //           Checkbox(value: rememberUser, onChanged: (value){
  //             setState(() {
  //               rememberUser = value!;
  //             });
  //           }),
  //           _buildGreyText("Remember me")
  //         ],
  //       ),
  //       TextButton(onPressed: (){}, child: _buildGreyText("I Forgot my Password"))
  //     ],
  //   );
  // }

  Widget _buildLoginButton() {
    return ElevatedButton(
      onPressed: () {
        if (_nameController.text.isEmpty ||
            _roleController.text.isEmpty ||
            _descriptionController.text.isEmpty ||
            _schoolController.text.isEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              backgroundColor: Colors.red,
              content: Text(
                'Isi form login dengan lengkap!',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MyProfile(
                name: _nameController.text,
                role: _roleController.text,
                description: _descriptionController.text,
                school: _schoolController.text,
              ),
            ),
          );
        }
        // debugPrint("Email : ${emailController.text}");
        // debugPrint("Password : ${passwordController.text}");
        //  Navigator.push(
        //   context,
        //     MaterialPageRoute(
        //       builder: (context) => MyProfile(
        //         name: _nameController.text,
        //         role: _roleController.text,
        //         description: _descriptionController.text,
        //         school: _schoolController.text,
        //       ),
        //     ),
        // );
      },
      style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          elevation: 20,
          shadowColor: myColor,
          minimumSize: const Size.fromHeight(60)),
      child: const Text("Send"),
    );
  }

  // Widget _buildOtherLogin(){
  //   return Center(
  //     child: Column(
  //       children: [
  //         _buildGreyText("Or login with"),
  //         const SizedBox(height: 10),
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //           children: [
  //             Tab(icon: Image.asset("assets/images/google.png"))
  //           ],
  //         )
  //       ],
  //     ),
  //   );
  // }
}
