import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:grocery_app/model/categoryModel.dart';

class CategoryService {
  String categoryCollection = "category";
  //Create Category
  Future createCategory(CategoryModel model) async {
    return await FirebaseFirestore.instance
        .collection(categoryCollection)
        .add(model.toJson());
  }
  //Update Category

  Future updateCategory(CategoryModel model) async {
    return await FirebaseFirestore.instance
        .collection(categoryCollection)
        .doc(model.docId)
        .update({
          "categoryName": model.categoryName,
          "categoryImage": model.categoryImage,
        });
  }
  //Delete Category

  Future deleteCategory(String docId) async {
    return await FirebaseFirestore.instance
        .collection(categoryCollection)
        .doc(docId)
        .delete();
  }

  //MarkStock Category
  Future markStockCategory(CategoryModel model) async {
    return await FirebaseFirestore.instance
        .collection(categoryCollection)
        .doc(model.docId)
        .update({"stock": model.stock});
  }

  //GetAll Category
  Stream<List<CategoryModel>> getAllCategory() {
    return FirebaseFirestore.instance
        .collection(categoryCollection)
        .snapshots()
        .map(
          (categoryList) => categoryList.docs
              .map(
                (categoryJson) => CategoryModel.fromJson(categoryJson.data()),
              )
              .toList(),
        );
  }
  //InStock Category
  Stream<List<CategoryModel>> getInStockCategory() {
    return FirebaseFirestore.instance
        .collection(categoryCollection)
    .where("stock", isEqualTo: true)
        .snapshots()
        .map(
          (categoryList) => categoryList.docs
          .map(
            (categoryJson) => CategoryModel.fromJson(categoryJson.data()),
      )
          .toList(),
    );
  }
  //OutOfStock Category
  Stream<List<CategoryModel>> getOutOfStockCategory() {
    return FirebaseFirestore.instance
        .collection(categoryCollection)
        .where("stock", isEqualTo: false)
        .snapshots()
        .map(
          (categoryList) => categoryList.docs
          .map(
            (categoryJson) => CategoryModel.fromJson(categoryJson.data()),
      )
          .toList(),
    );
  }
}
