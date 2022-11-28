import ballerina/io;

public function main() {
    insertionSort();
    io:println(sortedlist);
}

int[] list = [2,9,4,0,1,7];
int[] sortedlist = [];
int last = list.length() - 1;

function insertionSort() {
    foreach var j in 0..<list.length() {
        int key = list[j];
        int i = j-1;

        while (i > -1) && (sortedlist[i] > key)  {
            sortedlist[i+1] = sortedlist[i];
            i= i-1;
        }
        
        sortedlist[i+1] = key;
    }
    
}

function binarySearch(int first, int last, int key) returns int|string {
    if last >= first {
        int middle = first + (last - first) / 2;

        if sortedlist[middle] == key {
            return middle;
        }

        if sortedlist[middle] > key {
            return binarySearch(first , middle - 1 , key);
        } 

        else {
            return binarySearch(middle + 1 , last , key);
        }
    }
    
    return "invalid";
}

