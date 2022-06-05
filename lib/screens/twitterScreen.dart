import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/twitterService.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Twitter extends StatelessWidget {
  Twitter({Key? key}) : super(key: key);
  final speaker = TwitterService().getSpeakers();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(FontAwesomeIcons.twitter),
        title: const Text('Twitter'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: speaker.length,
        itemBuilder: (context, index){
          return SizedBox(
            height: 250,
            width: double.infinity,
            child: Card(
              elevation: 20.0,
              child:Stack(
                children: [
                  Image(image: NetworkImage(speaker[index].profilePhotoUrl), height: 50, width: 50,alignment: Alignment.topLeft,),
                  Positioned(
                    left: 70,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(speaker[index].userName,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold ),),
                            Text(speaker[index].userHandler,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Colors.grey.shade500 ),),
                            const SizedBox(width: 100,),
                            Text(speaker[index].timeSent, textAlign: TextAlign.right,), 
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:15.0),
                          child: Text(speaker[index].msg, style: const TextStyle(fontSize: 18, ),textAlign: TextAlign.left,),
                        ),
                        Image(image: NetworkImage(speaker[index].isPhotoMsg ? speaker[index].photoUrl : 'https://imgs.search.brave.com/I41fYYWXAi4b_96Q9l-ZBL3Xaz0ouKyeUAV7j46ZAo0/rs:fit:844:225:1/g:ce/aHR0cHM6Ly90c2U0/LmV4cGxpY2l0LmJp/bmcubmV0L3RoP2lk/PU9JUC5EVGU4YW5P/VENvOFQ0dnJjb2Zx/Zk1RSGFFSyZwaWQ9/QXBp'),height: 140, fit: BoxFit.cover,),
                        Padding(
                          padding: const EdgeInsets.only(top:10.0),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  const Icon(FontAwesomeIcons.retweet),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(speaker[index].reTweets.toString()),
                                ],
                              ),
                              const SizedBox(
                                    width: 30,
                                  ),
                              Row(
                                children: [
                                  const Icon(FontAwesomeIcons.heart),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(speaker[index].likes.toString()),
                                ],
                              ),
                              const SizedBox(
                                    width: 30,
                                  ),
                              Row(
                                children: [
                                  const Icon(FontAwesomeIcons.comment),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(speaker[index].comments.toString()),
                                ],
                              )
                            ],
                          ),
                        )                                    
                      ],
                    ),
                  ),
                  


                ],
              )
            ),
          );
        }),
    );
  }
}