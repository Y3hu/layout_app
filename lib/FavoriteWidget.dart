import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoriteWidget extends StatelessWidget {
  FavoriteWidget(
      {Key key,
      this.isFavorited: false,
      this.favoriteCount: 41,
      @required this.onChanged})
      : super(key: key);

  final bool isFavorited;
  final int favoriteCount;
  final ValueChanged<bool> onChanged;

  void _handleTap() {
    onChanged(!isFavorited);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
            padding: EdgeInsets.all(0),
            child: IconButton(
              padding: EdgeInsets.all(0),
              alignment: Alignment.centerRight,
              icon: (isFavorited ? Icon(Icons.star) : Icon(Icons.star_border)),
              color: Colors.red[500],
              onPressed: _handleTap,
            )),
        SizedBox(
          width: 18,
          child: Container(child: Text('$favoriteCount')),
        )
      ],
    );
  }
}
