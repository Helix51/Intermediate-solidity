// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract UniqueContract {
    receive() external payable {
        // handle incoming Ether
    }

    fallback() external payable {
        // handle unrecognized calls
    }
}
