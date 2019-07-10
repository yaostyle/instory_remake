import 'dart:convert';

class ApiResponse {
  bool canReply;
  int id;
  bool canReshare;
  String reelType;
  User user;
  int mediaCount;
  List<Items> items;
  int expiringAt;
  int latestReelMedia;
  String status;

  ApiResponse(
      {this.canReply,
      this.canReshare,
      this.reelType,
      this.user,
      this.items,
      this.status});

  ApiResponse.fromJson(Map<String, dynamic> json) {
    canReply = json['can_reply'];
    id = json['id'];
    expiringAt = json['expiring_at'];
    mediaCount = json['media_count'];
    latestReelMedia = json['latest_reel_media'];
    canReshare = json['can_reshare'];
    reelType = json['reel_type'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    if (json['items'] != null) {
      items = new List<Items>();
      json['items'].forEach((v) {
        items.add(new Items.fromJson(v));
      });
    }
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['can_reply'] = this.canReply;
    data['can_reshare'] = this.canReshare;
    data['reel_type'] = this.reelType;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }

    data['status'] = this.status;
    return data;
  }
}

class HighLight {
  String id;
  int latestReelMedia;
  Null seen;
  bool canReply;
  bool canReshare;
  String reelType;
  CoverMedia coverMedia;
  User user;
  List<Items> items;
  String title;
  int createdAt;
  int prefetchCount;
  int mediaCount;

  HighLight(
      {this.id,
      this.latestReelMedia,
      this.seen,
      this.canReply,
      this.canReshare,
      this.reelType,
      this.coverMedia,
      this.user,
      this.items,
      this.title,
      this.createdAt,
      this.prefetchCount,
      this.mediaCount});

  HighLight.fromJson(Map<String, dynamic> jsonObj) {
    id = jsonObj['id'];
    latestReelMedia = jsonObj['latest_reel_media'];
    seen = jsonObj['seen'];
    canReply = jsonObj['can_reply'];
    canReshare = jsonObj['can_reshare'];
    reelType = jsonObj['reel_type'];
    coverMedia = jsonObj['cover_media'] != null
        ? new CoverMedia.fromJson(jsonObj['cover_media'])
        : null;
    user = jsonObj['user'] != null ? new User.fromJson(jsonObj['user']) : null;
    if (jsonObj['items'] != null){
      items = new LIst<Items>();
      jsonObj['items'].forEach((v) {
        items.add(Items.fromJson(v));
      });
    }
    title = jsonObj['title'];
    createdAt = jsonObj['created_at'];
    prefetchCount = jsonObj['prefetch_count'];
    mediaCount = jsonObj['media_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['latest_reel_media'] = this.latestReelMedia;
    data['seen'] = this.seen;
    data['can_reply'] = this.canReply;
    data['can_reshare'] = this.canReshare;
    data['reel_type'] = this.reelType;
    if (this.coverMedia != null) {
      data['cover_media'] = this.coverMedia.toJson();
    }
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    if(this.items != null) {
      data['items'] = this.items.map((v)=>v.toJson()).toList();
    }

  }

}
