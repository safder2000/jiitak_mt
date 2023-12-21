import 'package:flutter/material.dart';
import 'package:jiitak_mt/utils/constants.dart';

class TextformFieldItem extends StatelessWidget {
  const TextformFieldItem(
      {super.key,
      TextEditingController? nameController,
      FocusNode? focusNode,
      TextInputAction? textInputAction,
      Widget? suffixIcon,
      required this.typeTitle,
      required this.labalText,
      this.errorText,
      this.onChanged,
      this.maxline,
      this.validater,
      this.isMandatory = false,
      this.keyboardtype,
      this.initialValue,
      this.onFieldSubmitted,
      this.obscureText = false})
      : _nameController = nameController,
        _textInputAction = textInputAction,
        _focusNode = focusNode,
        _suffixIcon = suffixIcon;

  final String? errorText;
  final String typeTitle;
  final String labalText;
  final int? maxline;
  final TextEditingController? _nameController;
  final String? Function(String?)? validater;
  final bool isMandatory;
  final void Function(String)? onChanged;
  final TextInputType? keyboardtype;
  final String? initialValue;
  final TextInputAction? _textInputAction;
  final FocusNode? _focusNode;
  final Widget? _suffixIcon;
  final bool obscureText;
  final Function? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CommonTextBlack(
                text: typeTitle,
                textSize: 19,
                weight: FontWeight.w500,
              ),
              isMandatory
                  ? const CommonTextBlack(
                      text: "*",
                      color: kTextRed,
                      textSize: 19,
                      weight: FontWeight.w400,
                    )
                  : const SizedBox()
            ],
          ),
          kHeight5,
          CustomTextformfield(
            obscureText: obscureText,
            errorText: errorText,
            suffixIcon: _suffixIcon,
            focusNode: _focusNode,
            textInputAction: _textInputAction,
            initialValue: initialValue,
            keyboardtype: keyboardtype,
            onChanged: onChanged,
            validater: validater,
            curserColor: kBlack,
            textcolor: kBlack,
            maxline: maxline ?? 1,
            borderRadius: 9,
            labelText: labalText,
            controller: _nameController,
          ),
        ],
      ),
    );
  }
}

class CommonTextBlack extends StatelessWidget {
  const CommonTextBlack(
      {super.key,
      required this.text,
      this.textSize = 19,
      this.textAlign,
      this.weight = FontWeight.normal,
      this.color = kDarkGray,
      this.lineHeight,
      this.maxline,
      this.textOverflow});
  final String text;
  final double textSize;
  final FontWeight weight;
  final TextAlign? textAlign;
  final Color color;
  final double? lineHeight;
  final int? maxline;
  final TextOverflow? textOverflow;
  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: maxline,
      overflow: textOverflow,
      text,
      textAlign: textAlign,
      style: TextStyle(
        height: lineHeight ?? 1,
        fontSize: textSize,
        // fontFamily: defaultFount,
        fontWeight: weight,
        color: color,
      ),
    );
  }
}

class CustomTextformfield extends StatelessWidget {
  const CustomTextformfield({
    super.key,
    required this.labelText,
    required this.controller,
    this.borderColor = kGray,
    this.curserColor = kWhite,
    this.borderRadius = 10,
    this.maxline = 1,
    this.isValid = true,
    this.textcolor = kGray,
    this.fontWeight,
    this.errorText,
    this.validater,
    this.onChanged,
    this.keyboardtype,
    this.initialValue,
    this.focusNode,
    this.textInputAction,
    this.suffixIcon,
    this.obscureText = false,
    this.onFieldSubmitted,
  });
  final String? errorText;
  final String labelText;
  final TextEditingController? controller;
  final Color borderColor;
  final FontWeight? fontWeight;
  final Color curserColor;
  final double borderRadius;
  final int maxline;
  final Color textcolor;
  final bool isValid;
  final String? Function(String?)? validater;
  final void Function(String)? onChanged;
  final TextInputType? keyboardtype;
  final String? initialValue;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final Widget? suffixIcon;
  final bool obscureText;
  final Function? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      initialValue: initialValue,
      keyboardType: keyboardtype ?? TextInputType.multiline,
      onChanged: onChanged,
      maxLines: maxline,
      controller: controller,
      style: TextStyle(
        fontSize: 19,
        // fontFamily: defaultFount,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: textcolor,
      ),
      validator: validater,
      onFieldSubmitted: (value) {
        if (onFieldSubmitted != null) {
          onFieldSubmitted!();
        }
      },
      //autofocus: false,
      focusNode: focusNode,
      textInputAction: textInputAction,
      cursorColor: curserColor,
      // cursorHeight: 52,

      decoration: InputDecoration(
        errorText: errorText,
        suffixIcon: suffixIcon,
        hintText: labelText,
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        hintStyle: TextStyle(
          fontSize: 19,
          // fontFamily: defaultFount,
          fontWeight: FontWeight.w400,
          color: textcolor,
        ),
        focusColor: borderColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(
              color: Colors.red), // Change the border color here
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: const BorderSide(color: kTextRed)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(color: borderColor)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        fillColor: Colors.transparent,
      ),
    );
  }
}
