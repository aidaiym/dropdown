import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../logic/dropdown_cubit.dart';

class DropDownExample extends StatelessWidget {
  DropDownExample({Key? key}) : super(key: key);

  final _items = const ['Алайская', 'Бакинская', 'Киевская'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<ChangeLanguageCubit, ChangeLanguageStatus>(
          builder: (context, state) {
            return DropdownButton(
              value: 'Osh',
              icon: const Icon(Icons.arrow_downward),
              items: _items.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: context.read<ChangeLanguageCubit>().onChanged,
            );
          },
        ),
      ),
    );
  }
}
