contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor2 = 0xc9167f51cdea635634e6d92d25664379dde36484
    require not msg.value
    stor1 = msg.sender
    stor4 = 423011 * 3600
    stor5 = 423731 * 3600
    stor3 = 1000
    stor0 = 0x7095e151abd19e8c99abdfb4568f675f747f97f6
    return code.data[151 len 1477]
}



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
    require creatorAddress == msg.sender
    selfdestruct(owner)
}

function setOwner(address arg1) {
    require creatorAddress == msg.sender
    owner = arg1
}

function setPrice(uint256 arg1) {
    require creatorAddress == msg.sender
    price = arg1
}

function setEndtDate(uint256 arg1) {
    require creatorAddress == msg.sender
    endDate = arg1
}

function setStartDate(uint256 arg1) {
    require creatorAddress == msg.sender
    startDate = arg1
}

function setCreator(address arg1) {
    require creatorAddress == msg.sender
    creatorAddress = arg1
}

function setToken(address arg1) {
    require creatorAddress == msg.sender
    tokenRewardAddress = arg1
}

function _fallback() payable {
    require msg.value > 0
    require block.timestamp > startDate
    require block.timestamp < endDate
    require ext_code.size(tokenRewardAddress)
    if block.timestamp <= 423011 * 3600:
        call tokenRewardAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args owner, msg.sender, msg.value * price
        require ext_call.success
        emit FundTransfer(msg.sender, msg.value * price, 1);
    else:
        if block.timestamp >= 423083 * 3600:
            if block.timestamp <= 423083 * 3600:
                call tokenRewardAddress.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args owner, msg.sender, msg.value * price
                require ext_call.success
                emit FundTransfer(msg.sender, msg.value * price, 1);
            else:
                if block.timestamp >= 423251 * 3600:
                    if block.timestamp <= 423251 * 3600:
                        call tokenRewardAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args owner, msg.sender, msg.value * price
                        require ext_call.success
                        emit FundTransfer(msg.sender, msg.value * price, 1);
                    else:
                        if block.timestamp >= 423587 * 3600:
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args owner, msg.sender, msg.value * price
                            require ext_call.success
                            emit FundTransfer(msg.sender, msg.value * price, 1);
                        else:
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args owner, msg.sender, (msg.value * price) + (2 * msg.value * price / 20)
                            require ext_call.success
                            emit FundTransfer(msg.sender, (msg.value * price) + (2 * msg.value * price / 20), 1);
                else:
                    if block.timestamp <= 423251 * 3600:
                        call tokenRewardAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args owner, msg.sender, (msg.value * price) + (4 * msg.value * price / 20)
                        require ext_call.success
                        emit FundTransfer(msg.sender, (msg.value * price) + (4 * msg.value * price / 20), 1);
                    else:
                        if block.timestamp >= 423587 * 3600:
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args owner, msg.sender, (msg.value * price) + (4 * msg.value * price / 20)
                            require ext_call.success
                            emit FundTransfer(msg.sender, (msg.value * price) + (4 * msg.value * price / 20), 1);
                        else:
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args owner, msg.sender, (msg.value * price) + (8 * msg.value * price / 20)
                            require ext_call.success
                            emit FundTransfer(msg.sender, (msg.value * price) + (8 * msg.value * price / 20), 1);
        else:
            if block.timestamp <= 423083 * 3600:
                call tokenRewardAddress.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args owner, msg.sender, (msg.value * price) + (6 * msg.value * price / 20)
                require ext_call.success
                emit FundTransfer(msg.sender, (msg.value * price) + (6 * msg.value * price / 20), 1);
            else:
                if block.timestamp >= 423251 * 3600:
                    if block.timestamp <= 423251 * 3600:
                        call tokenRewardAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args owner, msg.sender, (msg.value * price) + (6 * msg.value * price / 20)
                        require ext_call.success
                        emit FundTransfer(msg.sender, (msg.value * price) + (6 * msg.value * price / 20), 1);
                    else:
                        if block.timestamp >= 423587 * 3600:
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args owner, msg.sender, (msg.value * price) + (6 * msg.value * price / 20)
                            require ext_call.success
                            emit FundTransfer(msg.sender, (msg.value * price) + (6 * msg.value * price / 20), 1);
                        else:
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args owner, msg.sender, (msg.value * price) + (9 * msg.value * price / 20)
                            require ext_call.success
                            emit FundTransfer(msg.sender, (msg.value * price) + (9 * msg.value * price / 20), 1);
                else:
                    if block.timestamp <= 423251 * 3600:
                        call tokenRewardAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args owner, msg.sender, (msg.value * price) + (11 * msg.value * price / 20)
                        require ext_call.success
                        emit FundTransfer(msg.sender, (msg.value * price) + (11 * msg.value * price / 20), 1);
                    else:
                        if block.timestamp >= 423587 * 3600:
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args owner, msg.sender, (msg.value * price) + (11 * msg.value * price / 20)
                            require ext_call.success
                            emit FundTransfer(msg.sender, (msg.value * price) + (11 * msg.value * price / 20), 1);
                        else:
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args owner, msg.sender, (msg.value * price) + (14 * msg.value * price / 20)
                            require ext_call.success
                            emit FundTransfer(msg.sender, (msg.value * price) + (14 * msg.value * price / 20), 1);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
