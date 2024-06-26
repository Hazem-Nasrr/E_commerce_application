class ProductModel
{
  String? name;
  String? image;
  String? price;
  String? description;

  ProductModel.fromJson(Map data)
  {
    name = data["title"];
    image = data["image"];
    price = data["price"].toString();
    description = data["description"];
  }
}