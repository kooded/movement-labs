// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";

contract CounterScript is Script {
    Counter public counter;
    uint256 public deployerPrivateKey = vm.envUint("73a263f2e41315980b7c4e5961945c54ab474828483228852286925f5cc96d7d"); 

    function run() public {
        // Start broadcasting with the deployer's private key
        vm.startBroadcast(73a263f2e41315980b7c4e5961945c54ab474828483228852286925f5cc96d7d);

        // Deploy the contract
        counter = new Counter();

        // Stop broadcasting after deployment
        vm.stopBroadcast();
    }
}

    }
}
