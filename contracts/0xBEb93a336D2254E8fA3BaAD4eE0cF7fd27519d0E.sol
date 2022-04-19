contract main {


// =======================  Init code  ======================


uint8 stor0;
uint8 stor0; offset 8
address stor0; offset 16

function _fallback() payable {
    uint8(stor0.field_0) = 0
    uint8(stor0.field_8) = 1
    require not msg.value
    address(stor0.field_16) = msg.sender
    require address(stor0.field_16) == msg.sender
    uint8(stor0.field_0) = 1
    emit ContractEnabled()
    return code.data[201 len 2423]
}



// =====================  Runtime code  =====================


uint8 stor0;
address owner; offset 16
address stor1;
address stor2;

function owner() {
    return owner
}

function kill() {
    require owner == msg.sender
    require not stor0
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function setData(address arg1) {
    require owner == msg.sender
    stor2 = arg1
}

function setProxy(address arg1) {
    require owner == msg.sender
    stor1 = arg1
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

function universalCall(string arg1) {
    if stor1 != msg.sender:
        require owner == msg.sender
    require 1 == bool(stor0)
    return 0
}

function pay(address arg1, uint256 arg2) {
    if stor1 != msg.sender:
        require owner == msg.sender
    require 1 == bool(stor0)
    require ext_code.size(stor2)
    call stor2.0xc4076876 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    emit 0xc16ba65a: arg2, ext_call.return_data[0], arg1
    call stor1 with:
       funct Mask(32, 224, sha3('generateTokens(address,uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args address(arg1), arg2
    emit 0xc16ba65a: arg2, ext_call.return_data[0], arg1
    return bool(ext_call.success)
}

function refund(address arg1, uint256 arg2) {
    if stor1 != msg.sender:
        require owner == msg.sender
    require 1 == bool(stor0)
    emit Refund(address(arg1), arg2);
    require ext_code.size(stor2)
    call stor2.0xf218313f with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[0] <= 0:
        return 0
    if arg2 > ext_call.return_data[0]:
        return 0
    emit Refund(address(arg1), arg2);
    require ext_code.size(stor2)
    call stor2.0x410085df with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    call stor1 with:
       funct Mask(32, 224, sha3('destroyTokens(address,uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args address(arg1), arg2
    call stor1 with:
       funct Mask(32, 224, sha3('refund(address,uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args address(arg1), arg2
    emit Refund(address(arg1), arg2);
    return bool(ext_call.success)
}



}
