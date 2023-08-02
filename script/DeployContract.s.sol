// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import {Script} from "../lib/forge-std/src/Script.sol";
import {DistributedStorage} from "../src/DistributedStorage.sol";

contract DeployDistributedStorage is Script {
    function run() public {
        vm.startBroadcast();
        new DistributedStorage();
        vm.stopBroadcast();
    }
}
