import 'package:flutter/material.dart';

class BoxWidget extends StatelessWidget {
  const BoxWidget({
    Key key,
    @required double width,
    @required double height,
    @required Color color,
    @required Icon icon,
    @required String title,
    @required String subTitle,
  })  : _width = width,
        _height = height,
        _color = color,
        _icon = icon,
        _title = title,
        _subTitle = subTitle,
        super(key: key);

  final double _width;
  final double _height;
  final Color _color;
  final Icon _icon;
  final String _title;
  final String _subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _width / 2.8,
      height: _width / 2.8,
      padding: EdgeInsets.only(left: 20, top: 35),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: _color),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _icon,
          SizedBox(height: 20),
          Text(
            "$_title",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "$_subTitle",
            style: TextStyle(
                color: Colors.white, fontSize: 10, fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }
}
