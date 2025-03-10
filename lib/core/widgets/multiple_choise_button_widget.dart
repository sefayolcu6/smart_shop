import 'package:flutter/material.dart';

class MultipleChoice extends StatefulWidget {
  final Set<int> selection;
  final List<String> options;
  final bool multiSelectionEnabled;

  const MultipleChoice({
    Key? key,
    required this.selection,
    required this.options,
    required this.multiSelectionEnabled,
  }) : super(key: key);

  @override
  State<MultipleChoice> createState() => _MultipleChoiceState();
}

class _MultipleChoiceState extends State<MultipleChoice> {
  @override
  Widget build(BuildContext context) {
    final List<ButtonSegment<int>> segments = List<ButtonSegment<int>>.generate(
      widget.options.length,
      (index) => ButtonSegment<int>(
        value: index,
        label: Text(widget.options[index]),
      ),
    );

    return SegmentedButton<int>(
      segments: segments,
      selected: widget.selection,
      onSelectionChanged: (Set<int> newSelection) {
        setState(() {
          widget.selection.clear();
          widget.selection.addAll(newSelection);
        });
      },
      multiSelectionEnabled: widget.multiSelectionEnabled,
    );
  }
}
