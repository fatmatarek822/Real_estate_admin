import 'package:flutter/material.dart';

void navigateTo(context, Widget) =>  Navigator.push(
  context,
  MaterialPageRoute(
      builder: (context) => Widget
  ),
);

void navigateAndFinish(context, Widget) =>  Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(
      builder: (context) => Widget
  ),
      (Route<dynamic> route) => false,
);

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  String? Function(String?)? onSubmit,
  String? Function(String?)? onChange,
//    String? Function(String?)? ontap,
//   Function? ontap,
  required String? Function(String?)? validate,
  required String label,
  required IconData prefix,
  IconData? suffix,
  bool isPassword = false,
  bool isClickable = true,
  VoidCallback? suffixpressed,
  VoidCallback? ontap,
  final TextStyle? labelStyle,
  Color? color,
  final TextStyle? style,
}) =>
    TextFormField(
      validator: validate,
      obscureText: isPassword,
      controller: controller,
      keyboardType: type,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      onTap: ontap,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: labelStyle,
        prefixIcon: Icon(
          prefix,
          color: color,
        ),
        suffixIcon: suffix != null
            ? IconButton(
            onPressed: suffixpressed,
            icon: Icon(
              suffix,
              color: color,
            ))
            : null,

        border: OutlineInputBorder(borderSide:BorderSide(width: 3, color: Colors.greenAccent),borderRadius: BorderRadius.circular(30),),
      //  enabledBorder: OutlineInputBorder(borderSide:BorderSide(width: 3, Colors.greenAccent),borderRadius: BorderRadius.circular(30),),
     //   focusedBorder: OutlineInputBorder(borderSide:BorderSide(width: 3, Colors.greenAccent),borderRadius: BorderRadius.circular(30),),
      //  errorBorder: OutlineInputBorder(borderSide:BorderSide(width: 3 , Colors.greenAccent), borderRadius: BorderRadius.circular(30),),
      ),
      style: style,

    );
Widget defaultButton({
  double width = double.infinity,
  final Border? buttonStyle,
  Color background = Colors.greenAccent,
  required VoidCallback function,
  required String text,
  bool? isUpperCase,
}) =>
    Container(
      width: width,
      color: background,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
