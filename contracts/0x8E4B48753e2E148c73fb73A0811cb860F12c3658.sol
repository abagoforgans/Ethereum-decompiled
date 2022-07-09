contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 sub_3eb77d49;
uint256 sub_8891cf0d;
uint8 stor4;

function sub_3eb77d49(?) {
    return sub_3eb77d49
}

function sub_64a2bc56(?) {
    return bool(stor4)
}

function sub_8891cf0d(?) {
    return sub_8891cf0d
}

function owner() {
    return owner
}

function tokenAddress() {
    return tokenAddress
}

function changeAirdropStatus(bool arg1) {
    require msg.sender == owner
    stor4 = uint8(arg1)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function _fallback() payable {
    require not stor4
    require msg.value == sub_3eb77d49
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if sub_8891cf0d:
        require sub_8891cf0d
        require 10^18 * sub_8891cf0d / sub_8891cf0d == 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 10^18 * sub_8891cf0d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function withdraw(address arg1) {
    require msg.sender == owner
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
}



}
