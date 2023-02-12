/// d : [{"i":{"height":750,"imageUrl":"https://m.media-amazon.com/images/M/MV5BZDNlNzBjMGUtYTA0Yy00OTI2LWJmZjMtODliYmUyYTI0OGFmXkEyXkFqcGdeQXVyODIwMDI1NjM@._V1_.jpg","width":500},"id":"tt7838252","l":"K.G.F: Chapter 1","q":"feature","qid":"movie","rank":8759,"s":"Yash, Srinidhi Shetty","y":2018},{"i":{"height":1350,"imageUrl":"https://m.media-amazon.com/images/M/MV5BMjI2Njg2Y2EtZjgwMC00ZGVkLWJmMWYtYjVhYjk2ZTkwNWE1XkEyXkFqcGdeQXVyMTMxMjA5NDU1._V1_.jpg","width":1080},"id":"tt10698680","l":"K.G.F: Chapter 2","q":"feature","qid":"movie","rank":5024,"s":"Yash, Sanjay Dutt","y":2022},{"id":"nm12857196","l":"Krishnappa Kgf","rank":217227,"s":"Actor, K.G.F: Chapter 2 (2022)"},{"id":"nm14468301","l":"Kgf","rank":811446},{"id":"nm7560978","l":"Haridoss K.G.F.","rank":513208,"s":"Editor, Aatagara (2015)"},{"id":"nm7551384","l":"Haridas K.G.F.","rank":703260,"s":"Editor, Aatagara (2015)"},{"id":"nm9017832","l":"K. Pradeep Kgf","rank":850365,"s":"Editor, Yesa (2017)"},{"id":"nm13471238","l":"Suri Kgf","rank":1108963,"s":"Actor, Tom and Jerry (2021)"}]
/// q : "kgf"
/// v : 1

class Homemodel {
  Homemodel({
      List<D>? d, 
      String? q, 
      num? v,}){
    _d = d;
    _q = q;
    _v = v;
}

  Homemodel.fromJson(dynamic json) {
    if (json['d'] != null) {
      _d = [];
      json['d'].forEach((v) {
        _d?.add(D.fromJson(v));
      });
    }
    _q = json['q'];
    _v = json['v'];
  }
  List<D>? _d;
  String? _q;
  num? _v;
Homemodel copyWith({  List<D>? d,
  String? q,
  num? v,
}) => Homemodel(  d: d ?? _d,
  q: q ?? _q,
  v: v ?? _v,
);
  List<D>? get d => _d;
  String? get q => _q;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_d != null) {
      map['d'] = _d?.map((v) => v.toJson()).toList();
    }
    map['q'] = _q;
    map['v'] = _v;
    return map;
  }

}

/// i : {"height":750,"imageUrl":"https://m.media-amazon.com/images/M/MV5BZDNlNzBjMGUtYTA0Yy00OTI2LWJmZjMtODliYmUyYTI0OGFmXkEyXkFqcGdeQXVyODIwMDI1NjM@._V1_.jpg","width":500}
/// id : "tt7838252"
/// l : "K.G.F: Chapter 1"
/// q : "feature"
/// qid : "movie"
/// rank : 8759
/// s : "Yash, Srinidhi Shetty"
/// y : 2018

class D {
  D({
      I? i, 
      String? id, 
      String? l, 
      String? q, 
      String? qid, 
      num? rank, 
      String? s, 
      num? y,}){
    _i = i;
    _id = id;
    _l = l;
    _q = q;
    _qid = qid;
    _rank = rank;
    _s = s;
    _y = y;
}

  D.fromJson(dynamic json) {
    _i = json['i'] != null ? I.fromJson(json['i']) : null;
    _id = json['id'];
    _l = json['l'];
    _q = json['q'];
    _qid = json['qid'];
    _rank = json['rank'];
    _s = json['s'];
    _y = json['y'];
  }
  I? _i;
  String? _id;
  String? _l;
  String? _q;
  String? _qid;
  num? _rank;
  String? _s;
  num? _y;
D copyWith({  I? i,
  String? id,
  String? l,
  String? q,
  String? qid,
  num? rank,
  String? s,
  num? y,
}) => D(  i: i ?? _i,
  id: id ?? _id,
  l: l ?? _l,
  q: q ?? _q,
  qid: qid ?? _qid,
  rank: rank ?? _rank,
  s: s ?? _s,
  y: y ?? _y,
);
  I? get i => _i;
  String? get id => _id;
  String? get l => _l;
  String? get q => _q;
  String? get qid => _qid;
  num? get rank => _rank;
  String? get s => _s;
  num? get y => _y;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_i != null) {
      map['i'] = _i?.toJson();
    }
    map['id'] = _id;
    map['l'] = _l;
    map['q'] = _q;
    map['qid'] = _qid;
    map['rank'] = _rank;
    map['s'] = _s;
    map['y'] = _y;
    return map;
  }

}

/// height : 750
/// imageUrl : "https://m.media-amazon.com/images/M/MV5BZDNlNzBjMGUtYTA0Yy00OTI2LWJmZjMtODliYmUyYTI0OGFmXkEyXkFqcGdeQXVyODIwMDI1NjM@._V1_.jpg"
/// width : 500

class I {
  I({
      num? height, 
      String? imageUrl, 
      num? width,}){
    _height = height;
    _imageUrl = imageUrl;
    _width = width;
}

  I.fromJson(dynamic json) {
    _height = json['height'];
    _imageUrl = json['imageUrl'];
    _width = json['width'];
  }
  num? _height;
  String? _imageUrl;
  num? _width;
I copyWith({  num? height,
  String? imageUrl,
  num? width,
}) => I(  height: height ?? _height,
  imageUrl: imageUrl ?? _imageUrl,
  width: width ?? _width,
);
  num? get height => _height;
  String? get imageUrl => _imageUrl;
  num? get width => _width;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['height'] = _height;
    map['imageUrl'] = _imageUrl;
    map['width'] = _width;
    return map;
  }

}