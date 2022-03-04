import 'dart:io';

class Article{

  Article({required String shopId,
           required int oriPrice, 
           required int prePrice,
           required String description,
           required String characteristic,
           required String category,
           required List<String> tags,
           required List<File> images,
           required String id,
           required File video});
}

class Video{
  Video({required String title,
         required String category,
         required String id,
         required File video,
         required String shopId});
}
