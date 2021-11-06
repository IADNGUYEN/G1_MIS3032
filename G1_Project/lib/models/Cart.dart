import 'Product.dart';

class Cart {
  Product product;
  int amount;

  Cart({required this.product, required this.amount});
}

double totalPrice(List<Cart> cartList ) {
  double totalPrice = 0;
  for(int i = 0; i < cartList.length; i++) {
      totalPrice +=  cartList[i].product.price * cartList[i].amount;
  }
  return totalPrice;
}

add(int pid) {
  for (int i = 0; i < cartList.length; i++) {
    if (cartList[i].product.pid == pid) {
      if (cartList[i].amount < 10) {
        cartList[i].amount++;
      }
    }
  }
}

reduce(int pid) {
  for (int i = 0; i < cartList.length; i++) {
    if (cartList[i].product.pid == pid) {
      if (cartList[i].amount > 1) {
        cartList[i].amount--;
      }
    }
  }
}

// Demo data for our cart
List<Cart> cartList = [
  /*Cart(product: productList[0], amount: 2),
  Cart(product: productList[1], amount: 1),
  Cart(product: productList[3], amount: 1),*/
];

