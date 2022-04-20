contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint8 stor4;
uint256 stor4; offset 8
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint8 stor21;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    uint8(stor4.field_0) = 0
    Mask(248, 0, stor4.field_8) = 0
    stor14 = 10000
    stor15 = 7000
    stor16 = 6000
    stor17 = 5000
    stor21 = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    require code.data[12354 len 20]
    require code.data[12354 len 20] != this.address
    require code.data[12470 len 32] > 0
    stor1 = code.data[12354 len 20]
    stor2 = 10^18 * code.data[12374 len 32]
    stor3 = code.data[12406 len 32]
    stor18 = code.data[12438 len 32]
    stor19 = code.data[12438 len 32] + (60 * code.data[12470 len 32])
    return code.data[535 len 11807]
}



// =====================  Runtime code  =====================


const currentTime = block.timestamp


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address beneficiaryAddress;
uint256 fundingCap;
uint256 minContribution;
uint8 stor4;
uint8 stor4; offset 8
uint256 stor4; offset 8
mapping of uint8 stor5;
mapping of uint256 cap1;
mapping of uint256 cap2;
mapping of uint256 cap3;
mapping of uint256 cap4;
mapping of uint256 contributed1;
mapping of uint256 contributed2;
mapping of uint256 contributed3;
mapping of uint256 contributed4;
uint256 rate1;
uint256 rate2;
uint256 rate3;
uint256 rate4;
uint256 startTime;
uint256 endTime;
uint256 amountRaised;
uint8 stor21;
mapping of uint256 balanceOf;
mapping of uint256 tokenBalanceOf;

function registry(address arg1) {
    return bool(stor5[arg1])
}

function cap1(address arg1) {
    return cap1[arg1]
}

function contributed3(address arg1) {
    return contributed3[arg1]
}

function endTime() {
    return endTime
}

function contributed2(address arg1) {
    return contributed2[arg1]
}

function beneficiary() {
    return beneficiaryAddress
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function rate4() {
    return rate4
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function startTime() {
    return startTime
}

function amountRaised() {
    return amountRaised
}

function fundingCapReached() {
    return bool(uint8(stor4.field_0))
}

function cap4(address arg1) {
    return cap4[arg1]
}

function owner() {
    return owner
}

function cap3(address arg1) {
    return cap3[arg1]
}

function minContribution() {
    return minContribution
}

function rate3() {
    return rate3
}

function contributed4(address arg1) {
    return contributed4[arg1]
}

function contributed1(address arg1) {
    return contributed1[arg1]
}

function saleClosed() {
    return bool(uint8(stor4.field_8))
}

function rate1() {
    return rate1
}

function fundingCap() {
    return fundingCap
}

function tokenBalanceOf(address arg1) {
    return tokenBalanceOf[arg1]
}

function cap2(address arg1) {
    return cap2[arg1]
}

function rate2() {
    return rate2
}

function terminate() {
    require msg.sender == owner
    Mask(248, 0, stor4.field_8) = 1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function deactivate(address arg1) {
    require msg.sender == owner
    require stor5[address(arg1)]
    stor5[address(arg1)] = 0
    emit RegistrationStatusChanged(address(arg1), 0, cap1[address(arg1)], cap2[address(arg1)], cap3[address(arg1)], cap4[address(arg1)]);
}

function ownerSafeWithdrawal() {
    require msg.sender == owner
    require not stor21
    stor21 = 1
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit FundTransfer(beneficiaryAddress, eth.balance(this.address), 0);
    stor21 = 0
}

function reactivate(address arg1) {
    require msg.sender == owner
    require cap1[address(arg1)] + cap2[address(arg1)] >= cap1[address(arg1)]
    require cap3[address(arg1)] >= 0
    require cap4[address(arg1)] >= 0
    require cap1[address(arg1)] + cap2[address(arg1)] + cap3[address(arg1)] + cap4[address(arg1)] > 0
    stor5[address(arg1)] = 1
    emit RegistrationStatusChanged(address(arg1), 1, cap1[address(arg1)], cap2[address(arg1)], cap3[address(arg1)], cap4[address(arg1)]);
}

function ownerAllocateTokens(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require not stor21
    stor21 = 1
    require amountRaised + arg2 >= amountRaised
    amountRaised += arg2
    require amountRaised <= fundingCap
    require tokenBalanceOf[address(arg1)] + arg3 >= tokenBalanceOf[address(arg1)]
    tokenBalanceOf[address(arg1)] += arg3
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit FundTransfer(address(arg1), arg2, 1);
    require amountRaised <= fundingCap
    if amountRaised == fundingCap:
        uint8(stor4.field_0) = 1
        Mask(248, 0, stor4.field_8) = 1
        emit CapReached(beneficiaryAddress, amountRaised);
    stor21 = 0
}

function registerUser(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require msg.sender == owner
    require arg1
    require msg.sender == owner
    require cap1[address(arg1)] + cap2[address(arg1)] >= cap1[address(arg1)]
    require cap3[address(arg1)] >= 0
    require cap4[address(arg1)] >= 0
    if cap1[address(arg1)] + cap2[address(arg1)] + cap3[address(arg1)] + cap4[address(arg1)] > 0:
        require msg.sender == owner
        require contributed3[address(arg1)] <= arg4
        require contributed2[address(arg1)] <= arg3
        require contributed1[address(arg1)] <= arg2
        require contributed4[address(arg1)] <= arg5
    require arg2 + arg3 >= arg2
    require arg4 >= 0
    require arg5 >= 0
    require arg2 + arg3 + arg4 + arg5 >= minContribution
    stor5[address(arg1)] = 1
    cap1[address(arg1)] = arg2
    cap2[address(arg1)] = arg3
    cap3[address(arg1)] = arg4
    cap4[address(arg1)] = arg5
    emit RegistrationStatusChanged(address(arg1), 1, arg2, arg3, arg4, arg5);
}

function ownerAllocateTokensForList(address[] arg1, uint256[] arg2, uint256[] arg3) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    require arg1.length == arg2.length
    require arg1.length == arg3.length
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg3.length
        require msg.sender == owner
        require not stor21
        stor21 = 1
        require amountRaised + cd[((32 * idx) + arg2 + 36)] >= amountRaised
        amountRaised += cd[((32 * idx) + arg2 + 36)]
        require amountRaised <= fundingCap
        require tokenBalanceOf[address(cd[((32 * idx) + arg1 + 36)])] + cd[((32 * idx) + arg3 + 36)] >= tokenBalanceOf[address(cd[((32 * idx) + arg1 + 36)])]
        tokenBalanceOf[address(cd[((32 * idx) + arg1 + 36)])] += cd[((32 * idx) + arg3 + 36)]
        require balanceOf[address(cd[((32 * idx) + arg1 + 36)])] + cd[((32 * idx) + arg2 + 36)] >= balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 22
        balanceOf[address(cd[((32 * idx) + arg1 + 36)])] += cd[((32 * idx) + arg2 + 36)]
        mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
        mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
        mem[mem[64] + 64] = 1
        emit FundTransfer(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], 1);
        require amountRaised <= fundingCap
        if amountRaised == fundingCap:
            uint8(stor4.field_0) = 1
            Mask(248, 0, stor4.field_8) = 1
            mem[mem[64]] = beneficiaryAddress
            mem[mem[64] + 32] = amountRaised
            emit CapReached(beneficiaryAddress, amountRaised);
        stor21 = 0
        idx = idx + 1
        continue 
}

function registerUsers(address[] arg1, uint256[] arg2, uint256[] arg3, uint256[] arg4, uint256[] arg5) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    require arg1.length == arg2.length
    require arg1.length == arg3.length
    require arg1.length == arg4.length
    require arg1.length == arg5.length
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg3.length
        require idx < arg4.length
        require idx < arg5.length
        require msg.sender == owner
        require address(cd[((32 * idx) + arg1 + 36)])
        require msg.sender == owner
        require cap1[address(cd[((32 * idx) + arg1 + 36)])] + cap2[address(cd[((32 * idx) + arg1 + 36)])] >= cap1[address(cd[((32 * idx) + arg1 + 36)])]
        require cap3[address(cd[((32 * idx) + arg1 + 36)])] >= 0
        require cap4[address(cd[((32 * idx) + arg1 + 36)])] >= 0
        if cap1[address(cd[((32 * idx) + arg1 + 36)])] + cap2[address(cd[((32 * idx) + arg1 + 36)])] + cap3[address(cd[((32 * idx) + arg1 + 36)])] + cap4[address(cd[((32 * idx) + arg1 + 36)])] > 0:
            require msg.sender == owner
            require contributed3[address(cd[((32 * idx) + arg1 + 36)])] <= cd[((32 * idx) + arg4 + 36)]
            require contributed2[address(cd[((32 * idx) + arg1 + 36)])] <= cd[((32 * idx) + arg3 + 36)]
            require contributed1[address(cd[((32 * idx) + arg1 + 36)])] <= cd[((32 * idx) + arg2 + 36)]
            require contributed4[address(cd[((32 * idx) + arg1 + 36)])] <= cd[((32 * idx) + arg5 + 36)]
        require cd[((32 * idx) + arg2 + 36)] + cd[((32 * idx) + arg3 + 36)] >= cd[((32 * idx) + arg2 + 36)]
        require cd[((32 * idx) + arg4 + 36)] >= 0
        require cd[((32 * idx) + arg5 + 36)] >= 0
        require cd[((32 * idx) + arg2 + 36)] + cd[((32 * idx) + arg3 + 36)] + cd[((32 * idx) + arg4 + 36)] + cd[((32 * idx) + arg5 + 36)] >= minContribution
        stor5[address(cd[((32 * idx) + arg1 + 36)])] = 1
        cap1[address(cd[((32 * idx) + arg1 + 36)])] = cd[((32 * idx) + arg2 + 36)]
        cap2[address(cd[((32 * idx) + arg1 + 36)])] = cd[((32 * idx) + arg3 + 36)]
        cap3[address(cd[((32 * idx) + arg1 + 36)])] = cd[((32 * idx) + arg4 + 36)]
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 9
        cap4[address(cd[((32 * idx) + arg1 + 36)])] = cd[((32 * idx) + arg5 + 36)]
        mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
        mem[mem[64] + 32] = 1
        mem[mem[64] + 64] = cd[((32 * idx) + arg2 + 36)]
        mem[mem[64] + 96] = cd[((32 * idx) + arg3 + 36)]
        mem[mem[64] + 128] = cd[((32 * idx) + arg4 + 36)]
        mem[mem[64] + 160] = cd[((32 * idx) + arg5 + 36)]
        emit RegistrationStatusChanged(address(cd[((32 * idx) + arg1 + 36)]), 1, cd[((32 * idx) + arg2 + 36)], cd[((32 * idx) + arg3 + 36)], cd[((32 * idx) + arg4 + 36)], cd[((32 * idx) + arg5 + 36)]);
        idx = idx + 1
        continue 
}

function buy() payable {
    require not uint8(stor0.field_160)
    require block.timestamp < endTime
    require block.timestamp >= startTime
    require not uint8(stor4.field_8)
    require not stor21
    stor21 = 1
    require msg.value >= minContribution
    require stor5[address(msg.sender)]
    require msg.value > 0
    require contributed3[address(msg.sender)] <= cap3[address(msg.sender)]
    require contributed2[address(msg.sender)] <= cap2[address(msg.sender)]
    require contributed1[address(msg.sender)] <= cap1[address(msg.sender)]
    require contributed4[address(msg.sender)] <= cap4[address(msg.sender)]
    require cap2[address(msg.sender)] - contributed2[address(msg.sender)] >= 0
    require cap1[address(msg.sender)] - contributed1[address(msg.sender)] >= 0
    require cap4[address(msg.sender)] - contributed4[address(msg.sender)] >= 0
    require msg.value <= cap3[address(msg.sender)] - contributed3[address(msg.sender)] + cap2[address(msg.sender)] - contributed2[address(msg.sender)] + cap1[address(msg.sender)] - contributed1[address(msg.sender)] + cap4[address(msg.sender)] - contributed4[address(msg.sender)]
    if cap3[address(msg.sender)] - contributed3[address(msg.sender)] <= 0:
        if cap2[address(msg.sender)] - contributed2[address(msg.sender)] <= 0:
            if cap1[address(msg.sender)] - contributed1[address(msg.sender)] <= 0:
                require contributed4[address(msg.sender)] + msg.value >= contributed4[address(msg.sender)]
                contributed4[address(msg.sender)] += msg.value
                if rate4:
                    require rate4
                    require rate4 * msg.value / rate4 == msg.value
                require rate4 * msg.value >= 0
                require rate4 * msg.value > 0
                require amountRaised + msg.value >= amountRaised
                amountRaised += msg.value
                require amountRaised <= fundingCap
                require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += msg.value
                require tokenBalanceOf[address(msg.sender)] + (rate4 * msg.value) >= tokenBalanceOf[address(msg.sender)]
                tokenBalanceOf[address(msg.sender)] += rate4 * msg.value
            else:
                if msg.value <= cap1[address(msg.sender)] - contributed1[address(msg.sender)]:
                    require contributed1[address(msg.sender)] + msg.value >= contributed1[address(msg.sender)]
                    contributed1[address(msg.sender)] += msg.value
                    if rate1:
                        require rate1
                        require rate1 * msg.value / rate1 == msg.value
                    require rate1 * msg.value >= 0
                    require rate1 * msg.value > 0
                    require amountRaised + msg.value >= amountRaised
                    amountRaised += msg.value
                    require amountRaised <= fundingCap
                    require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += msg.value
                    require tokenBalanceOf[address(msg.sender)] + (rate1 * msg.value) >= tokenBalanceOf[address(msg.sender)]
                    tokenBalanceOf[address(msg.sender)] += rate1 * msg.value
                else:
                    if rate1:
                        require rate1
                        require (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) / rate1 == cap1[address(msg.sender)] - contributed1[address(msg.sender)]
                    require (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) >= 0
                    require cap1[address(msg.sender)] - contributed1[address(msg.sender)] <= msg.value
                    contributed1[address(msg.sender)] = cap1[address(msg.sender)]
                    require contributed4[address(msg.sender)] + msg.value - cap1[address(msg.sender)] + contributed1[address(msg.sender)] >= contributed4[address(msg.sender)]
                    contributed4[address(msg.sender)] = contributed4[address(msg.sender)] + msg.value - cap1[address(msg.sender)] + contributed1[address(msg.sender)]
                    if rate4:
                        require rate4
                        require (msg.value * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4) / rate4 == msg.value - cap1[address(msg.sender)] + contributed1[address(msg.sender)]
                    require (msg.value * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4) >= 0
                    require (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) + (msg.value * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4) > 0
                    require amountRaised + msg.value >= amountRaised
                    amountRaised += msg.value
                    require amountRaised <= fundingCap
                    require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += msg.value
                    require tokenBalanceOf[address(msg.sender)] + (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) + (msg.value * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4) >= tokenBalanceOf[address(msg.sender)]
                    tokenBalanceOf[address(msg.sender)] = tokenBalanceOf[address(msg.sender)] + (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) + (msg.value * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4)
        else:
            if msg.value <= cap2[address(msg.sender)] - contributed2[address(msg.sender)]:
                require contributed2[address(msg.sender)] + msg.value >= contributed2[address(msg.sender)]
                contributed2[address(msg.sender)] += msg.value
                if rate2:
                    require rate2
                    require rate2 * msg.value / rate2 == msg.value
                require rate2 * msg.value >= 0
                require rate2 * msg.value > 0
                require amountRaised + msg.value >= amountRaised
                amountRaised += msg.value
                require amountRaised <= fundingCap
                require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += msg.value
                require tokenBalanceOf[address(msg.sender)] + (rate2 * msg.value) >= tokenBalanceOf[address(msg.sender)]
                tokenBalanceOf[address(msg.sender)] += rate2 * msg.value
            else:
                if rate2:
                    require rate2
                    require (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) / rate2 == cap2[address(msg.sender)] - contributed2[address(msg.sender)]
                require (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) >= 0
                require cap2[address(msg.sender)] - contributed2[address(msg.sender)] <= msg.value
                contributed2[address(msg.sender)] = cap2[address(msg.sender)]
                if cap1[address(msg.sender)] - contributed1[address(msg.sender)] <= 0:
                    require contributed4[address(msg.sender)] + msg.value - cap2[address(msg.sender)] + contributed2[address(msg.sender)] >= contributed4[address(msg.sender)]
                    contributed4[address(msg.sender)] = contributed4[address(msg.sender)] + msg.value - cap2[address(msg.sender)] + contributed2[address(msg.sender)]
                    if rate4:
                        require rate4
                        require (msg.value * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) / rate4 == msg.value - cap2[address(msg.sender)] + contributed2[address(msg.sender)]
                    require (msg.value * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) >= 0
                    require (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (msg.value * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) > 0
                    require amountRaised + msg.value >= amountRaised
                    amountRaised += msg.value
                    require amountRaised <= fundingCap
                    require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += msg.value
                    require tokenBalanceOf[address(msg.sender)] + (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (msg.value * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) >= tokenBalanceOf[address(msg.sender)]
                    tokenBalanceOf[address(msg.sender)] = tokenBalanceOf[address(msg.sender)] + (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (msg.value * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4)
                else:
                    if msg.value - cap2[address(msg.sender)] + contributed2[address(msg.sender)] <= cap1[address(msg.sender)] - contributed1[address(msg.sender)]:
                        require contributed1[address(msg.sender)] + msg.value - cap2[address(msg.sender)] + contributed2[address(msg.sender)] >= contributed1[address(msg.sender)]
                        contributed1[address(msg.sender)] = contributed1[address(msg.sender)] + msg.value - cap2[address(msg.sender)] + contributed2[address(msg.sender)]
                        if rate1:
                            require rate1
                            require (msg.value * rate1) - (cap2[address(msg.sender)] * rate1) + (contributed2[address(msg.sender)] * rate1) / rate1 == msg.value - cap2[address(msg.sender)] + contributed2[address(msg.sender)]
                        require (msg.value * rate1) - (cap2[address(msg.sender)] * rate1) + (contributed2[address(msg.sender)] * rate1) >= 0
                        require (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (msg.value * rate1) - (cap2[address(msg.sender)] * rate1) + (contributed2[address(msg.sender)] * rate1) > 0
                        require amountRaised + msg.value >= amountRaised
                        amountRaised += msg.value
                        require amountRaised <= fundingCap
                        require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value
                        require tokenBalanceOf[address(msg.sender)] + (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (msg.value * rate1) - (cap2[address(msg.sender)] * rate1) + (contributed2[address(msg.sender)] * rate1) >= tokenBalanceOf[address(msg.sender)]
                        tokenBalanceOf[address(msg.sender)] = tokenBalanceOf[address(msg.sender)] + (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (msg.value * rate1) - (cap2[address(msg.sender)] * rate1) + (contributed2[address(msg.sender)] * rate1)
                    else:
                        if rate1:
                            require rate1
                            require (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) / rate1 == cap1[address(msg.sender)] - contributed1[address(msg.sender)]
                        require (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) >= 0
                        require cap1[address(msg.sender)] - contributed1[address(msg.sender)] <= msg.value - cap2[address(msg.sender)] + contributed2[address(msg.sender)]
                        contributed1[address(msg.sender)] = cap1[address(msg.sender)]
                        require contributed4[address(msg.sender)] + msg.value - cap2[address(msg.sender)] + contributed2[address(msg.sender)] - cap1[address(msg.sender)] + contributed1[address(msg.sender)] >= contributed4[address(msg.sender)]
                        contributed4[address(msg.sender)] = contributed4[address(msg.sender)] + msg.value - cap2[address(msg.sender)] + contributed2[address(msg.sender)] - cap1[address(msg.sender)] + contributed1[address(msg.sender)]
                        if rate4:
                            require rate4
                            require (msg.value * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4) / rate4 == msg.value - cap2[address(msg.sender)] + contributed2[address(msg.sender)] - cap1[address(msg.sender)] + contributed1[address(msg.sender)]
                        require (msg.value * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4) >= 0
                        require (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) + (msg.value * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4) > 0
                        require amountRaised + msg.value >= amountRaised
                        amountRaised += msg.value
                        require amountRaised <= fundingCap
                        require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value
                        require tokenBalanceOf[address(msg.sender)] + (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) + (msg.value * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4) >= tokenBalanceOf[address(msg.sender)]
                        tokenBalanceOf[address(msg.sender)] = tokenBalanceOf[address(msg.sender)] + (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) + (msg.value * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4)
    else:
        if msg.value <= cap3[address(msg.sender)] - contributed3[address(msg.sender)]:
            require contributed3[address(msg.sender)] + msg.value >= contributed3[address(msg.sender)]
            contributed3[address(msg.sender)] += msg.value
            if rate3:
                require rate3
                require rate3 * msg.value / rate3 == msg.value
            require rate3 * msg.value > 0
            require amountRaised + msg.value >= amountRaised
            amountRaised += msg.value
            require amountRaised <= fundingCap
            require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += msg.value
            require tokenBalanceOf[address(msg.sender)] + (rate3 * msg.value) >= tokenBalanceOf[address(msg.sender)]
            tokenBalanceOf[address(msg.sender)] += rate3 * msg.value
        else:
            if rate3:
                require rate3
                require (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) / rate3 == cap3[address(msg.sender)] - contributed3[address(msg.sender)]
            require cap3[address(msg.sender)] - contributed3[address(msg.sender)] <= msg.value
            contributed3[address(msg.sender)] = cap3[address(msg.sender)]
            if cap2[address(msg.sender)] - contributed2[address(msg.sender)] <= 0:
                if cap1[address(msg.sender)] - contributed1[address(msg.sender)] <= 0:
                    require contributed4[address(msg.sender)] + msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] >= contributed4[address(msg.sender)]
                    contributed4[address(msg.sender)] = contributed4[address(msg.sender)] + msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)]
                    if rate4:
                        require rate4
                        require (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) / rate4 == msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)]
                    require (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) >= 0
                    require (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) > 0
                    require amountRaised + msg.value >= amountRaised
                    amountRaised += msg.value
                    require amountRaised <= fundingCap
                    require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += msg.value
                    require tokenBalanceOf[address(msg.sender)] + (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) >= tokenBalanceOf[address(msg.sender)]
                    tokenBalanceOf[address(msg.sender)] = tokenBalanceOf[address(msg.sender)] + (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4)
                else:
                    if msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] <= cap1[address(msg.sender)] - contributed1[address(msg.sender)]:
                        require contributed1[address(msg.sender)] + msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] >= contributed1[address(msg.sender)]
                        contributed1[address(msg.sender)] = contributed1[address(msg.sender)] + msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)]
                        if rate1:
                            require rate1
                            require (msg.value * rate1) - (cap3[address(msg.sender)] * rate1) + (contributed3[address(msg.sender)] * rate1) / rate1 == msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)]
                        require (msg.value * rate1) - (cap3[address(msg.sender)] * rate1) + (contributed3[address(msg.sender)] * rate1) >= 0
                        require (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (msg.value * rate1) - (cap3[address(msg.sender)] * rate1) + (contributed3[address(msg.sender)] * rate1) > 0
                        require amountRaised + msg.value >= amountRaised
                        amountRaised += msg.value
                        require amountRaised <= fundingCap
                        require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value
                        require tokenBalanceOf[address(msg.sender)] + (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (msg.value * rate1) - (cap3[address(msg.sender)] * rate1) + (contributed3[address(msg.sender)] * rate1) >= tokenBalanceOf[address(msg.sender)]
                        tokenBalanceOf[address(msg.sender)] = tokenBalanceOf[address(msg.sender)] + (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (msg.value * rate1) - (cap3[address(msg.sender)] * rate1) + (contributed3[address(msg.sender)] * rate1)
                    else:
                        if rate1:
                            require rate1
                            require (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) / rate1 == cap1[address(msg.sender)] - contributed1[address(msg.sender)]
                        require (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) >= 0
                        require cap1[address(msg.sender)] - contributed1[address(msg.sender)] <= msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)]
                        contributed1[address(msg.sender)] = cap1[address(msg.sender)]
                        require contributed4[address(msg.sender)] + msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] - cap1[address(msg.sender)] + contributed1[address(msg.sender)] >= contributed4[address(msg.sender)]
                        contributed4[address(msg.sender)] = contributed4[address(msg.sender)] + msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] - cap1[address(msg.sender)] + contributed1[address(msg.sender)]
                        if rate4:
                            require rate4
                            require (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4) / rate4 == msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] - cap1[address(msg.sender)] + contributed1[address(msg.sender)]
                        require (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4) >= 0
                        require (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) + (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4) > 0
                        require amountRaised + msg.value >= amountRaised
                        amountRaised += msg.value
                        require amountRaised <= fundingCap
                        require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value
                        require tokenBalanceOf[address(msg.sender)] + (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) + (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4) >= tokenBalanceOf[address(msg.sender)]
                        tokenBalanceOf[address(msg.sender)] = tokenBalanceOf[address(msg.sender)] + (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) + (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4)
            else:
                if msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] <= cap2[address(msg.sender)] - contributed2[address(msg.sender)]:
                    require contributed2[address(msg.sender)] + msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] >= contributed2[address(msg.sender)]
                    contributed2[address(msg.sender)] = contributed2[address(msg.sender)] + msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)]
                    if rate2:
                        require rate2
                        require (msg.value * rate2) - (cap3[address(msg.sender)] * rate2) + (contributed3[address(msg.sender)] * rate2) / rate2 == msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)]
                    require (msg.value * rate2) - (cap3[address(msg.sender)] * rate2) + (contributed3[address(msg.sender)] * rate2) >= 0
                    require (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (msg.value * rate2) - (cap3[address(msg.sender)] * rate2) + (contributed3[address(msg.sender)] * rate2) > 0
                    require amountRaised + msg.value >= amountRaised
                    amountRaised += msg.value
                    require amountRaised <= fundingCap
                    require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += msg.value
                    require tokenBalanceOf[address(msg.sender)] + (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (msg.value * rate2) - (cap3[address(msg.sender)] * rate2) + (contributed3[address(msg.sender)] * rate2) >= tokenBalanceOf[address(msg.sender)]
                    tokenBalanceOf[address(msg.sender)] = tokenBalanceOf[address(msg.sender)] + (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (msg.value * rate2) - (cap3[address(msg.sender)] * rate2) + (contributed3[address(msg.sender)] * rate2)
                else:
                    if rate2:
                        require rate2
                        require (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) / rate2 == cap2[address(msg.sender)] - contributed2[address(msg.sender)]
                    require (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) >= 0
                    require cap2[address(msg.sender)] - contributed2[address(msg.sender)] <= msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)]
                    contributed2[address(msg.sender)] = cap2[address(msg.sender)]
                    if cap1[address(msg.sender)] - contributed1[address(msg.sender)] <= 0:
                        require contributed4[address(msg.sender)] + msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] - cap2[address(msg.sender)] + contributed2[address(msg.sender)] >= contributed4[address(msg.sender)]
                        contributed4[address(msg.sender)] = contributed4[address(msg.sender)] + msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] - cap2[address(msg.sender)] + contributed2[address(msg.sender)]
                        if rate4:
                            require rate4
                            require (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) / rate4 == msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] - cap2[address(msg.sender)] + contributed2[address(msg.sender)]
                        require (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) >= 0
                        require (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) > 0
                        require amountRaised + msg.value >= amountRaised
                        amountRaised += msg.value
                        require amountRaised <= fundingCap
                        require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value
                        require tokenBalanceOf[address(msg.sender)] + (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) >= tokenBalanceOf[address(msg.sender)]
                        tokenBalanceOf[address(msg.sender)] = tokenBalanceOf[address(msg.sender)] + (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4)
                    else:
                        if msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] - cap2[address(msg.sender)] + contributed2[address(msg.sender)] <= cap1[address(msg.sender)] - contributed1[address(msg.sender)]:
                            require contributed1[address(msg.sender)] + msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] - cap2[address(msg.sender)] + contributed2[address(msg.sender)] >= contributed1[address(msg.sender)]
                            contributed1[address(msg.sender)] = contributed1[address(msg.sender)] + msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] - cap2[address(msg.sender)] + contributed2[address(msg.sender)]
                            if rate1:
                                require rate1
                                require (msg.value * rate1) - (cap3[address(msg.sender)] * rate1) + (contributed3[address(msg.sender)] * rate1) - (cap2[address(msg.sender)] * rate1) + (contributed2[address(msg.sender)] * rate1) / rate1 == msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] - cap2[address(msg.sender)] + contributed2[address(msg.sender)]
                            require (msg.value * rate1) - (cap3[address(msg.sender)] * rate1) + (contributed3[address(msg.sender)] * rate1) - (cap2[address(msg.sender)] * rate1) + (contributed2[address(msg.sender)] * rate1) >= 0
                            require (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (msg.value * rate1) - (cap3[address(msg.sender)] * rate1) + (contributed3[address(msg.sender)] * rate1) - (cap2[address(msg.sender)] * rate1) + (contributed2[address(msg.sender)] * rate1) > 0
                            require amountRaised + msg.value >= amountRaised
                            amountRaised += msg.value
                            require amountRaised <= fundingCap
                            require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value
                            require tokenBalanceOf[address(msg.sender)] + (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (msg.value * rate1) - (cap3[address(msg.sender)] * rate1) + (contributed3[address(msg.sender)] * rate1) - (cap2[address(msg.sender)] * rate1) + (contributed2[address(msg.sender)] * rate1) >= tokenBalanceOf[address(msg.sender)]
                            tokenBalanceOf[address(msg.sender)] = tokenBalanceOf[address(msg.sender)] + (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (msg.value * rate1) - (cap3[address(msg.sender)] * rate1) + (contributed3[address(msg.sender)] * rate1) - (cap2[address(msg.sender)] * rate1) + (contributed2[address(msg.sender)] * rate1)
                        else:
                            if rate1:
                                require rate1
                                require (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) / rate1 == cap1[address(msg.sender)] - contributed1[address(msg.sender)]
                            require (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) >= 0
                            require cap1[address(msg.sender)] - contributed1[address(msg.sender)] <= msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] - cap2[address(msg.sender)] + contributed2[address(msg.sender)]
                            contributed1[address(msg.sender)] = cap1[address(msg.sender)]
                            require contributed4[address(msg.sender)] + msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] - cap2[address(msg.sender)] + contributed2[address(msg.sender)] - cap1[address(msg.sender)] + contributed1[address(msg.sender)] >= contributed4[address(msg.sender)]
                            contributed4[address(msg.sender)] = contributed4[address(msg.sender)] + msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] - cap2[address(msg.sender)] + contributed2[address(msg.sender)] - cap1[address(msg.sender)] + contributed1[address(msg.sender)]
                            if rate4:
                                require rate4
                                require (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4) / rate4 == msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] - cap2[address(msg.sender)] + contributed2[address(msg.sender)] - cap1[address(msg.sender)] + contributed1[address(msg.sender)]
                            require (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4) >= 0
                            require (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) + (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4) > 0
                            require amountRaised + msg.value >= amountRaised
                            amountRaised += msg.value
                            require amountRaised <= fundingCap
                            require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value
                            require tokenBalanceOf[address(msg.sender)] + (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) + (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4) >= tokenBalanceOf[address(msg.sender)]
                            tokenBalanceOf[address(msg.sender)] = tokenBalanceOf[address(msg.sender)] + (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) + (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4)
    emit FundTransfer(msg.sender, msg.value, 1);
    require amountRaised <= fundingCap
    if amountRaised == fundingCap:
        uint8(stor4.field_0) = 1
        Mask(248, 0, stor4.field_8) = 1
        emit CapReached(beneficiaryAddress, amountRaised);
    stor21 = 0
}

function _fallback() payable {
    require not uint8(stor0.field_160)
    require block.timestamp < endTime
    require block.timestamp >= startTime
    require not uint8(stor4.field_8)
    require not stor21
    stor21 = 1
    require msg.value >= minContribution
    require stor5[address(msg.sender)]
    require msg.value > 0
    require contributed3[address(msg.sender)] <= cap3[address(msg.sender)]
    require contributed2[address(msg.sender)] <= cap2[address(msg.sender)]
    require contributed1[address(msg.sender)] <= cap1[address(msg.sender)]
    require contributed4[address(msg.sender)] <= cap4[address(msg.sender)]
    require cap2[address(msg.sender)] - contributed2[address(msg.sender)] >= 0
    require cap1[address(msg.sender)] - contributed1[address(msg.sender)] >= 0
    require cap4[address(msg.sender)] - contributed4[address(msg.sender)] >= 0
    require msg.value <= cap3[address(msg.sender)] - contributed3[address(msg.sender)] + cap2[address(msg.sender)] - contributed2[address(msg.sender)] + cap1[address(msg.sender)] - contributed1[address(msg.sender)] + cap4[address(msg.sender)] - contributed4[address(msg.sender)]
    if cap3[address(msg.sender)] - contributed3[address(msg.sender)] <= 0:
        if cap2[address(msg.sender)] - contributed2[address(msg.sender)] <= 0:
            if cap1[address(msg.sender)] - contributed1[address(msg.sender)] <= 0:
                require contributed4[address(msg.sender)] + msg.value >= contributed4[address(msg.sender)]
                contributed4[address(msg.sender)] += msg.value
                if rate4:
                    require rate4
                    require rate4 * msg.value / rate4 == msg.value
                require rate4 * msg.value >= 0
                require rate4 * msg.value > 0
                require amountRaised + msg.value >= amountRaised
                amountRaised += msg.value
                require amountRaised <= fundingCap
                require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += msg.value
                require tokenBalanceOf[address(msg.sender)] + (rate4 * msg.value) >= tokenBalanceOf[address(msg.sender)]
                tokenBalanceOf[address(msg.sender)] += rate4 * msg.value
            else:
                if msg.value <= cap1[address(msg.sender)] - contributed1[address(msg.sender)]:
                    require contributed1[address(msg.sender)] + msg.value >= contributed1[address(msg.sender)]
                    contributed1[address(msg.sender)] += msg.value
                    if rate1:
                        require rate1
                        require rate1 * msg.value / rate1 == msg.value
                    require rate1 * msg.value >= 0
                    require rate1 * msg.value > 0
                    require amountRaised + msg.value >= amountRaised
                    amountRaised += msg.value
                    require amountRaised <= fundingCap
                    require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += msg.value
                    require tokenBalanceOf[address(msg.sender)] + (rate1 * msg.value) >= tokenBalanceOf[address(msg.sender)]
                    tokenBalanceOf[address(msg.sender)] += rate1 * msg.value
                else:
                    if rate1:
                        require rate1
                        require (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) / rate1 == cap1[address(msg.sender)] - contributed1[address(msg.sender)]
                    require (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) >= 0
                    require cap1[address(msg.sender)] - contributed1[address(msg.sender)] <= msg.value
                    contributed1[address(msg.sender)] = cap1[address(msg.sender)]
                    require contributed4[address(msg.sender)] + msg.value - cap1[address(msg.sender)] + contributed1[address(msg.sender)] >= contributed4[address(msg.sender)]
                    contributed4[address(msg.sender)] = contributed4[address(msg.sender)] + msg.value - cap1[address(msg.sender)] + contributed1[address(msg.sender)]
                    if rate4:
                        require rate4
                        require (msg.value * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4) / rate4 == msg.value - cap1[address(msg.sender)] + contributed1[address(msg.sender)]
                    require (msg.value * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4) >= 0
                    require (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) + (msg.value * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4) > 0
                    require amountRaised + msg.value >= amountRaised
                    amountRaised += msg.value
                    require amountRaised <= fundingCap
                    require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += msg.value
                    require tokenBalanceOf[address(msg.sender)] + (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) + (msg.value * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4) >= tokenBalanceOf[address(msg.sender)]
                    tokenBalanceOf[address(msg.sender)] = tokenBalanceOf[address(msg.sender)] + (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) + (msg.value * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4)
        else:
            if msg.value <= cap2[address(msg.sender)] - contributed2[address(msg.sender)]:
                require contributed2[address(msg.sender)] + msg.value >= contributed2[address(msg.sender)]
                contributed2[address(msg.sender)] += msg.value
                if rate2:
                    require rate2
                    require rate2 * msg.value / rate2 == msg.value
                require rate2 * msg.value >= 0
                require rate2 * msg.value > 0
                require amountRaised + msg.value >= amountRaised
                amountRaised += msg.value
                require amountRaised <= fundingCap
                require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += msg.value
                require tokenBalanceOf[address(msg.sender)] + (rate2 * msg.value) >= tokenBalanceOf[address(msg.sender)]
                tokenBalanceOf[address(msg.sender)] += rate2 * msg.value
            else:
                if rate2:
                    require rate2
                    require (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) / rate2 == cap2[address(msg.sender)] - contributed2[address(msg.sender)]
                require (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) >= 0
                require cap2[address(msg.sender)] - contributed2[address(msg.sender)] <= msg.value
                contributed2[address(msg.sender)] = cap2[address(msg.sender)]
                if cap1[address(msg.sender)] - contributed1[address(msg.sender)] <= 0:
                    require contributed4[address(msg.sender)] + msg.value - cap2[address(msg.sender)] + contributed2[address(msg.sender)] >= contributed4[address(msg.sender)]
                    contributed4[address(msg.sender)] = contributed4[address(msg.sender)] + msg.value - cap2[address(msg.sender)] + contributed2[address(msg.sender)]
                    if rate4:
                        require rate4
                        require (msg.value * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) / rate4 == msg.value - cap2[address(msg.sender)] + contributed2[address(msg.sender)]
                    require (msg.value * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) >= 0
                    require (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (msg.value * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) > 0
                    require amountRaised + msg.value >= amountRaised
                    amountRaised += msg.value
                    require amountRaised <= fundingCap
                    require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += msg.value
                    require tokenBalanceOf[address(msg.sender)] + (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (msg.value * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) >= tokenBalanceOf[address(msg.sender)]
                    tokenBalanceOf[address(msg.sender)] = tokenBalanceOf[address(msg.sender)] + (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (msg.value * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4)
                else:
                    if msg.value - cap2[address(msg.sender)] + contributed2[address(msg.sender)] <= cap1[address(msg.sender)] - contributed1[address(msg.sender)]:
                        require contributed1[address(msg.sender)] + msg.value - cap2[address(msg.sender)] + contributed2[address(msg.sender)] >= contributed1[address(msg.sender)]
                        contributed1[address(msg.sender)] = contributed1[address(msg.sender)] + msg.value - cap2[address(msg.sender)] + contributed2[address(msg.sender)]
                        if rate1:
                            require rate1
                            require (msg.value * rate1) - (cap2[address(msg.sender)] * rate1) + (contributed2[address(msg.sender)] * rate1) / rate1 == msg.value - cap2[address(msg.sender)] + contributed2[address(msg.sender)]
                        require (msg.value * rate1) - (cap2[address(msg.sender)] * rate1) + (contributed2[address(msg.sender)] * rate1) >= 0
                        require (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (msg.value * rate1) - (cap2[address(msg.sender)] * rate1) + (contributed2[address(msg.sender)] * rate1) > 0
                        require amountRaised + msg.value >= amountRaised
                        amountRaised += msg.value
                        require amountRaised <= fundingCap
                        require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value
                        require tokenBalanceOf[address(msg.sender)] + (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (msg.value * rate1) - (cap2[address(msg.sender)] * rate1) + (contributed2[address(msg.sender)] * rate1) >= tokenBalanceOf[address(msg.sender)]
                        tokenBalanceOf[address(msg.sender)] = tokenBalanceOf[address(msg.sender)] + (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (msg.value * rate1) - (cap2[address(msg.sender)] * rate1) + (contributed2[address(msg.sender)] * rate1)
                    else:
                        if rate1:
                            require rate1
                            require (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) / rate1 == cap1[address(msg.sender)] - contributed1[address(msg.sender)]
                        require (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) >= 0
                        require cap1[address(msg.sender)] - contributed1[address(msg.sender)] <= msg.value - cap2[address(msg.sender)] + contributed2[address(msg.sender)]
                        contributed1[address(msg.sender)] = cap1[address(msg.sender)]
                        require contributed4[address(msg.sender)] + msg.value - cap2[address(msg.sender)] + contributed2[address(msg.sender)] - cap1[address(msg.sender)] + contributed1[address(msg.sender)] >= contributed4[address(msg.sender)]
                        contributed4[address(msg.sender)] = contributed4[address(msg.sender)] + msg.value - cap2[address(msg.sender)] + contributed2[address(msg.sender)] - cap1[address(msg.sender)] + contributed1[address(msg.sender)]
                        if rate4:
                            require rate4
                            require (msg.value * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4) / rate4 == msg.value - cap2[address(msg.sender)] + contributed2[address(msg.sender)] - cap1[address(msg.sender)] + contributed1[address(msg.sender)]
                        require (msg.value * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4) >= 0
                        require (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) + (msg.value * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4) > 0
                        require amountRaised + msg.value >= amountRaised
                        amountRaised += msg.value
                        require amountRaised <= fundingCap
                        require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value
                        require tokenBalanceOf[address(msg.sender)] + (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) + (msg.value * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4) >= tokenBalanceOf[address(msg.sender)]
                        tokenBalanceOf[address(msg.sender)] = tokenBalanceOf[address(msg.sender)] + (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) + (msg.value * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4)
    else:
        if msg.value <= cap3[address(msg.sender)] - contributed3[address(msg.sender)]:
            require contributed3[address(msg.sender)] + msg.value >= contributed3[address(msg.sender)]
            contributed3[address(msg.sender)] += msg.value
            if rate3:
                require rate3
                require rate3 * msg.value / rate3 == msg.value
            require rate3 * msg.value > 0
            require amountRaised + msg.value >= amountRaised
            amountRaised += msg.value
            require amountRaised <= fundingCap
            require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += msg.value
            require tokenBalanceOf[address(msg.sender)] + (rate3 * msg.value) >= tokenBalanceOf[address(msg.sender)]
            tokenBalanceOf[address(msg.sender)] += rate3 * msg.value
        else:
            if rate3:
                require rate3
                require (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) / rate3 == cap3[address(msg.sender)] - contributed3[address(msg.sender)]
            require cap3[address(msg.sender)] - contributed3[address(msg.sender)] <= msg.value
            contributed3[address(msg.sender)] = cap3[address(msg.sender)]
            if cap2[address(msg.sender)] - contributed2[address(msg.sender)] <= 0:
                if cap1[address(msg.sender)] - contributed1[address(msg.sender)] <= 0:
                    require contributed4[address(msg.sender)] + msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] >= contributed4[address(msg.sender)]
                    contributed4[address(msg.sender)] = contributed4[address(msg.sender)] + msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)]
                    if rate4:
                        require rate4
                        require (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) / rate4 == msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)]
                    require (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) >= 0
                    require (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) > 0
                    require amountRaised + msg.value >= amountRaised
                    amountRaised += msg.value
                    require amountRaised <= fundingCap
                    require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += msg.value
                    require tokenBalanceOf[address(msg.sender)] + (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) >= tokenBalanceOf[address(msg.sender)]
                    tokenBalanceOf[address(msg.sender)] = tokenBalanceOf[address(msg.sender)] + (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4)
                else:
                    if msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] <= cap1[address(msg.sender)] - contributed1[address(msg.sender)]:
                        require contributed1[address(msg.sender)] + msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] >= contributed1[address(msg.sender)]
                        contributed1[address(msg.sender)] = contributed1[address(msg.sender)] + msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)]
                        if rate1:
                            require rate1
                            require (msg.value * rate1) - (cap3[address(msg.sender)] * rate1) + (contributed3[address(msg.sender)] * rate1) / rate1 == msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)]
                        require (msg.value * rate1) - (cap3[address(msg.sender)] * rate1) + (contributed3[address(msg.sender)] * rate1) >= 0
                        require (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (msg.value * rate1) - (cap3[address(msg.sender)] * rate1) + (contributed3[address(msg.sender)] * rate1) > 0
                        require amountRaised + msg.value >= amountRaised
                        amountRaised += msg.value
                        require amountRaised <= fundingCap
                        require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value
                        require tokenBalanceOf[address(msg.sender)] + (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (msg.value * rate1) - (cap3[address(msg.sender)] * rate1) + (contributed3[address(msg.sender)] * rate1) >= tokenBalanceOf[address(msg.sender)]
                        tokenBalanceOf[address(msg.sender)] = tokenBalanceOf[address(msg.sender)] + (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (msg.value * rate1) - (cap3[address(msg.sender)] * rate1) + (contributed3[address(msg.sender)] * rate1)
                    else:
                        if rate1:
                            require rate1
                            require (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) / rate1 == cap1[address(msg.sender)] - contributed1[address(msg.sender)]
                        require (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) >= 0
                        require cap1[address(msg.sender)] - contributed1[address(msg.sender)] <= msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)]
                        contributed1[address(msg.sender)] = cap1[address(msg.sender)]
                        require contributed4[address(msg.sender)] + msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] - cap1[address(msg.sender)] + contributed1[address(msg.sender)] >= contributed4[address(msg.sender)]
                        contributed4[address(msg.sender)] = contributed4[address(msg.sender)] + msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] - cap1[address(msg.sender)] + contributed1[address(msg.sender)]
                        if rate4:
                            require rate4
                            require (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4) / rate4 == msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] - cap1[address(msg.sender)] + contributed1[address(msg.sender)]
                        require (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4) >= 0
                        require (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) + (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4) > 0
                        require amountRaised + msg.value >= amountRaised
                        amountRaised += msg.value
                        require amountRaised <= fundingCap
                        require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value
                        require tokenBalanceOf[address(msg.sender)] + (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) + (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4) >= tokenBalanceOf[address(msg.sender)]
                        tokenBalanceOf[address(msg.sender)] = tokenBalanceOf[address(msg.sender)] + (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) + (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4)
            else:
                if msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] <= cap2[address(msg.sender)] - contributed2[address(msg.sender)]:
                    require contributed2[address(msg.sender)] + msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] >= contributed2[address(msg.sender)]
                    contributed2[address(msg.sender)] = contributed2[address(msg.sender)] + msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)]
                    if rate2:
                        require rate2
                        require (msg.value * rate2) - (cap3[address(msg.sender)] * rate2) + (contributed3[address(msg.sender)] * rate2) / rate2 == msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)]
                    require (msg.value * rate2) - (cap3[address(msg.sender)] * rate2) + (contributed3[address(msg.sender)] * rate2) >= 0
                    require (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (msg.value * rate2) - (cap3[address(msg.sender)] * rate2) + (contributed3[address(msg.sender)] * rate2) > 0
                    require amountRaised + msg.value >= amountRaised
                    amountRaised += msg.value
                    require amountRaised <= fundingCap
                    require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += msg.value
                    require tokenBalanceOf[address(msg.sender)] + (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (msg.value * rate2) - (cap3[address(msg.sender)] * rate2) + (contributed3[address(msg.sender)] * rate2) >= tokenBalanceOf[address(msg.sender)]
                    tokenBalanceOf[address(msg.sender)] = tokenBalanceOf[address(msg.sender)] + (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (msg.value * rate2) - (cap3[address(msg.sender)] * rate2) + (contributed3[address(msg.sender)] * rate2)
                else:
                    if rate2:
                        require rate2
                        require (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) / rate2 == cap2[address(msg.sender)] - contributed2[address(msg.sender)]
                    require (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) >= 0
                    require cap2[address(msg.sender)] - contributed2[address(msg.sender)] <= msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)]
                    contributed2[address(msg.sender)] = cap2[address(msg.sender)]
                    if cap1[address(msg.sender)] - contributed1[address(msg.sender)] <= 0:
                        require contributed4[address(msg.sender)] + msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] - cap2[address(msg.sender)] + contributed2[address(msg.sender)] >= contributed4[address(msg.sender)]
                        contributed4[address(msg.sender)] = contributed4[address(msg.sender)] + msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] - cap2[address(msg.sender)] + contributed2[address(msg.sender)]
                        if rate4:
                            require rate4
                            require (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) / rate4 == msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] - cap2[address(msg.sender)] + contributed2[address(msg.sender)]
                        require (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) >= 0
                        require (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) > 0
                        require amountRaised + msg.value >= amountRaised
                        amountRaised += msg.value
                        require amountRaised <= fundingCap
                        require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value
                        require tokenBalanceOf[address(msg.sender)] + (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) >= tokenBalanceOf[address(msg.sender)]
                        tokenBalanceOf[address(msg.sender)] = tokenBalanceOf[address(msg.sender)] + (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4)
                    else:
                        if msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] - cap2[address(msg.sender)] + contributed2[address(msg.sender)] <= cap1[address(msg.sender)] - contributed1[address(msg.sender)]:
                            require contributed1[address(msg.sender)] + msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] - cap2[address(msg.sender)] + contributed2[address(msg.sender)] >= contributed1[address(msg.sender)]
                            contributed1[address(msg.sender)] = contributed1[address(msg.sender)] + msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] - cap2[address(msg.sender)] + contributed2[address(msg.sender)]
                            if rate1:
                                require rate1
                                require (msg.value * rate1) - (cap3[address(msg.sender)] * rate1) + (contributed3[address(msg.sender)] * rate1) - (cap2[address(msg.sender)] * rate1) + (contributed2[address(msg.sender)] * rate1) / rate1 == msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] - cap2[address(msg.sender)] + contributed2[address(msg.sender)]
                            require (msg.value * rate1) - (cap3[address(msg.sender)] * rate1) + (contributed3[address(msg.sender)] * rate1) - (cap2[address(msg.sender)] * rate1) + (contributed2[address(msg.sender)] * rate1) >= 0
                            require (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (msg.value * rate1) - (cap3[address(msg.sender)] * rate1) + (contributed3[address(msg.sender)] * rate1) - (cap2[address(msg.sender)] * rate1) + (contributed2[address(msg.sender)] * rate1) > 0
                            require amountRaised + msg.value >= amountRaised
                            amountRaised += msg.value
                            require amountRaised <= fundingCap
                            require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value
                            require tokenBalanceOf[address(msg.sender)] + (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (msg.value * rate1) - (cap3[address(msg.sender)] * rate1) + (contributed3[address(msg.sender)] * rate1) - (cap2[address(msg.sender)] * rate1) + (contributed2[address(msg.sender)] * rate1) >= tokenBalanceOf[address(msg.sender)]
                            tokenBalanceOf[address(msg.sender)] = tokenBalanceOf[address(msg.sender)] + (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (msg.value * rate1) - (cap3[address(msg.sender)] * rate1) + (contributed3[address(msg.sender)] * rate1) - (cap2[address(msg.sender)] * rate1) + (contributed2[address(msg.sender)] * rate1)
                        else:
                            if rate1:
                                require rate1
                                require (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) / rate1 == cap1[address(msg.sender)] - contributed1[address(msg.sender)]
                            require (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) >= 0
                            require cap1[address(msg.sender)] - contributed1[address(msg.sender)] <= msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] - cap2[address(msg.sender)] + contributed2[address(msg.sender)]
                            contributed1[address(msg.sender)] = cap1[address(msg.sender)]
                            require contributed4[address(msg.sender)] + msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] - cap2[address(msg.sender)] + contributed2[address(msg.sender)] - cap1[address(msg.sender)] + contributed1[address(msg.sender)] >= contributed4[address(msg.sender)]
                            contributed4[address(msg.sender)] = contributed4[address(msg.sender)] + msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] - cap2[address(msg.sender)] + contributed2[address(msg.sender)] - cap1[address(msg.sender)] + contributed1[address(msg.sender)]
                            if rate4:
                                require rate4
                                require (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4) / rate4 == msg.value - cap3[address(msg.sender)] + contributed3[address(msg.sender)] - cap2[address(msg.sender)] + contributed2[address(msg.sender)] - cap1[address(msg.sender)] + contributed1[address(msg.sender)]
                            require (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4) >= 0
                            require (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) + (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4) > 0
                            require amountRaised + msg.value >= amountRaised
                            amountRaised += msg.value
                            require amountRaised <= fundingCap
                            require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value
                            require tokenBalanceOf[address(msg.sender)] + (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) + (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4) >= tokenBalanceOf[address(msg.sender)]
                            tokenBalanceOf[address(msg.sender)] = tokenBalanceOf[address(msg.sender)] + (cap3[address(msg.sender)] * rate3) - (contributed3[address(msg.sender)] * rate3) + (cap2[address(msg.sender)] * rate2) - (contributed2[address(msg.sender)] * rate2) + (cap1[address(msg.sender)] * rate1) - (contributed1[address(msg.sender)] * rate1) + (msg.value * rate4) - (cap3[address(msg.sender)] * rate4) + (contributed3[address(msg.sender)] * rate4) - (cap2[address(msg.sender)] * rate4) + (contributed2[address(msg.sender)] * rate4) - (cap1[address(msg.sender)] * rate4) + (contributed1[address(msg.sender)] * rate4)
    emit FundTransfer(msg.sender, msg.value, 1);
    require amountRaised <= fundingCap
    if amountRaised == fundingCap:
        uint8(stor4.field_0) = 1
        Mask(248, 0, stor4.field_8) = 1
        emit CapReached(beneficiaryAddress, amountRaised);
    stor21 = 0
}



}
