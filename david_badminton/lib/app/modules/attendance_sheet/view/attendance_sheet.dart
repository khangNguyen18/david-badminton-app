import 'package:david_badminton/app/modules/attendance_sheet/controller/attendance_controller.dart';
import 'package:david_badminton/app/modules/home/views/home_screen.dart';
import 'package:david_badminton/app/modules/home/views/widget/function/human_management.dart';
import 'package:david_badminton/common/components/text_component.dart';
import 'package:david_badminton/utils/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconly/iconly.dart';

class AttendanceSheet extends StatefulWidget {
  const AttendanceSheet({super.key});

  @override
  State<AttendanceSheet> createState() => _AttendanceSheetState();
}

class _AttendanceSheetState extends State<AttendanceSheet> {
  final controller = Get.put(AttendanceController());

  String? _selectedValue;

  List<String> options = <String>[
    'Nguyễn Văn A',
    'Nguyễn Văn B',
    'Nguyễn Văn C',
    'Nguyễn Văn D'
  ];

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      setState(() {
        controller.dateController.text = '${pickedDate.toLocal()}'
            .split(' ')[0]; // Format the date as YYYY-MM-DD
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextComponent(
          content: 'Điểm danh học viên',
          color: Colors.white,
          isTitle: true,
        ),
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: AppColor.secondaryBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: DropdownButtonFormField(
                    hint: const Text('Cơ sở'),
                    value: _selectedValue,
                    items: options.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                    icon: const Icon(
                      IconlyLight.arrow_down_2,
                    ),
                    decoration: InputDecoration(
                      label: Text('Cơ sở'),
                      prefixIcon: const Icon(Icons.stadium_outlined),
                      floatingLabelStyle: const TextStyle(
                        color: AppColor.primaryOrange,
                      ),
                      hintStyle: const TextStyle(
                        color: Colors.black26,
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black26, // Default border color
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.grey // Default border color
                            ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: AppColor.primaryOrange),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5.sp,
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    child: DropdownButtonFormField(
                      hint: const Text('Ca học'),
                      value: _selectedValue,
                      items: options.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {},
                      icon: const Icon(
                        IconlyLight.arrow_down_2,
                      ),
                      decoration: InputDecoration(
                        label: Text('Ca học'),
                        prefixIcon: const Icon(Icons.schedule),
                        floatingLabelStyle: const TextStyle(
                          color: AppColor.primaryOrange,
                        ),
                        hintStyle: const TextStyle(
                          color: Colors.black26,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black26, // Default border color
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Colors.grey // Default border color
                              ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: AppColor.primaryOrange),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.sp,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: DropdownButtonFormField(
                    hint: const Text('Huấn luyện viên'),
                    value: _selectedValue,
                    items: options.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                    icon: const Icon(
                      IconlyLight.arrow_down_2,
                    ),
                    decoration: InputDecoration(
                      label: Text('Huấn luyện viên'),
                      prefixIcon: const Icon(Icons.person_2_outlined),
                      floatingLabelStyle: const TextStyle(
                        color: AppColor.primaryOrange,
                      ),
                      hintStyle: const TextStyle(
                        color: Colors.black26,
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black26, // Default border color
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.grey // Default border color
                            ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: AppColor.primaryOrange),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5.sp,
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    child: TextFormField(
                      controller: controller.dateController,
                      onTapOutside: (event) {
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      onTap: () {
                        _selectDate(context);
                      },
                      readOnly: true,
                      decoration: InputDecoration(
                        prefixIcon: IconButton(
                          icon: Icon(IconlyLight.calendar),
                          onPressed: () {
                            _selectDate(context);
                          },
                        ),
                        floatingLabelStyle: const TextStyle(
                          color: AppColor.primaryOrange,
                        ),
                        label: Text('Ngày'),
                        hintText: 'Ngày',
                        hintStyle: const TextStyle(
                          color: Colors.black26,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black26, // Default border color
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Colors.grey // Default border color
                              ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: AppColor.primaryOrange),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
