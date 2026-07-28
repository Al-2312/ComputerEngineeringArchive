/******************************************************************************
Write a program that creates a singly link list of used automobiles containing nodes that describe the model name (string), price(int) and owner’s name.  The program should create a list containing 12 nodes created by the user.  There are only three types of models (BMW, Cadillac, Toyota) and the prices range from $7500 – $20,500.  The program should allow the user to provide
•    Print a printout of all cars contained in the list (model, price, owner) – Print(list_ptr)
•    Provide a histogram(global array) of all cars in the list portioned into $500 buckets
•    Find all cars that cost less $7500 - find_if( list_ptr, int )
•    Calculate the average price of the cars contained in the list – avrg(list_ptr* )
•    Provide the details for all cars more expensive than the average price
•    Remove all nodes having a price less than 25% of average price – remove(list_ptr*, int average)
•    Print a printout of all cars contained in the updated list (model, price, owner)
Allan Yunayev 
*******************************************************************************/
#include <iostream>
using namespace std;

struct Node{
    string model;
    string owner;
    int price;
    Node* next;
};

void GetNode(Node*& head, string model, int price, string owner) {
    Node* newNode = new Node();
    newNode->model = model;
    newNode->price = price;
    newNode->owner = owner;
    newNode->next = head;
    head = newNode;
}

void print(Node* head) {
    Node* temp = head;
    while (temp != nullptr) {
        cout << "Model: " << temp->model << "\t Price: $" << temp->price << "\t Owner: " << temp->owner << endl;
        temp = temp->next;
    }
}

void histogram(Node* head) {
    int minPrice = 7500;
    int maxPrice = 20500;
    int bucketSize = 500;
    int numBuckets = (maxPrice - minPrice) / bucketSize + 1;

    int* histogram = new int[numBuckets](); // Initialize all elements to zero

    Node* temp = head;
    while (temp != nullptr) {
        int bucket = (temp->price - minPrice) / bucketSize;
        histogram[bucket]++;
        temp = temp->next;
    }

    cout << "Histogram of car prices:" << endl;
    for (int i = 0; i < numBuckets; ++i) {
        int startPrice = minPrice + i * bucketSize;
        int endPrice = startPrice + bucketSize - 1;
        cout << "$" << startPrice << " - $" << endPrice << ": " << histogram[i] << " cars" << endl;
    }

    delete[] histogram;
}

void find_if(Node* head, int maxPrice) {
    Node* temp = head;
    while (temp != nullptr) {
        if (temp->price < maxPrice) {
            cout << "Model: " << temp->model << ", Price: $" << temp->price << ", Owner: " << temp->owner << endl;
        }
        temp = temp->next;
    }
}

double avrg(Node* head) {
    double sum = 0;
    int count = 0;
    Node* temp = head;
    while (temp != nullptr) {
        sum += temp->price;
        count++;
        temp = temp->next;
    }
    return sum / count;
}

void remove(Node*& head, int percentage) {
    double avg = avrg(head);
    double threshold = avg * (percentage / 100.0);
    Node* temp = head;
    Node* prev = nullptr;
    while (temp != nullptr) {
        if (temp->price < threshold) {
            if (prev == nullptr) {
                head = temp->next;
            } else {
                prev->next = temp->next;
            }
            Node* Del = temp;
            temp = temp->next;
            delete Del;
        } else {
            prev = temp;
            temp = temp->next;
        }
    }
}
int main()
{
cout << "------------------------------------------------------------------------------\n";
cout << "Name: " << "Allan Yunayev" << endl;
cout << "FILE: " << __FILE__ << " DATE: " << __DATE__ << endl;
cout << "------------------------------------------------------------------------------\n";
Node* head = nullptr;
    GetNode(head, "BMW", 7500, "James");
    GetNode(head, "Cadillac", 8500, "Bob");
    GetNode(head, "Toyota", 9500, "Lebron");
    GetNode(head, "BMW", 10500, "GOKU");
    GetNode(head, "Cadillac", 11500, "Spam");
    GetNode(head, "Toyota", 12500, "Frank");
    GetNode(head, "BMW", 13500, "Mary");
    GetNode(head, "Cadillac", 14500, "George");
    GetNode(head, "Toyota", 15500, "Nick");
    GetNode(head, "BMW", 16500, "GSP");
    GetNode(head, "Cadillac", 17500, "Liam");
    GetNode(head, "Toyota", 18500, "Allan");

    cout << "All cars in the list:" << endl;
    print(head);

cout << "\nHistogram of car prices:" << endl;
    histogram(head);
    
cout << "\nCars that cost less than $7500:" << endl;
    find_if(head, 7500);
    
 cout << "\nAverage price of cars in the list: $" << avrg(head) <<"\n"<< endl;    
    double avg = avrg(head);
    Node* temp = head;
    cout << "Details of cars more expensive than the average price ($" << avg << "):" << endl;
    while (temp != nullptr) {
        if (temp->price > avg) {
            cout << "Model: " << temp->model << ", Price: $" << temp->price << ", Owner: " << temp->owner << endl;
        }
        temp = temp->next;
    }
    delete temp;
    
     remove(head, 25); // Removes cars below 25% of the average price

    cout << "\nAll cars contained in the updated list:" << endl; 
    // because of 25% of average it becomes 2350 which no car is priced
    print(head);

    return 0;
}