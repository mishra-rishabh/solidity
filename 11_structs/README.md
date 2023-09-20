Struct types are used to represent a record. By using struct, we can combine multiple datatypes to make our own custom datatype.

It is useful for grouping related data. Suppose you want to keep track of your books in a library. You might want to track the following attributes about each book − <br/>
Title <br/>
Author <br/>
Subject <br/>
Book ID <br/>

Structs can be declared outside of a contract and can be imported in another contract

syntax: <br/>
struct struct_name { 
   type1 type_name_1;
   type2 type_name_2;
   type3 type_name_3;
}

example: <br/>
struct Book { 
   string title;
   string author;
   uint book_id;
}