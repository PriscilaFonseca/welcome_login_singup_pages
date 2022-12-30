import 'package:flutter/material.dart';
import 'package:flutter_application_model/components/favorites.dart';
import 'package:flutter_application_model/constants.dart';
import 'package:flutter_application_model/screens/bakery/bakery.dart';

class BakeryStoreWidget extends StatefulWidget {
  final String title;
  final String image;
  final String evaluation;
  final String distance;
  final String time;
  final String delivery;
  final IconData icon;
  final Color color;
  const BakeryStoreWidget({
    super.key,
    required this.title,
    required this.image,
    required this.evaluation,
    required this.distance,
    required this.delivery,
    required this.time,
    this.icon = Icons.star,
    this.color = Colors.white,
  });

  @override
  State<BakeryStoreWidget> createState() => _BakeryStoreWidgetState();
}

class _BakeryStoreWidgetState extends State<BakeryStoreWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int max = 8;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const BakeryScreen(),
            ),
          );
        },
        child: Center(
          child: Card(
            elevation: 1.5,
            color: widget.color,
            child: SizedBox(
              height: size.height * 0.25,
              width: size.width * 0.9,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(widget.image),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          _lengthMax(widget.title, max),
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const FavoritesWidget(),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          widget.icon,
                          color: pevaluationColor,
                          size: 20,
                        ),
                        Text(
                          widget.evaluation,
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: pevaluationColor),
                        ),
                        SizedBox(
                          width: size.width * 0.01,
                        ),
                        Text(
                          widget.distance,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          widget.time,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          widget.delivery,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _lengthMax(String text, int max) {
    return text.length <= max ? text : '${text.substring(0, max)}...';
  }
}
