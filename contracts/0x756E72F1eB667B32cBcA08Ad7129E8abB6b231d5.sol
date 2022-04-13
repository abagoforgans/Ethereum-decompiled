contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor4;
uint128 stor5;
address stor6;
uint16 stor10;

function _fallback() payable {
    stor10 = 0
    require not msg.value
    stor0 = code.data[3351 len 20]
    stor2 = 10^18 * code.data[3371 len 32]
    stor4 = code.data[3403 len 32]
    stor5 = code.data[3451 len 16]
    stor6 = code.data[3479 len 20]
    stor1 = msg.sender
    return code.data[208 len 3131]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
address owner;
uint256 fundingGoal;
uint256 amountRaised;
uint256 deadline;
uint128 price;
address tokenRewardAddress;
mapping of uint256 balanceOf;
mapping of uint256 sub_80a8d72c;
array of address stor9;
uint8 stor10;
uint8 stor10; offset 8

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

function fundingGoal() {
    return fundingGoal
}

function amountRaised() {
    return amountRaised
}

function sub_80a8d72c(?) {
    return sub_80a8d72c[arg1]
}

function owner() {
    return owner
}

function price() {
    return price
}

function fundingGoalReached() {
    return bool(uint8(stor10.field_0))
}

function finish() {
    require beneficiaryAddress == msg.sender
    deadline = block.timestamp
}

function checkGoalReached() {
    if block.timestamp >= deadline:
        if amountRaised >= fundingGoal:
            uint8(stor10.field_0) = 1
            emit GoalReached(beneficiaryAddress, amountRaised);
        uint8(stor10.field_8) = 1
}

function _fallback() payable {
    require not uint8(stor10.field_8)
    require block.timestamp < deadline
    require msg.value + amountRaised <= fundingGoal
    balanceOf[address(msg.sender)] = msg.value
    sub_80a8d72c[address(msg.sender)] += 10^18 * msg.value * price / 10^18
    stor9.length++
    if not stor9.length <= stor9.length + 1:
        idx = stor9.length + 1
        while stor9.length > idx:
            uint256(stor9[idx]) = 0
            idx = idx + 1
            continue 
    address(stor9[stor9.length]) = msg.sender
    amountRaised += msg.value
    emit FundTransfer(msg.sender, msg.value, 1);
}

function assign() {
    if block.timestamp >= deadline:
        require beneficiaryAddress == msg.sender
        s = 0
        idx = 0
        while idx < stor9.length:
            mem[0] = address(stor9[idx])
            mem[32] = 8
            if sub_80a8d72c[address(stor9[idx])] <= 0:
                s = s
                idx = idx + 1
                continue 
            require idx < stor9.length
            mem[100] = address(stor9[idx])
            mem[132] = sub_80a8d72c[address(stor9[idx])]
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(stor9[idx]), sub_80a8d72c[address(stor9[idx])]
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            require idx < stor9.length
            mem[0] = address(stor9[idx])
            mem[32] = 8
            if not ext_call.return_data[0]:
            else:
                sub_80a8d72c[address(stor9[idx])] = 0
            s = sub_80a8d72c[address(stor9[idx])]
            idx = idx + 1
            continue 
}

function clear() payable {
    mem[64] = 96
    require not msg.value
    if block.timestamp >= deadline:
        require owner == msg.sender
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args owner, ext_call.return_data[0]
        require ext_call.success
        s = 0
        idx = 0
        while idx < stor9.length:
            mem[0] = address(stor9[idx])
            mem[32] = 7
            balanceOf[address(stor9[idx])] = 0
            if balanceOf[address(stor9[idx])] > 0:
                require idx < stor9.length
                call address(stor9[idx]) with:
                   value balanceOf[address(stor9[idx])] wei
                     gas 2300 * is_zero(value) wei
                require idx < stor9.length
                if not ext_call.success:
                    mem[0] = address(stor9[idx])
                    mem[32] = 7
                else:
                    mem[0] = 9
                    mem[mem[64]] = address(stor9[idx])
                    mem[mem[64] + 32] = balanceOf[address(stor9[idx])]
                    mem[mem[64] + 64] = 0
                    emit FundTransfer(address(stor9[idx]), balanceOf[address(stor9[idx])], 0);
            s = balanceOf[address(stor9[idx])]
            idx = idx + 1
            continue 
}

function safeWithdrawal() {
    if block.timestamp >= deadline:
        require beneficiaryAddress == msg.sender
        if block.timestamp >= deadline:
            require beneficiaryAddress == msg.sender
            s = 0
            idx = 0
            while idx < stor9.length:
                mem[0] = address(stor9[idx])
                mem[32] = 8
                if sub_80a8d72c[address(stor9[idx])] <= 0:
                    s = s
                    idx = idx + 1
                    continue 
                require idx < stor9.length
                mem[100] = address(stor9[idx])
                mem[132] = sub_80a8d72c[address(stor9[idx])]
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(stor9[idx]), sub_80a8d72c[address(stor9[idx])]
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                require idx < stor9.length
                mem[0] = address(stor9[idx])
                mem[32] = 8
                if not ext_call.return_data[0]:
                else:
                    sub_80a8d72c[address(stor9[idx])] = 0
                s = sub_80a8d72c[address(stor9[idx])]
                idx = idx + 1
                continue 
        call beneficiaryAddress with:
           value amountRaised wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            uint8(stor10.field_0) = 0
        else:
            emit FundTransfer(beneficiaryAddress, amountRaised, 0);
}



}
