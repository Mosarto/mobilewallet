import 'package:flutter/cupertino.dart';
import 'package:mobilewalletexploration/Screens/Home_Screen.dart';
import 'package:mobilewalletexploration/Screens/Wallet_Screen.dart';

class IconsButtonData {
  final String? name;
  final String? icon;
  final Widget page;

  IconsButtonData({
    this.name,
    this.icon,
    required this.page,
  });
}

class DaysData {
  final String? name;
  final String? valor;
  final double? size;
  final int? index;

  DaysData({
    this.name,
    this.valor,
    this.size,
    this.index,
  });
}

class TransactionsData {
  final String? name;
  final String? date;
  final String? valor;
  final String? icon;

  TransactionsData({
    this.name,
    this.date,
    this.valor,
    this.icon,
  });
}

final iconsbutton = [
  IconsButtonData(
    name: 'Wallet',
    icon: 'wallet.svg',
    page: WalletScreen(),
  ),
  IconsButtonData(
    name: 'Statistics',
    icon: 'statistics.svg',
    page: HomeScreen(),
  ),
  IconsButtonData(
    name: 'Portifolio',
    icon: 'porfolio.svg',
    page: HomeScreen(),
  ),
  IconsButtonData(
    name: 'Stake',
    icon: 'stake.svg',
    page: HomeScreen(),
  ),
];

final datedate = [
  DaysData(name: 'Mon', size: 0.0, valor: '499', index: 0),
  DaysData(name: 'Tue', size: 80.0, valor: '200', index: 1),
  DaysData(name: 'Wed', size: 40.0, valor: '299', index: 2),
  DaysData(name: 'Thu', size: 20.0, valor: '350', index: 3),
  DaysData(name: 'Fri', size: 100.0, valor: '150', index: 4),
];

final transactionsData = [
  TransactionsData(
    name: 'McDonald',
    date: 'Today, 17:45 PM',
    valor: '26,65',
    icon: 'McDonald.svg',
  ),
  TransactionsData(
    name: 'PizzaHut',
    date: 'March 10, 13:00 PM',
    valor: '46,40',
    icon: 'pizza.svg',
  ),
  TransactionsData(
    name: 'Amazon',
    date: 'March 02, 07:30 AM',
    valor: '170,10',
    icon: 'amazon.svg',
  ),
];
