import 'package:flutter/material.dart';
import 'package:flutter_lesson3_task1/models/terms_model.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            print('$index : ${Terms.termList[index].title}');

            //navigation with route and sending arguments
            Navigator.of(context).pushNamed('/info', arguments: {
              'title': Terms.termList[index].title,
              'subtitle': Terms.termList[index].subtitle,
              'info': Terms.termList[index].info,
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Terms.termList[index].title,
                  style: const TextStyle(fontSize: 22),
                ),
                Text(
                  Terms.termList[index].subtitle,
                  style: TextStyle(
                    color: Terms.termList[index].subtitle == 'not translated'
                        ? Colors.grey
                        : Colors.black,
                  ),
                ),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemCount: Terms.termList.length,
    );
  }
}
