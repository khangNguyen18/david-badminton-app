import 'package:flutter/material.dart';

class CustomPaginationControls extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final void Function() onPreviousPage;
  final void Function() onNextPage;
  final void Function(int) onPageSelected;

  CustomPaginationControls({
    required this.currentPage,
    required this.totalPages,
    required this.onPreviousPage,
    required this.onNextPage,
    required this.onPageSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: currentPage > 0 ? onPreviousPage : null,
        ),
        ...List.generate(totalPages, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: ElevatedButton(
              onPressed: () => onPageSelected(index),
              style: ElevatedButton.styleFrom(
                backgroundColor: index == currentPage ? Colors.blue : Colors.grey[300],
              ),
              child: Text('${index + 1}'),
            ),
          );
        }),
        IconButton(
          icon: Icon(Icons.arrow_forward_ios),
          onPressed: currentPage < totalPages - 1 ? onNextPage : null,
        ),
      ],
    );
  }
}
