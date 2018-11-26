pragma solidity ^0.4.18;

import "./ERC721.sol";
import "./SafeMath.sol";
import "./AccessControl.sol";

contract DetailedERC721 is ERC721 {
  function name() public view returns (string _name);
  function symbol() public view returns (string _symbol);
}

contract CryptoRob is AccessControl, DetailedERC721 {

}
