import 'package:flutter/material.dart';

class ProjectDetails extends StatefulWidget {
  const ProjectDetails({super.key});

  @override
  State<ProjectDetails> createState() => _ProjectDetailsState();
}

class _ProjectDetailsState extends State<ProjectDetails> {
  bool isFavourite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 41, 77),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                    child: Image.network(
                      "https://media-cldnry.s-nbcnews.com/image/upload/t_fit-560w,f_auto,q_auto:best/streams/2013/June/130621/6C7972703-http3A2F2Fwww.newsvine.com2F_vine2Fimages2Fusers2Fjohn-roach2F5516801.jpg",
                      height: 230,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.black38,
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          backgroundColor: Colors.black38,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                isFavourite = !isFavourite;
                              });
                            },
                            child: Icon(
                              Icons.favorite,
                              color: isFavourite ? Colors.white : Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            "Autonomous Rescue Robot",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            "Robotics",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Icon(Icons.person, color: Colors.white70, size: 18),
                        SizedBox(width: 5),
                        Text(
                          "Team Alpha",
                          style: TextStyle(color: Colors.white70),
                        ),
                        SizedBox(width: 20),
                        Icon(Icons.calendar_month,
                            color: Colors.white70, size: 18),
                        SizedBox(width: 5),
                        Text(
                          "2026",
                          style: TextStyle(color: Colors.white70),
                        ),
                        SizedBox(width: 20),
                        Icon(Icons.circle, color: Colors.green, size: 12),
                        SizedBox(width: 5),
                        Text(
                          "Completed",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Text(
                      "Description",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "An autonomous robot designed for disaster "
                      "response operations. It can detect human "
                      "presence, avoid obstacles, and send real-time "
                      "location to the rescue team.",
                      style: TextStyle(
                        color: Colors.white70,
                        height: 1.5,
                      ),
                    ),
                    SizedBox(height: 25),
                    Text(
                      "Technologies Used",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 7,
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 8, 65, 122),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Arduino",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    Text(
                      "Team Members",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.white24,
                          backgroundImage: NetworkImage(
                              "https://scontent.fktm1-1.fna.fbcdn.net/v/t39.30808-6/581539813_1667033984304172_8362598694399275126_n.jpg?stp=dst-jpg_tt6&cstp=mx1154x1152&ctp=s1154x1152&_nc_cat=104&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=XKJnhSql5McQ7kNvwHIwdj7&_nc_oc=AdqOeGV_zViBccDOfGUlJEskwiZdS0ha_85eOwqaK8u8D_ZIV-N4Dslg_uKp5MG3oF0&_nc_zt=23&_nc_ht=scontent.fktm1-1.fna&_nc_gid=O2LvpjmmZnA106wIwGHxdQ&_nc_ss=7b2a8&oh=00_Af9fcWlb4okie4KmwXMI0nc8w4XYkU14JG2J_D7QDDn__g&oe=6A4690F4"),
                        ),
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.white24,
                          child: Text(
                            "+2",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.white24,
                          child: Text(
                            "+2",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.white24,
                          child: Text(
                            "+2",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              padding: EdgeInsets.symmetric(vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            onPressed: () {},
                            child: Text("Watch Demo"),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              side: BorderSide(color: Colors.white30),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              "View Docs",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
