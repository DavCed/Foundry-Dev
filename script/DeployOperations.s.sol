// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import {Script, console} from "../lib/forge-std/src/Script.sol";
import {Operations} from "../src/Operations.sol";

contract DeployOperations is Script {
    function run() public returns (string memory) {
        vm.startBroadcast();
        Operations ops = new Operations();
        ops.storeData("cid1", "url1");
        string memory urlRetrieved = ops.retrieveData("cid1");
        vm.stopBroadcast();
        console.log("CHAIN ID ==>", block.chainid);
        return urlRetrieved;
    }
}
