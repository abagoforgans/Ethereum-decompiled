contract main {




// =====================  Runtime code  =====================


const getTime = block.timestamp

const contractBalance = eth.balance(this.address)


address owner;
address newOwner;
address tokenAddress;
uint256 timeStart;
uint256 sub_e2342b7f;
address sub_80354440Address;
address sub_855d0567Address;
uint256 sub_23d3533c;
uint256 sub_9ba80940;
address creditorAddress;

function sub_23d3533c(?) {
    return sub_23d3533c
}

function sub_80354440(?) {
    return sub_80354440Address
}

function sub_855d0567(?) {
    return sub_855d0567Address
}

function owner() {
    return owner
}

function sub_9ba80940(?) {
    return sub_9ba80940
}

function tokenAddress() {
    return tokenAddress
}

function newOwner() {
    return newOwner
}

function sub_e2342b7f(?) {
    return sub_e2342b7f
}

function creditor() {
    return creditorAddress
}

function timeStart() {
    return timeStart
}

function kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function depositFunds() payable {
    require msg.sender == owner
    emit 0xad1d76ae: msg.value
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require owner != arg1
    newOwner = arg1
}

function sub_3271c8d0(?) {
    require block.timestamp > sub_e2342b7f
    call sub_80354440Address with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call sub_855d0567Address with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function sub_f2a61bf9(?) {
    require block.timestamp <= sub_e2342b7f
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args sub_855d0567Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args sub_80354440Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 * ext_call.return_data[0] < sub_9ba80940 + sub_23d3533c
    call creditorAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
