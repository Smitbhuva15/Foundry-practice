// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script} from 'forge-std/Script.sol';
import {SimpleStorage} from '../src/SimpleStorage.sol';

contract DeploySimpleStorage is Script{
 
 function run () external returns(SimpleStorage){
      vm.startBroadcast();
      SimpleStorage s_storage=new SimpleStorage();
      vm.stopBroadcast();
      return s_storage;
 }
  

}