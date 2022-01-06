import 'package:flutter/material.dart';
import 'package:list_view/users.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          headline6: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        )
      ),
      home:  Scaffold(
        body: UserListBuilder(),
      ),
    );
  }
}

class SimpleList extends StatefulWidget {
  const SimpleList({Key? key}) : super(key: key);

  @override
  _SimpleListState createState() => _SimpleListState();
}

class _SimpleListState extends State<SimpleList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: const [
        MyListItem(number: 1),
        MyListItem(number: 2),
        MyListItem(number: 3),
        MyListItem(number: 4),
        MyListItem(number: 5),
        MyListItem(number: 6),
        MyListItem(number: 7),
        MyListItem(number: 8),
        MyListItem(number: 9),
        MyListItem(number: 10),
        MyListItem(number: 11),
        MyListItem(number: 12),
      ],
    );
  }
}

class MyListItem extends StatelessWidget {
  const MyListItem({Key? key, required this.number}) : super(key: key);

  final int number;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all()
      ),
      child: Text('Элемент # $number', style: Theme.of(context).textTheme.headline6,),
    );
  }
}

class SimpleListBuilder extends StatelessWidget {
  SimpleListBuilder({Key? key}) : super(key: key);

  //var list = List<int>.generate(20, (i) => i + 1);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
        return MyListItem(number: index + 1);
        },
    );
  }
}

class ListItem extends StatefulWidget {
  const ListItem({Key? key}) : super(key: key);

  @override
  _ListItemState createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Item $index'),
            selected: index == _selectedIndex, // определяем, является ли элемент выбранным
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
          );
        }
    );
  }
}


