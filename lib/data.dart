import 'models/Food.dart';
import 'models/customer.dart';

List<Customer> customersData = [
  Customer(id: '1',name: 'Mohammad Khalid',phone: '004798989898',address: 'new York'),
  Customer(id: '2',name: 'Ahmad khalid',phone: '004798989898',address: 'new York'),
  Customer(id: '3',name: 'Ahmad khalid',phone: '004798989898',address: 'new York'),
  Customer(id: '4',name: 'Khalid',phone: '004798989898',address: 'new York'),
];

List<Food> foodsData = [
  Food(foodName: 'Kabsa',imgPath: 'assets/slicedPizza.jpg',isDelivered: false,date: '2022/5/4'),
  Food(foodName: 'Classic Peporoni',imgPath: 'assets/chickenpiza.jpg',isDelivered: true,date: '2022/10/4'),
  Food(foodName: 'Pizza',imgPath: 'assets/chickenpiza.jpg',isDelivered: true,date: '2022/12/4'),
  Food(foodName: 'Sliced Pepporoni',imgPath: 'assets/slicedPizza.jpg',isDelivered: false,date: '2022/9/4'),
];