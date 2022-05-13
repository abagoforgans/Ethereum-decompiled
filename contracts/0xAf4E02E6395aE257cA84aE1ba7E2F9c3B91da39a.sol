contract main {




// =====================  Runtime code  =====================


#
#  - sub_bd78b3d1(?)
#
address owner;
uint256 sub_e0e582a4;
address tokenRewardAddress;
address sub_13113df0Address;
mapping of uint256 sub_5627df88;

function sub_13113df0(?) {
    return sub_13113df0Address
}

function sub_5627df88(?) {
    return sub_5627df88[arg1]
}

function tokenReward() {
    return tokenRewardAddress
}

function owner() {
    return owner
}

function sub_e0e582a4(?) {
    return sub_e0e582a4
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
    emit TransferOwnership(owner, owner);
}

function getAvailableToken() {
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_a2b1b066(?) {
    require msg.sender == owner
    require sub_13113df0Address
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining wei
            args sub_13113df0Address, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sendToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 >= 0
    if not arg2:
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require sub_5627df88[address(arg1)] >= sub_5627df88[address(arg1)]
        require sub_e0e582a4 >= sub_e0e582a4
    require arg2
    require 10^18 * arg2 / arg2 == 10^18
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), 10^18 * arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require sub_5627df88[address(arg1)] + (10^18 * arg2) >= sub_5627df88[address(arg1)]
    sub_5627df88[address(arg1)] += 10^18 * arg2
    require sub_e0e582a4 + (10^18 * arg2) >= sub_e0e582a4
    sub_e0e582a4 += 10^18 * arg2
}



}
