import 'package:flutter/material.dart';

class CustomExpansionTile extends StatefulWidget {
  final String title;
  final List<Widget> expansionTileChildren;

  CustomExpansionTile(
      {super.key, required this.title, required this.expansionTileChildren});

  @override
  State<CustomExpansionTile> createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  bool isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        textColor: Colors.black,
        collapsedTextColor: Colors.black,
        iconColor: Colors.black,
        initiallyExpanded: true,
        onExpansionChanged: (value) {
          print("Expansion Value $value");
          setState(() {
            isExpanded = value;
          });
        },
        title: Text(
          widget.title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        tilePadding: EdgeInsets.zero,
        trailing: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.black.withOpacity(.2),
              )),
          child: Icon(
            isExpanded
                ? Icons.arrow_upward_outlined
                : Icons.arrow_downward_outlined,
          ),
        ),
        children: widget.expansionTileChildren,
      ),
    );
  }
}
