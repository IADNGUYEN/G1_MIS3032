import 'package:g1_project/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Product {
  final int pid, cid, amount;
  final String pname, description, image, size;
  final String dateCreate;
  final int price;
  final bool status;

  Product({
    required this.pid,
    required this.cid,
    required this.amount,
    required this.pname,
    required this.description,
    required this.image,
    required this.size,
    this.status = true,
    required this.price,
    required this.dateCreate,
  });

  Product.fromJSON(Map<String, dynamic> jsonMap)
      :
        pid = jsonMap['pid'],
        cid = jsonMap['cid'],
        amount = jsonMap['amount'],
        pname = jsonMap['pname'],
        description = jsonMap['description'],
        image = jsonMap['image'],
        size = jsonMap['size'],
        status = jsonMap['status'],
        price = jsonMap['price'],
        dateCreate = jsonMap['dateCreate'];
}

Future<List<Product>> fetch() async {
  const url = '${host}/aosomi';
  final response = await http.get(Uri.parse(url));
  List<Product> list = [];
  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    data["arr"].forEach((element) {
      final product = new Product(pid: element['pid'],
          cid: element['cid'],
          amount: element['amount'],
          pname: element['pname'],
          description: element['description'],
          image: element['image'],
          size: element['size'],
          price: element['price'],
          dateCreate: element['dateCreate']);
      list.add(product);
    });
  }
  return list;
}

List<Product> getAll() {
  List<Product> productList = [];
  Future<List<Product>> productListBuilder = fetch();
  productListBuilder.then((value) {
    if (value != null) {
      value.forEach((item) => productList.add(item));
    }
  });
  return productList == null ? [] : productList;
}

List<Product> productList = getAll();

// Our demo Products

// List<Product> productList = [
//   Product(
//     pid: 1,
//     cid: 1,
//     amount: 10,
//     pname: "Áo sơ mi",
//     description: "Shop luôn đem đến cho khách hàng các kiểu áo sơ mi hiện đại nhất, "
//         "nét đẹp đậm phong cách riêng và kiểu dáng khác nhau. Mỗi một mẫu áo mang "
//         "một nét khác biệt và có thể phối được với nhiều loại quần và chân váy, "
//         "cập nhật xu hướng. Ngoài ra cung cấp các kiểu áo sơ mi phù hợp với mọi lứa tuổi. "
//         "Bạn không cần phải băn khoăn, lo lắng vì sợ không tìm được trang phục thích hợp "
//         "cho mình nữa nhé!",
//     image: "assets/images/somi.jpg",
//     status: true,
//     dateCreate: DateTime.now(),
//     size: "M",
//     price: 300,
//   ),
//   Product(
//     pid: 2,
//     cid: 2,
//     amount: 10,
//     pname: "Áo thun",
//     description: "Shop luôn đem đến cho khách hàng các kiểu áo sơ mi hiện đại nhất, "
//         "nét đẹp đậm phong cách riêng và kiểu dáng khác nhau. Mỗi một mẫu áo mang "
//         "một nét khác biệt và có thể phối được với nhiều loại quần và chân váy, "
//         "cập nhật xu hướng. Ngoài ra cung cấp các kiểu áo sơ mi phù hợp với mọi lứa tuổi. "
//         "Bạn không cần phải băn khoăn, lo lắng vì sợ không tìm được trang phục thích hợp "
//         "cho mình nữa nhé!",
//     image: "assets/images/somi.jpg",
//     status: true,
//     dateCreate: DateTime.now(),
//     size: "M",
//     price: 300,
//   ),
//   Product(
//     pid: 3,
//     cid: 3,
//     amount: 10,
//     pname: "Áo thể thao",
//     description: "Shop luôn đem đến cho khách hàng các kiểu áo sơ mi hiện đại nhất, "
//         "nét đẹp đậm phong cách riêng và kiểu dáng khác nhau. Mỗi một mẫu áo mang "
//         "một nét khác biệt và có thể phối được với nhiều loại quần và chân váy, "
//         "cập nhật xu hướng. Ngoài ra cung cấp các kiểu áo sơ mi phù hợp với mọi lứa tuổi. "
//         "Bạn không cần phải băn khoăn, lo lắng vì sợ không tìm được trang phục thích hợp "
//         "cho mình nữa nhé!",
//     image: "assets/images/somi.jpg",
//     status: true,
//     dateCreate: DateTime.now(),
//     size: "M",
//     price: 300,
//   ),
//   Product(
//     pid: 4,
//     cid: 4,
//     amount: 10,
//     pname: "Áo khoác",
//     description: "Shop luôn đem đến cho khách hàng các kiểu áo sơ mi hiện đại nhất, "
//         "nét đẹp đậm phong cách riêng và kiểu dáng khác nhau. Mỗi một mẫu áo mang "
//         "một nét khác biệt và có thể phối được với nhiều loại quần và chân váy, "
//         "cập nhật xu hướng. Ngoài ra cung cấp các kiểu áo sơ mi phù hợp với mọi lứa tuổi. "
//         "Bạn không cần phải băn khoăn, lo lắng vì sợ không tìm được trang phục thích hợp "
//         "cho mình nữa nhé!",
//     image: "assets/images/somi.jpg",
//     status: true,
//     dateCreate: DateTime.now(),
//     size: "M",
//     price: 300,
//   ),
// ];
