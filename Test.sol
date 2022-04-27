
pragma solidity ^0.6.0;

contract SimpleStorage {
    
    uint256 favoriteNumber = 5;
    bool favBool = false;
    string favString = "Hello";
    int256 favInt = 5;
    address favAddress = 0xc7BC90B3f139504B7d3104F316f4E504369c7079;
    bytes32 favBytes = "cat";


    function store(uint256 _value) public{
        favoriteNumber = _value;
    }

    function get() public view returns(uint256){
        return favoriteNumber;
    }

    struct People {
        uint256 favoriteNumber;
        string name;
    }
    People public person = People({favoriteNumber: 2, name:"Taco"});

    People[] public people;
    

    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        people.push(People({favoriteNumber:_favoriteNumber,name:_name}));
        nameToFav[_name] = _favoriteNumber;
    }

    mapping(string => uint256) public nameToFav;
}

