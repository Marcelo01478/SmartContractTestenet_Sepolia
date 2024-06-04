// SPDX-License-Identifier:MIT
pragma solidity 0.8.18; // this is the solidity versions

contract SimpleStorage {
    uint256 public favoriteNumber; // 0

    // uint256[] listOfFavoriteNumbers; 
    struct Person{
        uint256 favoriteNumber;
        string name;
    }
    // dynamic array
    Person[] public listOfPeople; //[]

    mapping(string => uint256) public nameToFavoriteNumber;
    
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
      
    }
    // view ,pure
    function retrieve() public view returns (uint256){
        return favoriteNumber;
    }
    
    // calldata , memory , storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name) );
        nameToFavoriteNumber[_name]= _favoriteNumber;
    }
}

   