import 'package:flutter/material.dart';
import 'package:non/darsi_3.dart';
import 'package:non/my_home_page.dart';
import 'package:video_player/video_player.dart';
import 'package:flick_video_player/flick_video_player.dart';

class Darsi2 extends StatefulWidget {
  const Darsi2({super.key});

  @override
  State<Darsi2> createState() => _Android20State();
}

class _Android20State extends State<Darsi2> {
  late FlickManager _flickManager;

  @override
  void initState() {
    super.initState();
    _flickManager = FlickManager(
        videoPlayerController: VideoPlayerController.networkUrl(
      Uri.parse(
          "https://media.istockphoto.com/id/481270734/video/from-neurons-during-synapsis-to-a-human-head-loopable-biology.mp4?s=mp4-640x640-is&k=20&c=4jy5O59wvcvT54Vu-eFFM5FfZ59F6KdRX77nkrEHb8M="),
    ));
  }

  int like = 0;
  int dislike = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          child: Column(
                            children: [
                              Center(
                                child: Container(
                                  width: 32,
                                  height: 4,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xffD4D4D4),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Сар",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: Icon(Icons.close)),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(12, 12, 12, 16),
                                width: 320,
                                height: 56,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xffF3F4F6),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                icon: Icon(Icons.menu)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Майна",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: FlickVideoPlayer(
                  flickManager: _flickManager,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 58,
                          height: 28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffE0F2FE),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    like++;
                                    return;
                                  });
                                },
                                icon: Icon(
                                  Icons.thumb_up_alt,
                                  color: Colors.blue,
                                  size: 20,
                                ),
                              ),
                              Text("$like"),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 58,
                          height: 28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffE0F2FE),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    dislike++;
                                    return;
                                  });
                                },
                                icon: Icon(
                                  Icons.thumb_down_alt,
                                  color: Colors.red,
                                  size: 20,
                                ),
                              ),
                              Text("$dislike"),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 120,
                        ),
                        Container(
                          width: 58,
                          height: 28,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.visibility,
                                color: Colors.grey,
                                size: 20,
                              ),
                              Text(
                                "25",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(16),
                width: 328,
                height: 255,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xffF3F4F6),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Комментарии",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    Container(
                      height: 104,
                     width: 296,
                     decoration: BoxDecoration(
                      border: Border.all(width: 2,color: Colors.blue),
                      borderRadius: BorderRadius.circular(4)
                     ),
                     
                     child:  Padding(
                       padding: const EdgeInsets.all(13.0),
                       child: Text("Супер, просто невероятно!|",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                     ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 103,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            "Отправить",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 83,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.blue),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            "Отмена",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.blue),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyHomePage()),
                            );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 48,
                        height: 48,
                        child: Icon(
                          Icons.arrow_back_ios_new_outlined,
                          color: Color(0xff1780C2),
                          size: 13,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff1780C2)),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Darsi3()),
                       
                        );
                      },
                   child: 
                    Container(
                      alignment: Alignment.center,
                      width: 123,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color(0xff1780C2),
                      ),
                      child: Row(
                        children: [
                          Text(
                              "    Дальше",
                              style: TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Color.fromARGB(255, 245, 246, 248),
                            size: 13,
                          ),
                        ],
                      ),
                    )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
