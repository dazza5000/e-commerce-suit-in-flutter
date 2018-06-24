import 'package:flutter/material.dart';
import 'package:flutter_app_tablayout/feed_widgets_list.dart';


class feed_body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        new Container(color: Colors.red[400],
            alignment: Alignment.center,
            height: 55.0,
            child: new Container(
                color: Colors.red[400],
                alignment: Alignment.center,
                margin: const EdgeInsets.all(10.0),
                child: new FlatButton
                  (onPressed: () {
                  Navigator.of(context).pushNamed("/notifications");
                },
                  color: Colors.white,
                  child: new ListTile(
                    title: new Text('Search for Products, Brands',
                        style: new TextStyle(color: Colors.grey,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold),
                        softWrap: true,
                        overflow: TextOverflow.clip,
                        maxLines: 2),
                    leading: new Icon(Icons.search, size: 15.0),
                    dense: true,
                  ),
                )
            )),
        new Flexible(
          child: feed_widgets_list(),
        ),
      ],
    );
  }
}