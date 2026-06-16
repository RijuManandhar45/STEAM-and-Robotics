import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 54, 101),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.network(
                            "https://www.pngmart.com/files/12/Greeting-Emoji-PNG-Photo.png",
                            height: 28,
                          ),
                          Text(
                            "Welcome Back,",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Riju Manandhar",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(18),
                        color: const Color.fromARGB(220, 18, 93, 168)),
                    child: Icon(
                      Icons.notifications_active_rounded,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  decoration: InputDecoration(
                    hintText: "Search projects, teams, technologies...",
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 204, 203, 203),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 204, 203, 203),
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Stack(
                  children: [
                    Container(
                      height: 180,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Image.network(
                        "https://img.magnific.com/premium-photo/robot-with-black-background-dark-background_916191-348637.jpg?semt=ais_hybrid&w=740&q=80",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Smart",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.double_arrow,
                                color: Colors.white,
                              )
                            ],
                          ),
                          Text(
                            "Irrigation System",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Team Innovators",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                            height: 35,
                            width: 100,
                            child: Center(
                                child: Text(
                              "View Project",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            )),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  itemCount: list.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final categories = list[index];
                    return Padding(
                      padding: EdgeInsets.only(right: 24),
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Image.network(categories.image ?? ""),
                          ),
                          SizedBox(height: 12),
                          Text(
                            categories.name ?? "",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Row(
                children: [
                  Text(
                    "Recent Projects",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  itemCount: projectList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final projects = projectList[index];
                    return Padding(
                      padding: EdgeInsets.only(right: 24),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              height: 100,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Image.network(
                                projects.image ?? "",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            projects.name ?? "",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}

class Categotries {
  String? name;
  String? image;

  Categotries({this.name, this.image});
}

List<Categotries> list = [
  Categotries(
      name: "Robotics",
      image: "https://cdn-icons-png.flaticon.com/512/6134/6134346.png"),
  Categotries(
      name: "Programming",
      image: "https://cdn-icons-png.flaticon.com/512/2621/2621040.png"),
  Categotries(
      name: "Electronics",
      image:
          "https://icons.veryicon.com/png/o/education-technology/blue-gray-solid-blend-icon/electronics-187.png"),
  Categotries(
      name: "Science",
      image: "https://cdn-icons-png.flaticon.com/512/5205/5205074.png"),
  Categotries(
      name: "IoT",
      image: "https://cdn-icons-png.flaticon.com/512/10355/10355707.png")
];

class Projects {
  String? name;
  String? image;

  Projects({this.name, this.image});
}

List<Projects> projectList = [
  Projects(
      name: "Line Following Robot",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsBnuO-waPYkjfpxYoymSGhMqHeL7pQ6vgi9_N3QWSRO6m4ZkM5gr88bIS&s=10"),
  Projects(
      name: "Smart Dustbin",
      image:
          "https://projects.arduinocontent.cc/cover-images/0873f836-7d84-475e-965f-aed694af837f.blob"),
  Projects(
      name: "Weather Monitoring systems",
      image:
          "https://cdn.pixabay.com/photo/2019/02/05/20/00/anemometer-3977718_1280.jpg"),
  Projects(
      name: "RC Car",
      image:
          "https://thumbs.dreamstime.com/b/custom-handmade-rc-car-model-diy-electronic-project-remote-control-car-kit-unique-assembly-creative-construction-personalized-334590893.jpg"),
  Projects(
      name: "Smart Security System",
      image:
          "https://www.gensecurity.com/hs-fs/hubfs/Blog/GenSec_February%202025_Smart%20Home%20Security_Blog_2.jpeg?width=2500&height=1458&name=GenSec_February%202025_Smart%20Home%20Security_Blog_2.jpeg")
];
