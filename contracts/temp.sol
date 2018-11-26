pragma solidity ^0.4.18;

contract CryptoRob {
  uint256 age = 10;
  uint256 maxAge = age * 5;
  uint256 minAge = age - 5;
  string name = "Doug";

  struct Doggy {
    uint256 age;
    string name;
    bytes5 dna;
  }

  Doggy[] doggies;

  mapping (uint256 => address) private doggyIdToOwner;
  mapping (address => uint256) private numOfDoggies;

  event DoggyCreated(uint256 _id, uint256 age, string _name, bytes5 _dna);

  Doggy _doggyOne = Doggy({
    age: age,
    name: name,
    dna: bytes5(0x000000000)
  });

  uint256 newTokenIdd = doggies.push(_doggyOne);

  function _createDoggy(uint256 _age, string _name, bytes5 _dna) public {
    Doggy memory _doggy = Doggy({
      age: _age,
      name: _name,
      dna: _dna
    });

    uint256 newDoggyId = doggies.push(_doggy) - 1;
    doggyIdToOwner[newDoggyId] = msg.sender;
    numOfDoggies[msg.sender] = numOfDoggies[msg.sender] + 1;

    DoggyCreated(newDoggyId, age, name, _dna);
  }

}
