import 'package:flutter/material.dart';

Drawer getDrawer(BuildContext context) => Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              padding: EdgeInsets.zero,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  FractionallySizedBox(
                    widthFactor: 1,
                    heightFactor: 1,
                    child: Image.asset(
                      "assets/images/portada.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(0, 0, 0, 0.7),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: const Text(
                      'Bad Bunny',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              )),
          ListTile(
            leading: const Icon(Icons.home_rounded),
            title: const Text('Inicio'),
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          ),
          ListTile(
            leading: const Icon(Icons.music_note_rounded),
            title: const Text('Mis canciones'),
            onTap: () {
              // Actualizar el estado de la app
              // ...
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.playlist_play_rounded),
            title: const Text('Mis playlist'),
            onTap: () {
              // Actualizar el estado de la app
              // ...
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.person_rounded),
            title: const Text('Mi Perfil'),
            onTap: () {
              Navigator.pushNamed(context, "/profile");
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings_rounded),
            title: const Text('Configuración'),
            onTap: () {
              // Actualizar el estado de la app
              // ...
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
