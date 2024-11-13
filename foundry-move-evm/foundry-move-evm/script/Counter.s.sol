// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";

contract CounterScript is Script {
    Counter public counter;
    
    // Get private key securely from environment variables (use this in the environment setup)
    uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");

    function setUp() public {}

    function run() public {
        vm.startBroadcast(deployerPrivateKey);
        
        // Deploy the contract
        counter = new Counter();

        // Stop broadcasting after deployment
        vm.stopBroadcast();
    }
}
