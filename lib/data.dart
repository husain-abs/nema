import 'package:nima/models/deliveryItem.dart';

import 'models/Food.dart';
import 'models/customers.dart';

List<Customer> customersData = [
  Customer(id: '1',name: 'Mohammad Noman',phone: '004798989898',address: 'new York'),
  Customer(id: '2',name: 'Ahmad Feroz',phone: '004798989898',address: 'new York'),
  Customer(id: '3',name: 'Ahmad Walid',phone: '004798989898',address: 'new York'),
  Customer(id: '4',name: 'Abu Yousuf',phone: '004798989898',address: 'new York'),
];

List<Food> foodsData = [
  Food(foodName: 'Kabsa',imgPath: 'assets/slicedPizza.jpg',isDelivered: false,date: '2022/5/4'),
  Food(foodName: 'Classic Peporoni',imgPath: 'assets/chickenpiza.jpg',isDelivered: true,date: '2022/10/4'),
  Food(foodName: 'Pizza',imgPath: 'assets/chickenpiza.jpg',isDelivered: true,date: '2022/12/4'),
  Food(foodName: 'Sliced Pepporoni',imgPath: 'assets/slicedPizza.jpg',isDelivered: false,date: '2022/9/4'),
];

List<DeliveryItem> deliveryItems = [
  DeliveryItem(imgPath: 'assets/chickenRice.jpg',title: 'Kabsa',exDate: '02/20/22',km: '10 km',pickLocation: 'AL-FANATEER DAMMAM 3'),
  DeliveryItem(imgPath: 'assets/salmon.jpg',title: 'Salmon',exDate: '02/18/22',km: '20 Km',pickLocation: 'AL-FANATEER DAMMAM 1')
];