import 'package:flutter/material.dart';

Color lightBlack = Color(0xff1f1f1f), blue = Color(0xff6532ff);

List<Map<String, dynamic>> categories = [
  {
    'title': 'Deco',
    'img':
        'https://cdn.pixabay.com/photo/2014/08/11/21/39/wall-416060_960_720.jpg',
  },
  {
    'title': 'Fashion',
    'img':
        'https://cdn.pixabay.com/photo/2016/03/09/10/23/model-1246028_960_720.jpg',
  },
  {
    'title': 'Tech',
    'img':
        'https://cdn.pixabay.com/photo/2018/06/07/16/49/vr-3460451_960_720.jpg',
  },
  {
    'title': 'Sports',
    'img':
        'https://cdn.pixabay.com/photo/2017/08/12/19/01/walk-2635038_960_720.jpg',
  },
  {
    'title': "Cars",
    "img":
        "https://cdn.pixabay.com/photo/2016/01/19/17/57/car-1149997_960_720.jpg"
  }
];

class Products {
  final String title, location, img, author;
  final int comments, likes;
  final double price;

  Products(
      {this.title,
      this.author,
      this.location,
      this.img,
      this.comments,
      this.likes,
      this.price});
}

List<Products> products = [
  
 
  
  Products(
    author: "Cybdom",
    comments: 10495,
    img:
        "https://cdn.pixabay.com/photo/2017/04/05/01/12/traveler-2203666_960_720.jpg",
    likes: 8340,
    location: "New York, United States",
    price: 1200,
    title: "Awesome Traveler Bag",
  ),
  Products(
    author: "Cybdom",
    comments: 10495,
    img:
        "https://cdn.pixabay.com/photo/2014/08/05/10/31/waiting-410328_960_720.jpg",
    likes: 8340,
    location: "New York, United States",
    price: 1200,
    title: "Another Awesome Thing",
  ),
  Products(
    author: "Cybdom",
    comments: 10495,
    img:
        "https://cdn.pixabay.com/photo/2015/03/26/09/41/tie-690084_960_720.jpg",
    likes: 8340,
    location: "New York, United States",
    price: 1200,
    title: "Awesome Shirt",
  ),
  Products(
    author: "Cybdom",
    comments: 10495,
    img:
        "https://cdn.pixabay.com/photo/2016/02/19/11/46/man-1209947_960_720.jpg",
    likes: 8340,
    location: "New York, United States",
    price: 1200,
    title: "Awesome Tux",
  ),
];
