import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
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
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'Profile',
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    color: Colors.white,
                  ),
            ),
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
                height: 160,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.teal[200],
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  10,
                  37,
                  0,
                  2,
                ),
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Icon(Icons.person),
                ),
              ),
              const Positioned(
                top: 30,
                right: 35,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
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
        const EditProfile(
          title: 'Name',
          leadingIcon: Icon(Icons.person),
          trailingIcon: Icon(Icons.edit),
        ),
        const SizedBox(
          height: 12,
        ),
        const EditProfile(
          title: 'Photo',
          leadingIcon: Icon(Icons.photo),
          trailingIcon: Icon(Icons.edit),
        ),
        const SizedBox(
          height: 12,
        ),
        const EditProfile(
          title: 'Address',
          leadingIcon: Icon(Icons.location_city),
          trailingIcon: Icon(Icons.edit),
        ),
        const SizedBox(
          height: 12,
        ),
        const EditProfile(
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
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListTile(
        tileColor: Colors.white,
        onTap: onPressed,
        leading: leadingIcon,
        title: Text(title),
        trailing: trailingIcon,
      ),
    );
  }
}
