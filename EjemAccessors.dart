class Person {
  String firtsname;
  String lastname;

  Person(this.firtsname, this.lastname);
  //Person.anonymous() {}

  String get fullName => "$firtsname $lastname";

  set fullName(String fullName) {
    var parts = fullName.split(" ");
    this.firtsname = parts.first;
    this.lastname = parts.last;
  }

  String get initials => "${firtsname[0]}. ${lastname[0]}.";
}

void main() {
  Person somePerson = new Person("clark", "kent");
  print(somePerson.firtsname + " " + somePerson.lastname);
  print(somePerson.fullName);
  print(somePerson.initials);
  somePerson.fullName = "David Morales";
  somePerson.firtsname = "Pepe";
  print(somePerson.fullName);
}
