contract main {




// =====================  Runtime code  =====================


address tokenRewardAddress;
address creatorAddress;
address owner;
uint256 price;
uint256 startDate;
uint256 endDate;

function creator() {
    return creatorAddress
}

function startDate() {
    return startDate
}

function tokenReward() {
    return tokenRewardAddress
}

function owner() {
    return owner
}

function price() {
    return price
}

function endDate() {
    return endDate
}

function kill() {
    require msg.sender == creatorAddress
    selfdestruct(owner)
}

function setOwner(address arg1) {
    require msg.sender == creatorAddress
    owner = arg1
}

function setPrice(uint256 arg1) {
    require msg.sender == creatorAddress
    price = arg1
}

function setEndtDate(uint256 arg1) {
    require msg.sender == creatorAddress
    endDate = arg1
}

function setStartDate(uint256 arg1) {
    require msg.sender == creatorAddress
    startDate = arg1
}

function setCreator(address arg1) {
    require msg.sender == creatorAddress
    creatorAddress = arg1
}

function setToken(address arg1) {
    require msg.sender == creatorAddress
    tokenRewardAddress = arg1
}

function _fallback() payable {
    require msg.value >= 10^18
    require block.timestamp > startDate
    require block.timestamp < endDate
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x23b872dd with:
         gas gas_remaining wei
        args owner, msg.sender, (msg.value * price) + (msg.value * price / 2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit FundTransfer(msg.sender, (msg.value * price) + (msg.value * price / 2), 1);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
