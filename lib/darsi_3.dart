import 'package:flutter/material.dart';
import 'package:non/darsi_2.dart';
import 'package:video_player/video_player.dart';
import 'package:flick_video_player/flick_video_player.dart';

class Darsi3 extends StatefulWidget {
  const Darsi3({super.key});

  @override
  State<Darsi3> createState() => _Android20State();
}

class _Android20State extends State<Darsi3> {
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
                height: 277,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xffF3F4F6),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Комментарии (2)",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 95,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.blue)),
                          child: Text(
                            "Написать",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.blue),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(
                                    "images/charli.png",
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Имя Фамилия",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                            Text(
                              "23 янв 2024",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                      decoration:const BoxDecoration(
                        border: Border(bottom: BorderSide(width: 1,color: Colors.grey))
                      ),
                      child: Text(
                        "Видео классное многое стало понятно,прям чувствую что поумнел, продолжу изучать остальные уроки",
                        style:
                            TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                      ),
                    ),
Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(
                                    "images/karina.png",
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Имя Фамилия",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                            Text(
                              "23 янв 2024",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ),
                    Text("Супер, просто невероятно!"),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=>Darsi2()),
                        (route)=>false
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
                    )
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
