// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import {Script, console} from "../lib/forge-std/src/Script.sol";
import {Operations} from "../src/Operations.sol";

contract DeployOperations is Script {
    function run() public {
        vm.startBroadcast();
        Operations ops = new Operations();
        string memory m1 = ops.storeData("cid1", "url1");
        // string memory data1 = ops.retrieveData("cid1");
        vm.stopBroadcast();
        console.log(m1);
        console.log(block.chainid);
        // console.log(data1);
    }
}
