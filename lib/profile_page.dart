import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 230,
          decoration: const BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.elliptical(
                200,
                40,
              ),
              bottomRight: Radius.elliptical(
                200,
                40,
              ),
            ),
          ),
          child: const Align(
            alignment: Alignment.center,
            child: Text('Profile'),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Transform(
          transform: Matrix4.translationValues(0, -50, 0),
          child: Stack(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.teal[200],
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  10,
                  37,
                  0,
                  2,
                ),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: Icon(Icons.person),
                ),
              ),
              Positioned(
                top: 30,
                right: 35,
                child: Column(
                  children: [
                    Text('Name'),
                    SizedBox(
                      height: 12,
                    ),
                    Text('Address'),
                    SizedBox(
                      height: 12,
                    ),
                    Text('+234-806-301-2165'),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        EditProfile(
          title: 'Name',
          leadingIcon: Icon(Icons.person),
          trailingIcon: Icon(Icons.edit),
        ),
        SizedBox(
          height: 12,
        ),
        EditProfile(
          title: 'Photo',
          leadingIcon: Icon(Icons.photo),
          trailingIcon: Icon(Icons.edit),
        ),
        EditProfile(
          title: 'Address',
          leadingIcon: Icon(Icons.location_city),
          trailingIcon: Icon(Icons.edit),
        ),
        EditProfile(
          title: 'Contact',
          leadingIcon: Icon(Icons.phone),
          trailingIcon: Icon(Icons.edit),
        ),
      ],
    );
  }
}

class EditProfile extends StatelessWidget {
  final String title;
  final Icon leadingIcon;
  final Icon trailingIcon;
  final VoidCallback? onPressed;

  const EditProfile({
    super.key,
    required this.title,
    required this.leadingIcon,
    required this.trailingIcon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      onTap: onPressed,
      leading: leadingIcon,
      title: Text(title),
      trailing: trailingIcon,
    );
  }
}
