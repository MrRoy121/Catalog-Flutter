import 'package:catalog/model/catalog.dart';

class CartClass{

  static final cartModel = CartClass()._internal();
  CartClass._internal();
  factory CartClass() => cartModel;


  late CatalogModel _catalog;

  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;

  set(CatalogModel NewCatalog){
    assert(NewCatalog != null);
    _catalog = NewCatalog;
  }
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  num get TotalPrice =>
    items.fold(0, (total, current) => total + current.price);

  void add(Item item){
    _itemIds.add(item.id);
  }
  void remove(Item item){
    _itemIds.remove(item.id);
  }
}