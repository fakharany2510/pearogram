import 'package:flutter/material.dart';

class FilterChipWidget extends StatefulWidget {
  bool selected;
  String text;
  FilterChipWidget({Key? key,  this.selected=false,required this.text}) : super(key: key);

  @override
  State<FilterChipWidget> createState() => _FilterChipWidgetState();
}

class _FilterChipWidgetState extends State<FilterChipWidget> {
  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label:  Text(widget.text),
      selected: widget.selected,
      onSelected: (bool value){
        widget.selected = value;
        setState(() {

        });
      },
      selectedColor: Colors.green,
      showCheckmark: false,
    );
  }
}
