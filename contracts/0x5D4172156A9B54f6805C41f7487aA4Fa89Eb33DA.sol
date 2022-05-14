contract main {




// =====================  Runtime code  =====================


address tokenRewardAddress;
address creatorAddress;
address owner;
uint256 price;
uint256 startDate;

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
    if 5 * 10^17 != msg.value:
        if 10^18 != msg.value:
            if 15 * 10^17 != msg.value:
                if 2 * 10^18 != msg.value:
                    require msg.value >= 3 * 10^18
    require block.timestamp > startDate
    require ext_code.size(tokenRewardAddress)
    if msg.value < 10^18:
        call tokenRewardAddress.0x23b872dd with:
             gas gas_remaining wei
            args owner, msg.sender, msg.value * price
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit FundTransfer(msg.sender, msg.value * price, 1);
    else:
        if msg.value < 2 * 10^18:
            call tokenRewardAddress.0x23b872dd with:
                 gas gas_remaining wei
                args owner, msg.sender, (msg.value * price) + (3 * msg.value * price / 10)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit FundTransfer(msg.sender, (msg.value * price) + (3 * msg.value * price / 10), 1);
        else:
            if msg.value >= 3 * 10^18:
                call tokenRewardAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args owner, msg.sender, (msg.value * price) + (3 * msg.value * price / 5)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit FundTransfer(msg.sender, (msg.value * price) + (3 * msg.value * price / 5), 1);
            else:
                call tokenRewardAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args owner, msg.sender, (msg.value * price) + (2 * msg.value * price / 5)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit FundTransfer(msg.sender, (msg.value * price) + (2 * msg.value * price / 5), 1);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
