import 'dart:convert';

import 'package:http/http.dart' as http;



Future<void> sendNotification()async{
  
  http.Response response = await http.post(Uri.parse('https://fcm.googleapis.com/fcm/send'),
      headers: {
      'Authorization' : 'key=AAAAjL9Je3w:APA91bGcDhlQwZw-gjGRAMOiF7KKmk8zhNu_fgJ6v59Ku1O55LJ60QQBFBE1j_6fyTZlUw6DMHK_1K--i_p3mTuG_tyhXilvuqacMc-j1j7qS_jX9M6uv10bBBcbGH1n-_2FsQuBBjtZ',
       'Content-Type' : 'application/json'
  },
    body: json.encode({

      'registration_ids': [
        'dZW7FXu9RaSh_0hCnyV5tF:APA91bGbBZgY5a-enZP78QZgCqEjZqEmP4dLye2Qcpc6fT-ILfud0WN-yXnUZENUjRZmHGX_G9-_bussZzlbfoPnGjZri9XWQRWFNQweAHSdschiM9KEE26CqcOHMjI2pucdvqYA9ekO',
      ],
      'notification': {
        'body': 'test data',
        'title': 'test message',
        'image': 'https://images.unsplash.com/photo-1598128558393-70ff21433be0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=789&q=80',
        'sound': false
      }
    })
  );
  print(response.body);
  
  
}