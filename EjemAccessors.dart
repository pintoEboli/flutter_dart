class Person {
  String firtsname;
  String lastname;

  Person(this.firtsname, this.lastname);

  String get fullName => "$firtsname $lastname";
  String get initials => "${firtsname[0]}. ${lastname[0]}.";
}

void main() {
  Person somePerson = new Person("clark", "kent");
  print(somePerson.firtsname + " " + somePerson.lastname);
  print(somePerson.fullName);
  print(somePerson.initials);
}
