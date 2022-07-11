contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    stor2 = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = code.data[1850 len 20]
    stor0 = msg.sender
    return code.data[257 len 1581]
}



// =====================  Runtime code  =====================


address owner;
address sub_b0a4cee5Address;
uint256 sub_c5f99519;

function owner() {
    return owner
}

function sub_b0a4cee5(?) {
    return sub_b0a4cee5Address
}

function sub_c5f99519(?) {
    return sub_c5f99519
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function swap(uint256 arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require arg3 > arg2
    require arg3 <= block.number
    if sub_c5f99519:
        require arg2 == sub_c5f99519 + 1
    else:
        require not arg2
    require ext_code.size(sub_b0a4cee5Address)
    call sub_b0a4cee5Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    require arg1 <= ext_call.return_data[0]
    require ext_code.size(sub_b0a4cee5Address)
    call sub_b0a4cee5Address.0x42966c68 with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0]
    sub_c5f99519 = arg3
    emit 0x298c349c: arg2, arg3, block.number, arg1
}



}
