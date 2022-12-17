import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(messageContent: "Hey Kriss, I am doing fine dude. wbu?", messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(messageContent: "Is there any thing wrong?", messageType: "sender"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
      Container(decoration: BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment(-1.0, -0.979),
      end: Alignment(-0.055, 1.0),
      colors: [const Color(0xb200685e), const Color(0xb2808080)],
      stops:  [0.0, 1.0],
    ),
    border: Border.all(width: 1.0, color: const Color(0xb2707070)),
    ),),

    Container(
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage("image/k.png"),
    )
    ),
    ),
    Container(
    margin: EdgeInsets.only(bottom: 500,),
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage("image/jil.png"),
    )
    ),
    ),
    Container(
      margin: EdgeInsets.only(top: 150,left: 30),
      child: Stack(
      children: <Widget>[
        ListView.builder(
          itemCount: messages.length,
          shrinkWrap: true,
          padding: EdgeInsets.only(top: 10,bottom: 10),
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index){
            return Container(
              padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
              child: Align(
                alignment: (messages[index].messageType == "receiver"?Alignment.topLeft:Alignment.topRight),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: (messages[index].messageType  == "receiver"?Colors.grey.shade200:Colors.blue[200]),
                  ),
                  padding: EdgeInsets.all(16),
                  child: Text(messages[index].messageContent, style: TextStyle(fontSize: 15),),
                ),
              ),
            );
          },
        ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
                      height: 60,
                      width: double.infinity,
                      color: Colors.white,
                      child: Row(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.lightBlue,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Icon(Icons.add, color: Colors.white, size: 20, ),
                            ),
                          ),

                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Write message...",
                                  hintStyle: TextStyle(color: Colors.black54),
                                  border: InputBorder.none
                              ),
                            ),
                          ),

                          SizedBox(height: 15,),
                          FloatingActionButton(
                            onPressed: (){},
                            child: Icon(Icons.send,color: Colors.white,size: 18,),
                            backgroundColor: Colors.blue,
                            elevation: 0,
                          ),
                        ],

                      ),
                    ),
                  ),

  ],
  ),
    ),
    ]),
);

  }
}

class ChatMessage{
  String messageContent;
  String messageType;
  ChatMessage({required this.messageContent, required this.messageType});
}