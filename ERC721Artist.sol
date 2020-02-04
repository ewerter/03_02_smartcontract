pragma solidity ^0.4.20;

import "./ERC721Artworks.sol";

contract Artist is ArtWorksFactory{
    // Collection of artworks by this Artist
    mapping(uint => ArtWorksFactory) artworks;
    address artist;
    
    constructor() public {
        artist = msg.sender;
    }
 function createArtwork(uint hashIPFS, string memory Name) public returns (ArtWorksFactory) {
       ArtWorksFactory artContract = new ArtWorksFactory(hashIPFS, Name);
       artworks[hashIPFS] = artContract;
       return artContract;
    }
function checkArtwork(uint hashIPFS) public view returns(bool) {
        if(artworks[hashIPFS] == ArtWorksFactory(0x0)) {
            return true;
        }
        return false;
   }
}




