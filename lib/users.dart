import 'package:flutter/material.dart';

class UsersList extends StatelessWidget {
  const UsersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: const [
        User(name: 'Ирина', phone: '123456'),
        User(name: 'Артём', phone: '586456'),
        User(name: 'Марина', phone: '587456'),
        User(name: 'Олег', phone: '958475'),
        User(name: 'Ренат', phone: '235784'),
        User(name: 'Анастасия', phone: '956841'),
        User(name: 'Анфиса', phone: '358745'),
        User(name: 'Елена', phone: '125874'),
        User(name: 'Лариса', phone: '369854'),
        User(name: 'Нина', phone: '258746'),
        User(name: 'Вячеслав', phone: '854785'),
        User(name: 'Альберт', phone: '695821'),
        User(name: 'Анна', phone: '632574'),
      ],
    );
  }
}

class User extends StatelessWidget {
  const User({Key? key, required this.name, required this.phone})
      : super(key: key);

  final String name;
  final String phone;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(color: Colors.blue, border: Border.all()),
      child: Text(
        'Имя: $name, телефон: $phone',
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}

class UserListBuilder extends StatefulWidget {
  UserListBuilder({Key? key}) : super(key: key);

  @override
  _UserListBuilderState createState() => _UserListBuilderState();
}

class _UserListBuilderState extends State<UserListBuilder> {
  int _selectedIndex = 0;
  var list = <String>[
    'Ирина',
    'Артём',
    'Марина',
    'Олег',
    'Ренат',
    'Анастасия',
    'Анфиса',
    'Елена',
    'Лариса',
    'Нина',
    'Вячеслав',
    'Альберт',
    'Анна'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(list[index]),
            selected: _selectedIndex == index,
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
          );
        });
  }
}
