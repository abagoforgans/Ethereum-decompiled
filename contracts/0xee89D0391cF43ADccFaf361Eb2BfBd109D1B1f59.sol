contract main {


// =======================  Init code  ======================


address stor0;
uint128 stor1; offset 168
uint128 stor1; offset 160
address stor1;

function _fallback() payable {
    stor0 = 0x991a1bcb077599290d7305493c9a630c20f8b798
    require not msg.value
    address(stor1.field_0) = msg.sender
    if code.data[2649 len 32]:
        mem[192 len 0] = None
        require ext_code.size(stor0)
        call stor0.setInterfaceImplementer(address arg1, bytes32 arg2, address arg3) with:
             gas gas_remaining wei
            args address(this.address), sha3(mem[192 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112), this.address
        require ext_call.success
    Mask(96, 0, stor1.field_160) = 1
    Mask(88, 0, stor1.field_168) = 0
    return code.data[734 len 1915]
}



// =====================  Runtime code  =====================


const canImplementInterfaceForAddress(address arg1, bytes32 arg2) = sha3(Mask(152, 104, 'ERC820_ACCEPT_MAGIC') >> 104)


uint8 stor1; offset 160
uint8 stor1; offset 168
uint128 stor1; offset 168
uint128 stor1; offset 160
address owner;

function owner() {
    return owner
}

function sub_f438da1e(?) {
    return bool(uint8(stor1.field_168))
}

function _fallback() payable {
    revert
}

function sub_2522671b(?) {
    require msg.sender == owner
    Mask(96, 0, stor1.field_160) = 0
}

function sub_7c907597(?) {
    require msg.sender == owner
    Mask(96, 0, stor1.field_160) = 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) {
    require uint8(stor1.field_160)
    Mask(88, 0, stor1.field_168) = 1
}



}
