contract main {




// =====================  Runtime code  =====================


address owner;
address sub_f6954379Address;
address sub_733fd8c7Address;
uint256 expirationTime;
array of uint256 sub_904d4a73;
uint8 stor5;
uint8 stor5; offset 8

function refunded() {
    return bool(uint8(stor5.field_8))
}

function sub_733fd8c7(?) {
    return sub_733fd8c7Address
}

function transferred() {
    return bool(uint8(stor5.field_0))
}

function owner() {
    return owner
}

function sub_904d4a73(?) {
    return sub_904d4a73[0 len sub_904d4a73.length]
}

function expirationTime() {
    return expirationTime
}

function sub_f6954379(?) {
    return sub_f6954379Address
}

function _fallback() payable {
    revert
}

function sub_2d2295ad(?) payable {
    require msg.sender == owner
    call sub_733fd8c7Address with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor5.field_8) = 1
    emit RefundIssued(sub_733fd8c7Address, eth.balance(this.address));
}

function sub_7803af8c(?) payable {
    require msg.sender == owner
    require block.timestamp < expirationTime
    call sub_f6954379Address with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor5.field_0) = 1
    emit 0x32f9105f: sub_733fd8c7Address, eth.balance(this.address)
}



}
