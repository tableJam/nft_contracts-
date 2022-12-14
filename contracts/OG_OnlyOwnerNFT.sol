// SPDX-License-Identifier: MIT

pragma solidity  ^0.8.14;

import "@openzeppelin/contracts@4.6.0/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts@4.6.0/access/Ownable.sol";


contract NFT is ERC721,Ownable{
    constructor() ERC721("NFT","MNFT"){
    }
    /**
    *@dev
    *- people be able to mint is only peolpe who deploy this contract; 
    */
    function  Only_Ownwe_nft_mint(uint256 tokenId) public onlyOwner {
       _mint(_msgSender(),tokenId);
    }

}