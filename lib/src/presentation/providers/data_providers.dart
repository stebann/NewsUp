import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:newsapp/src/enums/news_category_enum.dart';
import 'package:newsapp/src/models/news_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'data_providers.g.dart';

@riverpod
List<NewsModel> treandingNews(Ref ref) {
  return [
    NewsModel(
      title:
          "Trudeau responde a los aranceles de Trump: 'Quiere que la economía de Canadá colapse'",
      description:
          "El primer ministro de Canadá, Justin Trudeau, criticó duramente los aranceles que ha impuesto a su país el presidente estadounidense Donald Trump.",
      author: "BBC News Mundo",
      date: "05/03/2025",
      imageUrl: "assets/noticias/foto1.jpg",
      category: NewsCategoryEnum.politics,
    ),
    NewsModel(
      title:
          "¿Puede Europa enfrentarse a Rusia en Ucrania sin el apoyo de EE.UU.?",
      description:
          "Tras el insólito enfrentamiento entre Donald Trump y Volodymyr Zelensky en la Casa Blanca, los líderes europeos mostraron un frente unido ofreciendo públicamente su apoyo a Ucrania.",
      author: "BBC News Mundo",
      date: "02/03/2025",
      imageUrl: "assets/noticias/foto2.jpg",
      category: NewsCategoryEnum.politics,
    ),
    NewsModel(
      title: "Lista completa de nominados a los Oscar 2025: ¿está tu favorita?",
      description:
          "Adrien Brody es uno de los competidores más fuertes en la categoría de mejor actor, mientras que Demi Moore destaca en la de mejor actriz.",
      author: "BBC News Mundo",
      date: "23/01/2025",
      imageUrl: "assets/noticias/foto3.jpg",
      category: NewsCategoryEnum.entertainment,
    ),
    NewsModel(
      title: "Por qué la licencia de Chevron en Venezuela es clave para Maduro",
      description:
          "El fin de la licencia de Chevron anunciado por Trump es un duro golpe para las ambiciones económicas del presidente Nicolás Maduro.",
      author: "Norberto Paredes",
      date: "28/02/2025",
      imageUrl: "assets/noticias/foto4.jpg",
      category: NewsCategoryEnum.politics,
    ),
  ];
}

@riverpod
List<NewsModel> latestNewsList(Ref ref) {
  return [
    NewsModel(
      title: "Global Climate Summit Ends with New Agreements",
      description:
          "World leaders commit to ambitious carbon reduction targets by 2030.",
      author: "Emily Roberts",
      date: "05/03/2025",
      imageUrl: "",
      category: NewsCategoryEnum.environment,
    ),
    NewsModel(
      title: "New Breakthrough in Cancer Treatment Shows Promise",
      description:
          "Researchers announce clinical trials with 90% success rate for certain types of cancer.",
      author: "Robert Chen",
      date: "04/03/2025",
      imageUrl: "",
      category: NewsCategoryEnum.health,
    ),
    NewsModel(
      title: "Tech Giants Face New Regulations in European Union",
      description:
          "New legislation aims to increase competition and protect user privacy.",
      author: "Lisa Mueller",
      date: "03/03/2025",
      imageUrl: "",
      category: NewsCategoryEnum.technology,
    ),
    NewsModel(
      title: "Olympic Committee Announces Host Cities for 2032 Games",
      description:
          "Brisbane, Australia selected as the main venue for the summer Olympics.",
      author: "Carlos Mendez",
      date: "02/03/2025",
      imageUrl: "",
      category: NewsCategoryEnum.sports,
    ),
    NewsModel(
      title: "Renewable Energy Surpasses Fossil Fuels for First Time",
      description:
          "Solar and wind power now generate more electricity globally than coal and gas.",
      author: "Aisha Johnson",
      date: "01/03/2025",
      imageUrl: "",
      category: NewsCategoryEnum.environment,
    ),
    NewsModel(
      title: "Major Breakthrough in Quantum Computing Announced",
      description:
          "New quantum processor completes calculations that would take supercomputers years.",
      author: "Thomas Williams",
      date: "28/02/2025",
      imageUrl: "",
      category: NewsCategoryEnum.technology,
    ),
    NewsModel(
      title: "Global Food Shortage Concerns as Crop Yields Decline",
      description:
          "Climate change and extreme weather patterns affecting agriculture worldwide.",
      author: "Maria Garcia",
      date: "27/02/2025",
      imageUrl: "",
      category: NewsCategoryEnum.environment,
    ),
    NewsModel(
      title: "New Strain of Flu Virus Detected in Southeast Asia",
      description:
          "Health officials monitoring situation closely but say risk remains low.",
      author: "James Wilson",
      date: "26/02/2025",
      imageUrl: "",
      category: NewsCategoryEnum.health,
    ),
    NewsModel(
      title: "Historic Peace Agreement Signed in Middle East",
      description:
          "After decades of conflict, neighboring countries agree to open borders.",
      author: "Fatima Al-Hassan",
      date: "25/02/2025",
      imageUrl: "",
      category: NewsCategoryEnum.politics,
    ),
    NewsModel(
      title: "Virtual Reality Education Platform Launches Worldwide",
      description:
          "Students can now attend virtual classrooms with peers from around the globe.",
      author: "Daniel Park",
      date: "24/02/2025",
      imageUrl: "",
      category: NewsCategoryEnum.education,
    ),
  ];
}
