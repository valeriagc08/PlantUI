class Plant {
  String? price;
  String? size;
  String? category;
  String? details;
  String? plantImage;
  String? family;

  Plant({
    this.price,
    this.size,
    this.category,
    this.details,
    this.family,
    this.plantImage,
  });
}

List<Plant> listPlants=[

  Plant(
    price: '\$60',
    size: 'Medium',
    category: 'Categoria 1',
    details: 'It is a beautiful plant, perfect for your Home',
    family: 'Familia 1',
    plantImage: 'lib/assets/m1.png'
  ),

  Plant(
    price: '\$65',
    size: 'Medium',
    category: 'Categoria 2',
    details: 'It is a beautiful plant, perfect for your Home',
    family: 'Familia 2',
    plantImage: 'lib/assets/m2.png'
  ),
  Plant(
    price: '\$45',
    size: 'Small',
    category: 'Categoria 3',
    details: 'It is a beautiful plant, perfect for your Home',
    family: 'Familia 3',
    plantImage: 'lib/assets/m3.png'
  ),
];

