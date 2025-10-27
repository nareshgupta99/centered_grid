import 'package:flutter/material.dart';

class CenteredGrid extends StatelessWidget {
  final int itemCount;
  final int crossAxisCount;
  final double crossAxisSpacing;
  final double mainAxisSpacing;

  final IndexedWidgetBuilder itemBuilder;

  const CenteredGrid({
    super.key,
    required this.itemCount,
    required this.crossAxisCount,
    required this.itemBuilder,
    required this.crossAxisSpacing,
    required this.mainAxisSpacing,
  });

  @override
  Widget build(BuildContext context) {
    final int rowCount = (itemCount / crossAxisCount).ceil();

    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(rowCount, (rowIndex) {
            final int itemsInRow =
                (rowIndex == rowCount - 1)
                    ? itemCount % crossAxisCount == 0
                        ? crossAxisCount
                        : itemCount % crossAxisCount
                    : crossAxisCount;

            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(itemsInRow, (colIndex) {
                final int itemIndex = rowIndex * crossAxisCount + colIndex;

                return Wrap(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: crossAxisSpacing, vertical: mainAxisSpacing),
                      child: itemBuilder(context, itemIndex),
                    ),
                  ],
                );
              }),
            );
          }),
        ),
      ),
    );
  }
}
