contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[48 len 577]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;

function owner() {
    return owner
}

function isRegistered(address arg1) {
    return bool(stor1[arg1])
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function _fallback() payable {
    require 10^16 == msg.value
    stor1[address(msg.sender)] = 1
}

function collectFees() {
    require owner == msg.sender
    require eth.balance(this.address) > 0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
