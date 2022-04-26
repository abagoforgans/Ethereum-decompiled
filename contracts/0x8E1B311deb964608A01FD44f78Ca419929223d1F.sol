contract main {


// =======================  Init code  ======================


array of uint256 stor0;
address stor1;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 4
    stor0.length.field_8 = 'test' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor1 = msg.sender
    return code.data[341 len 798]
}



// =====================  Runtime code  =====================


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



}
