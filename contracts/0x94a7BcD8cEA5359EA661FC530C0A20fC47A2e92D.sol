contract main {




// =====================  Runtime code  =====================


array of uint256 sub_368bbd47;
address owner;
address sub_efe9d6e4Address;
address sub_2bcad940Address;
uint256 amountRaised;
address tokenRewardAddress;
uint256 userCount;
mapping of uint256 balanceOf;

function sub_2bcad940(?) {
    return sub_2bcad940Address
}

function sub_368bbd47(?) {
    return sub_368bbd47[0 len sub_368bbd47.length]
}

function tokenReward() {
    return tokenRewardAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function amountRaised() {
    return amountRaised
}

function owner() {
    return owner
}

function getUserCount() {
    return userCount
}

function sub_efe9d6e4(?) {
    return sub_efe9d6e4Address
}

function kill(uint256 arg1) {
    if owner != msg.sender:
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit FundTransfer(msg.sender, arg1, 1);
    selfdestruct(owner)
}

function _fallback() payable {
    balanceOf[address(msg.sender)] += msg.value
    userCount += msg.value
    amountRaised += msg.value
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
        emit FundTransfer(msg.sender, arg1, 0);
}



}
