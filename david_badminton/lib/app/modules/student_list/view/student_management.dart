import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:david_badminton/app/modules/student_list/controllers/student_controller.dart';
import 'package:david_badminton/app/modules/student_list/view/drawer/nav_bar.dart';
import 'package:david_badminton/common/components/text_component.dart';
import 'package:david_badminton/common/widgets/custom_shape/containers/search_container.dart';
import 'package:david_badminton/utils/constants/app_color.dart';

class StudentManagement extends StatelessWidget {
  const StudentManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: TextComponent(
          content: 'Danh sách học viên',
          color: Colors.white,
          isTitle: true,
        ),
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: AppColor.secondaryBlue,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 28.h),
        child: GetBuilder<StudentController>(
          init: StudentController(),
          builder: (controller) => Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: SearchContainer(
                      searchBarWidth: double.infinity,
                      text: 'Tìm kiếm...',
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Expanded(
                    flex: 1,
                    child: Icon(Icons.filter),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Expanded(
                child: PaginatedDataTable2(
                  columnSpacing: 6.w,
                  horizontalMargin: 6.w,
                  minWidth: 10,
                  columns: [
                    DataColumn2(
                      label: Obx(() => Checkbox(
                            value: controller.isSelectAll.value,
                            onChanged: (value) {
                              controller.toggleSelectAll();
                            },
                          )),
                      size: ColumnSize.S,
                    ),
                    DataColumn2(
                      label: Text('ID'),
                      size: ColumnSize.S,
                    ),
                    DataColumn2(
                      label: Text('Tên'),
                      size: ColumnSize.L,
                    ),
                    DataColumn2(
                      label: Text('Ca học'),
                      size: ColumnSize.L,
                    ),
                    DataColumn2(
                      label: Text(''),
                      size: ColumnSize.S,
                    ),
                  ],
                  source: StudentDataSource(controller),
                  header: Text('Danh sách học viên'),
                  // rowsPerPage: controller.rowsPerPage,
                  // onRowsPerPageChanged: (rowsPerPage) {
                  //   controller.rowsPerPage = rowsPerPage ?? 50;
                  // },
                  onPageChanged: (pageIndex) {
                    controller.updatePageIndex(pageIndex);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StudentDataSource extends DataTableSource {
  final StudentController controller;

  StudentDataSource(this.controller);

  @override
  DataRow getRow(int index) {
    int pageIndex = index ~/ controller.rowsPerPage;
    int rowIndex = index % controller.rowsPerPage;

    return DataRow(
      cells: [
        DataCell(
          Obx(() => Checkbox(
                value: controller.pageCheckboxStates[pageIndex]?[rowIndex] ??
                    false,
                onChanged: (value) {
                  controller.toggleCheckbox(index);
                },
              )),
        ),
        DataCell(Text('${index + 1}')),
        DataCell(
          Text(
            'Nguyễn Gia Thị ${index + 1}',
            softWrap: true,
          ),
        ),
        DataCell(
          Text(
            'Ca sáng 2 -4 -6',
            softWrap: true,
          ),
        ),
        DataCell(Icon(Icons.arrow_right_outlined)),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;
  @override
  int get rowCount => 1000; // Số lượng bản ghi
  @override
  int get selectedRowCount => 0;

  @override
  void addListener(VoidCallback listener) {}
  @override
  void removeListener(VoidCallback listener) {}
}
