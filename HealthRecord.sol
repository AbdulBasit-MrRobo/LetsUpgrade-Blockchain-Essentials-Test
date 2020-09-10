pragma solidity ^0.6.0;

contract HealthRecord{
    
    string patientName;
    uint patientId;
    string motherName;
    string fatherName;
    string dateOfBirth;
    string gender;
    uint phoneNumber;
    string patientAddress;
    uint zipcode;
    string hospitalName;
    //details of medicine sold
    function addHealthRecord(string memory HospitalName,string memory PatientName,uint PatientId,string memory MotherName,string memory FatherName,string memory DateOfBirth,string memory Gender,string memory PatientAddress,uint Zipcode,uint PhoneNumber) public{
        hospitalName = HospitalName;
        patientName = PatientName;
        patientId = PatientId;
        motherName = MotherName;
        fatherName = FatherName;
        dateOfBirth = DateOfBirth;
        gender = Gender;
        patientAddress = PatientAddress;
        zipcode = Zipcode;
        phoneNumber = PhoneNumber;
    }
    //retreiving details
    function getDetails() view public returns(string memory,string memory,uint,string memory,string memory,string memory,string memory,string memory,uint,uint){
        return(hospitalName,patientName,patientId,motherName,fatherName,dateOfBirth,gender,patientAddress,zipcode,phoneNumber);
    }
}