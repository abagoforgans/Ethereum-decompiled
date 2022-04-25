contract main {


// =======================  Init code  ======================


address stor3;
address stor4;
address stor5;
address stor6;
address stor7;
uint128 stor10; offset 160
uint256 stor11;

function _fallback() payable {
    stor10 = 0
    stor11 = 0
    require not msg.value
    stor3 = msg.sender
    stor4 = 0x9cb0016511fb93eac7bc585a2bc2f0c34decea15
    stor5 = 0xdda7003998244f6161a5bbaf0f4ed5a40e908b51
    stor6 = 0x9186b48db83e63adedab43c19345f39c83928e3f
    stor7 = 0x31a633c4ee2c317de2c65beb00593eadd9f172d6
    return code.data[526 len 12991]
}



// =====================  Runtime code  =====================


const name = 'IUNGO token'

const decimals = 18

const symbol = 'ING'

const saleDue = (1517443199 < uint64(block.timestamp))

const HARD_CAP = 100000000 * 10^18

const BASE_RATE = 1000

const TOKENS_SALE_HARD_CAP = 64000000 * 10^18


uint256 totalSupply;
mapping of uint256 balances;
mapping of uint256 allowance;
address owner;
address foundersFundAddress;
address teamFundAddress;
address reserveFundAddress;
address fundsTreasuryAddress;
address foundersFundTimelock1Address;
address foundersFundTimelock2Address;
uint8 tokenSaleClosed; offset 160
uint128 stor10; offset 160
address foundersFundTimelock3Address;
uint256 issueIndex;

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function fundsTreasury() {
    return fundsTreasuryAddress
}

function foundersFundTimelock1Address() {
    return foundersFundTimelock1Address
}

function reserveFundAddress() {
    return reserveFundAddress
}

function foundersFundTimelock3Address() {
    return foundersFundTimelock3Address
}

function issueIndex() {
    return issueIndex
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function teamFundAddress() {
    return teamFundAddress
}

function owner() {
    return owner
}

function foundersFundAddress() {
    return foundersFundAddress
}

function foundersFundTimelock2Address() {
    return foundersFundTimelock2Address
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function tokenSaleClosed() {
    return bool(tokenSaleClosed)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function price() {
    require uint64(block.timestamp) <= 1517443199
    if uint64(block.timestamp) > 421262 * 3600:
        return 1000 * 10^18
    if uint64(block.timestamp) > 421046 * 3600:
        return 1150 * 10^18
    if uint64(block.timestamp) <= 420518 * 3600:
        return 1500 * 10^18
    return (375 * 10^15 * 24 * 3600)
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require 1517443199 < uint64(block.timestamp)
    require arg1
    require arg2 <= balances[address(msg.sender)]
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function issueTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require totalSupply < 64000000 * 10^18
    require not tokenSaleClosed
    require 1517443199 >= uint64(block.timestamp)
    require arg1
    require totalSupply + arg2 >= totalSupply
    require totalSupply + arg2 <= 64000000 * 10^18
    totalSupply += arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    issueIndex++
    emit Issue(issueIndex, address(arg1), arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require 1517443199 < uint64(block.timestamp)
    require arg2
    require arg3 <= balances[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function issueTokensMulti(address[] arg1, uint256[] arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require totalSupply < 64000000 * 10^18
    require not tokenSaleClosed
    require 1517443199 >= uint64(block.timestamp)
    require arg1.length == arg2.length
    require arg1.length <= 100
    idx = 0
    while idx < arg2.length:
        require idx < mem[96]
        _17 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _19 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require mem[(32 * idx) + 140 len 20]
        require totalSupply + mem[(32 * idx) + (32 * arg1.length) + 160] >= totalSupply
        require totalSupply + mem[(32 * idx) + (32 * arg1.length) + 160] <= 64000000 * 10^18
        totalSupply += mem[(32 * idx) + (32 * arg1.length) + 160]
        require balances[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balances[mem[(32 * idx) + 140 len 20]]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        balances[address(mem[(32 * idx) + 128])] = balances[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + 160]
        issueIndex++
        mem[mem[64]] = issueIndex
        mem[mem[64] + 32] = address(_17)
        mem[mem[64] + 64] = _19
        emit Issue(issueIndex, address(_17), _19);
        require idx + 1 >= idx
        idx = idx + 1
        continue 
}

function purchaseTokens(address arg1) payable {
    require totalSupply < 64000000 * 10^18
    require not tokenSaleClosed
    require 1517443199 >= uint64(block.timestamp)
    require msg.value >= 10^16
    require uint64(block.timestamp) <= 1517443199
    if msg.value:
        require msg.value
        require 1000 * msg.value / msg.value == 1000
    if uint64(block.timestamp) > 421262 * 3600:
        if 1000 * msg.value:
            require 1000 * msg.value
            require not 0 / 1000 * msg.value
        require 1000 * msg.value >= 1000 * msg.value
        require arg1
        require totalSupply + (1000 * msg.value) >= totalSupply
        require totalSupply + (1000 * msg.value) <= 64000000 * 10^18
        totalSupply += 1000 * msg.value
        require balances[address(arg1)] + (1000 * msg.value) >= balances[address(arg1)]
        balances[address(arg1)] += 1000 * msg.value
        issueIndex++
        emit Issue(issueIndex, address(arg1), 1000 * msg.value);
    else:
        if uint64(block.timestamp) > 421046 * 3600:
            if 1000 * msg.value:
                require 1000 * msg.value
                require 15000 * msg.value / 1000 * msg.value == 15
            require (1000 * msg.value) + (15000 * msg.value / 100) >= 1000 * msg.value
            require arg1
            require totalSupply + (1000 * msg.value) + (15000 * msg.value / 100) >= totalSupply
            require totalSupply + (1000 * msg.value) + (15000 * msg.value / 100) <= 64000000 * 10^18
            totalSupply = totalSupply + (1000 * msg.value) + (15000 * msg.value / 100)
            require balances[address(arg1)] + (1000 * msg.value) + (15000 * msg.value / 100) >= balances[address(arg1)]
            balances[address(arg1)] = balances[address(arg1)] + (1000 * msg.value) + (15000 * msg.value / 100)
            issueIndex++
            emit Issue(issueIndex, address(arg1), (1000 * msg.value) + (15000 * msg.value / 100));
        else:
            if uint64(block.timestamp) <= 420518 * 3600:
                if 1000 * msg.value:
                    require 1000 * msg.value
                    require 50000 * msg.value / 1000 * msg.value == 50
                require (1000 * msg.value) + (50000 * msg.value / 100) >= 1000 * msg.value
                require arg1
                require totalSupply + (1000 * msg.value) + (50000 * msg.value / 100) >= totalSupply
                require totalSupply + (1000 * msg.value) + (50000 * msg.value / 100) <= 64000000 * 10^18
                totalSupply = totalSupply + (1000 * msg.value) + (50000 * msg.value / 100)
                require balances[address(arg1)] + (1000 * msg.value) + (50000 * msg.value / 100) >= balances[address(arg1)]
                balances[address(arg1)] = balances[address(arg1)] + (1000 * msg.value) + (50000 * msg.value / 100)
                issueIndex++
                emit Issue(issueIndex, address(arg1), (1000 * msg.value) + (50000 * msg.value / 100));
            else:
                if 1000 * msg.value:
                    require 1000 * msg.value
                    require 35000 * msg.value / 1000 * msg.value == 35
                require (1000 * msg.value) + (35000 * msg.value / 100) >= 1000 * msg.value
                require arg1
                require totalSupply + (1000 * msg.value) + (35000 * msg.value / 100) >= totalSupply
                require totalSupply + (1000 * msg.value) + (35000 * msg.value / 100) <= 64000000 * 10^18
                totalSupply = totalSupply + (1000 * msg.value) + (35000 * msg.value / 100)
                require balances[address(arg1)] + (1000 * msg.value) + (35000 * msg.value / 100) >= balances[address(arg1)]
                balances[address(arg1)] = balances[address(arg1)] + (1000 * msg.value) + (35000 * msg.value / 100)
                issueIndex++
                emit Issue(issueIndex, address(arg1), (1000 * msg.value) + (35000 * msg.value / 100));
    call fundsTreasuryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require totalSupply < 64000000 * 10^18
    require not tokenSaleClosed
    require 1517443199 >= uint64(block.timestamp)
    require msg.value >= 10^16
    require uint64(block.timestamp) <= 1517443199
    if msg.value:
        require msg.value
        require 1000 * msg.value / msg.value == 1000
    if uint64(block.timestamp) > 421262 * 3600:
        if 1000 * msg.value:
            require 1000 * msg.value
            require not 0 / 1000 * msg.value
        require 1000 * msg.value >= 1000 * msg.value
        require msg.sender
        require totalSupply + (1000 * msg.value) >= totalSupply
        require totalSupply + (1000 * msg.value) <= 64000000 * 10^18
        totalSupply += 1000 * msg.value
        require balances[address(msg.sender)] + (1000 * msg.value) >= balances[address(msg.sender)]
        balances[address(msg.sender)] += 1000 * msg.value
        issueIndex++
        emit Issue(issueIndex, msg.sender, 1000 * msg.value);
    else:
        if uint64(block.timestamp) > 421046 * 3600:
            if 1000 * msg.value:
                require 1000 * msg.value
                require 15000 * msg.value / 1000 * msg.value == 15
            require (1000 * msg.value) + (15000 * msg.value / 100) >= 1000 * msg.value
            require msg.sender
            require totalSupply + (1000 * msg.value) + (15000 * msg.value / 100) >= totalSupply
            require totalSupply + (1000 * msg.value) + (15000 * msg.value / 100) <= 64000000 * 10^18
            totalSupply = totalSupply + (1000 * msg.value) + (15000 * msg.value / 100)
            require balances[address(msg.sender)] + (1000 * msg.value) + (15000 * msg.value / 100) >= balances[address(msg.sender)]
            balances[address(msg.sender)] = balances[address(msg.sender)] + (1000 * msg.value) + (15000 * msg.value / 100)
            issueIndex++
            emit Issue(issueIndex, msg.sender, (1000 * msg.value) + (15000 * msg.value / 100));
        else:
            if uint64(block.timestamp) <= 420518 * 3600:
                if 1000 * msg.value:
                    require 1000 * msg.value
                    require 50000 * msg.value / 1000 * msg.value == 50
                require (1000 * msg.value) + (50000 * msg.value / 100) >= 1000 * msg.value
                require msg.sender
                require totalSupply + (1000 * msg.value) + (50000 * msg.value / 100) >= totalSupply
                require totalSupply + (1000 * msg.value) + (50000 * msg.value / 100) <= 64000000 * 10^18
                totalSupply = totalSupply + (1000 * msg.value) + (50000 * msg.value / 100)
                require balances[address(msg.sender)] + (1000 * msg.value) + (50000 * msg.value / 100) >= balances[address(msg.sender)]
                balances[address(msg.sender)] = balances[address(msg.sender)] + (1000 * msg.value) + (50000 * msg.value / 100)
                issueIndex++
                emit Issue(issueIndex, msg.sender, (1000 * msg.value) + (50000 * msg.value / 100));
            else:
                if 1000 * msg.value:
                    require 1000 * msg.value
                    require 35000 * msg.value / 1000 * msg.value == 35
                require (1000 * msg.value) + (35000 * msg.value / 100) >= 1000 * msg.value
                require msg.sender
                require totalSupply + (1000 * msg.value) + (35000 * msg.value / 100) >= totalSupply
                require totalSupply + (1000 * msg.value) + (35000 * msg.value / 100) <= 64000000 * 10^18
                totalSupply = totalSupply + (1000 * msg.value) + (35000 * msg.value / 100)
                require balances[address(msg.sender)] + (1000 * msg.value) + (35000 * msg.value / 100) >= balances[address(msg.sender)]
                balances[address(msg.sender)] = balances[address(msg.sender)] + (1000 * msg.value) + (35000 * msg.value / 100)
                issueIndex++
                emit Issue(issueIndex, msg.sender, (1000 * msg.value) + (35000 * msg.value / 100));
    call fundsTreasuryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function close() {
    require msg.sender == owner
    require not tokenSaleClosed
    if totalSupply:
        require totalSupply
        require 5625 * totalSupply / totalSupply == 5625
    require totalSupply + (5625 * totalSupply / 10000) >= totalSupply
    if totalSupply + (5625 * totalSupply / 10000):
        require totalSupply + (5625 * totalSupply / 10000)
        require (12 * totalSupply) + (12 * 5625 * totalSupply / 10000) / totalSupply + (5625 * totalSupply / 10000) == 12
    require balances[stor6] + ((12 * totalSupply) + (12 * 5625 * totalSupply / 10000) / 100) >= balances[stor6]
    balances[stor6] += (12 * totalSupply) + (12 * 5625 * totalSupply / 10000) / 100
    require totalSupply + ((12 * totalSupply) + (12 * 5625 * totalSupply / 10000) / 100) >= totalSupply
    totalSupply += (12 * totalSupply) + (12 * 5625 * totalSupply / 10000) / 100
    issueIndex++
    emit Issue(issueIndex, reserveFundAddress, (12 * totalSupply) + (12 * 5625 * totalSupply / 10000) / 100);
    if totalSupply + (5625 * totalSupply / 10000):
        require totalSupply + (5625 * totalSupply / 10000)
        require (12 * totalSupply) + (12 * 5625 * totalSupply / 10000) / totalSupply + (5625 * totalSupply / 10000) == 12
    require balances[stor5] + ((12 * totalSupply) + (12 * 5625 * totalSupply / 10000) / 100) >= balances[stor5]
    balances[stor5] += (12 * totalSupply) + (12 * 5625 * totalSupply / 10000) / 100
    require totalSupply + ((12 * totalSupply) + (12 * 5625 * totalSupply / 10000) / 100) >= totalSupply
    totalSupply += (12 * totalSupply) + (12 * 5625 * totalSupply / 10000) / 100
    issueIndex++
    emit Issue(issueIndex, teamFundAddress, (12 * totalSupply) + (12 * 5625 * totalSupply / 10000) / 100);
    create contract with 0 wei
                    code: code.data[11542 len 1406], address(this.address), foundersFundAddress, uint64(block.timestamp + (4392 * 24 * 3600))
    require create.new_address
    foundersFundTimelock1Address = address(create.new_address)
    if totalSupply + (5625 * totalSupply / 10000):
        require totalSupply + (5625 * totalSupply / 10000)
        require 4 * totalSupply + (5625 * totalSupply / 10000) / totalSupply + (5625 * totalSupply / 10000) == 4
    require balances[stor8] + (4 * totalSupply + (5625 * totalSupply / 10000) / 100) >= balances[stor8]
    balances[stor8] += 4 * totalSupply + (5625 * totalSupply / 10000) / 100
    require totalSupply + (4 * totalSupply + (5625 * totalSupply / 10000) / 100) >= totalSupply
    totalSupply += 4 * totalSupply + (5625 * totalSupply / 10000) / 100
    issueIndex++
    emit Issue(issueIndex, foundersFundTimelock1Address, 4 * totalSupply + (5625 * totalSupply / 10000) / 100);
    create contract with 0 wei
                    code: code.data[11542 len 1406], address(this.address), foundersFundAddress, uint64(block.timestamp + (8760 * 24 * 3600))
    require create.new_address
    foundersFundTimelock2Address = address(create.new_address)
    if totalSupply + (5625 * totalSupply / 10000):
        require totalSupply + (5625 * totalSupply / 10000)
        require 4 * totalSupply + (5625 * totalSupply / 10000) / totalSupply + (5625 * totalSupply / 10000) == 4
    require balances[stor9] + (4 * totalSupply + (5625 * totalSupply / 10000) / 100) >= balances[stor9]
    balances[stor9] += 4 * totalSupply + (5625 * totalSupply / 10000) / 100
    require totalSupply + (4 * totalSupply + (5625 * totalSupply / 10000) / 100) >= totalSupply
    totalSupply += 4 * totalSupply + (5625 * totalSupply / 10000) / 100
    issueIndex++
    emit Issue(issueIndex, foundersFundTimelock2Address, 4 * totalSupply + (5625 * totalSupply / 10000) / 100);
    create contract with 0 wei
                    code: code.data[11542 len 1406], address(this.address), foundersFundAddress, uint64(block.timestamp + (13152 * 24 * 3600))
    require create.new_address
    foundersFundTimelock3Address = address(create.new_address)
    if totalSupply + (5625 * totalSupply / 10000):
        require totalSupply + (5625 * totalSupply / 10000)
        require 4 * totalSupply + (5625 * totalSupply / 10000) / totalSupply + (5625 * totalSupply / 10000) == 4
    require balances[address(stor10.field_0)] + (4 * totalSupply + (5625 * totalSupply / 10000) / 100) >= balances[address(stor10.field_0)]
    balances[address(stor10.field_0)] += 4 * totalSupply + (5625 * totalSupply / 10000) / 100
    require totalSupply + (4 * totalSupply + (5625 * totalSupply / 10000) / 100) >= totalSupply
    totalSupply += 4 * totalSupply + (5625 * totalSupply / 10000) / 100
    issueIndex++
    emit Issue(issueIndex, foundersFundTimelock3Address, 4 * totalSupply + (5625 * totalSupply / 10000) / 100);
    Mask(96, 0, stor10.field_160) = 1
    call fundsTreasuryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
