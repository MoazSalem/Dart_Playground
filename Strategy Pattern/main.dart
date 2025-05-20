// Simple implementation of the Strategy Pattern using dart
// Simulate a text based rpg
main() {
  Character john = Character(name: "John");
  Character doe = Character(name: "Doe");
  john.fight();
  doe.fight();
  doe.setWeapon(WeaponSword());
  john.setWeapon(WeaponAxe());
  john.fight();
  doe.fight();
}

class Character {
  final String name;
  late Weapon weapon;
  Character({required this.name}) {
    weapon = WeaponNone();
  }

  fight() {
    print('$name:');
    weapon.attack();
  }

  setWeapon(Weapon weapon) {
    this.weapon = weapon;
  }
}

class WeaponNone implements Weapon {
  @override
  attack() {
    print('Attacks with Hands');
  }
}

abstract class Weapon {
  attack();
}

class WeaponSword implements Weapon {
  @override
  attack() {
    print('Attacks with Sword');
  }
}

class WeaponBow implements Weapon {
  @override
  attack() {
    print('Attacks with Bow and Arrows');
  }
}

class WeaponAxe implements Weapon {
  @override
  attack() {
    print('Swings with Axe');
  }
}
