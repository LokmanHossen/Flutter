class CloudStorageException implements Exception {
  const CloudStorageException();
}

//  C in CRUD
class CouldNotCreateNoteException extends CloudStorageException {}

//  R in  CRUD
class CouldNotGetAllNotesException extends CloudStorageException {}

// U in CRUS
class CouldNotUpdateNoteException extends CloudStorageException {}

//  D inCRUD
class CouldNotDeleteNoteException extends CloudStorageException {}
