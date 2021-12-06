import 'package:flutter/material.dart';

class InfoBody extends StatefulWidget {
  const InfoBody({Key? key}) : super(key: key);

  @override
  _InfoBodyState createState() => _InfoBodyState();
}

class _InfoBodyState extends State<InfoBody> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    String? title = args['title'];
    String? subtitle = args['subtitle'];
    String? info = args['info'];

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title!,
            style: const TextStyle(
              color: Colors.indigo,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            subtitle! == 'not translated' ? '' : subtitle,
            style: const TextStyle(
              color: Colors.amber,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            info!,
            style: const TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
