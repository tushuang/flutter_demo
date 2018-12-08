import 'package:flutter/material.dart';
import '../../models/jobList.dart';

class HomeListItemWidget extends StatefulWidget {
  // 接收从父组件得到的参数
  HomeListItemWidget ({Key key,this.index}) : super(key:key);

  final int index;

  @override
  _HomeListItemState createState() => new _HomeListItemState();
}


class _HomeListItemState extends State<HomeListItemWidget> {
  @override
    Widget build(BuildContext context) {
      return Container(
        padding: EdgeInsets.all(10),
        decoration:BoxDecoration(
          border: new Border.all(width: .5, color: Colors.black38),
        ),
        child: Row(
          children: <Widget>[
            Image.network(
              lists[widget.index].logo,
              width: 60,
              height: 60,
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // 文本起始对齐
                children:<Widget>[
                  Text(lists[widget.index].name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15
                    ),
                    
                  ), 
                  Text(lists[widget.index].job,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12
                      ),
                    
                  ), 
                  Text(lists[widget.index].site,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12
                      ),
                    
                  ), 
                ]
                
              ),
            )
           
          ],
        ),
      );
    }
}

// class Item extends StatelessWidget {
//   @override
//     Widget build(BuildContext context) {
//       return Container(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start, // 文本起始对齐
//               children:<Widget>[
//                 Text(lists[widget.index].name,
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 15
//                   ),
                  
//                 ), 
//                 Text(lists[widget.index].job,
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 12
//                     ),
                  
//                 ), 
//                 Text(lists[widget.index].site,
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 12
//                     ),
                  
//                 ), 
//               ]
//         ),
//       );
//     }
// }