import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak_mt/app/modules/edit_store_profile/controller/edit_store_controller.dart';
import 'package:jiitak_mt/app/modules/edit_store_profile/view/widgets/custom_buttons.dart';
import 'package:jiitak_mt/app/modules/edit_store_profile/view/widgets/custom_check_filed.dart';
import 'package:jiitak_mt/app/modules/edit_store_profile/view/widgets/edit_store_appbar.dart';
import 'package:jiitak_mt/app/modules/edit_store_profile/view/widgets/map_preview.dart';
import 'package:jiitak_mt/utils/constants.dart';
import 'package:jiitak_mt/utils/widgets/custom_textfield.dart';

import '../../../../utils/strings.dart';

import 'widgets/custom_dropdown_field.dart';
import 'widgets/image_field.dart';

class EditStoreProfileScreen extends StatelessWidget {
  EditStoreProfileScreen({Key? key}) : super(key: key);
  static String routeName = "/edit_store_profile_screen";
  final ctrl = Get.put(EditStoreController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Get.width / 7),
        child: const EditStoreAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              kHeight10,
              _addressSection(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 9),
                child: MapPreview(),
              ),
              kHeight20,
              _selectImageSection(),
              kHeight20,
              _selectTimeSection(),
              kHeight10,
              _checkBoxSection(),
              DropDownFieldItem(
                value1: ctrl.lunchTimeStarts.value.isEmpty
                    ? null
                    : ctrl.lunchTimeStarts.value,
                title: '営業時間',
                hint1: "料理カテゴリー選択",
                onChanged1: (value) {
                  if (value != null) {
                    ctrl.lunchTimeStarts.value = value;
                  }
                },
                width1: 210,
                options1: ctrl.hoursList,
              ),
              kHeight20,
              Row(
                children: [
                  SizedBox(
                    width: Get.width / 2.7,
                    child: const TextformFieldItem(
                      isMandatory: true,
                      typeTitle: '予算',
                      labalText: '¥ 1,000',
                    ),
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      kHeight20,
                      Text(
                        '~',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: Get.width / 2.7,
                    child: const TextformFieldItem(
                      typeTitle: '',
                      labalText: '¥ 2,000',
                    ),
                  ),
                ],
              ),
              kHeight5,
              const TextformFieldItem(
                isMandatory: true,
                typeTitle: 'キャッチコピー',
                labalText: '美味しい！リーズナブルなオムライスランチ！',
              ),
              const TextformFieldItem(
                isMandatory: true,
                typeTitle: '座席数',
                labalText: '40席',
              ),
              kHeight15,
              _checkBoxSection2(),
              kHeight20,
              ImageField(
                title: '店舗外観',
                description: '',
                images: const [img4, img1],
              ),
              kHeight15,
              const TextformFieldItem(
                isMandatory: true,
                typeTitle: '来店プレゼント名',
                labalText: 'いちごクリームアイスクリーム, ジュース',
              ),
              kHeight40,
              const SumbitBtn(),
              kHeight40,
            ],
          ),
        ),
      ),
    );
  }

  Column _checkBoxSection() {
    return Column(
      children: [
        CheckBoxFieldItem(
          title: '定休日',
          namedCheckBoxList: [
            NamedCheckbox(title: '月', onChanged: (value) {}, value: true),
            NamedCheckbox(title: '火', onChanged: (value) {}, value: false),
            NamedCheckbox(title: '水', onChanged: (value) {}, value: false),
            NamedCheckbox(title: '木', onChanged: (value) {}, value: false),
          ],
        ),
        CheckBoxFieldItem(
          title: '',
          namedCheckBoxList: [
            NamedCheckbox(title: '金', onChanged: (value) {}, value: false),
            NamedCheckbox(title: '土', onChanged: (value) {}, value: true),
            NamedCheckbox(title: '日', onChanged: (value) {}, value: true),
            NamedCheckbox(title: '祝', onChanged: (value) {}, value: false),
          ],
        ),
        kHeight20,
      ],
    );
  }

  Column _checkBoxSection2() {
    return Column(
      children: [
        CheckBoxFieldItem(
          title: '喫煙席',
          namedCheckBoxList: [
            NamedCheckbox(title: '有', onChanged: (value) {}, value: false),
            NamedCheckbox(title: '無', onChanged: (value) {}, value: true),
          ],
        ),
        kHeight20,
        CheckBoxFieldItem(
          title: '駐車場',
          namedCheckBoxList: [
            NamedCheckbox(title: '有', onChanged: (value) {}, value: false),
            NamedCheckbox(title: '無', onChanged: (value) {}, value: false),
          ],
        ),
        kHeight20,
        CheckBoxFieldItem(
          title: '来店プレゼント',
          namedCheckBoxList: [
            NamedCheckbox(
                title: '有（最大３枚まで）', onChanged: (value) {}, value: false),
            NamedCheckbox(title: '無', onChanged: (value) {}, value: false),
          ],
        ),
      ],
    );
  }

  Column _selectTimeSection() {
    return Column(
      children: [
        Obx(
          () => DropDownFieldItem(
            value1: ctrl.lunchTimeStarts.value.isEmpty
                ? null
                : ctrl.lunchTimeStarts.value,
            value2: ctrl.lunchTimeEnd.value.isEmpty
                ? null
                : ctrl.lunchTimeEnd.value,
            title: '営業時間',
            hint1: "Start",
            hint2: "End",
            onChanged1: (value) {
              if (value != null) {
                ctrl.lunchTimeStarts.value = value;
              }
            },
            onChanged2: (value) {
              if (value != null) {
                ctrl.lunchTimeEnd.value = value;
              }
            },
            options1: ctrl.hoursList,
            options2: ctrl.hoursList,
          ),
        ),
        kHeight10,
        Obx(
          () => DropDownFieldItem(
            value1: ctrl.lunchTimeStarts.value.isEmpty
                ? null
                : ctrl.lunchTimeStarts.value,
            value2: ctrl.lunchTimeEnd.value.isEmpty
                ? null
                : ctrl.lunchTimeEnd.value,
            title: '営業時間',
            hint1: "Start",
            hint2: "End",
            onChanged1: (value) {
              if (value != null) {
                ctrl.lunchTimeStarts.value = value;
              }
            },
            onChanged2: (value) {
              if (value != null) {
                ctrl.lunchTimeEnd.value = value;
              }
            },
            options1: ctrl.hoursList,
            options2: ctrl.hoursList,
          ),
        ),
      ],
    );
  }

  Column _selectImageSection() {
    return Column(
      children: [
        ImageField(
          title: '店舗外観',
          description: '最大3枚まで',
          images: const [img4, img2],
        ),
        kHeight15,
        ImageField(
          title: '店舗内観',
          description: '1枚〜3枚ずつ追加してください',
          images: const [img3, img3, img3],
        ),
        kHeight15,
        ImageField(
          title: '料理写真',
          description: '1枚〜3枚ずつ追加してください',
          images: const [img5, img4, img5],
        ),
        kHeight15,
        ImageField(
          title: 'メニュー写真',
          description: '最大3枚まで',
          images: const [img4, img3, img2],
        ),
      ],
    );
  }

  Column _addressSection() {
    return const Column(
      children: [
        TextformFieldItem(
          typeTitle: '店舗名',
          labalText: 'Mer キッチン',
          isMandatory: true,
        ),
        kHeight2,
        TextformFieldItem(
          typeTitle: '代表担当者名',
          labalText: '林田  絵梨花',
          isMandatory: true,
        ),
        kHeight2,
        TextformFieldItem(
          typeTitle: '店舗電話番号',
          labalText: '123 - 4567 8910',
          isMandatory: true,
        ),
        kHeight2,
        TextformFieldItem(
          typeTitle: '店舗住所',
          labalText: '大分県豊後高田市払田791-13',
          isMandatory: true,
        ),
        kHeight20,
      ],
    );
  }
}
