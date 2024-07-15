import 'package:ecommerceapp/constant/image.dart';
import 'package:ecommerceapp/constant/text.dart';


//HomePage
class NewProducts {
  final String imagePath;
  final String imageName;
  final String imagePrize;

  NewProducts({
    required this.imagePath,
    required this.imageName,
    required this.imagePrize,
  });
}

List<NewProducts> productItem = [
  NewProducts(
      imagePath: NImage.image1, imageName: NText.text1, imagePrize: NText.price1),
  NewProducts(
      imagePath: NImage.image2, imageName: NText.text2, imagePrize: NText.price2),
  NewProducts(
      imagePath: NImage.image3, imageName: NText.text3, imagePrize: NText.price1),
  NewProducts(
      imagePath: NImage.image4, imageName: NText.text4, imagePrize: NText.price2),
];

//SearchPAge
class Search{
  final String imagePath;
  final String imageName;
  Search({required this.imagePath, required this.imageName});
}
List<Search> searchItem = [
  Search(imagePath: NImage.image5, imageName: NText.text5),
  Search(imagePath: NImage.image6, imageName: NText.text6),
  Search(imagePath: NImage.image7, imageName: NText.text7),
  Search(imagePath: NImage.image8, imageName: NText.text8),
  Search(imagePath: NImage.image9, imageName: NText.text9),
  Search(imagePath: NImage.image10, imageName: NText.text10),
  Search(imagePath: NImage.image11, imageName: NText.text11),
  Search(imagePath: NImage.image12, imageName: NText.text12),
  Search(imagePath: NImage.image13, imageName: NText.text13),
];

// ProductPage
class Photos{
  final String imagePath;
  Photos({required this.imagePath});
}
List<Photos> photosPath = [
 Photos(imagePath: NImage.imageP1),
 Photos(imagePath: NImage.imageP2),
 Photos(imagePath: NImage.imageP3),
];