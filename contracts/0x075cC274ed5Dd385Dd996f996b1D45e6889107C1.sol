contract main {




// =====================  Runtime code  =====================


array of struct stor0;
address adminAddress;
address sub_00612dc6Address;
address sub_07c2e294Address;
address serviceWalletAddress;
address sub_a5e490b9Address;
uint256 sub_e8d490f1;
array of address stor18569430475105882587588266137607568536673111973893317399460219858819262702948;

function sub_00612dc6(?) {
    return sub_00612dc6Address
}

function sub_07c2e294(?) {
    return sub_07c2e294Address
}

function serviceWallet() {
    return serviceWalletAddress
}

function sub_a5e490b9(?) {
    return sub_a5e490b9Address
}

function sub_e8d490f1(?) {
    return sub_e8d490f1
}

function countAccounts() {
    return stor0.length
}

function adminAddress() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function changeFactoryAdmin(address arg1) {
    require msg.sender == adminAddress
    sub_00612dc6Address = arg1
}

function accounts(uint256 arg1) {
    require arg1 < stor0.length
    return stor0[arg1].field_0, stor0[arg1].field_256
}

function changeServicePercent(uint256 arg1) {
    require msg.sender == adminAddress
    require arg1 <= 10
    require arg1 >= 0
    sub_e8d490f1 = arg1
}

function initOwner(address arg1, address arg2) {
    require msg.sender == sub_00612dc6Address
    require ext_code.size(arg2)
    call arg2.initOwner(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawMoneyByAdmin(uint256 arg1, address arg2) {
    require msg.sender == sub_00612dc6Address
    require ext_code.size(arg2)
    call arg2.withdrawMoneyByAdmin(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function readMailByAdmin(uint256 arg1, bytes16 arg2, address arg3) {
    require msg.sender == sub_00612dc6Address
    require ext_code.size(arg3)
    call arg3.readMailByAdmin(uint256 arg1, bytes16 arg2) with:
         gas gas_remaining wei
        args arg1, Mask(128, 128, arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function createPostboyAccount(uint256 arg1, uint256 arg2, bytes16 arg3) {
    create contract with 0 wei
                    code: code.data[2168 len 4704], arg1, arg2, sub_e8d490f1, Mask(128, 128, arg3), sub_07c2e294Address, serviceWalletAddress, address(msg.sender), address(this.address), sub_a5e490b9Address
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor0.length++
    stor0[stor0.length].field_0 = address(create.new_address)
    stor290D[stor0.length] = msg.sender
}

function createPostboyAccountForSomeone(uint256 arg1, uint256 arg2, bytes16 arg3) {
    require msg.sender == sub_00612dc6Address
    create contract with 0 wei
                    code: code.data[2168 len 4704], arg1, arg2, sub_e8d490f1, Mask(128, 128, arg3), sub_07c2e294Address, serviceWalletAddress, 0, address(this.address), sub_a5e490b9Address
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor0.length++
    stor0[stor0.length].field_0 = address(create.new_address)
    stor290D[stor0.length] = 0
}



}
