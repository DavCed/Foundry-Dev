// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import {Script, console} from "../lib/forge-std/src/Script.sol";
import {DistributedStorage} from "../src/DistributedStorage.sol";

contract DeployDistributedStorage is Script {
    function run() public returns (string memory) {
        vm.startBroadcast();
        DistributedStorage ds = new DistributedStorage();
        ds.storeFile("cid1", "url1");
        string memory urlRetrieved = ds.getFile("cid1");
        vm.stopBroadcast();
        console.log("CHAIN ID ==>", block.chainid);
        return urlRetrieved;
    }
}
