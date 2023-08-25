import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show ReadContext;
import 'package:my_note/Views/notes/notes_list_view.dart';
import 'package:my_note/constants/routes.dart';
import 'package:my_note/enums/menu_action.dart';
import 'package:my_note/services/auth/auth_service.dart';
import 'package:my_note/services/auth/bloc/auth_bloc.dart';
import 'package:my_note/services/auth/bloc/auth_event.dart';
import 'package:my_note/services/cloud/cloud_note.dart';
import 'package:my_note/services/cloud/firebase_cloud_storage.dart';
import 'package:my_note/utilities/dialogs/logout_dialog.dart';

class NotesView extends StatefulWidget {
  const NotesView({Key? key}) : super(key: key);
  @override
  _NotesViewState createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  late final FirebaseCloudStorage _notesService;

  String get userId => AuthService.firebase().currentUser!.id;

  @override
  void initState() {
    _notesService = FirebaseCloudStorage();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Notes'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(createOrUpdateNoteRoute);
            },
            icon: const Icon(Icons.add),
          ),
          PopupMenuButton<MenuAction>(
            onSelected: (value) async {
              switch (value) {
                case MenuAction.logout:
                  final shouldLogout = await showLogOutDialog(context);
                  if (shouldLogout) {
                     context.read<AuthBloc>().add(
                          const AuthEventLogOut(),
                        );
                    // context.read<AuthBloc>().add(
                    //       const AuthEventLogOut(),
                    //     );
                    // await AuthService.firebase().logOut();
                    // if (!mounted) return;
                    // Navigator.of(context).pushNamedAndRemoveUntil(
                    //   loginRoute,
                    //   (_) => false,
                    // );
                  }
                // devtools.log(shouldLogout.toString());

                // break;
              }
              // devtools.log(value.toString());
            },
            itemBuilder: (context) {
              return const [
                PopupMenuItem(
                  value: MenuAction.logout,
                  child: Text('Log out'),
                ),
              ];
            },
          )
        ],
      ),
      body: StreamBuilder(
        stream: _notesService.allNotes(ownerUserId: userId),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
            case ConnectionState.active:
              if (snapshot.hasData) {
                final allNotes = snapshot.data as Iterable<CloudNote>;
                return NotesListView(
                  notes: allNotes,
                  onDeleteNote: (note) async {
                    await _notesService.deleteNote(documentId: note.documentId);
                  },
                  onTab: (note) async {
                    Navigator.of(context).pushNamed(
                      createOrUpdateNoteRoute,
                      arguments: note,
                    );
                  },
                );
              } else {
                return const CircularProgressIndicator();
              }
            // return const Text('Waiting for all notes.........');
            default:
              return const CircularProgressIndicator();
          }
        },
      ),
      //const Text('Hello wprld'),
    );
  }
} 

// Future<bool> showLogOutDialog(BuildContext context) {
//   return showDialog<bool>(
//     context: context,
//     builder: (context) {
//       return AlertDialog(
//         title: const Text('Sign out'),
//         content: const Text('Are you sure you want to sign out?'),
//         actions: [
//           TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop(false);
//               },
//               child: const Text('Cancel')),
//           TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop(true);
//               },
//               child: const Text('Log out')),
//         ],
//       );
//     },
//   ).then((value) => value ?? false);
// }
