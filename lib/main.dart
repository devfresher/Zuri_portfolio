import 'package:flutter/material.dart';

// image
const imageUrl = "https://i.ibb.co/Y04mLzr/uthman.png";

// text styles
const textStyleHeading = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w700,
);

const textStyleSubHeading1 = TextStyle(
  fontSize: 17,
  fontWeight: FontWeight.w700,
);

const textStyleSubHeading2 = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w500,
);

const textStyleBody = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w400,
  height: 1.5,
);

// horizontal spacing
const horizontalSpaceLg = SizedBox(
  width: 16,
);

const horizontalSpaceMdm = SizedBox(
  width: 12,
);

const horizontalSpaceSm = SizedBox(
  width: 8,
);

const horizontalSpaceXm = SizedBox(
  width: 2,
);

// vertical spacing
const verticalSpaceLg = SizedBox(
  height: 16,
);

const verticalSpaceMd = SizedBox(
  height: 12,
);

const verticalSpaceSm = SizedBox(
  height: 8,
);

const verticalSpaceXm = SizedBox(
  height: 2,
);

// classes
class SocialIcons {
  final String title;
  final String value;
  final String url;

  const SocialIcons({
    this.title,
    this.value,
    this.url,
  });
}

class SkillItem {
  final Widget icon;
  final Widget skillName;

  const SkillItem({this.icon, this.skillName});
}

void main() {
  runApp(Portfolio());
}

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Portfolio",
      theme: ThemeData.dark(),
      home: View(),
    );
  }
}

class View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                ProfileImage(),
                ProfileAbout(),
                UserSkills(),
                SocialDetails(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//
class ProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            child: CircleAvatar(
              radius: 55,
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                imageUrl,
              ),
            ),
          ),
        ),
        horizontalSpaceLg,
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Usman Soliu",
                textAlign: TextAlign.left,
                style: textStyleHeading,
              ),
              verticalSpaceSm,
              Text(
                "Backend Developer",
                textAlign: TextAlign.left,
                style: textStyleSubHeading2,
              ),
              verticalSpaceXm,
              Text(
                "Ibadan Nigeria",
                textAlign: TextAlign.left,
                style: textStyleSubHeading2,
              ),
              verticalSpaceXm,
              Text(
                "+234-8119-900-857",
                textAlign: TextAlign.left,
                style: textStyleSubHeading2,
              ),
            ],
          ),
        )
      ],
    );
  }
}

//
class ProfileAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 45, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "About me",
              textAlign: TextAlign.left,
              style: textStyleSubHeading1,
            ),
            verticalSpaceSm,
            Text(
              "Dolore in labore reprehenderit qui cupidatat amet labore sint qui nisi occaecat do. Mollit esse magna ut qui cupidatat cillum",
              style: textStyleBody,
            ),
          ],
        ),
      ),
    );
  }
}

//
class UserSkills extends StatelessWidget {
  final userSkills = <SkillItem>[
    SkillItem(
      icon: FlutterLogo(
        size: 32,
      ),
      skillName: Text(
        "Flutter",
        style: textStyleBody,
      ),
    ),
    SkillItem(
      icon: Icon(
        Icons.web,
        size: 32,
      ),
      skillName: Text(
        "Laravel",
        style: textStyleBody,
      ),
    ),
    SkillItem(
      icon: Icon(
        Icons.mobile_screen_share,
        size: 32,
      ),
      skillName: Text(
        "Mobile",
        style: textStyleBody,
      ),
    ),
    SkillItem(
      icon: Icon(
        Icons.storage_outlined,
        size: 32,
      ),
      skillName: Text(
        "MySQL",
        style: textStyleBody,
      ),
    ),
    SkillItem(
      icon: Icon(
        Icons.storage_outlined,
        size: 32,
      ),
      skillName: Text(
        "MongoDb",
        style: textStyleBody,
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 45, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My skills',
            textAlign: TextAlign.left,
            style: textStyleSubHeading1,
          ),
          verticalSpaceLg,
          Container(
            // margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 65,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                ...userSkills
                    .map((skill) => Container(
                          width: 80,
                          child: Column(
                            children: [
                              skill.icon,
                              verticalSpaceSm,
                              skill.skillName,
                            ],
                          ),
                        ))
                    .toList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SocialDetails extends StatelessWidget {
  final userDetails = <SocialIcons>[
    SocialIcons(
      title: 'Github',
      value: '@fresherdev',
      url: 'https://www.github.com/fresherdev',
    ),
    SocialIcons(
      title: 'Twitter',
      value: '@devfresher',
      url: 'https://www.twitter.com/devfresher',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 45, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Contacts', style: textStyleSubHeading1),
          verticalSpaceSm,
          ...userDetails
              .map(
                (userDetail) => Card(
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  elevation: 5,
                  child: ListTile(
                    title: Text(
                      userDetail.title,
                      style: textStyleSubHeading2,
                    ),
                    subtitle: Text(
                      userDetail.value,
                      style: textStyleBody,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 13,
                    ),
                  ),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
