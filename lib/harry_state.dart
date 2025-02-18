part of 'harry_cubit.dart';

sealed class HarryState extends Equatable {
  const HarryState();
}

final class HarryInitial extends HarryState {
  @override
  List<Object> get props => [];
}

final class HarrySusses extends HarryState {
  List<HarryModel> list;
  HarrySusses({required this.list});
  @override
  List<Object> get props => [];
}

final class HarryFail extends HarryState {
  String message;
  HarryFail({required this.message});
  @override
  List<Object> get props => [];
}
