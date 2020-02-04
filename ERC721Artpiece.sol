pragma solidity ^0.4.20;

import "./IERC721.sol";

contract ArtWorksFactory is ERC721{
    // Detail of artwork
    address artist;
    string  name;
    uint  hashIPFS;
    address owner;
    
    constructor(uint ipfsHash, string memory artName) public {
        artist = msg.sender;
        name = artName;
        hashIPFS = ipfsHash;
        owner = artist;
    }
 function setOwner(address newOwner) public {
        if(owner == msg.sender) {
            owner = newOwner;
        }
    }
    


}

