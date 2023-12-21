import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../strings.dart';

class CustomDropdown3 extends StatelessWidget {
  const CustomDropdown3({
    Key? key,
    required this.options,
    required this.hint,
    this.value,
    this.width = 124,
    required this.onChanged,
    this.isExpanded = false,
    this.borderColor,
  }) : super(key: key);

  final List<String> options;
  final String hint;
  final String? value;
  final void Function(String?) onChanged;
  final bool isExpanded;
  final double width;

  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      padding: const EdgeInsets.only(left: 20),
      width: width * 1.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: borderColor ?? Colors.grey,
        ),
      ),
      child: Center(
        child: DropdownButton<String>(
          icon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SvgPicture.asset(
              arrowDownSvg,
              // width: 30,
              height: 30,
            ),
          ),
          dropdownColor: Colors.white,
          hint: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              hint,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          value: value,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
          isExpanded: isExpanded,
          underline: const SizedBox(),
          borderRadius: BorderRadius.circular(10),
          items: options
              .map(
                (e) => DropdownMenuItem<String>(
                  value: e.toString(),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      e,
                      style: const TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
              .toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
