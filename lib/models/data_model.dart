import 'package:ecommerceapp/constant/image.dart';
import 'package:ecommerceapp/constant/text.dart';

class newProducts {
  final String imagePath;
  final String imageName;
  final String imagePrize;

  newProducts({
    required this.imagePath,
    required this.imageName,
    required this.imagePrize,
  });
}

List<newProducts> productItem = [
  newProducts(
      imagePath: NImage.image1, imageName: NText.text1, imagePrize: NText.price1),
  newProducts(
      imagePath: NImage.image2, imageName: NText.text2, imagePrize: NText.price2),
  newProducts(
      imagePath: NImage.image3, imageName: NText.text3, imagePrize: NText.price1),
  newProducts(
      imagePath: NImage.image4, imageName: NText.text4, imagePrize: NText.price2),
];

class search{
  final String imagePath;
  final String imageName;
  search({required this.imagePath, required this.imageName});
}
List<search> searchItem = [
  search(imagePath: NImage.image5, imageName: NText.text5),
  search(imagePath: NImage.image6, imageName: NText.text6),
  search(imagePath: NImage.image7, imageName: NText.text7),
  search(imagePath: NImage.image8, imageName: NText.text8),
  search(imagePath: NImage.image9, imageName: NText.text9),
  search(imagePath: NImage.image10, imageName: NText.text10),
  search(imagePath: NImage.image11, imageName: NText.text11),
  search(imagePath: NImage.image12, imageName: NText.text12),
  search(imagePath: NImage.image13, imageName: NText.text13),
];
