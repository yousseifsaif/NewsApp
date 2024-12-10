import 'package:flutter/material.dart';
import 'package:newsapp/models/articleModel.dart';

class Newslist extends StatelessWidget {
  const Newslist({super.key, required this.articlemodel,});
  final Articlemodel articlemodel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child:articlemodel.image != null ? Image.network(
          articlemodel.image!,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ):Image.asset('assets/images/error.png'),
        ),
        const SizedBox(
          height: 12,
        ),
         Text(articlemodel.tittle??'',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
         Text(articlemodel.subTittle??' NO Content To Show.....'
          ,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
