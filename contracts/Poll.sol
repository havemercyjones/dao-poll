// contracts/Poll.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Poll {
    struct Q { string text; uint256 yes; uint256 no; }
    Q[] public polls;
    function create(string calldata t) external { polls.push(Q(t,0,0)); }
    function vote(uint256 id,bool y) external {
        if(y) polls[id].yes++; else polls[id].no++;
    }
}
