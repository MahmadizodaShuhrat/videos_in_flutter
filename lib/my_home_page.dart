import 'package:flutter/material.dart';
import 'package:non/darsi_2.dart';
import 'package:video_player/video_player.dart';
import 'package:flick_video_player/flick_video_player.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _Android20State();
}

class _Android20State extends State<MyHomePage> {
  late FlickManager _flickManager;
  bool favorit = false;

  @override
  void initState() {
    super.initState();
    _flickManager = FlickManager(
        videoPlayerController: VideoPlayerController.networkUrl(
      Uri.parse("https://video-preview.s3.yandex.net/iyFO9AEAAAA.mp4"),
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
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Center(
                                child: Container(
                                  width: 32,
                                  height: 4,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromARGB(255, 190, 187, 187),
                                  ),
                                ),
                              ),
                             const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 40,right: 40),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                   const Text(
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
                              ),
                             const SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(12, 12, 12, 16),
                                width: 320,
                                height: 56,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color.fromARGB(255, 209, 209, 211),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                  const  Row(
                                      children: [
                                        Icon(Icons.menu),
                                        SizedBox(width: 10,),
                                        Text(
                                          "Чашм",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w800,
                                              fontSize: 16),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                       const Text(
                                          "24:05",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Colors.grey),
                                        ),
                                      
                                        IconButton(
                                          onPressed: () {
                                            setState(() {
                                              favorit = !favorit;
                                            });
                                          },
                                          icon: favorit
                                              ? Icon(
                                                  Icons.check_circle,color: Colors.blue,
                                                )
                                              : Icon(
                                                  Icons.radio_button_off_outlined,
                                                ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.fromLTRB(12, 12, 12, 16),
                                width: 320,
                                height: 56,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color.fromARGB(255, 209, 209, 211),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                  const  Row(
                                      children: [
                                        Icon(Icons.menu),
                                        SizedBox(width: 10,),
                                        Text(
                                          "Майна",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w800,
                                              fontSize: 16),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                       const Text(
                                          "24:05",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Colors.grey),
                                        ),
                                      
                                        IconButton(
                                          onPressed: () {
                                            setState(() {
                                              favorit = !favorit;
                                            });
                                          },
                                          icon: favorit
                                              ? Icon(
                                                  Icons.check_circle,color: Colors.blue,
                                                )
                                              : Icon(
                                                  Icons.radio_button_off_outlined,
                                                ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.fromLTRB(12, 12, 12, 16),
                                width: 320,
                                height: 56,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color.fromARGB(255, 209, 209, 211),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                   const Row(
                                      children: [
                                        Icon(Icons.menu),
                                        SizedBox(width: 10,),
                                        Text(
                                          "Гуш",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w800,
                                              fontSize: 16),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                      const  Text(
                                          "24:05",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Colors.grey),
                                        ),
                                      
                                        IconButton(
                                          onPressed: () {
                                            setState(() {
                                              favorit = !favorit;
                                            });
                                          },
                                          icon: favorit
                                              ? Icon(
                                                  Icons.check_circle,color: Colors.blue,
                                                )
                                              : Icon(
                                                  Icons.radio_button_off_outlined,
                                                ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.fromLTRB(12, 12, 12, 16),
                                width: 320,
                                height: 56,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color.fromARGB(255, 209, 209, 211),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                  const  Row(
                                      children: [
                                        Icon(Icons.menu),
                                        SizedBox(width: 10,),
                                        Text(
                                          "Гул",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w800,
                                              fontSize: 16),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                      const  Text(
                                          "24:05",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Colors.grey),
                                        ),
                                      
                                        IconButton(
                                          onPressed: () {
                                            setState(() {
                                              favorit = !favorit;
                                            });
                                          },
                                          icon: favorit
                                              ?  Icon(
                                                  Icons.check_circle,color: Colors.blue,
                                                )
                                              : Icon(
                                                  Icons.radio_button_off_outlined,
                                                ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.fromLTRB(12, 12, 12, 16),
                                width: 320,
                                height: 56,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color.fromARGB(255, 209, 209, 211),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                   const Row(
                                      children: [
                                        Icon(Icons.menu),
                                        SizedBox(width: 10,),
                                        Text(
                                          "Бини",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w800,
                                              fontSize: 16),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                      const  Text(
                                          "24:05",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Colors.grey),
                                        ),
                                      
                                        IconButton(
                                          onPressed: () {
                                            setState(() {
                                              favorit = !favorit;
                                            });
                                          },
                                          icon: favorit
                                              ? Icon(
                                                  Icons.check_circle,color: Colors.blue,
                                                )
                                              : Icon(
                                                  Icons.radio_button_off_outlined,
                                                ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),






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
             const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Майна",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
             const SizedBox(
                height: 10,
              ),
              Center(
                child: FlickVideoPlayer(
                  flickManager: _flickManager,
                ),
              ),
            const  SizedBox(
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
                      const  SizedBox(
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
                       const SizedBox(
                          width: 120,
                        ),
                        Container(
                          width: 58,
                          height: 28,
                          child: const Row(
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
            const  SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(16),
                width: 328,
                height: 158,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xffF3F4F6),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      const  Text(
                          "Комментарии",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 95,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border:
                                Border.all(color: Color(0xff1780C2), width: 1),
                          ),
                          child: const Text(
                            "Написать",
                            style: TextStyle(
                                color: Color(0xff1780C2),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  const  SizedBox(
                      height: 10,
                    ),
                  const  Column(
                      children: [
                        Icon(
                          Icons.forum_outlined,
                          size: 50,
                          color: Colors.grey,
                        ),
                        Text(
                          "Пока комментариев нет!",
                          style:
                              TextStyle(color: Color(0xff64748B), fontSize: 14),
                        ),
                      ],
                    )
                  ],
                ),
              ),
             const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 48,
                      height: 48,
                      child:  Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Color(0xff1780C2),
                        size: 13,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff1780C2)),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => Darsi2()),
                            (route) => false);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 123,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color(0xff1780C2),
                        ),
                        child: const Row(
                          children: [
                            Text(
                              "    Дальше",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color.fromARGB(255, 245, 246, 248),
                              size: 13,
                            ),
                          ],
                        ),
                      ),
                    ),
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
