import 'package:toktik/domain/entities/video_post.dart';

class LocalVideloModel {

  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideloModel({
    required this.name,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0
  });

  factory LocalVideloModel.fronJson(Map<String, dynamic> json) => LocalVideloModel(
    name: json['name'] ?? 'No name',
    videoUrl: json['videoUrl'],
    likes: json['likes'] ?? 0,
    views: json['views'] ?? 0,
  );

  VideoPost toVideoPostEntity() => VideoPost(
    caption: name, 
    videoUrl: videoUrl,
    likes: likes,
    views: views
  );

}