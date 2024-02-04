import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CyberpunkInputWidget extends StatefulWidget {
  final String hintText;
  final Color? hintColor;
  final Color? textColor;
  final int? maxLines;
  final bool? isMultiline;
  final IconData? icon;
  final Color? iconColor;
  final BorderRadius? borderRadius;
  final BoxShadow? boxShadow;
  final EdgeInsets? contentPadding;
  final ValueChanged<String>? onChanged;
  final void Function(String)? onSubmitted;
  final TextEditingController? controller;
  final FocusNode? focusNode;

  const CyberpunkInputWidget({
    Key? key,
    required this.hintText,
    this.hintColor,
    this.textColor,
    this.maxLines,
    this.isMultiline,
    this.icon,
    this.iconColor,
    this.borderRadius,
    this.boxShadow,
    this.contentPadding,
    this.onChanged,
    this.onSubmitted,
    this.controller,
    this.focusNode, required bool obscureText,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CyberpunkInputWidgetState createState() => _CyberpunkInputWidgetState();
}

class _CyberpunkInputWidgetState extends State<CyberpunkInputWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      focusNode: widget.focusNode,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: widget.hintText,
        hintStyle: TextStyle(color: widget.hintColor ?? Colors.blue),
        icon: Icon(widget.icon ?? Icons.keyboard_voice,
            color: widget.iconColor ?? Colors.white),
        enabledBorder: OutlineInputBorder(
          borderRadius: widget.borderRadius ?? BorderRadius.circular(8),
          borderSide: BorderSide.none, // 设置边框样式，如果需要边框可以去掉这一行
        ),
        contentPadding:
            widget.contentPadding ?? const EdgeInsets.symmetric(horizontal: 16),
      ),
      style: TextStyle(color: widget.textColor ?? Colors.black),
      maxLines: widget.isMultiline ?? true ? null : widget.maxLines ?? 1,
      keyboardType: widget.isMultiline ?? true ? TextInputType.multiline : null,
      onChanged: widget.onChanged,
      onSubmitted: widget.onSubmitted,
    );
  }
}
