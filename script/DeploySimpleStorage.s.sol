// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;
import {Script} from "../lib/forge-std/src/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    function run() external {
        // uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast();

        new SimpleStorage();
        
        vm.stopBroadcast();
    }
}