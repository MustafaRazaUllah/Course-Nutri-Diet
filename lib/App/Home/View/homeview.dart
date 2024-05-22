import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:nutri_diet/Commen/app_assets.dart';
import 'package:nutri_diet/Commen/app_button.dart';
import 'package:nutri_diet/Commen/app_colors.dart';
import 'package:nutri_diet/Commen/app_text.dart';
import 'package:nutri_diet/DB/local_datrabase.dart';
import 'package:nutri_diet/Utils/Routes/app_routes.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int value = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      value = 20;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

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
            onPressed: () async {
              await DatabaseHandler().logout();
              Get.offAllNamed(AppRoutes.loginView);
            },
            icon: const Icon(
              Icons.logout,
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
            GestureDetector(
              onTap: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.geryText.withOpacity(0.2),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                    );
                  },
                );
              },
              child: Container(
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
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                  barrierDismissible: false,
                  barrierColor: AppColors.blackText.withOpacity(0.8),
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text("Delete Account"),
                      content:
                          const Text("Are you sure want to delete account?"),
                      actions: [
                        Row(
                          children: [
                            AppButton(
                              title: "No",
                              width: 100,
                              bgColor: AppColors.geryText.withOpacity(0.5),
                              callback: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            const Spacer(),
                            AppButton(
                              title: "yes",
                              width: 100,
                              callback: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                );
              },
              child: Container(
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
            ),
            Container(
              height: context.mediaQuerySize.height * .29,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.redText.withOpacity(0.3),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(title: value.toString()),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppButton(
                        title: "Privacy Policy",
                        width: context.mediaQuerySize.width / 2.5,
                        callback: () {
                          Get.toNamed(
                            AppRoutes.privacyConditionView,
                            arguments: ['Privacy Policy'],
                          );
                          // setState(() {
                          //   value--;
                          // });
                        },
                      ),
                      const SizedBox(width: 20),
                      AppButton(
                        title: "Terms And Condition",
                        width: context.mediaQuerySize.width / 2,
                        callback: () {
                          Get.toNamed(
                            AppRoutes.privacyConditionView,
                            arguments: ['Terms & Conditions'],
                          );
                          // setState(() {
                          //   value++;
                          // });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // GestureDetector(
            //   onTap: () {
            //     Fluttertoast.showToast(
            //       msg: "This is Center Short Toast",
            //       toastLength: Toast.LENGTH_SHORT,
            //       gravity: ToastGravity.SNACKBAR,
            //       timeInSecForIosWeb: 10,
            //       backgroundColor: Colors.red,
            //       textColor: Colors.white,
            //       fontSize: 16.0,
            //     );
            //   },
            //   child: Container(
            //     height: context.mediaQuerySize.height * .29,
            //     width: double.infinity,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(20),
            //       color: AppColors.redText.withOpacity(0.3),
            //     ),
            //     child: Column(
            //       children: [
            //         GestureDetector(
            //           onTap: () {
            //             ScaffoldMessenger.of(context).showSnackBar(
            //               SnackBar(
            //                 action: SnackBarAction(
            //                   label: 'Successfull',
            //                   onPressed: () {
            //                     // Code to execute.
            //                   },
            //                 ),
            //                 content: const Text(
            //                     'Successfully Clicked on user Image'),
            //               ),
            //             );
            //           },
            //           child: SizedBox(
            //             height: 100,
            //             width: 100,
            //             child: ClipRRect(
            //               borderRadius: BorderRadius.circular(100),
            //               child: CachedNetworkImage(
            //                 fit: BoxFit.cover,
            //                 imageUrl:
            //                     "https://i.pinimg.com/736x/a5/95/53/a59553b51e05985c0cafba435488aec2.jpg",
            //                 placeholder: (context, url) =>
            //                     const CircularProgressIndicator(),
            //                 errorWidget: (context, url, error) =>
            //                     const Icon(Icons.error),
            //               ),
            //             ),
            //           ),
            //         ),
            //         const AppText(title: "Mustafa Raza"),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
