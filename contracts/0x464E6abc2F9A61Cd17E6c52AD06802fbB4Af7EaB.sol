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
array of uint256 stor11;
uint256 stor12;
uint32 stor14;

function _fallback() payable {
    stor3 = 0
    bool(stor9.length) = 0
    stor9.length.field_1 = 5
    stor9.length.field_8 = 'JTEST' / 256
    idx = 0
    while stor9.length + 31 / 32 > idx:
        stor9[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor10.length) = 0
    stor10.length.field_1 = 2
    stor10.length.field_8 = 'JT' / 256
    idx = 0
    while stor10.length + 31 / 32 > idx:
        stor10[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor11.length) = 0
    stor11.length.field_1 = 4
    stor11.length.field_8 = 'JT.0' / 256
    idx = 0
    while stor11.length + 31 / 32 > idx:
        stor11[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor12 = 0
    stor14 = 0
    require not msg.value
    stor7 = msg.sender
    stor8 = code.data[5182 len 20]
    stor0 = 15 * 10^6
    stor1[stor8] = 3 * 10^6
    emit code.data[5138 len 32]: 3 * 10^6, 0, code.data[5182 len 20]
    stor1[address(this.address)] = 12 * 10^6
    emit code.data[5138 len 32]: 12 * 10^6, 0, this.address
    stor6 = 12 * 10^6
    stor5 = 419591 * 3600
    return code.data[768 len 4370]
}



// =====================  Runtime code  =====================


const CROWDSALE_TOKENS = 12 * 10^6

const TOTAL_TOKENS = 15 * 10^6


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
array of uint256 version;
uint256 decimals;
mapping of uint256 ethBalanceOf;
uint8 fundingGoalReached;
uint8 crowdsaleClosed; offset 8
uint8 refundsOpen; offset 16

function creator() {
    return creatorAddress
}

function refundsOpen() {
    return bool(refundsOpen)
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

function version() {
    return version[0 len version.length]
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

function enableRefunds() {
    if block.timestamp >= startTime + 1800:
        require beneficiaryAddress == msg.sender
        refundsOpen = 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function checkGoalReached() {
    if block.timestamp >= startTime + 1800:
        if stor4 >= stor3:
            fundingGoalReached = 1
        crowdsaleClosed = 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
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

function safeWithdrawal() {
    if block.timestamp >= startTime + 1800:
        if refundsOpen:
            ethBalanceOf[address(msg.sender)] = 0
            if ethBalanceOf[address(msg.sender)] > 0:
                call msg.sender with:
                   value ethBalanceOf[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
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

function _fallback() payable {
    require block.timestamp >= startTime
    require block.timestamp <= startTime + 1800
    require not crowdsaleClosed
    require msg.value > 0
    require msg.value + ethBalanceOf[address(msg.sender)] >= ethBalanceOf[address(msg.sender)]
    ethBalanceOf[address(msg.sender)] += msg.value
    if block.timestamp > startTime + 1200:
        require (msg.value / 5 * 10^12) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += msg.value / 5 * 10^12
        require msg.value / 5 * 10^12 <= balanceOf[this.address]
        balanceOf[address(this.address)] = balanceOf[this.address] - (msg.value / 5 * 10^12)
        require msg.value + stor4 >= stor4
        stor4 += msg.value
        require msg.value / 5 * 10^12 <= tokenSupply
        tokenSupply -= msg.value / 5 * 10^12
        require balanceOf[address(msg.sender)] >= msg.value / 5 * 10^12
        balanceOf[address(msg.sender)] -= msg.value / 5 * 10^12
        balanceOf[msg.sender] += msg.value / 5 * 10^12
        emit Transfer((msg.value / 5 * 10^12), msg.sender, msg.sender);
    else:
        if block.timestamp > startTime + 900:
            require (msg.value / 4 * 10^12) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += msg.value / 4 * 10^12
            require msg.value / 4 * 10^12 <= balanceOf[this.address]
            balanceOf[address(this.address)] = balanceOf[this.address] - (msg.value / 4 * 10^12)
            require msg.value + stor4 >= stor4
            stor4 += msg.value
            require msg.value / 4 * 10^12 <= tokenSupply
            tokenSupply -= msg.value / 4 * 10^12
            require balanceOf[address(msg.sender)] >= msg.value / 4 * 10^12
            balanceOf[address(msg.sender)] -= msg.value / 4 * 10^12
            balanceOf[msg.sender] += msg.value / 4 * 10^12
            emit Transfer((msg.value / 4 * 10^12), msg.sender, msg.sender);
        else:
            if block.timestamp > startTime + 600:
                require (msg.value / 25 * 10^11) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += msg.value / 25 * 10^11
                require msg.value / 25 * 10^11 <= balanceOf[this.address]
                balanceOf[address(this.address)] = balanceOf[this.address] - (msg.value / 25 * 10^11)
                require msg.value + stor4 >= stor4
                stor4 += msg.value
                require msg.value / 25 * 10^11 <= tokenSupply
                tokenSupply -= msg.value / 25 * 10^11
                require balanceOf[address(msg.sender)] >= msg.value / 25 * 10^11
                balanceOf[address(msg.sender)] -= msg.value / 25 * 10^11
                balanceOf[msg.sender] += msg.value / 25 * 10^11
                emit Transfer((msg.value / 25 * 10^11), msg.sender, msg.sender);
            else:
                if block.timestamp <= startTime + 300:
                    require (msg.value / 16 * 10^11) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += msg.value / 16 * 10^11
                    require msg.value / 16 * 10^11 <= balanceOf[this.address]
                    balanceOf[address(this.address)] = balanceOf[this.address] - (msg.value / 16 * 10^11)
                    require msg.value + stor4 >= stor4
                    stor4 += msg.value
                    require msg.value / 16 * 10^11 <= tokenSupply
                    tokenSupply -= msg.value / 16 * 10^11
                    require balanceOf[address(msg.sender)] >= msg.value / 16 * 10^11
                    balanceOf[address(msg.sender)] -= msg.value / 16 * 10^11
                    balanceOf[msg.sender] += msg.value / 16 * 10^11
                    emit Transfer((msg.value / 16 * 10^11), msg.sender, msg.sender);
                else:
                    require (msg.value / 2 * 10^12) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += msg.value / 2 * 10^12
                    require msg.value / 2 * 10^12 <= balanceOf[this.address]
                    balanceOf[address(this.address)] = balanceOf[this.address] - (msg.value / 2 * 10^12)
                    require msg.value + stor4 >= stor4
                    stor4 += msg.value
                    require msg.value / 2 * 10^12 <= tokenSupply
                    tokenSupply -= msg.value / 2 * 10^12
                    require balanceOf[address(msg.sender)] >= msg.value / 2 * 10^12
                    balanceOf[address(msg.sender)] -= msg.value / 2 * 10^12
                    balanceOf[msg.sender] += msg.value / 2 * 10^12
                    emit Transfer((msg.value / 2 * 10^12), msg.sender, msg.sender);
}



}
