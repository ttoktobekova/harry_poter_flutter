import 'package:anime_flutter/data/harry_model.dart';
import 'package:anime_flutter/harry_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const harryKey = 'harry_key';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = HarryCubit()..getHarryPotterData();
    return Column(
      children: [
        BlocBuilder(
            bloc: cubit,
            builder: (context, state) {
              if (state is HarrySusses) {
                final responseList = state.list;
                return uiDesign(context, responseList);
              } else {
                return const Expanded(
                    child: Center(child: CircularProgressIndicator()));
              }
            })
      ],
    );
  }

  SizedBox uiDesign(BuildContext context, List<HarryModel> responseList) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
        separatorBuilder: (context, index) => const Divider(
          color: Colors.orange,
        ),
        itemBuilder: (context, index) {
          final responseData = responseList[index];
          return Column(children: [
            Image.network(
              responseData.image,
              width: 300,
              height: 300,
            ),
            SizedBox(height: 20),
            Text(responseData.nickname),
            Text(responseData.fullName),
            Text(responseData.hogwartsHouse),
            Text(responseData.birthdate),
            Text(getChildrenNames(responseData.children)),
            SizedBox(height: 20),
          ]);
        },
        itemCount: responseList.length,
      ),
    );
  }

  String getChildrenNames(List<String> list) {
    String result = '';
    for (var x in list) {
      result += '$x,';
    }
    return result;
  }
}
