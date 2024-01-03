
import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {
  final String placeholder;

  final double height;

  final double marginHorizontal;
  final double marginTop;
  final double marginBottom;

  final double borderRadius;

  final IconData? icon;
  const CustomInput(
      {super.key,
      this.placeholder = "placeholder",
      this.height = 48,
      this.marginHorizontal = 0,
      this.marginTop = 0,
      this.marginBottom = 8,
      this.borderRadius = 5,
      this.icon});


  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  void changeVisibility(obscureText){
    obscureText = !obscureText;
    debugPrint("obscure text: $obscureText");
  }

  @override
  Widget build(BuildContext context) {
    bool obscureText = widget.icon == Icons.lock ? true : false;
    return Padding(
      padding: EdgeInsets.only(
          top: widget.marginTop,
          bottom: widget.marginBottom,
          left: widget.marginHorizontal,
          right: widget.marginHorizontal),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        height: widget.height,
        child: TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius)),
            labelText: widget.placeholder,
            prefixIcon: Icon(widget.icon),
            suffixIcon: widget.icon == Icons.lock
                ? IconButton(
                    icon: obscureText ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
                    onPressed: (){
                      setState((){
                        changeVisibility(obscureText);
                      });
                      
                    },
                  )
                : null,
          ),
        ),
      ),
    );
  }
}
