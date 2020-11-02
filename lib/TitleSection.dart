import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'FavoriteWidget.dart';

class TitleSection extends StatelessWidget {
  TitleSection(
      {Key key,
        this.isFavorited: false,
        this.favoriteCount: 41,
        @required this.onChanged})
      : super(key: key);

  final bool isFavorited;
  final int favoriteCount;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          FavoriteWidget(
              isFavorited: isFavorited,
              favoriteCount: favoriteCount,
              onChanged: onChanged),
        ],
      ),
    );
  }
}
