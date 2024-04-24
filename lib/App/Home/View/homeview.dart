import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:nutri_diet/Commen/app_assets.dart';
import 'package:nutri_diet/Commen/app_colors.dart';
import 'package:nutri_diet/Commen/app_text.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppText(
          title: "Home",
        ),
        centerTitle: true,
        elevation: 10.0,
        leading: const Icon(
          Icons.access_alarm_outlined,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.bike_scooter,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notification_add,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
            ),
          ),
          const SizedBox(width: 15),
        ],
      ),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: context.mediaQuerySize.height * .29,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.geryText.withOpacity(0.9),
              ),
              child: Image.asset(
                AppAssets.googleIcon,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: context.mediaQuerySize.height * .29,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.primaryColor.withOpacity(0.9),
              ),
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSasJmZ20tZ7-v6MCbWlIEd-Q49BKqeiN7ymtbHprn2IA&s",
                // AppAssets.googleIcon,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: context.mediaQuerySize.height * .29,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.redText.withOpacity(0.9),
              ),
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl:
                    "https://i.pinimg.com/736x/a5/95/53/a59553b51e05985c0cafba435488aec2.jpg",
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
