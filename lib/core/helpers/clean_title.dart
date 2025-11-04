String? cleanTitle( String? title) {
     final cleanedTitle = title
          ?.replaceAll(RegExp(r'»\s*(ون كير|One Care)', caseSensitive: false), '')
          .trim();
    return cleanedTitle;
  }