// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import {Test, console} from "../lib/forge-std/src/Test.sol";
import {DeployOperations} from "../script/DeployOperations.s.sol";
import {Operations} from "../src/Operations.sol";

contract OperationsTest is Test {
    DeployOperations public deployOps;
    Operations public ops;

    function setUp() public {
        deployOps = new DeployOperations();
        ops = new Operations();
    }

    function testDeployOperationsRunMethod() public {
        string memory resultExpected = "url1";
        string memory resultRecieved = deployOps.run();
        assertEq(resultExpected, resultRecieved);
    }

    function testStoreAndRetrieveDataMethods() public {
        string memory urlExpected = "urlTEST";
        ops.storeData("cidTEST", "urlTEST");
        assertEq(urlExpected, ops.retrieveData("cidTEST"));
    }
}
