contract main {


// =======================  Init code  ======================


uint8 stor0;
address stor0; offset 8

function _fallback() payable {
    uint8(stor0.field_0) = 0
    require not msg.value
    address(stor0.field_8) = msg.sender
    require address(stor0.field_8) == msg.sender
    uint8(stor0.field_0) = 1
    emit ContractEnabled()
    return code.data[189 len 1124]
}



// =====================  Runtime code  =====================


uint8 stor0;
address owner; offset 8
address processorAddress;
mapping of uint256 sub_f218313f;

function owner() {
    return owner
}

function processor() {
    return processorAddress
}

function sub_f218313f(?) {
    require 1 == bool(stor0)
    return sub_f218313f[address(arg1)]
}

function kill() {
    require owner == msg.sender
    require not stor0
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sub_e1a8eafd(?) {
    require owner == msg.sender
    processorAddress = arg1
}

function enableContract() {
    require owner == msg.sender
    stor0 = 1
    emit ContractEnabled()
}

function disableContract() {
    require owner == msg.sender
    stor0 = 0
    emit ContractDisabled()
}

function pay(address arg1, uint256 arg2) {
    if processorAddress != msg.sender:
        require owner == msg.sender
    require 1 == bool(stor0)
    sub_f218313f[address(arg1)] += arg2
    return (arg2 + sub_f218313f[address(arg1)])
}

function refund(address arg1, uint256 arg2) {
    if processorAddress != msg.sender:
        require owner == msg.sender
    require 1 == bool(stor0)
    sub_f218313f[address(arg1)] -= arg2
    return (sub_f218313f[address(arg1)] - arg2)
}



}
