contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
address tokenContractAddress;
mapping of uint8 stor3;
mapping of struct sub_37026ae1;
uint256 sub_0139bbba;

function sub_0139bbba(?) {
    return sub_0139bbba
}

function sub_37026ae1(?) {
    require calldata.size - 4 >= 32
    return sub_37026ae1[arg1].field_0, sub_37026ae1[arg1].field_256, bool(sub_37026ae1[arg1].field_512)
}

function admins(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function tokenContractAddress() {
    return tokenContractAddress
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    revert
}

function sub_75cd6223(?) {
    require calldata.size - 4 >= 64
    sub_37026ae1[arg1].field_512 = uint8(arg2)
}

function setAdminStatus(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    stor3[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function sub_9aeeab5b(?) {
    require calldata.size - 4 >= 64
    sub_0139bbba++
    sub_37026ae1[stor5].field_0 = arg1
    sub_37026ae1[stor5].field_256 = arg2
    sub_37026ae1[stor5].field_512 = 1
}

function tokenBalance() {
    require ext_code.size(tokenContractAddress)
    staticcall tokenContractAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_6442c1ad(?) {
    require calldata.size - 4 >= 64
    require bool(sub_37026ae1[arg1].field_512) == 1
    require ext_code.size(tokenContractAddress)
    staticcall tokenContractAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= sub_37026ae1[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Insufficient balance in event contract'
    if arg2 != sub_37026ae1[arg1].field_0:
        revert with 0, 'Incorrect event passphrase'
    sub_37026ae1[arg1][3][address(msg.sender)].field_0 = 1
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_37026ae1[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x6a21642e: msg.sender, arg1
}



}
