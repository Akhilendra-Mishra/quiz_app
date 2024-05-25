class Question {
  final String question;
  final String imagePath;
  final List<String> options;

  Question({
    required this.question,
    required this.imagePath,
    required this.options,
  });
}

final List<Question> questions = [
  Question(
    question: "1.Who developed the Flutter?",
    imagePath: "assets/question1.jpg",
    options: ["Facebook", "Google", "Youtube", "Microsoft"],
  ),
  Question(
    question: "2.Which programming language is used to build Flutter ?",
    imagePath: "assets/question2.png",
    options: ["Java", "C#", "Dart", "SQL"],
  ),
  Question(
    question: "3.How many types of widgets are there in Flutter?",
    imagePath: "assets/question3.png",
    options: ["2", "4", "10+", "6"],
  ),
  Question(
    question: "4.Which widget type allows you to modify its appearance dynamically according to user input?",
    imagePath: "assets/question4.jpg",
    options: ["Container widget", "Stateless widget", "Text widget", "Stateful widget"],
  ),
  Question(
    question: "5.What is the key configuration file used when building a Flutter project?",
    imagePath: "assets/question5.png",
    options: ["pubspec.xml", "pubspec.yaml", "config.html", "root.xml"],
  ),
  Question(
    question: "6.What command would your Flutter install and ensure your environment is set up correctly?",
    imagePath: "assets/question6.png",
    options: [" Flutter run", "Flutter doctor", "Flutter build", "Flutter help"],
  ),
  Question(
    question: "7.What widget would you use for repeating content in Flutter?",
    imagePath: "assets/question7.jpg",
    options: ["View", "ListView", "Stack", "Container"],
  ),
  Question(
    question: "8.Which widget is used to create a text input field in Flutter?",
    imagePath: "assets/question8.jpeg",
    options: ["Text", "TextField", "Child", "Children"],
  ),
  Question(
    question: "9.Which widget is used to display an image in Flutter?",
    imagePath: "assets/question9.jpeg",
    options: ["Image", "ImageFeild", "ImageView", "ImageDisplay"],
  ),
  Question(
    question: "10.Which widget is used to create a drawer in Flutter?",
    imagePath: "assets/question10.jpeg",
    options: ["Drawer widgit", "DrawerLayout", "Drawer", "TabBar"],
  ),
];
