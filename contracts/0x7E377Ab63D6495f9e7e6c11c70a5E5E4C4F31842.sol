contract main {


// =======================  Init code  ======================


array of uint256 name;
address owner;

function name() {
    return name[0 len name.length]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function emptyTo(address arg1) {
    require msg.sender == owner
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



// =====================  Runtime code  =====================




}
