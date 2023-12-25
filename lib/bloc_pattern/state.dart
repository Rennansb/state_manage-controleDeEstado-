class ImcState {
  final double? imc;

  ImcState({this.imc});
}

class ImcStateLoading extends ImcState {}

class ImcStateError extends ImcState {
  String messege;
  ImcStateError({required this.messege});
}
