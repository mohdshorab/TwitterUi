import 'package:flutter_application_1/models/twitterSpeaker.dart';

class TwitterService{
  List<Speaker> getSpeakers() {
    List<Speaker> speakers = [
      Speaker(
        'Mohd Shorab', 
        '@shorab', 
        'https://images.unsplash.com/photo-1493612276216-ee3925520721?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHVzZXIlMjBpY29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60', 
        'Learning Flutter', 
        'https://images.unsplash.com/photo-1617040619263-41c5a9ca7521?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Zmx1dHRlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', 
        '16s', 
        32, 
        15, 
        105, 
        44, 
        true
        ),
      Speaker(
        'Manish', 
        '@manish', 
        'https://images.unsplash.com/photo-1493612276216-ee3925520721?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHVzZXIlMjBpY29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60', 
        'Learning Salesforce', 
        'https://images.unsplash.com/photo-1555371363-27a37f8e8c46?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80', 
        '16s', 
        32, 
        15, 
        105, 
        44, 
        true
        ),
        Speaker(
        'Anush', 
        '@anush', 
        'https://images.unsplash.com/photo-1555421689-3f034debb7a6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHNhbGVzZm9yY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60', 
        'Learning Java', 
        'https://www.filepicker.io/api/file/t12BZqmRoulvCTDhoYie', 
        '16s', 
        32, 
        15, 
        105, 
        44, 
        true
        ),
    ];
    return speakers;
  }
}