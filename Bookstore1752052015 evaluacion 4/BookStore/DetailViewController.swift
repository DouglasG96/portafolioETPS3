//
// Douglas Ricardo Guzman Barahona
// 17-5205-2015

import UIKit



class DetailViewController: UIViewController  {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
  
    
    @IBOutlet weak var pagesOutlet: UILabel!
    @IBOutlet weak var switchOutlet: UISwitch!
    
    var delegate:BookStoreDelegate? = nil
    
    var myBook = Book()
    
    
   

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
        }
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "editDetail" {
            let vc = segue.destination as! AddBookViewController
            vc.delegate = delegate
            vc.editBook = true
            vc.book = myBook
            
        }
    }
    
    func configureView() {
        if let detail: AnyObject = self.detailItem {
            myBook = detail as! Book
            titleLabel.text = myBook.title
            authorLabel.text = myBook.author
            descriptionTextView.text = myBook.description
            pagesOutlet.text = String(myBook.pages)
            if(myBook.readThisBook){
                switchOutlet.isOn = true
            }
            else {
                switchOutlet.isOn = false
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func deleteBookAction(_ sender: UIBarButtonItem) {
        let alertController = UIAlertController(title: "Warning", message: "Delete this book?", preferredStyle: .alert)
        let noAction = UIAlertAction(title: "No", style: .cancel) { (action) in
            print("Cancel")
        }
        alertController.addAction(noAction)
        
        let yesAction = UIAlertAction(title: "Yes", style: .destructive) { (action) in
           self.delegate!.deleteBook(self)
        }
        alertController.addAction(yesAction)
        
        self.present(alertController, animated: false, completion: nil)
    }
    
    
   
}

