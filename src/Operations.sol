// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Operations {
    mapping(string cid => string url) private files;

    function storeData(string calldata _cid, string calldata _url) public {
        files[_cid] = _url;
    }

    function retrieveData(
        string calldata _cid
    ) public view returns (string memory) {
        return files[_cid];
    }
}
