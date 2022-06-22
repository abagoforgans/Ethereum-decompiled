contract main {




// =====================  Runtime code  =====================


address owner;
address sub_11eed2c7Address;
address stor2;
address tokenAddress;
address stor4;
address sub_0281f203Address;
uint256 sub_11894232;

function sub_0281f203(?) {
    return sub_0281f203Address
}

function sub_11894232(?) {
    return sub_11894232
}

function sub_11eed2c7(?) {
    return sub_11eed2c7Address
}

function owner() {
    return owner
}

function tokenAddress() {
    return tokenAddress
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_d23508d4(?) {
    require msg.sender == owner
    sub_11894232 = arg1
}

function sub_0e632abf(?) {
    require msg.sender == owner
    sub_0281f203Address = arg1
}

function sub_0ab3577e(?) {
    require msg.sender == owner
    sub_11eed2c7Address = arg1
    stor2 = arg1
}

function setTokenAddress(address arg1) {
    require msg.sender == owner
    tokenAddress = arg1
    stor4 = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawOwnerEarnings() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3b52bab7(?) payable {
    require ext_code.size(stor2)
    call stor2.0x6040e918 with:
       value sub_11894232 wei
         gas gas_remaining wei
        args arg1 << 224, arg2 << 224, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_884731c1(?) {
    require msg.sender == owner
    require ext_code.size(stor4)
    call stor4.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_27aae6d9(?) {
    require ext_code.size(stor4)
    call stor4.getData(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0 len 1]
}

function sub_59498a1c(?) {
    require ext_code.size(stor4)
    call stor4.getData(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0 len 1] / 6)
}

function sub_36ee6e80(?) {
    require ext_code.size(stor4)
    call stor4.getData(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (Mask(4, 216, ext_call.return_data[0]) >> 216)
}

function sub_5e73ff93(?) {
    require ext_code.size(stor4)
    call stor4.getData(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ((Mask(4, 244, ext_call.return_data[0]) >> 244) + 1)
}

function sub_59859974(?) {
    require ext_code.size(stor2)
    call stor2.0xd26920cf with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor4)
    call stor4.getNextTokenId() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    call stor4.getData(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0] - 1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require Mask(4, 216, ext_call.return_data[0]) >> 216 >= arg1
    require ext_code.size(stor4)
    call stor4.ownerOf(uint256 arg1) with:
         gas gas_remaining wei
        args (ext_call.return_data[0] - 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        require ext_call.return_data[12 len 20] == sub_0281f203Address
}



}
