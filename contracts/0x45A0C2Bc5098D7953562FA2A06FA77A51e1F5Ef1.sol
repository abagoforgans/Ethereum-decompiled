contract main {




// =====================  Runtime code  =====================


array of uint256 sub_9f898fe1;
address owner;
address sub_efe9d6e4Address;
address sub_2bcad940Address;
mapping of uint256 balanceOf;
address tokenRewardAddress;

function sub_2bcad940(?) {
    return sub_2bcad940Address
}

function tokenReward() {
    return tokenRewardAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function sub_9f898fe1(?) {
    return sub_9f898fe1[0 len sub_9f898fe1.length]
}

function getUserCount() {
    return balanceOf[address(msg.sender)]
}

function sub_efe9d6e4(?) {
    return sub_efe9d6e4Address
}

function over(uint256 arg1) {
    if owner != msg.sender:
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    selfdestruct(owner)
}

function _fallback() payable {
    balanceOf[address(msg.sender)] += msg.value
    emit FundTransfer(msg.sender, msg.value, 1);
}

function sub_434ffed8(?) {
    if owner == msg.sender:
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit FundTransfer(msg.sender, arg1, 1);
}



}
