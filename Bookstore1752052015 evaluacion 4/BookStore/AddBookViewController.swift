//
// Douglas Ricardo Guzman Barahona
// 17-5205-2015

import UIKit

protocol BookStoreDelegate{
    func newBook(_ controller:AnyObject,newBook:Book)
    func editBook(_ controller:AnyObject,editBook:Book)
    func deleteBook(_ controller:AnyObject)
}




class AddBookViewController: UIViewController {
    var book = Book()
    var delegate:BookStoreDelegate? = nil
    var read = false;
    var editBook = false;
    
    @IBOutlet weak var titleText: UITextField!
    @IBOutlet weak var authorText: UITextField!
    @IBOutlet weak var pagesText: UITextField!
    @IBOutlet weak var switchOutlet: UISwitch!
    
    @IBOutlet weak var descriptionText: UITextView!
   

    override func viewDidLoad() {
        super.viewDidLoad()
        if(editBook == true){
            self.title = "Edit Book"
            titleText.text = book.title
            authorText.text = book.author
            pagesText.text = String(book.pages)
            descriptionText.text = book.description
            if (book.readThisBook){
                switchOutlet.isOn = true
            }
            else {
               switchOutlet.isOn = false
            }
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func saveBookAction(_ sender: UIButton) {
        book.title = titleText.text!
        book.author = authorText.text!
        book.description = descriptionText.text
        book.pages = Int(pagesText.text!)!
        if(switchOutlet.isOn) {
          book.readThisBook = true
        }
        else {
          book.readThisBook = false
        }
        if (editBook) {
            delegate!.editBook(self, editBook:book)
        }
        else {
            delegate!.newBook(self, newBook:book)
        }
        
        
    }
    

}
