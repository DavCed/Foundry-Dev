// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Operations {
    mapping(string cid => string url) private data;

    function storeData(
        string calldata _cid,
        string calldata _url
    ) public returns (string memory) {
        data[_cid] = _url;
        return "SAVED SUCCESSFULLY";
    }

    function retrieveData(
        string calldata _cid
    ) public view returns (string memory) {
        return data[_cid];
    }
}
