
class VideoItem {
  final String id;
  final String title;

  VideoItem({
    required this.id,
    required this.title,
  });
  
  factory VideoItem.fromMap(Map<String, String> map) {
    return VideoItem(
      id: map['path'] ?? '',
      title: map['title'] ?? '',
    );
  }

  // Optional: Convert to Map (useful for Firebase/APIs)
  Map<String, dynamic> toMap() {
    return {
      'path': id,
      'title': title,
    };
  }
}