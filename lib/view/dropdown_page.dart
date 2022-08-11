import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../logic/dropdown_cubit.dart';

import 'dropdown_view.dart';

class DropdownPage extends StatelessWidget {
  const DropdownPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChangeLanguageCubit(),
      child: DropDownExample(),
    );
  }
}
