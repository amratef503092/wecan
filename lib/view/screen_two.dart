import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:wecan/controller/home_controller/dream_controller.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  dynamic argumentData = Get.arguments;

  @override
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
        Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
                child: GetBuilder<DreamController>(
                    init: DreamController()..getDataScreenTwo(id: argumentData),
                    builder: (controller) => (controller.dreamModel != null)
                        ? Column(
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(top: 30.h, right: 30.w),
                                  child: SvgPicture.asset(
                                    'assets/images/logo.svg',
                                    width: 100,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/point.svg',
                                        width: 16,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        controller.dreamModel!.data!.name!
                                            .toString(),
                                        style: TextStyle(
                                            fontSize: 22.sp,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 50.w,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10.h),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.remove_red_eye),
                                        Text(controller.dreamModel!.data!.views
                                            .toString()),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: 90,
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          customText(
                                              textOne: 'الجنس',
                                              textTwo:
                                                  "${controller.dreamModel!.data!.sex}"),
                                          customText(
                                              textOne: 'العمر',
                                              textTwo:
                                                  "${controller.dreamModel!.data!.age}"),
                                          customText(
                                              textOne: 'الحالة الاجتماعية',
                                              textTwo:
                                                  "${controller.dreamModel!.data!.socialStatus}"),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          customText(
                                              textOne: 'الحالة الصحية',
                                              textTwo:
                                                  "${controller.dreamModel!.data!.healthStatus}"),
                                          customText(
                                              textOne: 'الحالة المادية',
                                              textTwo:
                                                  "${controller.dreamModel!.data!.physicalCondition}"),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const Divider(
                                endIndent: 40,
                                thickness: 2,
                                indent: 40,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/point.svg',
                                    width: 16,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'المنام :',
                                    style: TextStyle(
                                        fontSize: 22.sp, color: Colors.black),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 340.w,
                                child: Text(
                                  "${controller.dreamModel!.data!.content}",
                                  style: TextStyle(fontSize: 14.sp),
                                ),
                              ),
                              const Divider(
                                endIndent: 40,
                                thickness: 2,
                                indent: 40,
                              ),
                              Container(
                                width: 344.w,
                                height: 87,
                                decoration: BoxDecoration(
                                    color: const Color(0xff3EB78B),
                                    borderRadius: BorderRadius.circular(15.r)),
                                child: Center(
                                  child: Text("Google AdMob",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.sp)),
                                ),
                              ),
                              const Divider(
                                endIndent: 40,
                                thickness: 2,
                                indent: 40,
                              ),
                              Container(
                                width: 345.w,
                                decoration: BoxDecoration(
                                    color: const Color(0xff3EB78B),
                                    borderRadius: BorderRadius.circular(15.r)),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 0,
                                      bottom: 0,
                                      left: 0,
                                      child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: SvgPicture.asset(
                                          'assets/images/logo2.svg',
                                          width: 100,
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                SvgPicture.asset(
                                                  'assets/images/point.svg',
                                                  width: 16,
                                                  color: Colors.yellow,
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  'المنام :',
                                                  style: TextStyle(
                                                      fontSize: 22.sp,
                                                      color: Colors.yellow),
                                                ),
                                              ],
                                            ),
                                            Text(
                                                "${controller.dreamModel!.data!.adminReplay!.content}",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20.sp,
                                                )),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        : Center(
                            child: CircularProgressIndicator(),
                          ))))
      ],
    )));
  }
}

class customText extends StatelessWidget {
  const customText({
    Key? key,
    required this.textOne,
    required this.textTwo,
  }) : super(key: key);
  final String textOne;
  final String textTwo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 2),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/images/point.svg',
            width: 10.w,
            color: Colors.black,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            '$textOne  : $textTwo',
            style: TextStyle(fontSize: 15.sp),
          ),
        ],
      ),
    );
  }
}
