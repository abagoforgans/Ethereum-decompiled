contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 2246]




// =====================  Runtime code  =====================


mapping of uint8 sub_767e5509;
mapping of address sub_555c8ec8;
mapping of uint256 sub_0e7efc65;
mapping of uint256 int;
mapping of uint256 uint;

function sub_0e7efc65(?) payable {
    return sub_0e7efc65[address(arg1)][arg2]
}

function sub_555c8ec8(?) payable {
    return address(sub_555c8ec8[address(msg.sender)][arg1])
}

function getUint(address arg1, bytes32 arg2) payable {
    return uint[address(arg1)][arg2]
}

function sub_767e5509(?) payable {
    return uint8(sub_767e5509[address(msg.sender)][arg1])
}

function getAddress(address arg1, bytes32 arg2) payable {
    return address(sub_555c8ec8[address(arg1)][arg2])
}

function sub_8c2a78c8(?) payable {
    return sub_0e7efc65[address(msg.sender)][arg1]
}

function getInt(address arg1, bytes32 arg2) payable {
    return int[address(arg1)][arg2]
}

function sub_987a1fbe(?) payable {
    return uint[address(msg.sender)][arg1]
}

function sub_9c80d9e8(?) payable {
    return int[address(msg.sender)][arg1]
}

function getBool(address arg1, bytes32 arg2) payable {
    return uint8(sub_767e5509[address(arg1)][arg2])
}

function _fallback() payable {
  stop
}

function setInt(bytes32 arg1, int256 arg2) payable {
    int[address(msg.sender)][arg1] = arg2
}

function setUint(bytes32 arg1, uint256 arg2) payable {
    uint[address(msg.sender)][arg1] = arg2
}

function setBytes32(bytes32 arg1, bytes32 arg2) payable {
    sub_0e7efc65[address(msg.sender)][arg1] = arg2
}

function setBool(bytes32 arg1, bool arg2) payable {
    uint256(sub_767e5509[address(msg.sender)][arg1]) = arg2 or Mask(248, 8, uint256(sub_767e5509[address(msg.sender)][arg1]))
}

function setAddress(bytes32 arg1, address arg2) payable {
    uint256(sub_555c8ec8[address(msg.sender)][arg1]) = arg2 or Mask(96, 160, uint256(sub_555c8ec8[address(msg.sender)][arg1]))
}



}
