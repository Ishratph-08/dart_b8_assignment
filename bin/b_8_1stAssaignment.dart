
class Book{
  String title;
  String author;
  int publicationYear;
  int pagesRead;
  static int totalBooks = 0;

// Constructor
  Book(this.title, this.author, this.publicationYear, [this.pagesRead = 0]) {
    // Increment the totalBooks count whenever a new book is created
    totalBooks++;
  }
  // Method to add pages read
  void read(int pages) {
    if (pages > 0) {
      pagesRead += pages;
    } else {
      print("You haven't read yet!");
    }
  }

  // Getter methods
  int getPagesRead() {
    return pagesRead;
  }

  String getTitle() {
    return title;
  }

  String getAuthor() {
    return author;
  }

  int getPublicationYear() {
    return publicationYear;
  }

  // Method to calculate the book's age
  int getBookAge() {
    var currentYear = DateTime.now().year;
    return currentYear - publicationYear;
  }
}



void main() {
  // Creating books instances
  var book1 = Book("The Four Winds", "Kristin Hannah", 2021);
  var book2 = Book("Where the Crawdads Sing", "Delia Owens", 2018);
  var book3 = Book("The Night Circus", "Erin Morgenstern", 2011);

  // Simulating reading
  book1.read(150);
  book2.read(200);
  book3.read(300);

  // Print details of each book
  for (var book in [book1, book2, book3]) {
    print("Title: ${book.getTitle()}");
    print("Author: ${book.getAuthor()}");
    print("Publication Year: ${book.getPublicationYear()}");
    print("Pages Read: ${book.getPagesRead()}");
    print("Book Age: ${book.getBookAge()} years\n");
  }

  // Print total number of books created
  print("Total Books Created: ${Book.totalBooks}");
}
