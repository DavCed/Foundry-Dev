// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import {Test, console} from "../lib/forge-std/src/Test.sol";
import {DeployDistributedStorage} from "../script/DeployDistributedStorage.s.sol";
import {DistributedStorage} from "../src/DistributedStorage.sol";

contract DistributedStorageTest is Test {
    DeployDistributedStorage public deployDS;
    DistributedStorage public ds;

    function setUp() public {
        deployDS = new DeployDistributedStorage();
        ds = new DistributedStorage();
    }

    function testDeployDistributedStorageRunMethod() public {
        string memory resultExpected = "url1";
        string memory resultRecieved = deployDS.run();
        assertEq(resultExpected, resultRecieved);
    }

    function testStoreAndGetFileMethods() public {
        string memory urlExpected = "urlTEST";
        ds.storeFile("cidTEST", "urlTEST");
        assertEq(urlExpected, ds.getFile("cidTEST"));
    }
}
