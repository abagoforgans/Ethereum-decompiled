contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
uint256 stor3;
uint256 stor5;
uint256 stor6;
address stor7;
address stor8;
array of uint256 stor9;
array of uint256 stor10;
uint256 stor11;
uint16 stor13;

function _fallback() payable {
    bool(stor9.length) = 0
    stor9.length.field_1 = 9
    stor9.length.field_8 = 'Giga Coin' / 256
    idx = 0
    while stor9.length + 31 / 32 > idx:
        stor9[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor10.length) = 0
    stor10.length.field_1 = 2
    stor10.length.field_8 = 'GC' / 256
    idx = 0
    while stor10.length + 31 / 32 > idx:
        stor10[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor11 = 0
    stor13 = 0
    require not msg.value
    stor7 = msg.sender
    stor8 = code.data[5105 len 20]
    stor0 = 15 * 10^6
    stor1[stor8] = 3 * 10^6
    emit code.data[5061 len 32]: 3 * 10^6, 0, code.data[5105 len 20]
    stor1[address(this.address)] = 12 * 10^6
    emit code.data[5061 len 32]: 12 * 10^6, 0, this.address
    stor3 = 1000 * 10^18
    stor5 = 419657 * 3600
    stor6 = 12 * 10^6
    return code.data[700 len 4361]
}



// =====================  Runtime code  =====================


const CROWDSALE_TOKENS = 12 * 10^6

const TOTAL_TOKENS = 15 * 10^6

const VERSION = 'GC.6'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 stor3;
uint256 stor4;
uint256 startTime;
uint256 tokenSupply;
address creatorAddress;
address beneficiaryAddress;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
mapping of uint256 ethBalanceOf;
uint8 fundingGoalReached;
uint8 crowdsaleClosed; offset 8

function creator() {
    return creatorAddress
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function beneficiary() {
    return beneficiaryAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function ethBalanceOf(address arg1) {
    return ethBalanceOf[arg1]
}

function tokenSupply() {
    return tokenSupply
}

function startTime() {
    return startTime
}

function symbol() {
    return symbol[0 len symbol.length]
}

function crowdsaleClosed() {
    return bool(crowdsaleClosed)
}

function fundingGoalReached() {
    return bool(fundingGoalReached)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function checkGoalReached() {
    if block.timestamp >= startTime + (840 * 24 * 3600):
        if stor4 >= stor3:
            fundingGoalReached = 1
            emit GoalReached(beneficiaryAddress, stor4);
        crowdsaleClosed = 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    mem[ceil32(arg3.length) + 128] = Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)'))
    mem[ceil32(arg3.length) + 228 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call arg1 with:
           funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
             gas gas_remaining - 25710 wei
            args msg.sender, arg2, address(this.address), Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 228] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 260 len arg3.length % 32]
        call arg1 with:
           funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
             gas gas_remaining - 25710 wei
            args msg.sender, arg2, address(this.address), Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 228 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
    require ext_call.success
    return 1
}

function safeWithdrawal() {
    if block.timestamp >= startTime + (840 * 24 * 3600):
        if fundingGoalReached:
            if beneficiaryAddress == msg.sender:
                call beneficiaryAddress with:
                   value stor4 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    fundingGoalReached = 0
                else:
                    require ext_code.size(this.address)
                    call this.address.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, tokenSupply
                    require ext_call.success
                    emit FundTransfer(beneficiaryAddress, stor4, 0);
        else:
            ethBalanceOf[address(msg.sender)] = 0
            if ethBalanceOf[address(msg.sender)] > 0:
                call msg.sender with:
                   value ethBalanceOf[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    emit FundTransfer(msg.sender, ethBalanceOf[address(msg.sender)], 0);
            if fundingGoalReached:
                if beneficiaryAddress == msg.sender:
                    call beneficiaryAddress with:
                       value stor4 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        fundingGoalReached = 0
                    else:
                        require ext_code.size(this.address)
                        call this.address.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, tokenSupply
                        require ext_call.success
                        emit FundTransfer(beneficiaryAddress, stor4, 0);
}

function _fallback() payable {
    require block.timestamp >= startTime
    require block.timestamp <= startTime + (840 * 24 * 3600)
    require not crowdsaleClosed
    require msg.value > 0
    require msg.value + ethBalanceOf[address(msg.sender)] >= ethBalanceOf[address(msg.sender)]
    ethBalanceOf[address(msg.sender)] += msg.value
    require msg.value + stor4 >= stor4
    stor4 += msg.value
    if block.timestamp > startTime + (672 * 24 * 3600):
        require msg.value / 5 * 10^15 <= tokenSupply
        tokenSupply -= msg.value / 5 * 10^15
        require balanceOf[address(msg.sender)] >= msg.value / 5 * 10^15
        balanceOf[address(msg.sender)] -= msg.value / 5 * 10^15
        balanceOf[msg.sender] += msg.value / 5 * 10^15
        emit Transfer((msg.value / 5 * 10^15), msg.sender, msg.sender);
    else:
        if block.timestamp > startTime + (504 * 24 * 3600):
            require msg.value / 4 * 10^15 <= tokenSupply
            tokenSupply -= msg.value / 4 * 10^15
            require balanceOf[address(msg.sender)] >= msg.value / 4 * 10^15
            balanceOf[address(msg.sender)] -= msg.value / 4 * 10^15
            balanceOf[msg.sender] += msg.value / 4 * 10^15
            emit Transfer((msg.value / 4 * 10^15), msg.sender, msg.sender);
        else:
            if block.timestamp > startTime + (336 * 24 * 3600):
                require msg.value / 25 * 10^14 <= tokenSupply
                tokenSupply -= msg.value / 25 * 10^14
                require balanceOf[address(msg.sender)] >= msg.value / 25 * 10^14
                balanceOf[address(msg.sender)] -= msg.value / 25 * 10^14
                balanceOf[msg.sender] += msg.value / 25 * 10^14
                emit Transfer((msg.value / 25 * 10^14), msg.sender, msg.sender);
            else:
                if block.timestamp <= startTime + (168 * 24 * 3600):
                    require msg.value / 16 * 10^14 <= tokenSupply
                    tokenSupply -= msg.value / 16 * 10^14
                    require balanceOf[address(msg.sender)] >= msg.value / 16 * 10^14
                    balanceOf[address(msg.sender)] -= msg.value / 16 * 10^14
                    balanceOf[msg.sender] += msg.value / 16 * 10^14
                    emit Transfer((msg.value / 16 * 10^14), msg.sender, msg.sender);
                else:
                    require msg.value / 2 * 10^15 <= tokenSupply
                    tokenSupply -= msg.value / 2 * 10^15
                    require balanceOf[address(msg.sender)] >= msg.value / 2 * 10^15
                    balanceOf[address(msg.sender)] -= msg.value / 2 * 10^15
                    balanceOf[msg.sender] += msg.value / 2 * 10^15
                    emit Transfer((msg.value / 2 * 10^15), msg.sender, msg.sender);
    emit FundTransfer(msg.sender, msg.value, 1);
}



}
