import 'package:flutter/material.dart';

import '../globals/styles.dart';

// TEXT FIELD
class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    required this.icon,
    required this.hintText,
  });

  final IconData icon;
  final String hintText;


  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),

        prefixIcon: Icon(widget.icon),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              borderSide: BorderSide.none
          ),
        hintText: widget.hintText,

        hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
        prefixIconColor: Colors.black.withOpacity(0.5),
        fillColor: Color(0xffefefef),
        filled: true,

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary, width: 2)
      )
      ),
    );
  }
}

// PASSFIELD
class AppPasswordField extends StatefulWidget {
  const AppPasswordField({
    super.key,
    required this.icon,
    required this.hintText
  });

  final IconData icon;
  final String hintText;

  @override
  State<AppPasswordField> createState() => _AppPasswordFieldState();
}

class _AppPasswordFieldState extends State<AppPasswordField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),

          prefixIcon: Icon(widget.icon),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide.none
          ),
          hintText: widget.hintText,

          hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
          prefixIconColor: Colors.black.withOpacity(0.5),
          fillColor: Color(0xffefefef),
          filled: true
      ),
    );
  }
}

// CHECKBOX
class AppCheckbox extends StatefulWidget {
  const AppCheckbox({super.key});

  @override
  State<AppCheckbox> createState() => _AppCheckbox();
}

class _AppCheckbox extends State<AppCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: primary,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: VisualDensity.compact,
          value: isChecked,

          onChanged: (bool? newValue) {
            setState(() {
              isChecked = newValue ?? false;
            });
          },
        ),
        const Text('Remember me'),
      ],
    );
  }
}

// SEARCHBAR
class AppSearchBar extends StatefulWidget {
  const AppSearchBar({super.key});

  @override
  State<AppSearchBar> createState() => _AppSearchBar();
}

class _AppSearchBar extends State<AppSearchBar> {
  @override
  Widget build(BuildContext context) {
    return SearchBar(
      backgroundColor: WidgetStatePropertyAll(light),
      elevation: const WidgetStatePropertyAll(0),
      side: WidgetStatePropertyAll(BorderSide(color: primary, width: 2)),


      leading: Icon(Icons.search_outlined, color: primary,),
      hintText: 'Search',
    );
  }
}
