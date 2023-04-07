 import 'package:flutter/material.dart';
import 'package:list_model_task2/model_class_list.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List Items=
    [
      ModelList(
        img: "images/BALL.jpg",
          sec: "Sports India",
          third: (Icons.check),
           col: Colors.orange,
        ),

      ModelList(
          img: "images/SCIENCE.jpg",
            sec: "Science India",
            third: (Icons.add),
        col:Colors.pink),



        ModelList(
          img: "images/NEWS.png",
            sec: "News india",
            third: (Icons.check),
          col: Colors.teal,),


        ModelList(
          img: "images/WORLD.png",
            sec: "World india",
            third: (Icons.check),
          col: Colors.lightGreen,),

      ModelList(
        img: "images/ENTERTAINMENT.png",

        sec: "Entertainment india",
        third: (Icons.check),
        col: Colors.deepPurpleAccent),

        ModelList(
          img: "images/N.png",
          sec: "News Delhi",
            third: (Icons.check),
          col: Colors.grey,),


      ModelList(
        img: "images/M.png",
        sec: "Malaysia",
          third: (Icons.check),
        col: Colors.grey,
      ),



    ];
    
    return Scaffold(
      body: ListView.builder(
        itemCount: Items.length,
          itemBuilder: (context,index) {
            return Card(
              child:ListTile(
                leading:

                  Container(
                    color: Colors.grey,

                          width: 100,
                          height: 100,

                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Items[index].col,

                      child: CircleAvatar(
                        radius: 20,

                backgroundImage: AssetImage(Items[index].img),


              ),
                    ),
                  ),
                title: Text(Items[index].sec),
                trailing: CircleAvatar(
                  radius: 15,
                  child: Icon(Items[index].third),
                ),
              ),
            );
          }

            ),

          );









  }
}
 //   child: Card(
 //     child: ListTile(
 //       leading: Padding(
 //         padding: const EdgeInsets.only(right: 1),
 //         child: Container(
 //           color: Colors.grey[600],
 //           width: 40,
 //           child: CircleAvatar(
 //             backgroundColor: Items[index].col,
 //             radius: 20,
 //             child:Items[index].fir==null? Items[index].sec[0]:
 //
 //
 //             Icon(Items[index].fir),
 //           ),
 //         ),
 //       ),
 //       title: Text(Items[index].sec),
 //       trailing:
 //       CircleAvatar(
 //   radius: 20,
 //   backgroundColor: Colors.grey,
 //
 //   child: Icon(Items[index].third),
 //     ),
 //   ),
 //   ),
