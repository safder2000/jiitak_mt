import 'package:flutter/material.dart';

import '../../../../../utils/constants.dart';

class AcquisitionTile extends StatelessWidget {
  const AcquisitionTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '2021 / 11 / 18',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 181, 181, 181)),
              ),
              Text(
                'スタンプを獲得しました。',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 69, 69, 69)),
              ),
            ],
          ),
        ],
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            '1 個',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 69, 69, 69)),
          ),
          kHeight5
        ],
      ),
    );
  }
}
