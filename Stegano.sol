// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Stegano {

    mapping(uint256 => string) messagebox;

    function send(uint256 id, string memory text) public {
        require(bytes(read(id)).length == 0, 'Message already exists');
        messagebox[id] = text;
    }

    function read(uint256 id) public view returns (string memory) {
        return messagebox[id];
    }

}