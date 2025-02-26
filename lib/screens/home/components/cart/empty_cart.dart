import '../../../../helpers/functions/change_page.dart';
import '../category/categories_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../helpers/styles/app_colors.dart';
import '../../../../helpers/styles/app_decoration.dart';
import '../../../../helpers/styles/app_images.dart';
import '../../../../helpers/widgets/custom_container.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        250.verticalSpace,
        const Center(
          child: Image(image: AssetImage(AppImages.emptyCart)),
        ),
        15.verticalSpace,
        Text(
          "Your Cart is Empty",
          style: AppDecoration.semiBoldStyle(
              fontSize: 25, color: Theme.of(context).colorScheme.onSecondary),
        ),
        5.verticalSpace,
        CustomContainer(
          onTap: () {
            changePage(CategoriesScreen.routeName);
          },
          text: 'Explore Categories',
          color: AppColors.lightPurple,
          textColor: AppColors.grayI,
          width: 0.45.sw,
          height: 55,
          fontSize: 16,
        ),
      ],
    );
  }
}
