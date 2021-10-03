
class ElectionInformation{
  
  final String? title;
  final String? region;
  final String? date;

  ElectionInformation(
    {this.title,
    this.region,
    this.date,});

  factory ElectionInformation.fromJson(Map<String, dynamic> json){
    // factory를 사용하면, ElectionInformation에만 접근하면 된다.
    // 하위 클래스에 접근할 필요 없이, 상위 클래스의 fromjson 함수로 하위클래스의 fromjson함수에 접근 가능하다.
    
    return ElectionInformation(
      title : json['title'],
      region : json['region'],
      date : json['region'],
    );
  }
}