contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor3;
uint256 stor4;
address stor5;
uint8 stor7;
uint256 stor7; offset 8

function _fallback() payable {
    stor0 = this.address
    uint8(stor7.field_0) = 0
    Mask(248, 0, stor7.field_8) = 0
    require not msg.value
    stor1 = code.data[3343 len 20]
    stor3 = block.timestamp + (8 * 3600)
    stor4 = stor3 + 4200
    stor5 = 0x6bb6eb0a1a71bac30ee3f7c0fd24874f55750f37
    return code.data[354 len 2977]
}



// =====================  Runtime code  =====================


address stor0;
address beneficiaryAddress;
uint256 amountRaised;
uint256 start;
uint256 deadline;
address tokenRewardAddress;
mapping of uint256 balanceOf;
uint8 stor7; offset 8

function deadline() {
    return deadline
}

function beneficiary() {
    return beneficiaryAddress
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

function start() {
    return start
}

function price() {
    if block.timestamp <= start + 1200:
        return 35000
    if block.timestamp > start + 2400:
        return 27000
    if block.timestamp <= start + 1200:
        return 27000
    return 30000
}

function safeWithdrawal() {
    if block.timestamp >= deadline:
        if beneficiaryAddress == msg.sender:
            call beneficiaryAddress with:
               value amountRaised wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                emit FundTransfer(beneficiaryAddress, amountRaised, 0);
}

function sub_1acf29fb(?) {
    if block.timestamp >= deadline:
        if beneficiaryAddress == msg.sender:
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args stor0
            require ext_call.success
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args beneficiaryAddress, ext_call.return_data[0]
            require ext_call.success
}

function _fallback() payable {
    require block.timestamp >= start
    require block.timestamp <= deadline
    require not stor7
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args stor0
    require ext_call.success
    if block.timestamp <= start + 1200:
        require ext_call.return_data[0] >= 35000 * msg.value / 10^18
        balanceOf[address(msg.sender)] += msg.value
        amountRaised += msg.value
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, 35000 * msg.value / 10^18
        require ext_call.success
        if not ext_call.return_data[0]:
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args beneficiaryAddress, msg.sender, 35000 * msg.value / 10^18
            require ext_call.success
    else:
        if block.timestamp > start + 2400:
            require ext_call.return_data[0] >= 27000 * msg.value / 10^18
            balanceOf[address(msg.sender)] += msg.value
            amountRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 27000 * msg.value / 10^18
            require ext_call.success
            if not ext_call.return_data[0]:
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args beneficiaryAddress, msg.sender, 27000 * msg.value / 10^18
                require ext_call.success
        else:
            if block.timestamp <= start + 1200:
                require ext_call.return_data[0] >= 27000 * msg.value / 10^18
                balanceOf[address(msg.sender)] += msg.value
                amountRaised += msg.value
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 27000 * msg.value / 10^18
                require ext_call.success
                if not ext_call.return_data[0]:
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args beneficiaryAddress, msg.sender, 27000 * msg.value / 10^18
                    require ext_call.success
            else:
                require ext_call.return_data[0] >= 30000 * msg.value / 10^18
                balanceOf[address(msg.sender)] += msg.value
                amountRaised += msg.value
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 30000 * msg.value / 10^18
                require ext_call.success
                if not ext_call.return_data[0]:
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args beneficiaryAddress, msg.sender, 30000 * msg.value / 10^18
                    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
}



}
