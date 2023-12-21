import 'package:flutter/material.dart';

import '../../../../../utils/constants.dart';
import '../../../../../utils/widgets/custom_dropdown.dart';

class DropDownFieldItem extends StatelessWidget {
  final String title;
  final String hint1;
  final String? hint2;
  final String? value1;
  final double? width1;
  final double? width2;
  final String? value2;
  final List<String> options1;
  final List<String>? options2;
  final void Function(String?) onChanged1;
  final void Function(String?)? onChanged2;
  // final String description;

  DropDownFieldItem({
    required this.title,
    required this.options1,
    this.options2,
    this.width1,
    this.width2,
    required this.onChanged1,
    this.onChanged2,
    required this.hint1,
    this.hint2,
    required this.value1,
    this.value2,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                color: kDarkGray,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(
              "*",
              style: TextStyle(
                fontSize: 18,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            kWidth10,
          ],
        ),
        (options2 == null) ? kHeight10 : kHeight0,
        Row(
          children: [
            Builder(
              builder: (BuildContext context) {
                return CustomDropdown3(
                  width: width1 ?? 124,
                  options: options1,
                  hint: hint1,
                  value: value1,
                  onChanged: onChanged1,
                  isExpanded: true,
                  borderColor: kGray,
                );
              },
            ),
            kWidth20,
            (options2 != null)
                ? (onChanged2 != null)
                    ? const Text(
                        '~',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w200),
                      )
                    : SizedBox()
                : SizedBox(),
            kWidth20,
            (options2 != null)
                ? (onChanged2 != null)
                    ? Builder(
                        builder: (BuildContext context) {
                          return CustomDropdown3(
                            width: width2 ?? 124,
                            options: options2!,
                            hint: hint2 ?? "",
                            value: value2,
                            onChanged: onChanged2!,
                            isExpanded: true,
                            borderColor: kGray,
                          );
                        },
                      )
                    : SizedBox()
                : SizedBox(),
          ],
        ),
      ],
    );
  }
}
