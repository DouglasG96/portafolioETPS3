//
// Douglas Ricardo Guzman Barahona
// 17-5205-2015

import UIKit

class MasterViewController: UITableViewController,BookStoreDelegate {

    var objects = NSMutableArray()
    var myBookStore = BookStore()
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.navigationItem.leftBarButtonItem = self.editButtonItem()

        //let addButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "insertNewObject:")
        //self.navigationItem.rightBarButtonItem = addButton
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
/*
    func insertNewObject(sender: AnyObject) {
        objects.insertObject(NSDate(), atIndex: 0)
        let indexPath = NSIndexPath(forRow: 0, inSection: 0)
        self.tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
    }
*/
    // MARK: - Segues

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let selectedBook:Book = myBookStore.theBookStore[indexPath.row]
                let vc = segue.destination as! DetailViewController
                vc.detailItem = selectedBook
                vc.delegate = self
            }
        }
        else if segue.identifier == "addBookSegue" {
            let vc = segue.destination as! AddBookViewController
            vc.delegate = self
        }
        
    }

    // MARK: - Table View

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myBookStore.theBookStore.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as UITableViewCell
        cell.textLabel!.text = myBookStore.theBookStore[indexPath.row].title
        cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        return cell
    }

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            objects.removeObject(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
        }
    }
    
    // MARK: - Delegate Methods conforming to the protocol BookStoreDelegate as defined in the AddBookViewController
    func newBook(_ controller:AnyObject,newBook:Book) {
        myBookStore.theBookStore.append(newBook)
        self.tableView.reloadData()
        let myController = controller as! AddBookViewController
        myController.navigationController?.popToRootViewController(animated: true)
    }
    
    func deleteBook(_ controller:AnyObject){
        let indexPath = self.tableView.indexPathForSelectedRow
        let row = indexPath?.row
        myBookStore.theBookStore.remove(at: row!)
        self.tableView.reloadData()
        let myController = controller as! DetailViewController
        myController.navigationController?.popToRootViewController(animated: true)
    }
    
    func editBook(_ controller:AnyObject,editBook:Book){
        let indexPath = self.tableView.indexPathForSelectedRow
        let row = indexPath?.row
        myBookStore.theBookStore.insert(editBook, at: row!)
        myBookStore.theBookStore.remove(at: row!+1)
        self.tableView.reloadData()
        let myController = controller as! AddBookViewController
        myController.navigationController?.popToRootViewController(animated: true)
    }


}

