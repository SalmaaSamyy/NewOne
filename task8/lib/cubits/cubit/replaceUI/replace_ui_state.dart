part of 'replace_ui_cubit.dart';

@immutable
sealed class ReplaceUiState {}

final class ReplaceUiInitial extends ReplaceUiState {}

class ShowText extends ReplaceUiState {}

class ShowImage extends ReplaceUiState {}

class ShowCircle extends ReplaceUiState {}



