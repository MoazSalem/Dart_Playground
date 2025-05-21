// a simple observer patteren simulating a football match
main() {
match footballMatch = match();
watcher john = watcher(name: "John");
watcher doe = watcher(name: "Doe");
footballMatch.registerObserver(ob: john);
footballMatch.registerObserver(ob: doe);
footballMatch.notifyObservers();
footballMatch.removeObserver(ob: doe);
footballMatch.notifyObservers();
}

abstract class observer {
  void update();
}

abstract class observable {
  List observers = [];
  void registerObserver({required observer ob});
  void removeObserver({required observer ob});
  void notifyObservers();
}

class watcher implements observer {
  final String name;
  watcher({required this.name});

  @override
  void update() {
    print("$name reacted to the goal");
  }
}

class match implements observable {
  @override
  List observers = [];

  @override
  void registerObserver({required observer ob}) {
    observers.add(ob);
  }

  @override
  void removeObserver({required observer ob}) {
    observers.remove(ob);
  }

  @override
  void notifyObservers() {
    observers.forEach((ob) => ob.update());
  }
}
