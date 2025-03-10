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
          "\"Trump quiere que la economía de Canadá colapse para anexionarnos\": la dura respuesta de Trudeau a los aranceles de Estados Unidos",
      description:
          "El primer ministro de Canadá, Justin Trudeau, criticó duramente los aranceles que ha impuesto a su país el presidente estadounidense Donald Trump.\n\n"
          "Trudeau calificó estos aranceles como \"algo muy tonto\" y prometió emprender una \"lucha implacable\" para proteger la economía canadiense.\n\n"
          "Trump ha impuesto aranceles del 25% a los productos que ingresan a Estados Unidos desde Canadá y México, y ha aumentado los gravámenes sobre los bienes procedentes de China.\n\n"
          "El primer ministro canadiense anunció aranceles de represalia a las exportaciones estadounidenses y advirtió que una guerra comercial sería costosa para ambos países.\n\n"
          "Pero Trump fue aún más lejos en una publicación en Truth Social: \"Por favor, explíquenle al gobernador Trudeau, de Canadá, que cuando impone un arancel de represalia a EE. UU., ¡nuestro arancel recíproco aumentará inmediatamente en una cantidad similar!\"",
      author: "BBC News Mundo",
      date: "05/03/2025",
      imageUrl: "assets/noticias/foto1.jpg",
      category: NewsCategoryEnum.politics,
    ),
    NewsModel(
      title:
          "¿Puede Europa enfrentarse a Rusia en Ucrania sin el apoyo de EE.UU.?",
      description:
          "Tras el insólito enfrentamiento entre Donald Trump y Volodymyr Zelensky en la Casa Blanca el viernes, en el que Trump acusó a Zelensky de 'jugar con la Tercera Guerra Mundial', los líderes europeos mostraron un frente unido ofreciendo públicamente su apoyo a Ucrania.\n\n"
          "De inmediato, un mandatario tras otro expresaron su solidaridad con el líder ucraniano. Y aunque en general no mencionaron al presidente estadounidense, sus comentarios reflejaron una creciente brecha entre EE.UU. y sus aliados en Europa respecto a la guerra en Ucrania.\n\n"
          "El presidente francés, Emmanuel Macron, reafirmó la posición europea: 'Hay un agresor: Rusia. Hay una víctima: Ucrania. Hicimos bien en ayudar a Ucrania y sancionar a Rusia hace tres años, y seguimos haciéndolo'.\n\n"
          "El canciller alemán Olaf Scholz también se pronunció, destacando que 'nadie quiere la paz más que los ucranianos' y asegurando que 'Ucrania puede confiar en Alemania y en Europa'.\n\n"
          "Por su parte, la representante de asuntos exteriores de la UE, Kaja Kallas, afirmó: 'Ha quedado claro que el mundo libre necesita un nuevo líder. Depende de nosotros, los europeos, aceptar este desafío'.\n\n"
          "El enfrentamiento entre Trump y Zelensky ocurrió antes de la cumbre de líderes europeos organizada por el primer ministro británico Keir Starmer el domingo. Tras la reunión, se anunció un plan de paz de cuatro puntos respaldado por los principales países europeos, Canadá y Turquía, que incluye mantener la ayuda militar a Ucrania mientras dure la guerra.",
      author: "BBC News Mundo",
      date: "02/03/2025",
      imageUrl: "assets/noticias/foto2.jpg",
      category: NewsCategoryEnum.politics,
    ),
    NewsModel(
      title: "Lista completa de nominados a los Oscar 2025: ¿está tu favorita?",
      description:
          "Tras el insólito enfrentamiento entre Donald Trump y Volodymyr Zelensky en la Casa Blanca el viernes, en el que Trump acusó a Zelensky de 'jugar con la Tercera Guerra Mundial', los líderes europeos mostraron un frente unido ofreciendo públicamente su apoyo a Ucrania.\n\n"
          "De inmediato, un mandatario tras otro expresaron su solidaridad con el líder ucraniano. Y aunque en general no mencionaron al presidente estadounidense, sus comentarios reflejaron una creciente brecha entre EE.UU. y sus aliados en Europa respecto a la guerra en Ucrania.\n\n"
          "El presidente francés, Emmanuel Macron, reafirmó la posición europea: 'Hay un agresor: Rusia. Hay una víctima: Ucrania. Hicimos bien en ayudar a Ucrania y sancionar a Rusia hace tres años, y seguimos haciéndolo'.\n\n"
          "El canciller alemán Olaf Scholz también se pronunció, destacando que 'nadie quiere la paz más que los ucranianos' y asegurando que 'Ucrania puede confiar en Alemania y en Europa'.\n\n"
          "Por su parte, la representante de asuntos exteriores de la UE, Kaja Kallas, afirmó: 'Ha quedado claro que el mundo libre necesita un nuevo líder. Depende de nosotros, los europeos, aceptar este desafío'.\n\n"
          "El enfrentamiento entre Trump y Zelensky ocurrió antes de la cumbre de líderes europeos organizada por el primer ministro británico Keir Starmer el domingo. Tras la reunión, se anunció un plan de paz de cuatro puntos respaldado por los principales países europeos, Canadá y Turquía, que incluye mantener la ayuda militar a Ucrania mientras dure la guerra.",
      author: "BBC News Mundo",
      date: "23/01/2025",
      imageUrl: "assets/noticias/foto3.jpg",
      category: NewsCategoryEnum.entertainment,
    ),
    NewsModel(
      title: "Por qué la licencia de Chevron en Venezuela es clave para Maduro",
      description:
          "Trump anunció este miércoles que revocaría la licencia que \"el corrupto Joe Biden concedió a Nicolás Maduro\" en noviembre de 2022, que le permitía al gigante petrolero estadounidense Chevron operar en suelo venezolano.\n\nAñadió que su decisión se debía a que Caracas no había cumplido con las garantías electorales estipuladas en el acuerdo y a que el gobierno de Maduro no estaba aceptando con suficiente rapidez a los migrantes venezolanos con orden de deportación de Estados Unidos, a quienes calificó de \"criminales violentos\".\n\nTrump aseguró que había ordenado que el acuerdo terminara \"a partir del 1 de marzo\".\n\nPero bajo los términos de la licencia vigente, Chevron tiene permitido operar en Venezuela hasta finales de julio, seis meses después de la última renovación en febrero.\n\nAún no está claro si la decisión de Trump pretende adelantar el cese de las operaciones de la petrolera, lo cual incumpliría el acuerdo.\n\nVenezuela replicó que la medida era \"lesiva e inexplicable\".\n\n\"Al anunciar sanciones contra la empresa estadounidense Chevron, pretendiendo hacerle un daño al pueblo venezolano, en realidad se está infligiendo un daño a los Estados Unidos, a su población, y a sus empresas\", afirmó Delcy Rodríguez, la vicepresidenta del país petrolero.\n\nRodríguez, quien también es ministra de Hidrocarburos, resaltó que fueron este tipo de \"acciones fallidas\" las que impulsaron la migración de venezolanos.\n\nDonald Trump impuso durante su primer gobierno (2017-2021) varias rondas de sanciones contra Venezuela y la estatal petrolera, Petróleos de Venezuela (PDVSA), con el fin de paralizar al gobierno de Nicolás Maduro cortando su principal fuente de ingresos.\n\nLas sanciones se endurecieron progresivamente después de que Maduro se proclamó como el ganador de la elección presidencial de 2018 que el gobierno de Estados Unidos calificó como una \"farsa\".",
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

@riverpod
List<NewsModel> savedNews(Ref ref) {
  return [
    NewsModel(
      title:
          "\"Trump quiere que la economía de Canadá colapse para anexionarnos\": la dura respuesta de Trudeau a los aranceles de Estados Unidos",
      description:
          "El primer ministro de Canadá, Justin Trudeau, criticó duramente los aranceles que ha impuesto a su país el presidente estadounidense Donald Trump.\n\n"
          "Trudeau calificó estos aranceles como \"algo muy tonto\" y prometió emprender una \"lucha implacable\" para proteger la economía canadiense.\n\n"
          "Trump ha impuesto aranceles del 25% a los productos que ingresan a Estados Unidos desde Canadá y México, y ha aumentado los gravámenes sobre los bienes procedentes de China.\n\n"
          "El primer ministro canadiense anunció aranceles de represalia a las exportaciones estadounidenses y advirtió que una guerra comercial sería costosa para ambos países.\n\n"
          "Pero Trump fue aún más lejos en una publicación en Truth Social: \"Por favor, explíquenle al gobernador Trudeau, de Canadá, que cuando impone un arancel de represalia a EE. UU., ¡nuestro arancel recíproco aumentará inmediatamente en una cantidad similar!\"",
      author: "BBC News Mundo",
      date: "05/03/2025",
      imageUrl: "assets/noticias/foto1.jpg",
      category: NewsCategoryEnum.politics,
    ),
    NewsModel(
      title:
          "¿Puede Europa enfrentarse a Rusia en Ucrania sin el apoyo de EE.UU.?",
      description:
          "Tras el insólito enfrentamiento entre Donald Trump y Volodymyr Zelensky en la Casa Blanca el viernes, en el que Trump acusó a Zelensky de 'jugar con la Tercera Guerra Mundial', los líderes europeos mostraron un frente unido ofreciendo públicamente su apoyo a Ucrania.\n\n"
          "De inmediato, un mandatario tras otro expresaron su solidaridad con el líder ucraniano. Y aunque en general no mencionaron al presidente estadounidense, sus comentarios reflejaron una creciente brecha entre EE.UU. y sus aliados en Europa respecto a la guerra en Ucrania.\n\n"
          "El presidente francés, Emmanuel Macron, reafirmó la posición europea: 'Hay un agresor: Rusia. Hay una víctima: Ucrania. Hicimos bien en ayudar a Ucrania y sancionar a Rusia hace tres años, y seguimos haciéndolo'.\n\n"
          "El canciller alemán Olaf Scholz también se pronunció, destacando que 'nadie quiere la paz más que los ucranianos' y asegurando que 'Ucrania puede confiar en Alemania y en Europa'.\n\n"
          "Por su parte, la representante de asuntos exteriores de la UE, Kaja Kallas, afirmó: 'Ha quedado claro que el mundo libre necesita un nuevo líder. Depende de nosotros, los europeos, aceptar este desafío'.\n\n"
          "El enfrentamiento entre Trump y Zelensky ocurrió antes de la cumbre de líderes europeos organizada por el primer ministro británico Keir Starmer el domingo. Tras la reunión, se anunció un plan de paz de cuatro puntos respaldado por los principales países europeos, Canadá y Turquía, que incluye mantener la ayuda militar a Ucrania mientras dure la guerra.",
      author: "BBC News Mundo",
      date: "02/03/2025",
      imageUrl: "assets/noticias/foto2.jpg",
      category: NewsCategoryEnum.politics,
    ),
    NewsModel(
      title: "Lista completa de nominados a los Oscar 2025: ¿está tu favorita?",
      description:
          "Tras el insólito enfrentamiento entre Donald Trump y Volodymyr Zelensky en la Casa Blanca el viernes, en el que Trump acusó a Zelensky de 'jugar con la Tercera Guerra Mundial', los líderes europeos mostraron un frente unido ofreciendo públicamente su apoyo a Ucrania.\n\n"
          "De inmediato, un mandatario tras otro expresaron su solidaridad con el líder ucraniano. Y aunque en general no mencionaron al presidente estadounidense, sus comentarios reflejaron una creciente brecha entre EE.UU. y sus aliados en Europa respecto a la guerra en Ucrania.\n\n"
          "El presidente francés, Emmanuel Macron, reafirmó la posición europea: 'Hay un agresor: Rusia. Hay una víctima: Ucrania. Hicimos bien en ayudar a Ucrania y sancionar a Rusia hace tres años, y seguimos haciéndolo'.\n\n"
          "El canciller alemán Olaf Scholz también se pronunció, destacando que 'nadie quiere la paz más que los ucranianos' y asegurando que 'Ucrania puede confiar en Alemania y en Europa'.\n\n"
          "Por su parte, la representante de asuntos exteriores de la UE, Kaja Kallas, afirmó: 'Ha quedado claro que el mundo libre necesita un nuevo líder. Depende de nosotros, los europeos, aceptar este desafío'.\n\n"
          "El enfrentamiento entre Trump y Zelensky ocurrió antes de la cumbre de líderes europeos organizada por el primer ministro británico Keir Starmer el domingo. Tras la reunión, se anunció un plan de paz de cuatro puntos respaldado por los principales países europeos, Canadá y Turquía, que incluye mantener la ayuda militar a Ucrania mientras dure la guerra.",
      author: "BBC News Mundo",
      date: "23/01/2025",
      imageUrl: "assets/noticias/foto3.jpg",
      category: NewsCategoryEnum.entertainment,
    ),
  ];
}
