contract main {


// =======================  Init code  ======================


address stor4;
address stor5;
address stor6;
uint16 stor7; offset 160
address stor7;

function _fallback() payable {
    uint16(stor7.field_160) = 0
    require not msg.value
    stor4 = code.data[5443 len 20]
    stor5 = code.data[5475 len 20]
    stor6 = code.data[5507 len 20]
    address(stor7.field_0) = code.data[5539 len 20]
    return code.data[167 len 5264]
}



// =====================  Runtime code  =====================


const name = 'MOL token'

const sub_179bc9a3(?) = (3 * 3600)

const decimals = 6

const sub_32124953(?) = 1800

const symbol = 'MOL'

const sub_9aca4ed0(?) = 3600

const sub_c82faba6(?) = 3600

const sub_dfdb1872(?) = 3600

const PUBLIC_START_TIME = 1513870871

const FUTURE_DEVELOPMENT_FUND = 55 * 10^12

const INCENT_FUND_NON_VESTING = 3 * 10^12

const INCENT_FUND_VESTING = (7500 * 10^6 * 24 * 3600)

const SALE_FUND = 5 * 10^13

const TEAM_FUND = 15 * 10^12


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of struct tokenGrantsCount;
address openLedgerAddress;
address futureDevelopmentFundAddress;
address incentFundAddress;
uint8 stor7; offset 160
uint8 stor7; offset 168
address teamFundAddress;

function tokenGrantsCount(address arg1) {
    return tokenGrantsCount[address(arg1)].field_0
}

function totalSupply() {
    return totalSupply
}

function incentFundAddress() {
    return incentFundAddress
}

function grants(address arg1, uint256 arg2) {
    require arg2 < tokenGrantsCount[arg1].field_0
    return tokenGrantsCount[arg1][arg2].field_0, 
           tokenGrantsCount[arg1][arg2].field_256,
           tokenGrantsCount[arg1][arg2].field_256,
           tokenGrantsCount[arg1][arg2].field_384
}

function fundsTokensHaveBeenMinted() {
    return bool(uint8(stor7.field_168))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function teamFundAddress() {
    return teamFundAddress
}

function futureDevelopmentFundAddress() {
    return futureDevelopmentFundAddress
}

function saleTokensHaveBeenMinted() {
    return bool(uint8(stor7.field_160))
}

function openLedgerAddress() {
    return openLedgerAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function lastTokenIsTransferableDate(address arg1) {
    idx = 0
    while idx < tokenGrantsCount[address(arg1)].field_0:
        mem[32] = 3
        require idx < tokenGrantsCount[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 3)
        idx = idx + 1
        continue 
    return uint64(block.timestamp)
}

function mintSaleTokens(uint256 arg1) {
    require not uint8(stor7.field_160)
    require openLedgerAddress == msg.sender
    require arg1 <= 5 * 10^13
    uint8(stor7.field_160) = 1
    require arg1 + totalSupply >= totalSupply
    totalSupply += arg1
    require arg1 + balanceOf[stor4] >= balanceOf[stor4]
    balanceOf[stor4] += arg1
    emit Transfer(arg1, 0, openLedgerAddress);
}

function calculateVestedTokens(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    if arg2 < arg4:
        return 0
    if arg2 >= arg5:
        return arg1
    require arg3 <= arg2
    if not arg1:
        require arg3 <= arg5
        if arg5 - arg3:
            return ((arg2 * arg1) - (arg3 * arg1) / arg5 - arg3)
    else:
        if arg1:
            require (arg2 * arg1) - (arg3 * arg1) / arg1 == arg2 - arg3
            require arg3 <= arg5
            if arg5 - arg3:
                return ((arg2 * arg1) - (arg3 * arg1) / arg5 - arg3)
    revert
}

function tokenGrant(address arg1, uint256 arg2) {
    require arg2 < tokenGrantsCount[address(arg1)].field_0
    if uint64(block.timestamp) < tokenGrantsCount[address(arg1)][arg2].field_256:
        return tokenGrantsCount[address(arg1)][arg2].field_0, 
               0,
               tokenGrantsCount[address(arg1)][arg2].field_256,
               tokenGrantsCount[address(arg1)][arg2].field_256,
               tokenGrantsCount[address(arg1)][arg2].field_320
    if uint64(block.timestamp) >= tokenGrantsCount[address(arg1)][arg2].field_320:
        return tokenGrantsCount[address(arg1)][arg2].field_0, 
               tokenGrantsCount[address(arg1)][arg2].field_0,
               tokenGrantsCount[address(arg1)][arg2].field_256,
               tokenGrantsCount[address(arg1)][arg2].field_256,
               tokenGrantsCount[address(arg1)][arg2].field_320
    require tokenGrantsCount[address(arg1)][arg2].field_384 <= uint64(block.timestamp)
    if not tokenGrantsCount[address(arg1)][arg2].field_0:
        require tokenGrantsCount[address(arg1)][arg2].field_256 <= tokenGrantsCount[address(arg1)][arg2].field_320
        if tokenGrantsCount[address(arg1)][arg2].field_320 - tokenGrantsCount[address(arg1)][arg2].field_256:
            return tokenGrantsCount[address(arg1)][arg2].field_0, 
                   (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_0) - (tokenGrantsCount[address(arg1)][arg2].field_384 * tokenGrantsCount[address(arg1)][arg2].field_0) / tokenGrantsCount[address(arg1)][arg2].field_320 - tokenGrantsCount[address(arg1)][arg2].field_384,
                   tokenGrantsCount[address(arg1)][arg2].field_256,
                   tokenGrantsCount[address(arg1)][arg2].field_256,
                   tokenGrantsCount[address(arg1)][arg2].field_320
    else:
        if tokenGrantsCount[address(arg1)][arg2].field_0:
            require (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_0) - (tokenGrantsCount[address(arg1)][arg2].field_256 * tokenGrantsCount[address(arg1)][arg2].field_0) / tokenGrantsCount[address(arg1)][arg2].field_0 == uint64(block.timestamp) - tokenGrantsCount[address(arg1)][arg2].field_256
            require tokenGrantsCount[address(arg1)][arg2].field_256 <= tokenGrantsCount[address(arg1)][arg2].field_320
            if tokenGrantsCount[address(arg1)][arg2].field_320 - tokenGrantsCount[address(arg1)][arg2].field_256:
                return tokenGrantsCount[address(arg1)][arg2].field_0, 
                       (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_0) - (tokenGrantsCount[address(arg1)][arg2].field_384 * tokenGrantsCount[address(arg1)][arg2].field_0) / tokenGrantsCount[address(arg1)][arg2].field_320 - tokenGrantsCount[address(arg1)][arg2].field_384,
                       tokenGrantsCount[address(arg1)][arg2].field_256,
                       tokenGrantsCount[address(arg1)][arg2].field_256,
                       tokenGrantsCount[address(arg1)][arg2].field_320
    revert
}

function transferableTokens(address arg1, uint64 arg2) payable {
    mem[64] = 96
    require not msg.value
    if tokenGrantsCount[address(arg1)].field_0:
        idx = 0
        s = 0
        while idx < tokenGrantsCount[address(arg1)].field_0:
            mem[32] = 3
            require idx < tokenGrantsCount[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 3)
            _25 = mem[64]
            mem[64] = mem[64] + 128
            mem[_25] = tokenGrantsCount[address(arg1)][idx].field_0
            mem[_25 + 32] = tokenGrantsCount[address(arg1)][idx].field_256
            mem[_25 + 64] = tokenGrantsCount[address(arg1)][idx].field_320
            mem[_25 + 96] = tokenGrantsCount[address(arg1)][idx].field_384
            if arg2 < tokenGrantsCount[address(arg1)][idx].field_256:
                require 0 <= tokenGrantsCount[address(arg1)][idx].field_0
                require tokenGrantsCount[address(arg1)][idx].field_0 + s >= s
                idx = idx + 1
                s = tokenGrantsCount[address(arg1)][idx].field_0 + s
                continue 
            if arg2 >= tokenGrantsCount[address(arg1)][idx].field_320:
                require tokenGrantsCount[address(arg1)][idx].field_0 <= tokenGrantsCount[address(arg1)][idx].field_0
                require s >= s
                idx = idx + 1
                s = s
                continue 
            require tokenGrantsCount[address(arg1)][idx].field_384 <= arg2
            if tokenGrantsCount[address(arg1)][idx].field_0:
                require tokenGrantsCount[address(arg1)][idx].field_0
                require (arg2 * tokenGrantsCount[address(arg1)][idx].field_0) - (tokenGrantsCount[address(arg1)][idx].field_256 * tokenGrantsCount[address(arg1)][idx].field_0) / tokenGrantsCount[address(arg1)][idx].field_0 == arg2 - tokenGrantsCount[address(arg1)][idx].field_256
            require tokenGrantsCount[address(arg1)][idx].field_256 <= tokenGrantsCount[address(arg1)][idx].field_320
            require tokenGrantsCount[address(arg1)][idx].field_320 - tokenGrantsCount[address(arg1)][idx].field_256
            require (arg2 * tokenGrantsCount[address(arg1)][idx].field_0) - (tokenGrantsCount[address(arg1)][idx].field_256 * tokenGrantsCount[address(arg1)][idx].field_0) / tokenGrantsCount[address(arg1)][idx].field_256 - tokenGrantsCount[address(arg1)][idx].field_256 <= tokenGrantsCount[address(arg1)][idx].field_0
            require tokenGrantsCount[address(arg1)][idx].field_0 - ((arg2 * tokenGrantsCount[address(arg1)][idx].field_0) - (tokenGrantsCount[address(arg1)][idx].field_256 * tokenGrantsCount[address(arg1)][idx].field_0) / tokenGrantsCount[address(arg1)][idx].field_256 - tokenGrantsCount[address(arg1)][idx].field_256) + s >= s
            idx = idx + 1
            s = tokenGrantsCount[address(arg1)][idx].field_0 - ((arg2 * tokenGrantsCount[address(arg1)][idx].field_0) - (tokenGrantsCount[address(arg1)][idx].field_256 * tokenGrantsCount[address(arg1)][idx].field_0) / tokenGrantsCount[address(arg1)][idx].field_256 - tokenGrantsCount[address(arg1)][idx].field_256) + s
            continue 
        require s <= balanceOf[address(arg1)]
        if balanceOf[address(arg1)] - s < balanceOf[address(arg1)]:
            return (balanceOf[address(arg1)] - s)
    return balanceOf[address(arg1)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    mem[64] = 96
    require not msg.value
    if not tokenGrantsCount[address(arg1)].field_0:
        require arg3 <= balanceOf[address(arg1)]
    else:
        idx = 0
        s = 0
        while idx < tokenGrantsCount[address(arg1)].field_0:
            mem[32] = 3
            require idx < tokenGrantsCount[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 3)
            _49 = mem[64]
            mem[64] = mem[64] + 128
            mem[_49] = tokenGrantsCount[address(arg1)][idx].field_0
            mem[_49 + 32] = tokenGrantsCount[address(arg1)][idx].field_256
            mem[_49 + 64] = tokenGrantsCount[address(arg1)][idx].field_320
            mem[_49 + 96] = tokenGrantsCount[address(arg1)][idx].field_384
            if uint64(block.timestamp) < tokenGrantsCount[address(arg1)][idx].field_256:
                require 0 <= tokenGrantsCount[address(arg1)][idx].field_0
                require tokenGrantsCount[address(arg1)][idx].field_0 + s >= s
                idx = idx + 1
                s = tokenGrantsCount[address(arg1)][idx].field_0 + s
                continue 
            if uint64(block.timestamp) >= tokenGrantsCount[address(arg1)][idx].field_320:
                require tokenGrantsCount[address(arg1)][idx].field_0 <= tokenGrantsCount[address(arg1)][idx].field_0
                require s >= s
                idx = idx + 1
                s = s
                continue 
            require tokenGrantsCount[address(arg1)][idx].field_384 <= uint64(block.timestamp)
            if tokenGrantsCount[address(arg1)][idx].field_0:
                require tokenGrantsCount[address(arg1)][idx].field_0
                require (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_0) - (tokenGrantsCount[address(arg1)][idx].field_256 * tokenGrantsCount[address(arg1)][idx].field_0) / tokenGrantsCount[address(arg1)][idx].field_0 == uint64(block.timestamp) - tokenGrantsCount[address(arg1)][idx].field_256
            require tokenGrantsCount[address(arg1)][idx].field_256 <= tokenGrantsCount[address(arg1)][idx].field_320
            require tokenGrantsCount[address(arg1)][idx].field_320 - tokenGrantsCount[address(arg1)][idx].field_256
            require (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_0) - (tokenGrantsCount[address(arg1)][idx].field_256 * tokenGrantsCount[address(arg1)][idx].field_0) / tokenGrantsCount[address(arg1)][idx].field_256 - tokenGrantsCount[address(arg1)][idx].field_256 <= tokenGrantsCount[address(arg1)][idx].field_0
            require tokenGrantsCount[address(arg1)][idx].field_0 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_0) - (tokenGrantsCount[address(arg1)][idx].field_256 * tokenGrantsCount[address(arg1)][idx].field_0) / tokenGrantsCount[address(arg1)][idx].field_256 - tokenGrantsCount[address(arg1)][idx].field_256) + s >= s
            idx = idx + 1
            s = tokenGrantsCount[address(arg1)][idx].field_0 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_0) - (tokenGrantsCount[address(arg1)][idx].field_256 * tokenGrantsCount[address(arg1)][idx].field_0) / tokenGrantsCount[address(arg1)][idx].field_256 - tokenGrantsCount[address(arg1)][idx].field_256) + s
            continue 
        require s <= balanceOf[address(arg1)]
        if balanceOf[address(arg1)] - s < balanceOf[address(arg1)]:
            require arg3 <= balanceOf[address(arg1)] - s
        else:
            require arg3 <= balanceOf[address(arg1)]
    require calldata.size >= 100
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function mintFundsTokens() {
    require not uint8(stor7.field_168)
    uint8(stor7.field_168) = 1
    tokenGrantsCount[stor5].field_0++
    if not tokenGrantsCount[stor5].field_0 <= tokenGrantsCount[stor5].field_0 + 1:
        idx = 2 * tokenGrantsCount[stor5].field_0 + 1
        while 2 * tokenGrantsCount[stor5].field_0 > idx:
            tokenGrantsCount[stor5][idx].field_0 = 0
            tokenGrantsCount[stor5][idx].field_256 = 0
            idx = idx + 2
            continue 
    tokenGrantsCount[stor5][tokenGrantsCount[stor5].field_0].field_0 = 55 * 10^12
    tokenGrantsCount[stor5][tokenGrantsCount[stor5].field_0].field_256 = 1513872671
    tokenGrantsCount[stor5][tokenGrantsCount[stor5].field_0].field_288 = 0
    tokenGrantsCount[stor5][tokenGrantsCount[stor5].field_0].field_320 = 1513881671
    tokenGrantsCount[stor5][tokenGrantsCount[stor5].field_0].field_352 = 0
    tokenGrantsCount[stor5][tokenGrantsCount[stor5].field_0].field_384 = 1513870871
    tokenGrantsCount[stor5][tokenGrantsCount[stor5].field_0].field_416 = 0
    require totalSupply + 55 * 10^12 >= totalSupply
    totalSupply += 55 * 10^12
    require balanceOf[stor5] + 55 * 10^12 >= balanceOf[stor5]
    balanceOf[stor5] += 55 * 10^12
    emit Transfer(55 * 10^12, 0, futureDevelopmentFundAddress);
    tokenGrantsCount[stor6].field_0++
    if not tokenGrantsCount[stor6].field_0 <= tokenGrantsCount[stor6].field_0 + 1:
        idx = 2 * tokenGrantsCount[stor6].field_0 + 1
        while 2 * tokenGrantsCount[stor6].field_0 > idx:
            tokenGrantsCount[stor6][idx].field_0 = 0
            tokenGrantsCount[stor6][idx].field_256 = 0
            idx = idx + 2
            continue 
    tokenGrantsCount[stor6][tokenGrantsCount[stor6].field_0].field_0 = 7500 * 10^6 * 24 * 3600
    tokenGrantsCount[stor6][tokenGrantsCount[stor6].field_0].field_256 = 1513870871
    tokenGrantsCount[stor6][tokenGrantsCount[stor6].field_0].field_288 = 0
    tokenGrantsCount[stor6][tokenGrantsCount[stor6].field_0].field_320 = 1513874471
    tokenGrantsCount[stor6][tokenGrantsCount[stor6].field_0].field_352 = 0
    tokenGrantsCount[stor6][tokenGrantsCount[stor6].field_0].field_384 = 1513870871
    tokenGrantsCount[stor6][tokenGrantsCount[stor6].field_0].field_416 = 0
    require totalSupply + 3 * 10^13 >= totalSupply
    totalSupply += 3 * 10^13
    require balanceOf[stor6] + 3 * 10^13 >= balanceOf[stor6]
    balanceOf[stor6] += 3 * 10^13
    emit Transfer(3 * 10^13, 0, incentFundAddress);
    tokenGrantsCount[address(stor7.field_0)].field_0++
    if not tokenGrantsCount[address(stor7.field_0)].field_0 <= tokenGrantsCount[address(stor7.field_0)].field_0 + 1:
        idx = 2 * tokenGrantsCount[address(stor7.field_0)].field_0 + 1
        while 2 * tokenGrantsCount[address(stor7.field_0)].field_0 > idx:
            tokenGrantsCount[address(stor7.field_0)][idx].field_0 = 0
            tokenGrantsCount[address(stor7.field_0)][idx].field_256 = 0
            idx = idx + 2
            continue 
    tokenGrantsCount[address(stor7.field_0)][tokenGrantsCount[address(stor7.field_0)].field_0].field_0 = 15 * 10^12
    tokenGrantsCount[address(stor7.field_0)][tokenGrantsCount[address(stor7.field_0)].field_0].field_256 = 1513874471
    tokenGrantsCount[address(stor7.field_0)][tokenGrantsCount[address(stor7.field_0)].field_0].field_288 = 0
    tokenGrantsCount[address(stor7.field_0)][tokenGrantsCount[address(stor7.field_0)].field_0].field_320 = 1513874471
    tokenGrantsCount[address(stor7.field_0)][tokenGrantsCount[address(stor7.field_0)].field_0].field_352 = 0
    tokenGrantsCount[address(stor7.field_0)][tokenGrantsCount[address(stor7.field_0)].field_0].field_384 = 1513870871
    tokenGrantsCount[address(stor7.field_0)][tokenGrantsCount[address(stor7.field_0)].field_0].field_416 = 0
    require totalSupply + 15 * 10^12 >= totalSupply
    totalSupply += 15 * 10^12
    require balanceOf[address(stor7.field_0)] + 15 * 10^12 >= balanceOf[address(stor7.field_0)]
    balanceOf[address(stor7.field_0)] += 15 * 10^12
    emit Transfer(15 * 10^12, 0, teamFundAddress);
}

function transfer(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    if not tokenGrantsCount[address(msg.sender)].field_0:
        require arg2 <= balanceOf[address(msg.sender)]
    else:
        idx = 0
        s = 0
        while idx < tokenGrantsCount[address(msg.sender)].field_0:
            mem[32] = 3
            require idx < tokenGrantsCount[address(msg.sender)].field_0
            mem[0] = sha3(address(msg.sender), 3)
            _37 = mem[64]
            mem[64] = mem[64] + 128
            mem[_37] = tokenGrantsCount[address(msg.sender)][idx].field_0
            mem[_37 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
            mem[_37 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_320
            mem[_37 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_384
            if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_256:
                require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_0
                require tokenGrantsCount[address(msg.sender)][idx].field_0 + s >= s
                idx = idx + 1
                s = tokenGrantsCount[address(msg.sender)][idx].field_0 + s
                continue 
            if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_320:
                require tokenGrantsCount[address(msg.sender)][idx].field_0 <= tokenGrantsCount[address(msg.sender)][idx].field_0
                require s >= s
                idx = idx + 1
                s = s
                continue 
            require tokenGrantsCount[address(msg.sender)][idx].field_384 <= uint64(block.timestamp)
            if tokenGrantsCount[address(msg.sender)][idx].field_0:
                require tokenGrantsCount[address(msg.sender)][idx].field_0
                require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_0) - (tokenGrantsCount[address(msg.sender)][idx].field_256 * tokenGrantsCount[address(msg.sender)][idx].field_0) / tokenGrantsCount[address(msg.sender)][idx].field_0 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_256
            require tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_320
            require tokenGrantsCount[address(msg.sender)][idx].field_320 - tokenGrantsCount[address(msg.sender)][idx].field_256
            require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_0) - (tokenGrantsCount[address(msg.sender)][idx].field_256 * tokenGrantsCount[address(msg.sender)][idx].field_0) / tokenGrantsCount[address(msg.sender)][idx].field_256 - tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_0
            require tokenGrantsCount[address(msg.sender)][idx].field_0 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_0) - (tokenGrantsCount[address(msg.sender)][idx].field_256 * tokenGrantsCount[address(msg.sender)][idx].field_0) / tokenGrantsCount[address(msg.sender)][idx].field_256 - tokenGrantsCount[address(msg.sender)][idx].field_256) + s >= s
            idx = idx + 1
            s = tokenGrantsCount[address(msg.sender)][idx].field_0 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_0) - (tokenGrantsCount[address(msg.sender)][idx].field_256 * tokenGrantsCount[address(msg.sender)][idx].field_0) / tokenGrantsCount[address(msg.sender)][idx].field_256 - tokenGrantsCount[address(msg.sender)][idx].field_256) + s
            continue 
        require s <= balanceOf[address(msg.sender)]
        if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
            require arg2 <= balanceOf[address(msg.sender)] - s
        else:
            require arg2 <= balanceOf[address(msg.sender)]
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}



}
