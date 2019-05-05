class BlogModel {
  final String category;
  final String title;
  final String description;
  final String author;
  final String date;
  final String readTime;
  final bool isFavorite;
  final String image;

  BlogModel({
    this.category,
    this.title,
    this.description,
    this.author,
    this.date,
    this.readTime,
    this.isFavorite,
    this.image,
  });
}

List<BlogModel> dummyData = [
  BlogModel(
      category: "Programming",
      title: "Spring AOP",
      description: "AOP stands for Aspect.",
      author: "Ali Anıl Koçak",
      date: "25 Apr  ",
      readTime: "- 7 Min Read ",
      isFavorite: true,
      image: "https://miro.medium.com/max/154/0*GpBFnAhSQjoYpyzT.png"),
  BlogModel(
      category: "Programming",
      title: "Fantastic Iterators",
      description: "AOP stands for Aspect",
      author: "Ali Anıl Koçak",
      date: "25 Apr  ",
      readTime: "- 7 Min Read ",
      isFavorite: true,
      image: "https://miro.medium.com/max/154/0*Pvfoc3IdHeRoftsz"),
  BlogModel(
      category: "Programming",
      title: "Creating a note-taking app ",
      description: "AOP stands for Aspect",
      author: "Ali Anıl Koçak",
      date: "25 Apr  ",
      readTime: "- 7 Min Read ",
      isFavorite: true,
      image: "https://miro.medium.com/max/154/1*0dQNpR0DrpaZfMM8mXsvig.png"),
   BlogModel(
      category: "Programming",
      title: "Spring AOP",
      description: "AOP stands for Aspect.",
      author: "Ali Anıl Koçak",
      date: "25 Apr  ",
      readTime: "- 7 Min Read ",
      isFavorite: true,
      image: "https://miro.medium.com/max/154/0*GpBFnAhSQjoYpyzT.png"),
  BlogModel(
      category: "Programming",
      title: "Fantastic Iterators",
      description: "AOP stands for Aspect",
      author: "Ali Anıl Koçak",
      date: "25 Apr  ",
      readTime: "- 7 Min Read ",
      isFavorite: true,
      image: "https://miro.medium.com/max/154/0*Pvfoc3IdHeRoftsz"),
  BlogModel(
      category: "Programming",
      title: "Creating a note-taking app ",
      description: "AOP stands for Aspect",
      author: "Ali Anıl Koçak",
      date: "25 Apr  ",
      readTime: "- 7 Min Read ",
      isFavorite: true,
      image: "https://miro.medium.com/max/154/1*0dQNpR0DrpaZfMM8mXsvig.png"),
];
