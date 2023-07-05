// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract MoodNftis ERC721 {
    uint256 private s_tokenCounter;
    string private s_sadSvg;
    string private s_happySvg;
constructor(string memory sadSvg, string memory happySvg) ERC721("Mood NFT", "MN") {
s_tokenCounter = 0;
s_sadSvg = sadSvg;
s_happySvg = happySvg;
}

function mintNft() public {
    _safeMint(msg.sender, s_tokenCounter);
    s_tokenCounter++;
}
}