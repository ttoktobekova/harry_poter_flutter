import 'package:anime_flutter/data/harry_model.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

part 'harry_state.dart';

class HarryCubit extends Cubit<HarryState> {
  HarryCubit() : super(HarryInitial());

  Future<List<HarryModel>> request() async {
    final dio = Dio();
    Response response;
    response =
        await dio.get('https://potterapi-fedeperin.vercel.app/en/characters');
    final harryModel =
        (response.data as List).map((x) => HarryModel.fromJson(x)).toList();
    return harryModel;
  }

  Future<void> getHarryPotterData() async {
    emit(HarryInitial());
    final response = await request();
    emit(HarrySusses(list: response));
  }
}
