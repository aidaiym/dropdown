import 'package:bloc/bloc.dart';

enum ChangeLanguageStatus { kyrgyz, russian, english, turkish }

class ChangeLanguageCubit extends Cubit<ChangeLanguageStatus> {
  ChangeLanguageCubit() : super(ChangeLanguageStatus.kyrgyz);

  void onChanged(String? name) {
    emit(ChangeLanguageStatus.values.byName(name ?? state.name));
  }
}

extension SomeStatusEx on ChangeLanguageStatus {
  String get titleByIndex =>
      ['kyrgyz', 'russian', 'english', 'turkish'].elementAt(index);
}
