import 'package:get/get.dart';

class StudentController extends GetxController {
  // Danh sách trạng thái checkbox cho từng trang
  RxMap<int, RxList<bool>> pageCheckboxStates = <int, RxList<bool>>{}.obs;
  RxBool isSelectAll =
      false.obs; // Trạng thái checkbox tiêu đề của trang hiện tại

  // Số lượng hàng mỗi trang
  int rowsPerPage = 50;

  // Chỉ số trang hiện tại
  int currentPageIndex = 0;

  @override
  void onInit() {
    super.onInit();
    _initializePageStates();
  }

  void _initializePageStates() {
    // Khởi tạo trạng thái checkbox cho trang hiện tại
    pageCheckboxStates[currentPageIndex] =
        List.generate(rowsPerPage, (index) => false).obs;
  }

  void toggleCheckbox(int index) {
    int pageIndex = index ~/ rowsPerPage;
    int rowIndex = index % rowsPerPage;
    if (pageCheckboxStates.containsKey(pageIndex)) {
      pageCheckboxStates[pageIndex]![rowIndex] =
          !pageCheckboxStates[pageIndex]![rowIndex];
    }
  }

  void toggleSelectAll() {
    bool newValue = !isSelectAll.value;
    isSelectAll.value = newValue;

    // Cập nhật trạng thái của tất cả các checkbox trên trang hiện tại
    if (pageCheckboxStates.containsKey(currentPageIndex)) {
      pageCheckboxStates[currentPageIndex] =
          List.generate(rowsPerPage, (index) => newValue).obs;
    }
  }

  void updatePageIndex(int pageIndex) {
    currentPageIndex = pageIndex;
    if (!pageCheckboxStates.containsKey(pageIndex)) {
      // Khởi tạo trạng thái checkbox cho trang mới
      pageCheckboxStates[pageIndex] =
          List.generate(rowsPerPage, (index) => false).obs;
    }
    // Cập nhật trạng thái checkbox tiêu đề
    isSelectAll.value =
        pageCheckboxStates[pageIndex]!.every((checked) => checked);
  }
}
