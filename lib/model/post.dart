class Post {
  String personName;
  String personImage;
  String address;
  String message;
  String messageImage;
  int likesCount;
  int commentsCount;
  String postTime;

  Post(
      {this.personName,
      this.personImage,
      this.address,
      this.message,
      this.commentsCount,
      this.likesCount,
      this.messageImage,
      this.postTime});
}
