contract main {




// =====================  Runtime code  =====================


mapping of uint256 uint;
mapping of address sub_30f878a3;
mapping of address address;
mapping of uint8 stor3;

function getAddress(bytes32 arg1) {
    return address[address(msg.sender)][arg1]
}

function sub_30f878a3(?) {
    return sub_30f878a3[address(msg.sender)][arg1][arg2]
}

function getBool(bytes32 arg1) {
    return bool(stor3[address(msg.sender)][arg1])
}

function getUint(bytes32 arg1) {
    return uint[address(msg.sender)][arg1]
}

function _fallback() payable {
    revert
}

function deleteUint(bytes32 arg1) {
    uint[address(msg.sender)][arg1] = 0
}

function deleteBool(bytes32 arg1) {
    stor3[address(msg.sender)][arg1] = 0
}

function sub_1e5479e2(?) {
    sub_30f878a3[address(msg.sender)][arg1][arg2] = 0
}

function deleteAddress(bytes32 arg1) {
    address[address(msg.sender)][arg1] = 0
}

function sub_cc54bb42(?) {
    sub_30f878a3[address(msg.sender)][arg1][arg2] = arg3
}

function setUint(bytes32 arg1, uint256 arg2) {
    uint[address(msg.sender)][arg1] = arg2
}

function setBool(bytes32 arg1, bool arg2) {
    stor3[address(msg.sender)][arg1] = uint8(arg2)
}

function setAddress(bytes32 arg1, address arg2) {
    address[address(msg.sender)][arg1] = arg2
}



}
