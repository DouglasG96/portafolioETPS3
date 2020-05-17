//
//  BookStore.swift
//  BookStore
//
//  Created by Douglas on 8/5/20.
//  Copyright © 2020 Douglas. All rights reserved.
//  Douglas Ricardo Guzman Barahona 
//  Carné: 17-5205-2015
//

import Foundation
class BookStore
{
    var theBookStore: [Book] = []
    
    init() {
        var newBook = Book()
        newBook.title = "Swift for Absolute Beginners"
        newBook.author = "Bennet and Lees"
        newBook.description = "iOS Programming made easy"
        theBookStore.append(newBook)
        
        newBook = Book()
        newBook.title = "A Farewell To Arms"
        newBook.author = "Ernest Hemingway"
        newBook.description = "The Story od an affair betweern an English nurse and an American soldier on the italian front during World War I."
        theBookStore.append(newBook)
    }
}
