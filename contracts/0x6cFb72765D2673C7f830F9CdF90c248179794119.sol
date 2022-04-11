contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 566]
}



// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function k() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function g(address arg1) payable {
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function w() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
