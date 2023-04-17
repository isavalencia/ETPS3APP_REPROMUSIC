import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:flutter_application_music/consts/colors.dart';
import 'package:flutter_application_music/consts/text_style.dart';
import 'package:flutter_application_music/controllers/player_controller.dart';

class AllMusic extends StatelessWidget {
  const AllMusic({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(PLayerController());
    return Scaffold(
      appBar: AppBar(
        title: new Text(
          "All MUSIC",
        ),
        foregroundColor: Colors.black,
        backgroundColor: Color(0xFF80CBC4).withOpacity(0.8),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFF80CBC4),
                Color(0xFF80DEEA),
                Color(0xFF1DE9B6),
                Color(0xFF004D40),
              ]),
        ),
        child: FutureBuilder<List<SongModel>>(
          future: controller.audioQuery.querySongs(
            ignoreCase: true,
            orderType: OrderType.ASC_OR_SMALLER,
            sortType: null,
            uriType: UriType.EXTERNAL,
          ),
          builder: (BuildContext context, snapshot) {
            if (snapshot.data == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.data!.isEmpty) {
              return Center(
                child: Text(
                  "No Song Found",
                  style: ourStyle(),
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: snapshot.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: const BoxDecoration(
                          color: tealColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      margin: const EdgeInsets.only(bottom: 15),
                      child: Obx(
                        () => ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          tileColor: tealColor,
                          title: Text(
                            snapshot.data![index].displayNameWOExt,
                            style: ourStyle(
                                family: bold, size: 18, color: Colors.white),
                          ),
                          subtitle: Text(
                            "${snapshot.data![index].artist}",
                            style: ourStyle(
                                family: regular,
                                size: 12,
                                color: Colors.blue.shade900),
                          ),
                          leading: QueryArtworkWidget(
                            id: snapshot.data![index].id,
                            type: ArtworkType.AUDIO,
                            nullArtworkWidget: const Icon(
                              Icons.music_note,
                              color: whiteColor,
                              size: 40,
                            ),
                          ),
                          trailing: controller.playIndex.value == index &&
                                  controller.isPlaying.value
                              ? const Icon(Icons.play_arrow,
                                  color: whiteColor, size: 26)
                              : null,
                          onTap: () {
                            controller.playSong(
                                snapshot.data![index].uri, index);
                          },
                        ),
                      ),
                    );
                  },
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
