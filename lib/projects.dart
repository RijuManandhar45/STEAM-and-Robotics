import 'package:flutter/material.dart';
import 'package:steam_and_robotics_hub/home_page.dart';
import 'package:steam_and_robotics_hub/project_details.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 6, 41, 77),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Projects",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 6, 41, 77),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey)),
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  decoration: InputDecoration(
                    hintText: "Search projects",
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
              SizedBox(
                height: 40,
                child: ListView.builder(
                  itemCount: categList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final categ = categList[index];
                    return Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Container(
                        height: 40,
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 8, 65, 122),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                            child: Text(
                          categ.name ?? "",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 16,
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: list.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 0.78,
                ),
                itemBuilder: (context, index) {
                  final list = projectList[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => ProjectDetails()));
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 8, 65, 122),
                          borderRadius: BorderRadius.circular(16)),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Container(
                              height: 90,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16)),
                              child: Image.network(
                                list.image ?? "",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  list.name ?? "",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                ),
                                Text(
                                  list.teams ?? "",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white70),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.white30,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      "145",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.white30),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Categ {
  String? name;

  Categ({this.name});
}

List<Categ> categList = [
  Categ(
    name: "All",
  ),
  Categ(
    name: "Robotics",
  ),
  Categ(
    name: "Programming",
  ),
  Categ(
    name: "Electronics",
  ),
  Categ(
    name: "Science",
  ),
  Categ(
    name: "IoT",
  )
];

class ProjectsCategories {
  String? name;
  String? image;
  String? likes;
  String? teams;

  ProjectsCategories({this.name, this.image, this.likes, this.teams});
}

List<ProjectsCategories> projectList = [
  ProjectsCategories(
      name: "Autonomous Rescue Robot",
      image:
          "https://media-cldnry.s-nbcnews.com/image/upload/t_fit-560w,f_auto,q_auto:best/streams/2013/June/130621/6C7972703-http3A2F2Fwww.newsvine.com2F_vine2Fimages2Fusers2Fjohn-roach2F5516801.jpg",
      likes: "349",
      teams: "Team Cyber"),
  ProjectsCategories(
      name: "Line Following Robot",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsBnuO-waPYkjfpxYoymSGhMqHeL7pQ6vgi9_N3QWSRO6m4ZkM5gr88bIS&s=10",
      likes: "145",
      teams: "Team Alpha"),
  ProjectsCategories(
      name: "Smart Dustbin",
      image:
          "https://projects.arduinocontent.cc/cover-images/0873f836-7d84-475e-965f-aed694af837f.blob",
      likes: "39",
      teams: "Team Innovators"),
  ProjectsCategories(
      name: "Weather Monitoring systems",
      image:
          "https://cdn.pixabay.com/photo/2019/02/05/20/00/anemometer-3977718_1280.jpg",
      likes: "150",
      teams: "Team Alpha"),
  ProjectsCategories(
      name: "RC Car",
      image:
          "https://thumbs.dreamstime.com/b/custom-handmade-rc-car-model-diy-electronic-project-remote-control-car-kit-unique-assembly-creative-construction-personalized-334590893.jpg",
      likes: "257",
      teams: "Team Innovators"),
  ProjectsCategories(
      name: "Smart Security System",
      image:
          "https://www.gensecurity.com/hs-fs/hubfs/Blog/GenSec_February%202025_Smart%20Home%20Security_Blog_2.jpeg?width=2500&height=1458&name=GenSec_February%202025_Smart%20Home%20Security_Blog_2.jpeg",
      likes: "48",
      teams: "Team Cyber")
];
