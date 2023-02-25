// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

abstract contract AbstractContract {
    function do(uint256 value) public virtual returns (bool);
}

interface Interface {
    function get() external view returns (string memory);
}

contract Contract is AbstractContract, Interface {
    uint256 private _Value;
    
    function do(uint256 value) public override returns (bool) {
        _Value = value;
        return true;
    }
    
    function get() public view override returns (string memory) {
        return string(abi.encodePacked("Value is ", uint2str(_Value)));
    }
    
    function uint2str(uint256 _i) internal pure returns (string memory str) {
        if (_i == 0) {
            return "0";
        }
        uint256 j = _i;
        uint256 length;
        while (j != 0) {
            length++;
            j /= 10;
        }
        bytes memory bstr = new bytes(length);
        uint256 k = length;
        while (_i != 0) {
            k = k-1;
            uint8 temp = uint8(48 + uint8(_i % 10));
            bytes1 b1 = bytes1(temp);
            bstr[k] = b1;
            _i /= 10;
        }
        return string(bstr);
    }
}
