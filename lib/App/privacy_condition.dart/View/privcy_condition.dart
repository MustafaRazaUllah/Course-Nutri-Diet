import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutri_diet/App/privacy_condition.dart/View%20Model/privcy_condition_vm.dart';
import 'package:nutri_diet/Commen/app_colors.dart';
import 'package:nutri_diet/Commen/app_text.dart';

class PrivacyConditionView extends StatelessWidget {
  PrivacyConditionView({
    super.key,
  });

  final privcyConditionVM = Get.find<PrivcyConditionVM>();
  // final privcyConditionVM = Get.put(PrivcyConditionVM());
  // final privcyConditionVM = PrivcyConditionVM();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: AppText(
            title: privcyConditionVM.privacyConditionData.value.name,
            size: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.blackText,
          ),
        ),
        body: SizedBox.expand(
          child: privcyConditionVM.privacyConditionData.value.content.isEmpty
              ? const Center(
                  child: CircularProgressIndicator(
                    color: AppColors.primaryColor,
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: AppText(
                    title: privcyConditionVM.privacyConditionData.value.content,
                    size: 14,
                    height: 5.5,
                    fontWeight: FontWeight.w500,
                    color: AppColors.blackText,
                    txtOverFlow: TextOverflow.visible,
                    isSoftWrap: true,
                  ),
                ),
        ),
      ),
    );
  }
}
