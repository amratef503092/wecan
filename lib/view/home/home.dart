import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:wecan/controller/home_controller/home_controller.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
              top: 147.h,
              right: 160.w,
              child: SvgPicture.asset(
                'assets/images/background.svg',
              )),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30.h, right: 30.w),
                    child: SvgPicture.asset(
                      'assets/images/logo.svg',
                      width: 100,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 50.h, left: 30.w),
                    child: SvgPicture.asset(
                      'assets/images/apps.svg',
                      width: 30.w,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Container(
                      width: 50.w,
                      height: 50.w,
                      decoration: BoxDecoration(
                          color: const Color(0xff3EB78B),
                          borderRadius: BorderRadius.circular(10.r)),
                      child: const Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      'احلام مميزة',
                      style: TextStyle(
                          fontSize: 31.sp, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 33.h),
              GetBuilder(
                init: HomeController()..getDataModel(),
                builder: (controller) {
                  return Expanded(
                    child: (controller.homeModel != null)
                        ? ListView.separated(
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Get.toNamed('/dreamScreen',
                                      arguments: controller
                                          .homeModel!.data![index].id);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Row(
                                                children: [
                                                  SvgPicture.asset(
                                                      'assets/images/point.svg'),
                                                  SizedBox(
                                                    width: 10.w,
                                                  ),
                                                  Text(
                                                    controller.homeModel!
                                                        .data![index].name
                                                        .toString(),
                                                    style: TextStyle(
                                                        fontSize: 16.sp,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 50.w,
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 10.h),
                                                child: Row(
                                                  children: [
                                                    const Icon(
                                                        Icons.remove_red_eye),
                                                    Text(controller.homeModel!
                                                        .data![index].views
                                                        .toString())
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          FittedBox(
                                            fit: BoxFit.cover,
                                            child: SizedBox(
                                              width: 300.w,
                                              child: Text(
                                                controller.homeModel!
                                                    .data![index].content
                                                    .toString(),
                                                style: TextStyle(
                                                    fontSize: 14.sp,
                                                    height: 1.5),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Container(
                                        height: 200.h,
                                        width: 30.w,
                                        decoration: BoxDecoration(
                                          color: Color(0xff3EB78B),
                                          borderRadius:
                                              BorderRadius.circular(20.r),
                                        ),
                                        child: RotatedBox(
                                            quarterTurns: 3,
                                            child: Center(
                                                child: Text(
                                              controller.homeModel!.data![index]
                                                  .category
                                                  .toString(),
                                              style: TextStyle(
                                                  fontSize: 18.sp,
                                                  color: Colors.white),
                                            ))),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return const Divider(
                                endIndent: 40,
                                thickness: 2,
                                indent: 40,
                              );
                            },
                            itemCount: controller.homeModel!.data!.length)
                        : Center(child: CircularProgressIndicator()),
                  );
                },
              )
            ],
          )
        ],
      )),
    );
  }
}
