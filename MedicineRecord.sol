pragma solidity ^0.6.0;

contract MedicineRecord{
    
    string medicineName;
    uint customerId;
    string customerName;
    uint amount;
    uint billNumber;
    //details of medicine sold
    function soldMedicine(string memory MedicineName,uint CustomerId,uint Amount,string memory CustomerName,uint BillNumber) public{
        medicineName = MedicineName;
        customerId = CustomerId;
        amount = Amount;
        customerName = CustomerName;
        billNumber = BillNumber;
    }
    //retreiving details
    function getDetails() view public returns(string memory,string memory,uint,uint,uint){
        return(customerName,medicineName,customerId,billNumber,amount);
    }
}