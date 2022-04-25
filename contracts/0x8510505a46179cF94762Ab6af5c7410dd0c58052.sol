contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[59 len 931]
}



// =====================  Runtime code  =====================


address owner;
address stor1;

function owner() {
    return owner
}

function close() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sub_96ce255d(?) {
    require owner == msg.sender
    stor1 = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function withdrawBalance() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function giveBirth(uint256 arg1) {
    require owner == msg.sender
    require ext_code.size(stor1)
    call stor1.0x88c2a0bf with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function createSiringAuction(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require owner == msg.sender
    require ext_code.size(stor1)
    call stor1.0x4ad8c938 with:
         gas gas_remaining - 710 wei
        args 0, uint32(arg1), arg2, arg3, arg4
    require ext_call.success
}



}
