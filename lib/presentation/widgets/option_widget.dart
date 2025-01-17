import 'package:flutter/material.dart';

import 'card_widget.dart';

class OptionWidget extends StatefulWidget {
  const OptionWidget({super.key});

  @override
  State<OptionWidget> createState() => _OptionWidgetState();
}

class _OptionWidgetState extends State<OptionWidget> {
  int _selectedOption = -1;
  final List<String> _optionTexts = [
    "The peace in the early mornings",
    "The magical golden hours",
    "Wind-down time after dinner",
    "The serenity past midnight",
  ];
  final List<String> _optionLabels = ["A", "B", "C", "D"];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        childAspectRatio: 2.8,
      ),
      itemCount: _optionTexts.length,
      itemBuilder: (context, index) {
        return CardWidget(
          text: _optionTexts[index],
          label: _optionLabels[index],
          isSelected: _selectedOption == index,
          onTap: () => setState(() => _selectedOption = index),
        );
      },
    );
  }
}
