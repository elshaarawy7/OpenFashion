class ProductModel {
  final String name;
  final int price;
  final String image;
  final String description;

  ProductModel({
    required this.name,
    required this.price,
    required this.image,
    required this.description,
  });

  
  static List<ProductModel> prodacts = [ 

    ProductModel(
      name: "October", 
      price: 100,
     image: "assets/product/product1.png",
     description: "reversible angora cardigan" ,
    ) , 

    ProductModel(
      name: "October", 
      price: 150,
     image: "assets/product/product6.png",
     description: "reversible angora cardigan" ,
    ) , 

    ProductModel(
      name: "October", 
      price: 120,
     image: "assets/product/product3.png",
     description: "reversible angora cardigan" ,
    ) ,

    ProductModel(
      name: "October", 
      price: 125,
     image: "assets/product/product5.png",
     description: "reversible angora cardigan" ,
    ) ,

    ProductModel(
      name: "October", 
      price: 80,
     image: "assets/product/product4.png",
     description: "reversible angora cardigan" ,
    ) ,

    ProductModel(
      name: "October", 
      price: 130,
     image: "assets/product/product2.png",
     description: "reversible angora cardigan" ,
    ) ,

   
  ];
 }

 
  
