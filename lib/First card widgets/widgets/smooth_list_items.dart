import 'package:flutter/material.dart';

class SmoothListItems extends StatefulWidget {
  const SmoothListItems({super.key});

  @override
  State<SmoothListItems> createState() => _SmoothListItemsState();
}

class _SmoothListItemsState extends State<SmoothListItems> {
  final _items = [];
  final GlobalKey<AnimatedListState> _key = GlobalKey();
  void _addItem() {
    _items.insert(0, "Item ${_items.length + 1}");
    _key.currentState!.insertItem(0, duration: const Duration(seconds: 1));
  }

  void _remove(int index) {
    _key.currentState!.removeItem(index, (_, animation) {
      return SizeTransition(
        sizeFactor: animation,
        child: const Card(
          margin: EdgeInsets.all(10),
          color: Colors.red,
          child: ListTile(
            title: Text(
              'Deleted',
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
      );
    }, duration: const Duration(seconds: 3));
    _items.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          IconButton(onPressed: _addItem, icon: const Icon(Icons.add)),
          Expanded(
              child: AnimatedList(
            key: _key,
            itemBuilder: (context, index, animation) {
              return SizeTransition(
                sizeFactor: animation,
                key: UniqueKey(),
                child: Card(
                  margin: const EdgeInsets.all(10),
                  color: Colors.blueGrey,
                  child: ListTile(
                    title: Text(_items[index]),
                    trailing: IconButton(
                        onPressed: () => _remove(index),
                        icon: const Icon(Icons.remove)),
                  ),
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
