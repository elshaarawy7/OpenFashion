class ProductModel {
  final String name;
  final String price;
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
      price: r"$120",
     image: "assets/product/product1.png",
     description: "reversible angora cardigan" ,
    ) , 

    ProductModel(
      name: "October", 
      price: r"$100",
     image: "assets/product/product6.png",
     description: "reversible angora cardigan" ,
    ) , 

    ProductModel(
      name: "October", 
      price: r"$90",
     image: "assets/product/product3.png",
     description: "reversible angora cardigan" ,
    ) ,

    ProductModel(
      name: "October", 
      price: r"$90",
     image: "assets/product/product5.png",
     description: "reversible angora cardigan" ,
    ) ,

    ProductModel(
      name: "October", 
      price: r"$80",
     image: "assets/product/product4.png",
     description: "reversible angora cardigan" ,
    ) ,

    ProductModel(
      name: "October", 
      price: r"$125",
     image: "assets/product/product2.png",
     description: "assets/product/product3.png" ,
    ) ,

   
  ];
 }

 
  
