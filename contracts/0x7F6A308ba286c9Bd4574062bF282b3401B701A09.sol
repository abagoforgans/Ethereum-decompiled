contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 sub_3333dcc5;
uint256 sub_178d2c59;
uint256 sub_449a1cdb;
uint256 sub_4e2227c0;
address stor11;

function name() {
    return name[0 len name.length]
}

function sub_178d2c59(?) {
    return sub_178d2c59
}

function decimals() {
    return decimals
}

function sub_3333dcc5(?) {
    return sub_3333dcc5
}

function sub_449a1cdb(?) {
    return sub_449a1cdb
}

function sub_4e2227c0(?) {
    return sub_4e2227c0
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    newOwner = arg1
}

function setSellableToken(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor11 = arg1
    return 1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function purchaseTokens() payable {
    emit 0xe4b64b0a: msg.sender, msg.value
    require msg.value > 0
    require msg.value <= sub_178d2c59
    sub_178d2c59 -= msg.value
    require sub_4e2227c0 > 0
    require sub_4e2227c0
    require ext_code.size(stor11)
    call stor11.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, msg.value / sub_4e2227c0 * 10^decimals
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
