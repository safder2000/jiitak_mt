import 'package:flutter/material.dart';

import '../../../../../utils/constants.dart';

class CheckBoxFieldItem extends StatelessWidget {
  final String title;

  final bool mandatory;

  final List<NamedCheckbox> namedCheckBoxList;
  // final String description;

  CheckBoxFieldItem({
    required this.title,
    required this.namedCheckBoxList,
    this.mandatory = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: title.isNotEmpty,
          child: Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  color: kDarkGray,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                mandatory ? "*" : "",
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidth10,
            ],
          ),
        ),
        kHeight8,
        Row(
          children: [
            ...List.generate(
                namedCheckBoxList.length, (index) => namedCheckBoxList[index])
          ],
        ),
      ],
    );
  }
}

class NamedCheckbox extends StatelessWidget {
  NamedCheckbox({
    super.key,
    this.title = '',
    required this.onChanged,
    required this.value,
  });
  final void Function(bool?) onChanged;
  final String title;
  bool value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          child: Checkbox(
            visualDensity: const VisualDensity(
              horizontal:
                  VisualDensity.minimumDensity, // Adjust the horizontal density
              vertical:
                  VisualDensity.minimumDensity, // Adjust the vertical density
            ),
            activeColor: kOrangeGradientDark,
            value: value,
            onChanged: onChanged,
          ),
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 19, color: kDarkGray),
        ),
        kWidth10,
        kWidth5
      ],
    );
  }
}
