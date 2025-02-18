import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    request();
    return Column(
      children: [
        FutureBuilder(
            future: request(),
            builder: (context, snapshot) {
              return SizedBox(
                height: 800,
                width: 500,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    final image = snapshot.data![index];
                    return Image.network(image);
                  },
                  itemCount: snapshot.data!.length,
                ),
              );
            })
      ],
    );
  }

  Future<List<String>> request() async {
    final dio = Dio();
    Response response;
    response =
        await dio.get('https://potterapi-fedeperin.vercel.app/en/characters');
    final image = response.data[9]['image'];
    List<String> images =
        response.data.map<String>((item) => item['image'] as String).toList();
    return images;
  }
}
