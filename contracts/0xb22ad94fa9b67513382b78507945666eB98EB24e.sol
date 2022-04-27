contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
uint256 stor3;
array of uint256 stor5;
array of uint256 stor6;
uint256 stor7;
address stor8;
address stor9;
address stor10;
address stor11;
uint256 stor12;
uint256 stor15;
uint256 stor16;

function _fallback() payable {
    stor3 = 20
    bool(stor5.length) = 0
    stor5.length.field_1 = 9
    stor5.length.field_8 = 'XferMoney' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor6.length) = 0
    stor6.length.field_1 = 3
    stor6.length.field_8 = 'XFM' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor7 = 4
    stor8 = 0x749bd34c771456a8de28aa0883b00d11273e2ede
    stor9 = 0xc179fcbdeef2da2a61ed9b1817942d72b0a46c8a
    stor10 = 0x9eed63b353af69cfbdc0e15a1b037429f0780d1c
    stor12 = 1522540799
    stor15 = 25000 * 10^18
    stor16 = 25 * 10^11
    require not msg.value
    stor11 = msg.sender
    stor1[stor9] += 625 * 10^9
    stor1[stor10] += 125 * 10^9
    stor1[stor11] += 175 * 10^10
    return code.data[599 len 7515]
}



// =====================  Runtime code  =====================


const publicStartTime = block.timestamp

const _initialSupply = 25 * 10^11

const CROWDSALE_START = 1518652801

const PRESALE_START_WEEK1 = 1516406401

const PRESALE_START_WEEK2 = 1517011201

const PRICE_PRESALE_WEEK2 = 94400000

const PRICE_PRESALE_WEEK1 = 100 * 10^6

const PRICE_PRESALE_START = 112 * 10^6

const PRICE_PRESALE_WEEK3 = 88 * 10^6

const ALLOC_MARKETING = 125 * 10^9

const ALLOC_CROWDSALE = 175 * 10^10

const PRICE_CROWDSALE = 80 * 10^6

const PRESALE_START_WEEK3 = 1517616001

const ALLOC_TEAM = 625 * 10^9


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 stor3;
array of struct tokenGrantsCount;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
address multisigAddress;
address xferMoneyTeamAddress;
address xferMoneyMarketingAddress;
address ownerAddress;
uint256 publicEndTime;
uint256 etherRaised;
uint256 xFMSold;
uint256 hardcapInEth;
uint256 totalSupply;
uint8 halted;

function tokenGrantsCount(address arg1) {
    return tokenGrantsCount[address(arg1)].field_0
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function publicEndTime() {
    return publicEndTime
}

function grants(address arg1, uint256 arg2) {
    require arg2 < tokenGrantsCount[arg1].field_0
    return tokenGrantsCount[arg1][arg2].field_0, 
           tokenGrantsCount[arg1][arg2].field_256,
           tokenGrantsCount[arg1][arg2].field_512,
           tokenGrantsCount[arg1][arg2].field_512,
           tokenGrantsCount[arg1][arg2].field_640,
           bool(tokenGrantsCount[arg1][arg2].field_704),
           bool(tokenGrantsCount[arg1][arg2].field_712)
}

function decimals() {
    return decimals
}

function XFMSold() {
    return xFMSold
}

function multisigAddress() {
    return multisigAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function ownerAddress() {
    return ownerAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function hardcapInEth() {
    return hardcapInEth
}

function halted() {
    return bool(halted)
}

function XferMoneyMarketing() {
    return xferMoneyMarketingAddress
}

function XferMoneyTeamAddress() {
    return xferMoneyTeamAddress
}

function etherRaised() {
    return etherRaised
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function toggleHalt(bool arg1) {
    require ownerAddress == msg.sender
    halted = uint8(arg1)
}

function calcAmount(uint256 arg1, uint256 arg2) {
    if arg1:
        require arg1
        require arg2 * arg1 / arg1 == arg2
    return (arg2 * arg1 / 10^18)
}

function drain() {
    require ownerAddress == msg.sender
    call ownerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function getPriceRate() {
    if block.timestamp < 1516406401:
        return 112 * 10^6
    if block.timestamp < 1517011201:
        return 100 * 10^6
    if block.timestamp < 1517616001:
        return 94400000
    if block.timestamp >= 1518652801:
        return 80 * 10^6
    return 88 * 10^6
}

function lastTokenIsTransferableDate(address arg1) {
    idx = 0
    while idx < tokenGrantsCount[address(arg1)].field_0:
        mem[32] = 4
        require idx < tokenGrantsCount[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 4)
        idx = idx + 1
        continue 
    return uint64(block.timestamp)
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

function transferableTokens(address arg1, uint64 arg2) payable {
    mem[64] = 96
    require not msg.value
    if tokenGrantsCount[address(arg1)].field_0:
        idx = 0
        s = 0
        while idx < tokenGrantsCount[address(arg1)].field_0:
            mem[32] = 4
            require idx < tokenGrantsCount[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 4)
            _25 = mem[64]
            mem[64] = mem[64] + 224
            mem[_25] = tokenGrantsCount[address(arg1)][idx].field_0
            mem[_25 + 32] = tokenGrantsCount[address(arg1)][idx].field_256
            mem[_25 + 64] = tokenGrantsCount[address(arg1)][idx].field_512
            mem[_25 + 96] = tokenGrantsCount[address(arg1)][idx].field_576
            mem[_25 + 128] = tokenGrantsCount[address(arg1)][idx].field_640
            mem[_25 + 160] = bool(tokenGrantsCount[address(arg1)][idx].field_704)
            mem[_25 + 192] = bool(tokenGrantsCount[address(arg1)][idx].field_712)
            if arg2 < tokenGrantsCount[address(arg1)][idx].field_512:
                require 0 <= tokenGrantsCount[address(arg1)][idx].field_256
                require tokenGrantsCount[address(arg1)][idx].field_256 + s >= s
                idx = idx + 1
                s = tokenGrantsCount[address(arg1)][idx].field_256 + s
                continue 
            if arg2 >= tokenGrantsCount[address(arg1)][idx].field_576:
                require tokenGrantsCount[address(arg1)][idx].field_256 <= tokenGrantsCount[address(arg1)][idx].field_256
                require s >= s
                idx = idx + 1
                s = s
                continue 
            require tokenGrantsCount[address(arg1)][idx].field_640 <= arg2
            if tokenGrantsCount[address(arg1)][idx].field_256:
                require tokenGrantsCount[address(arg1)][idx].field_256
                require (arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_256 == arg2 - tokenGrantsCount[address(arg1)][idx].field_512
            require tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_576
            require tokenGrantsCount[address(arg1)][idx].field_576 - tokenGrantsCount[address(arg1)][idx].field_512
            require (arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_256
            require tokenGrantsCount[address(arg1)][idx].field_256 - ((arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s >= s
            idx = idx + 1
            s = tokenGrantsCount[address(arg1)][idx].field_256 - ((arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s
            continue 
        require s <= balanceOf[address(arg1)]
        if balanceOf[address(arg1)] - s < balanceOf[address(arg1)]:
            return (balanceOf[address(arg1)] - s)
    return balanceOf[address(arg1)]
}

function tokenGrant(address arg1, uint256 arg2) {
    require arg2 < tokenGrantsCount[address(arg1)].field_0
    if uint64(block.timestamp) < tokenGrantsCount[address(arg1)][arg2].field_512:
        return tokenGrantsCount[address(arg1)][arg2].field_0, 
               tokenGrantsCount[address(arg1)][arg2].field_256,
               0,
               tokenGrantsCount[address(arg1)][arg2].field_512,
               tokenGrantsCount[address(arg1)][arg2].field_512,
               tokenGrantsCount[address(arg1)][arg2].field_512,
               bool(tokenGrantsCount[address(arg1)][arg2].field_704),
               bool(tokenGrantsCount[address(arg1)][arg2].field_712)
    if uint64(block.timestamp) >= tokenGrantsCount[address(arg1)][arg2].field_576:
        return tokenGrantsCount[address(arg1)][arg2].field_0, 
               tokenGrantsCount[address(arg1)][arg2].field_256,
               tokenGrantsCount[address(arg1)][arg2].field_256,
               tokenGrantsCount[address(arg1)][arg2].field_512,
               tokenGrantsCount[address(arg1)][arg2].field_512,
               tokenGrantsCount[address(arg1)][arg2].field_512,
               bool(tokenGrantsCount[address(arg1)][arg2].field_704),
               bool(tokenGrantsCount[address(arg1)][arg2].field_712)
    require tokenGrantsCount[address(arg1)][arg2].field_640 <= uint64(block.timestamp)
    if not tokenGrantsCount[address(arg1)][arg2].field_256:
        require tokenGrantsCount[address(arg1)][arg2].field_512 <= tokenGrantsCount[address(arg1)][arg2].field_576
        if tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_512:
            return tokenGrantsCount[address(arg1)][arg2].field_0, 
                   tokenGrantsCount[address(arg1)][arg2].field_256,
                   (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640,
                   tokenGrantsCount[address(arg1)][arg2].field_512,
                   tokenGrantsCount[address(arg1)][arg2].field_512,
                   tokenGrantsCount[address(arg1)][arg2].field_512,
                   bool(tokenGrantsCount[address(arg1)][arg2].field_704),
                   bool(tokenGrantsCount[address(arg1)][arg2].field_712)
    else:
        if tokenGrantsCount[address(arg1)][arg2].field_256:
            require (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_512 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(arg1)][arg2].field_512
            require tokenGrantsCount[address(arg1)][arg2].field_512 <= tokenGrantsCount[address(arg1)][arg2].field_576
            if tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_512:
                return tokenGrantsCount[address(arg1)][arg2].field_0, 
                       tokenGrantsCount[address(arg1)][arg2].field_256,
                       (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640,
                       tokenGrantsCount[address(arg1)][arg2].field_512,
                       tokenGrantsCount[address(arg1)][arg2].field_512,
                       tokenGrantsCount[address(arg1)][arg2].field_512,
                       bool(tokenGrantsCount[address(arg1)][arg2].field_704),
                       bool(tokenGrantsCount[address(arg1)][arg2].field_712)
    revert
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    mem[64] = 96
    require not msg.value
    require block.timestamp > publicEndTime
    require xFMSold >= 175 * 10^10
    if not tokenGrantsCount[address(arg1)].field_0:
        require arg3 <= balanceOf[address(arg1)]
    else:
        idx = 0
        s = 0
        while idx < tokenGrantsCount[address(arg1)].field_0:
            mem[32] = 4
            require idx < tokenGrantsCount[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 4)
            _49 = mem[64]
            mem[64] = mem[64] + 224
            mem[_49] = tokenGrantsCount[address(arg1)][idx].field_0
            mem[_49 + 32] = tokenGrantsCount[address(arg1)][idx].field_256
            mem[_49 + 64] = tokenGrantsCount[address(arg1)][idx].field_512
            mem[_49 + 96] = tokenGrantsCount[address(arg1)][idx].field_576
            mem[_49 + 128] = tokenGrantsCount[address(arg1)][idx].field_640
            mem[_49 + 160] = bool(tokenGrantsCount[address(arg1)][idx].field_704)
            mem[_49 + 192] = bool(tokenGrantsCount[address(arg1)][idx].field_712)
            if uint64(block.timestamp) < tokenGrantsCount[address(arg1)][idx].field_512:
                require 0 <= tokenGrantsCount[address(arg1)][idx].field_256
                require tokenGrantsCount[address(arg1)][idx].field_256 + s >= s
                idx = idx + 1
                s = tokenGrantsCount[address(arg1)][idx].field_256 + s
                continue 
            if uint64(block.timestamp) >= tokenGrantsCount[address(arg1)][idx].field_576:
                require tokenGrantsCount[address(arg1)][idx].field_256 <= tokenGrantsCount[address(arg1)][idx].field_256
                require s >= s
                idx = idx + 1
                s = s
                continue 
            require tokenGrantsCount[address(arg1)][idx].field_640 <= uint64(block.timestamp)
            if tokenGrantsCount[address(arg1)][idx].field_256:
                require tokenGrantsCount[address(arg1)][idx].field_256
                require (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(arg1)][idx].field_512
            require tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_576
            require tokenGrantsCount[address(arg1)][idx].field_576 - tokenGrantsCount[address(arg1)][idx].field_512
            require (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_256
            require tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s >= s
            idx = idx + 1
            s = tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s
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

function transfer(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    if arg1 != msg.sender:
        if not tokenGrantsCount[address(msg.sender)].field_0:
            require arg2 <= balanceOf[address(msg.sender)]
        else:
            idx = 0
            s = 0
            while idx < tokenGrantsCount[address(msg.sender)].field_0:
                mem[32] = 4
                require idx < tokenGrantsCount[address(msg.sender)].field_0
                mem[0] = sha3(address(msg.sender), 4)
                _37 = mem[64]
                mem[64] = mem[64] + 224
                mem[_37] = tokenGrantsCount[address(msg.sender)][idx].field_0
                mem[_37 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                mem[_37 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                mem[_37 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                mem[_37 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                mem[_37 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                mem[_37 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                    require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                    require tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s
                    idx = idx + 1
                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                    continue 
                if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                    require tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                    require s >= s
                    idx = idx + 1
                    s = s
                    continue 
                require tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp)
                if tokenGrantsCount[address(msg.sender)][idx].field_256:
                    require tokenGrantsCount[address(msg.sender)][idx].field_256
                    require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512
                require tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576
                require tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512
                require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                require tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s
                idx = idx + 1
                s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
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

function _fallback() payable {
    if block.timestamp > publicEndTime:
        require xFMSold < 175 * 10^10
    require not halted
    require xFMSold <= 175 * 10^10
    if block.timestamp < 1516406401:
        if msg.value:
            require msg.value
            require 112 * 10^6 * msg.value / msg.value == 112 * 10^6
        require 112 * 10^6 * msg.value / 10^18 <= -xFMSold + 175 * 10^10
        call multisigAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require 112 * 10^6 * msg.value / 10^18 <= balanceOf[stor11]
        balanceOf[stor11] -= 112 * 10^6 * msg.value / 10^18
        require (112 * 10^6 * msg.value / 10^18) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[address(msg.sender)] = (112 * 10^6 * msg.value / 10^18) + balanceOf[msg.sender]
        xFMSold += 112 * 10^6 * msg.value / 10^18
        etherRaised += msg.value
        emit Buy((112 * 10^6 * msg.value / 10^18), msg.sender);
    else:
        if block.timestamp < 1517011201:
            if msg.value:
                require msg.value
                require 100 * 10^6 * msg.value / msg.value == 100 * 10^6
            require 100 * 10^6 * msg.value / 10^18 <= -xFMSold + 175 * 10^10
            call multisigAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require 100 * 10^6 * msg.value / 10^18 <= balanceOf[stor11]
            balanceOf[stor11] -= 100 * 10^6 * msg.value / 10^18
            require (100 * 10^6 * msg.value / 10^18) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[address(msg.sender)] = (100 * 10^6 * msg.value / 10^18) + balanceOf[msg.sender]
            xFMSold += 100 * 10^6 * msg.value / 10^18
            etherRaised += msg.value
            emit Buy((100 * 10^6 * msg.value / 10^18), msg.sender);
        else:
            if block.timestamp < 1517616001:
                if msg.value:
                    require msg.value
                    require 94400000 * msg.value / msg.value == 94400000
                require 94400000 * msg.value / 10^18 <= -xFMSold + 175 * 10^10
                call multisigAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require 94400000 * msg.value / 10^18 <= balanceOf[stor11]
                balanceOf[stor11] -= 94400000 * msg.value / 10^18
                require (94400000 * msg.value / 10^18) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                balanceOf[address(msg.sender)] = (94400000 * msg.value / 10^18) + balanceOf[msg.sender]
                xFMSold += 94400000 * msg.value / 10^18
                etherRaised += msg.value
                emit Buy((94400000 * msg.value / 10^18), msg.sender);
            else:
                if block.timestamp >= 1518652801:
                    if msg.value:
                        require msg.value
                        require 80 * 10^6 * msg.value / msg.value == 80 * 10^6
                    require 80 * 10^6 * msg.value / 10^18 <= -xFMSold + 175 * 10^10
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require 80 * 10^6 * msg.value / 10^18 <= balanceOf[stor11]
                    balanceOf[stor11] -= 80 * 10^6 * msg.value / 10^18
                    require (80 * 10^6 * msg.value / 10^18) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = (80 * 10^6 * msg.value / 10^18) + balanceOf[msg.sender]
                    xFMSold += 80 * 10^6 * msg.value / 10^18
                    etherRaised += msg.value
                    emit Buy((80 * 10^6 * msg.value / 10^18), msg.sender);
                else:
                    if msg.value:
                        require msg.value
                        require 88 * 10^6 * msg.value / msg.value == 88 * 10^6
                    require 88 * 10^6 * msg.value / 10^18 <= -xFMSold + 175 * 10^10
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require 88 * 10^6 * msg.value / 10^18 <= balanceOf[stor11]
                    balanceOf[stor11] -= 88 * 10^6 * msg.value / 10^18
                    require (88 * 10^6 * msg.value / 10^18) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = (88 * 10^6 * msg.value / 10^18) + balanceOf[msg.sender]
                    xFMSold += 88 * 10^6 * msg.value / 10^18
                    etherRaised += msg.value
                    emit Buy((88 * 10^6 * msg.value / 10^18), msg.sender);
}

function grantVestedTokens(address arg1, uint256 arg2, uint64 arg3, uint64 arg4, uint64 arg5, bool arg6, bool arg7) {
    require arg4 >= arg3
    require arg5 >= arg4
    require tokenGrantsCount[address(arg1)].field_0 <= stor3
    tokenGrantsCount[address(arg1)].field_0++
    if not tokenGrantsCount[address(arg1)].field_0 > tokenGrantsCount[address(arg1)].field_0 + 1:
        mem[64] = 320
        if arg6:
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = msg.sender
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = arg2
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_512 = arg4
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_576 = arg5
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_640 = arg3
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_704 = uint64(arg6)
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_712 = arg7 % 72057594037927936
            if arg1 != msg.sender:
                if not tokenGrantsCount[address(msg.sender)].field_0:
                    require arg2 <= balanceOf[address(msg.sender)]
                else:
                    idx = 0
                    s = 0
                    while idx < tokenGrantsCount[address(msg.sender)].field_0:
                        mem[32] = 4
                        require idx < tokenGrantsCount[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 4)
                        _204 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_204] = tokenGrantsCount[address(msg.sender)][idx].field_0
                        mem[_204 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                        mem[_204 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                        mem[_204 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                        mem[_204 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                        mem[_204 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                        mem[_204 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                        if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                            require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                            require tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s
                            idx = idx + 1
                            s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                            continue 
                        if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                            require tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                            require s >= s
                            idx = idx + 1
                            s = s
                            continue 
                        require tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp)
                        if tokenGrantsCount[address(msg.sender)][idx].field_256:
                            require tokenGrantsCount[address(msg.sender)][idx].field_256
                            require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512
                        require tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576
                        require tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512
                        require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                        require tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s
                        idx = idx + 1
                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
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
        else:
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = 0
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = 0
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = arg2
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_512 = arg4
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_576 = arg5
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_640 = arg3
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_704 = uint64(arg6)
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_712 = arg7 % 72057594037927936
            if arg1 != msg.sender:
                if not tokenGrantsCount[address(msg.sender)].field_0:
                    require arg2 <= balanceOf[address(msg.sender)]
                else:
                    idx = 0
                    s = 0
                    while idx < tokenGrantsCount[address(msg.sender)].field_0:
                        mem[32] = 4
                        require idx < tokenGrantsCount[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 4)
                        _207 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_207] = tokenGrantsCount[address(msg.sender)][idx].field_0
                        mem[_207 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                        mem[_207 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                        mem[_207 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                        mem[_207 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                        mem[_207 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                        mem[_207 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                        if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                            require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                            require tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s
                            idx = idx + 1
                            s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                            continue 
                        if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                            require tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                            require s >= s
                            idx = idx + 1
                            s = s
                            continue 
                        require tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp)
                        if tokenGrantsCount[address(msg.sender)][idx].field_256:
                            require tokenGrantsCount[address(msg.sender)][idx].field_256
                            require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512
                        require tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576
                        require tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512
                        require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                        require tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s
                        idx = idx + 1
                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
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
    else:
        idx = (3 * tokenGrantsCount[address(arg1)].field_0) + 3
        while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
            tokenGrantsCount[address(arg1)][idx].field_0 = 0
            tokenGrantsCount[address(arg1)][idx].field_256 = 0
            tokenGrantsCount[address(arg1)][idx].field_512 = 0
            idx = idx + 3
            continue 
        mem[64] = 320
        if arg6:
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = msg.sender
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = arg2
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_512 = arg4
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_576 = arg5
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_640 = arg3
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_704 = uint64(arg6)
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_712 = arg7 % 72057594037927936
            if arg1 != msg.sender:
                if not tokenGrantsCount[address(msg.sender)].field_0:
                    require arg2 <= balanceOf[address(msg.sender)]
                else:
                    idx = 0
                    s = 0
                    while idx < tokenGrantsCount[address(msg.sender)].field_0:
                        mem[32] = 4
                        require idx < tokenGrantsCount[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 4)
                        _360 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_360] = tokenGrantsCount[address(msg.sender)][idx].field_0
                        mem[_360 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                        mem[_360 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                        mem[_360 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                        mem[_360 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                        mem[_360 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                        mem[_360 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                        if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                            require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                            require tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s
                            idx = idx + 1
                            s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                            continue 
                        if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                            require tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                            require s >= s
                            idx = idx + 1
                            s = s
                            continue 
                        require tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp)
                        if tokenGrantsCount[address(msg.sender)][idx].field_256:
                            require tokenGrantsCount[address(msg.sender)][idx].field_256
                            require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512
                        require tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576
                        require tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512
                        require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                        require tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s
                        idx = idx + 1
                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
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
        else:
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = 0
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = 0
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = arg2
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_512 = arg4
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_576 = arg5
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_640 = arg3
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_704 = uint64(arg6)
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_712 = arg7 % 72057594037927936
            if arg1 != msg.sender:
                if not tokenGrantsCount[address(msg.sender)].field_0:
                    require arg2 <= balanceOf[address(msg.sender)]
                else:
                    idx = 0
                    s = 0
                    while idx < tokenGrantsCount[address(msg.sender)].field_0:
                        mem[32] = 4
                        require idx < tokenGrantsCount[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 4)
                        _363 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_363] = tokenGrantsCount[address(msg.sender)][idx].field_0
                        mem[_363 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                        mem[_363 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                        mem[_363 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                        mem[_363 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                        mem[_363 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                        mem[_363 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                        if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                            require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                            require tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s
                            idx = idx + 1
                            s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                            continue 
                        if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                            require tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                            require s >= s
                            idx = idx + 1
                            s = s
                            continue 
                        require tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp)
                        if tokenGrantsCount[address(msg.sender)][idx].field_256:
                            require tokenGrantsCount[address(msg.sender)][idx].field_256
                            require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512
                        require tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576
                        require tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512
                        require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                        require tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s
                        idx = idx + 1
                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
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
    emit NewTokenGrant(arg2, tokenGrantsCount[address(arg1)].field_0, msg.sender, arg1);
}

function revokeTokenGrant(address arg1, uint256 arg2) {
    require arg2 < tokenGrantsCount[address(arg1)].field_0
    require tokenGrantsCount[address(arg1)][arg2].field_704
    require tokenGrantsCount[address(arg1)][arg2].field_0 == msg.sender
    if tokenGrantsCount[address(arg1)][arg2].field_712:
        if uint64(block.timestamp) < tokenGrantsCount[address(arg1)][arg2].field_512:
            require 0 <= tokenGrantsCount[address(arg1)][arg2].field_256
            require arg2 < tokenGrantsCount[address(arg1)].field_0
            tokenGrantsCount[address(arg1)][arg2].field_0 = 0
            tokenGrantsCount[address(arg1)][arg2].field_256 = 0
            tokenGrantsCount[address(arg1)][arg2].field_512 = 0
            require 1 <= tokenGrantsCount[address(arg1)].field_0
            require tokenGrantsCount[address(arg1)].field_0 - 1 < tokenGrantsCount[address(arg1)].field_0
            require arg2 < tokenGrantsCount[address(arg1)].field_0
            tokenGrantsCount[address(arg1)][arg2].field_0 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_256 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_640 = 0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_704 = 0
            tokenGrantsCount[address(arg1)][arg2].field_704 = 0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_704 = uint64(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
            tokenGrantsCount[address(arg1)][arg2].field_712 = 0
            tokenGrantsCount[address(arg1)][arg2].field_712 = 0
            tokenGrantsCount[address(arg1)][arg2].field_712 = 0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_704 = uint8(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
            tokenGrantsCount[address(arg1)][arg2].field_712 = bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0) % 72057594037927936
            tokenGrantsCount[address(arg1)][arg2].field_720 = 0
            tokenGrantsCount[address(arg1)][arg2].field_720 = 0
            tokenGrantsCount[address(arg1)][arg2].field_720 = 0
            tokenGrantsCount[address(arg1)][arg2].field_720 = Mask(48, 16, bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0)) >> 16
            tokenGrantsCount[address(arg1)].field_0--
            if not tokenGrantsCount[address(arg1)].field_0 <= tokenGrantsCount[address(arg1)].field_0 - 1:
                idx = (3 * tokenGrantsCount[address(arg1)].field_0) - 3
                while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
                    tokenGrantsCount[address(arg1)][idx].field_0 = 0
                    tokenGrantsCount[address(arg1)][idx].field_256 = 0
                    tokenGrantsCount[address(arg1)][idx].field_512 = 0
                    idx = idx + 3
                    continue 
            require tokenGrantsCount[address(arg1)][arg2].field_256 + balanceOf[57005] >= balanceOf[57005]
            balanceOf[57005] += tokenGrantsCount[address(arg1)][arg2].field_256
            require tokenGrantsCount[address(arg1)][arg2].field_256 <= balanceOf[arg1]
            balanceOf[address(arg1)] = balanceOf[arg1] - tokenGrantsCount[address(arg1)][arg2].field_256
            emit Transfer(tokenGrantsCount[address(arg1)][arg2].field_256, arg1, 57005);
        else:
            if uint64(block.timestamp) >= tokenGrantsCount[address(arg1)][arg2].field_576:
                require tokenGrantsCount[address(arg1)][arg2].field_256 <= tokenGrantsCount[address(arg1)][arg2].field_256
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = 0
                tokenGrantsCount[address(arg1)][arg2].field_256 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = 0
                require 1 <= tokenGrantsCount[address(arg1)].field_0
                require tokenGrantsCount[address(arg1)].field_0 - 1 < tokenGrantsCount[address(arg1)].field_0
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_256 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint64(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint8(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0) % 72057594037927936
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = Mask(48, 16, bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0)) >> 16
                tokenGrantsCount[address(arg1)].field_0--
                if not tokenGrantsCount[address(arg1)].field_0 <= tokenGrantsCount[address(arg1)].field_0 - 1:
                    idx = (3 * tokenGrantsCount[address(arg1)].field_0) - 3
                    while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
                        tokenGrantsCount[address(arg1)][idx].field_0 = 0
                        tokenGrantsCount[address(arg1)][idx].field_256 = 0
                        tokenGrantsCount[address(arg1)][idx].field_512 = 0
                        idx = idx + 3
                        continue 
                require balanceOf[57005] >= balanceOf[57005]
                require 0 <= balanceOf[arg1]
                balanceOf[address(arg1)] = balanceOf[arg1]
                emit Transfer(0, arg1, 57005);
            else:
                require tokenGrantsCount[address(arg1)][arg2].field_640 <= uint64(block.timestamp)
                if tokenGrantsCount[address(arg1)][arg2].field_256:
                    require tokenGrantsCount[address(arg1)][arg2].field_256
                    require (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_512 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(arg1)][arg2].field_512
                require tokenGrantsCount[address(arg1)][arg2].field_512 <= tokenGrantsCount[address(arg1)][arg2].field_576
                require tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_512
                require (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_512 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_512 - tokenGrantsCount[address(arg1)][arg2].field_512 <= tokenGrantsCount[address(arg1)][arg2].field_256
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = 0
                tokenGrantsCount[address(arg1)][arg2].field_256 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = 0
                require 1 <= tokenGrantsCount[address(arg1)].field_0
                require tokenGrantsCount[address(arg1)].field_0 - 1 < tokenGrantsCount[address(arg1)].field_0
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_256 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint64(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint8(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0) % 72057594037927936
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = Mask(48, 16, bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0)) >> 16
                tokenGrantsCount[address(arg1)].field_0--
                if not tokenGrantsCount[address(arg1)].field_0 <= tokenGrantsCount[address(arg1)].field_0 - 1:
                    idx = (3 * tokenGrantsCount[address(arg1)].field_0) - 3
                    while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
                        tokenGrantsCount[address(arg1)][idx].field_0 = 0
                        tokenGrantsCount[address(arg1)][idx].field_256 = 0
                        tokenGrantsCount[address(arg1)][idx].field_512 = 0
                        idx = idx + 3
                        continue 
                require tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640) + balanceOf[57005] >= balanceOf[57005]
                balanceOf[57005] = tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640) + balanceOf[57005]
                require tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640) <= balanceOf[arg1]
                balanceOf[address(arg1)] = balanceOf[arg1] - tokenGrantsCount[address(arg1)][arg2].field_256 + ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640)
                emit Transfer((tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640)), arg1, 57005);
    else:
        if uint64(block.timestamp) < tokenGrantsCount[address(arg1)][arg2].field_512:
            require 0 <= tokenGrantsCount[address(arg1)][arg2].field_256
            require arg2 < tokenGrantsCount[address(arg1)].field_0
            tokenGrantsCount[address(arg1)][arg2].field_0 = 0
            tokenGrantsCount[address(arg1)][arg2].field_256 = 0
            tokenGrantsCount[address(arg1)][arg2].field_512 = 0
            require 1 <= tokenGrantsCount[address(arg1)].field_0
            require tokenGrantsCount[address(arg1)].field_0 - 1 < tokenGrantsCount[address(arg1)].field_0
            require arg2 < tokenGrantsCount[address(arg1)].field_0
            tokenGrantsCount[address(arg1)][arg2].field_0 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_256 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_640 = 0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_704 = 0
            tokenGrantsCount[address(arg1)][arg2].field_704 = 0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_704 = uint64(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
            tokenGrantsCount[address(arg1)][arg2].field_712 = 0
            tokenGrantsCount[address(arg1)][arg2].field_712 = 0
            tokenGrantsCount[address(arg1)][arg2].field_712 = 0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_704 = uint8(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
            tokenGrantsCount[address(arg1)][arg2].field_712 = bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0) % 72057594037927936
            tokenGrantsCount[address(arg1)][arg2].field_720 = 0
            tokenGrantsCount[address(arg1)][arg2].field_720 = 0
            tokenGrantsCount[address(arg1)][arg2].field_720 = 0
            tokenGrantsCount[address(arg1)][arg2].field_720 = Mask(48, 16, bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0)) >> 16
            tokenGrantsCount[address(arg1)].field_0--
            if not tokenGrantsCount[address(arg1)].field_0 <= tokenGrantsCount[address(arg1)].field_0 - 1:
                idx = (3 * tokenGrantsCount[address(arg1)].field_0) - 3
                while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
                    tokenGrantsCount[address(arg1)][idx].field_0 = 0
                    tokenGrantsCount[address(arg1)][idx].field_256 = 0
                    tokenGrantsCount[address(arg1)][idx].field_512 = 0
                    idx = idx + 3
                    continue 
            require tokenGrantsCount[address(arg1)][arg2].field_256 + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += tokenGrantsCount[address(arg1)][arg2].field_256
            require tokenGrantsCount[address(arg1)][arg2].field_256 <= balanceOf[arg1]
            balanceOf[address(arg1)] = balanceOf[arg1] - tokenGrantsCount[address(arg1)][arg2].field_256
            emit Transfer(tokenGrantsCount[address(arg1)][arg2].field_256, arg1, msg.sender);
        else:
            if uint64(block.timestamp) >= tokenGrantsCount[address(arg1)][arg2].field_576:
                require tokenGrantsCount[address(arg1)][arg2].field_256 <= tokenGrantsCount[address(arg1)][arg2].field_256
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = 0
                tokenGrantsCount[address(arg1)][arg2].field_256 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = 0
                require 1 <= tokenGrantsCount[address(arg1)].field_0
                require tokenGrantsCount[address(arg1)].field_0 - 1 < tokenGrantsCount[address(arg1)].field_0
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_256 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint64(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint8(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0) % 72057594037927936
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = Mask(48, 16, bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0)) >> 16
                tokenGrantsCount[address(arg1)].field_0--
                if not tokenGrantsCount[address(arg1)].field_0 <= tokenGrantsCount[address(arg1)].field_0 - 1:
                    idx = (3 * tokenGrantsCount[address(arg1)].field_0) - 3
                    while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
                        tokenGrantsCount[address(arg1)][idx].field_0 = 0
                        tokenGrantsCount[address(arg1)][idx].field_256 = 0
                        tokenGrantsCount[address(arg1)][idx].field_512 = 0
                        idx = idx + 3
                        continue 
                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require 0 <= balanceOf[arg1]
                balanceOf[address(arg1)] = balanceOf[arg1]
                emit Transfer(0, arg1, msg.sender);
            else:
                require tokenGrantsCount[address(arg1)][arg2].field_640 <= uint64(block.timestamp)
                if tokenGrantsCount[address(arg1)][arg2].field_256:
                    require tokenGrantsCount[address(arg1)][arg2].field_256
                    require (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_512 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(arg1)][arg2].field_512
                require tokenGrantsCount[address(arg1)][arg2].field_512 <= tokenGrantsCount[address(arg1)][arg2].field_576
                require tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_512
                require (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_512 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_512 - tokenGrantsCount[address(arg1)][arg2].field_512 <= tokenGrantsCount[address(arg1)][arg2].field_256
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = 0
                tokenGrantsCount[address(arg1)][arg2].field_256 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = 0
                require 1 <= tokenGrantsCount[address(arg1)].field_0
                require tokenGrantsCount[address(arg1)].field_0 - 1 < tokenGrantsCount[address(arg1)].field_0
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_256 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint64(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint8(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0) % 72057594037927936
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = Mask(48, 16, bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0)) >> 16
                tokenGrantsCount[address(arg1)].field_0--
                if not tokenGrantsCount[address(arg1)].field_0 <= tokenGrantsCount[address(arg1)].field_0 - 1:
                    idx = (3 * tokenGrantsCount[address(arg1)].field_0) - 3
                    while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
                        tokenGrantsCount[address(arg1)][idx].field_0 = 0
                        tokenGrantsCount[address(arg1)][idx].field_256 = 0
                        tokenGrantsCount[address(arg1)][idx].field_512 = 0
                        idx = idx + 3
                        continue 
                require tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640) + balanceOf[address(msg.sender)]
                require tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640) <= balanceOf[arg1]
                balanceOf[address(arg1)] = balanceOf[arg1] - tokenGrantsCount[address(arg1)][arg2].field_256 + ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640)
                emit Transfer((tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640)), arg1, msg.sender);
}

function grantVested(address arg1, address arg2) {
    require block.timestamp > publicEndTime
    require xFMSold >= 175 * 10^10
    require ownerAddress == msg.sender
    require not halted
    require uint64(block.timestamp + (2184 * 24 * 3600)) >= uint64(block.timestamp)
    require uint64(block.timestamp + (8760 * 24 * 3600)) >= uint64(block.timestamp + (2184 * 24 * 3600))
    require tokenGrantsCount[address(arg1)].field_0 <= stor3
    tokenGrantsCount[address(arg1)].field_0++
    if not tokenGrantsCount[address(arg1)].field_0 > tokenGrantsCount[address(arg1)].field_0 + 1:
        mem[64] = 320
        tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = 0
        tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = 0
        tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = 625 * 10^9
        tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_512 = uint64(block.timestamp + (2184 * 24 * 3600))
        tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_576 = uint64(block.timestamp + (8760 * 24 * 3600))
        tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_640 = uint64(block.timestamp)
        tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_704 = 0
        tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_712 = 0
        if arg1 == msg.sender:
            emit NewTokenGrant(625 * 10^9, tokenGrantsCount[address(arg1)].field_0, msg.sender, arg1);
            require uint64(block.timestamp + (4368 * 24 * 3600)) >= uint64(block.timestamp)
            require uint64(block.timestamp + (17520 * 24 * 3600)) >= uint64(block.timestamp + (4368 * 24 * 3600))
            require tokenGrantsCount[address(arg2)].field_0 <= stor3
            tokenGrantsCount[address(arg2)].field_0++
            if not tokenGrantsCount[address(arg2)].field_0 > tokenGrantsCount[address(arg2)].field_0 + 1:
                mem[64] = 544
                tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_0 = 0
                tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_256 = 0
                tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_256 = balanceOf[stor11]
                tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_512 = uint64(block.timestamp + (4368 * 24 * 3600))
                tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_576 = uint64(block.timestamp + (17520 * 24 * 3600))
                tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_640 = uint64(block.timestamp)
                tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_704 = 0
                tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_712 = 0
                if arg2 != msg.sender:
                    if not tokenGrantsCount[address(msg.sender)].field_0:
                        require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                    else:
                        idx = 0
                        s = 0
                        while idx < tokenGrantsCount[address(msg.sender)].field_0:
                            mem[32] = 4
                            require idx < tokenGrantsCount[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 4)
                            _947 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_947] = tokenGrantsCount[address(msg.sender)][idx].field_0
                            mem[_947 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                            mem[_947 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                            mem[_947 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                            mem[_947 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                            mem[_947 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                            mem[_947 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                            if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                require tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s
                                idx = idx + 1
                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                continue 
                            if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                require tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                require s >= s
                                idx = idx + 1
                                s = s
                                continue 
                            require tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp)
                            if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                require tokenGrantsCount[address(msg.sender)][idx].field_256
                                require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512
                            require tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576
                            require tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512
                            require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                            require tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s
                            idx = idx + 1
                            s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                            continue 
                        require s <= balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                            require balanceOf[stor11] <= balanceOf[address(msg.sender)] - s
                        else:
                            require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                    require calldata.size >= 68
                    require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= balanceOf[stor11]
                    require balanceOf[stor11] + balanceOf[arg2] >= balanceOf[arg2]
                    balanceOf[address(arg2)] = balanceOf[stor11] + balanceOf[arg2]
                    emit Transfer(balanceOf[stor11], msg.sender, arg2);
            else:
                idx = (3 * tokenGrantsCount[address(arg2)].field_0) + 3
                while 3 * tokenGrantsCount[address(arg2)].field_0 > idx:
                    tokenGrantsCount[address(arg2)][idx].field_0 = 0
                    tokenGrantsCount[address(arg2)][idx].field_256 = 0
                    tokenGrantsCount[address(arg2)][idx].field_512 = 0
                    idx = idx + 3
                    continue 
                mem[64] = 544
                tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_0 = 0
                tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_256 = 0
                tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_256 = balanceOf[stor11]
                tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_512 = uint64(block.timestamp + (4368 * 24 * 3600))
                tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_576 = uint64(block.timestamp + (17520 * 24 * 3600))
                tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_640 = uint64(block.timestamp)
                tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_704 = 0
                tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_712 = 0
                if arg2 != msg.sender:
                    if not tokenGrantsCount[address(msg.sender)].field_0:
                        require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                    else:
                        idx = 0
                        s = 0
                        while idx < tokenGrantsCount[address(msg.sender)].field_0:
                            mem[32] = 4
                            require idx < tokenGrantsCount[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 4)
                            _1815 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_1815] = tokenGrantsCount[address(msg.sender)][idx].field_0
                            mem[_1815 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                            mem[_1815 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                            mem[_1815 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                            mem[_1815 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                            mem[_1815 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                            mem[_1815 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                            if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                require tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s
                                idx = idx + 1
                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                continue 
                            if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                require tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                require s >= s
                                idx = idx + 1
                                s = s
                                continue 
                            require tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp)
                            if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                require tokenGrantsCount[address(msg.sender)][idx].field_256
                                require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512
                            require tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576
                            require tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512
                            require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                            require tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s
                            idx = idx + 1
                            s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                            continue 
                        require s <= balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                            require balanceOf[stor11] <= balanceOf[address(msg.sender)] - s
                        else:
                            require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                    require calldata.size >= 68
                    require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= balanceOf[stor11]
                    require balanceOf[stor11] + balanceOf[arg2] >= balanceOf[arg2]
                    balanceOf[address(arg2)] = balanceOf[stor11] + balanceOf[arg2]
                    emit Transfer(balanceOf[stor11], msg.sender, arg2);
        else:
            mem[0] = msg.sender
            if not tokenGrantsCount[address(msg.sender)].field_0:
                require 625 * 10^9 <= balanceOf[address(msg.sender)]
                require calldata.size >= 68
                require 625 * 10^9 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= 625 * 10^9
                require balanceOf[arg1] + 625 * 10^9 >= balanceOf[arg1]
                balanceOf[address(arg1)] = balanceOf[arg1] + 625 * 10^9
                emit Transfer(625 * 10^9, msg.sender, arg1);
                emit NewTokenGrant(625 * 10^9, tokenGrantsCount[address(arg1)].field_0, msg.sender, arg1);
                require uint64(block.timestamp + (4368 * 24 * 3600)) >= uint64(block.timestamp)
                require uint64(block.timestamp + (17520 * 24 * 3600)) >= uint64(block.timestamp + (4368 * 24 * 3600))
                require tokenGrantsCount[address(arg2)].field_0 <= stor3
                tokenGrantsCount[address(arg2)].field_0++
                if not tokenGrantsCount[address(arg2)].field_0 > tokenGrantsCount[address(arg2)].field_0 + 1:
                    mem[64] = 544
                    tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_0 = 0
                    tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_256 = 0
                    tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_256 = balanceOf[stor11]
                    tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_512 = uint64(block.timestamp + (4368 * 24 * 3600))
                    tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_576 = uint64(block.timestamp + (17520 * 24 * 3600))
                    tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_640 = uint64(block.timestamp)
                    tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_704 = 0
                    tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_712 = 0
                    if arg2 != msg.sender:
                        if not tokenGrantsCount[address(msg.sender)].field_0:
                            require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                        else:
                            idx = 0
                            s = 0
                            while idx < tokenGrantsCount[address(msg.sender)].field_0:
                                mem[32] = 4
                                require idx < tokenGrantsCount[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 4)
                                _944 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_944] = tokenGrantsCount[address(msg.sender)][idx].field_0
                                mem[_944 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                                mem[_944 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                                mem[_944 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                                mem[_944 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                                mem[_944 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                                mem[_944 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                                if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                    require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                    require tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s
                                    idx = idx + 1
                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                    continue 
                                if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                    require tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                    require s >= s
                                    idx = idx + 1
                                    s = s
                                    continue 
                                require tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp)
                                if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    require tokenGrantsCount[address(msg.sender)][idx].field_256
                                    require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512
                                require tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576
                                require tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512
                                require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                require tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s
                                idx = idx + 1
                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                continue 
                            require s <= balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                                require balanceOf[stor11] <= balanceOf[address(msg.sender)] - s
                            else:
                                require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                        require calldata.size >= 68
                        require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] -= balanceOf[stor11]
                        require balanceOf[stor11] + balanceOf[arg2] >= balanceOf[arg2]
                        balanceOf[address(arg2)] = balanceOf[stor11] + balanceOf[arg2]
                        emit Transfer(balanceOf[stor11], msg.sender, arg2);
                else:
                    idx = (3 * tokenGrantsCount[address(arg2)].field_0) + 3
                    while 3 * tokenGrantsCount[address(arg2)].field_0 > idx:
                        tokenGrantsCount[address(arg2)][idx].field_0 = 0
                        tokenGrantsCount[address(arg2)][idx].field_256 = 0
                        tokenGrantsCount[address(arg2)][idx].field_512 = 0
                        idx = idx + 3
                        continue 
                    mem[64] = 544
                    tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_0 = 0
                    tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_256 = 0
                    tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_256 = balanceOf[stor11]
                    tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_512 = uint64(block.timestamp + (4368 * 24 * 3600))
                    tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_576 = uint64(block.timestamp + (17520 * 24 * 3600))
                    tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_640 = uint64(block.timestamp)
                    tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_704 = 0
                    tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_712 = 0
                    if arg2 != msg.sender:
                        if not tokenGrantsCount[address(msg.sender)].field_0:
                            require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                        else:
                            idx = 0
                            s = 0
                            while idx < tokenGrantsCount[address(msg.sender)].field_0:
                                mem[32] = 4
                                require idx < tokenGrantsCount[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 4)
                                _1812 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_1812] = tokenGrantsCount[address(msg.sender)][idx].field_0
                                mem[_1812 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                                mem[_1812 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                                mem[_1812 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                                mem[_1812 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                                mem[_1812 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                                mem[_1812 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                                if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                    require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                    require tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s
                                    idx = idx + 1
                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                    continue 
                                if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                    require tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                    require s >= s
                                    idx = idx + 1
                                    s = s
                                    continue 
                                require tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp)
                                if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    require tokenGrantsCount[address(msg.sender)][idx].field_256
                                    require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512
                                require tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576
                                require tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512
                                require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                require tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s
                                idx = idx + 1
                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                continue 
                            require s <= balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                                require balanceOf[stor11] <= balanceOf[address(msg.sender)] - s
                            else:
                                require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                        require calldata.size >= 68
                        require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] -= balanceOf[stor11]
                        require balanceOf[stor11] + balanceOf[arg2] >= balanceOf[arg2]
                        balanceOf[address(arg2)] = balanceOf[stor11] + balanceOf[arg2]
                        emit Transfer(balanceOf[stor11], msg.sender, arg2);
            else:
                idx = 0
                s = 0
                while idx < tokenGrantsCount[address(msg.sender)].field_0:
                    mem[32] = 4
                    require idx < tokenGrantsCount[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 4)
                    _941 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_941] = tokenGrantsCount[address(msg.sender)][idx].field_0
                    mem[_941 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                    mem[_941 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                    mem[_941 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                    mem[_941 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                    mem[_941 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                    mem[_941 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                    if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                        require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                        require tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s
                        idx = idx + 1
                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                        continue 
                    if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                        require tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                        require s >= s
                        idx = idx + 1
                        s = s
                        continue 
                    require tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp)
                    if tokenGrantsCount[address(msg.sender)][idx].field_256:
                        require tokenGrantsCount[address(msg.sender)][idx].field_256
                        require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512
                    require tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576
                    require tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512
                    require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                    require tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s
                    idx = idx + 1
                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                    continue 
                require s <= balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                    require 625 * 10^9 <= balanceOf[address(msg.sender)] - s
                    require calldata.size >= 68
                    require 625 * 10^9 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= 625 * 10^9
                    require balanceOf[arg1] + 625 * 10^9 >= balanceOf[arg1]
                    balanceOf[address(arg1)] = balanceOf[arg1] + 625 * 10^9
                    emit Transfer(625 * 10^9, msg.sender, arg1);
                    mem[mem[64] + 32] = tokenGrantsCount[address(arg1)].field_0
                    emit NewTokenGrant(625 * 10^9, tokenGrantsCount[address(arg1)].field_0, msg.sender, arg1);
                    require uint64(block.timestamp + (4368 * 24 * 3600)) >= uint64(block.timestamp)
                    require uint64(block.timestamp + (17520 * 24 * 3600)) >= uint64(block.timestamp + (4368 * 24 * 3600))
                    require tokenGrantsCount[address(arg2)].field_0 <= stor3
                    mem[32] = 4
                    tokenGrantsCount[address(arg2)].field_0++
                    if not tokenGrantsCount[address(arg2)].field_0 > tokenGrantsCount[address(arg2)].field_0 + 1:
                        mem[0] = sha3(address(arg2), 4)
                        _1205 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_1205] = 0
                        mem[_1205 + 32] = balanceOf[stor11]
                        mem[_1205 + 64] = uint64(block.timestamp + (4368 * 24 * 3600))
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_0 = 0
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_256 = 0
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_256 = balanceOf[stor11]
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_512 = uint64(block.timestamp + (4368 * 24 * 3600))
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_576 = uint64(block.timestamp + (17520 * 24 * 3600))
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_640 = uint64(block.timestamp)
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_704 = 0
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_712 = 0
                        if arg2 != msg.sender:
                            if not tokenGrantsCount[address(msg.sender)].field_0:
                                require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                            else:
                                idx = 0
                                s = 0
                                while idx < tokenGrantsCount[address(msg.sender)].field_0:
                                    mem[32] = 4
                                    require idx < tokenGrantsCount[address(msg.sender)].field_0
                                    mem[0] = sha3(address(msg.sender), 4)
                                    _1806 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_1806] = tokenGrantsCount[address(msg.sender)][idx].field_0
                                    mem[_1806 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                                    mem[_1806 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                                    mem[_1806 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                                    mem[_1806 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                                    mem[_1806 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                                    mem[_1806 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                                    if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                        require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                        require tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s
                                        idx = idx + 1
                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                        continue 
                                    if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                        require tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                        require s >= s
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    require tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp)
                                    if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        require tokenGrantsCount[address(msg.sender)][idx].field_256
                                        require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512
                                    require tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576
                                    require tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512
                                    require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                    require tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s
                                    idx = idx + 1
                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                    continue 
                                require s <= balanceOf[address(msg.sender)]
                                if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                                    require balanceOf[stor11] <= balanceOf[address(msg.sender)] - s
                                else:
                                    require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                            require calldata.size >= 68
                            require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] -= balanceOf[stor11]
                            require balanceOf[stor11] + balanceOf[arg2] >= balanceOf[arg2]
                            balanceOf[address(arg2)] = balanceOf[stor11] + balanceOf[arg2]
                            emit Transfer(balanceOf[stor11], msg.sender, arg2);
                    else:
                        idx = (3 * tokenGrantsCount[address(arg2)].field_0) + 3
                        while 3 * tokenGrantsCount[address(arg2)].field_0 > idx:
                            tokenGrantsCount[address(arg2)][idx].field_0 = 0
                            tokenGrantsCount[address(arg2)][idx].field_256 = 0
                            tokenGrantsCount[address(arg2)][idx].field_512 = 0
                            idx = idx + 3
                            continue 
                        mem[0] = sha3(address(arg2), 4)
                        _1830 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_1830] = 0
                        mem[_1830 + 32] = balanceOf[stor11]
                        mem[_1830 + 64] = uint64(block.timestamp + (4368 * 24 * 3600))
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_0 = 0
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_256 = 0
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_256 = balanceOf[stor11]
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_512 = uint64(block.timestamp + (4368 * 24 * 3600))
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_576 = uint64(block.timestamp + (17520 * 24 * 3600))
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_640 = uint64(block.timestamp)
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_704 = 0
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_712 = 0
                        if arg2 != msg.sender:
                            if not tokenGrantsCount[address(msg.sender)].field_0:
                                require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                            else:
                                idx = 0
                                s = 0
                                while idx < tokenGrantsCount[address(msg.sender)].field_0:
                                    mem[32] = 4
                                    require idx < tokenGrantsCount[address(msg.sender)].field_0
                                    mem[0] = sha3(address(msg.sender), 4)
                                    _2416 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_2416] = tokenGrantsCount[address(msg.sender)][idx].field_0
                                    mem[_2416 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                                    mem[_2416 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                                    mem[_2416 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                                    mem[_2416 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                                    mem[_2416 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                                    mem[_2416 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                                    if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                        require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                        require tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s
                                        idx = idx + 1
                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                        continue 
                                    if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                        require tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                        require s >= s
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    require tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp)
                                    if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        require tokenGrantsCount[address(msg.sender)][idx].field_256
                                        require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512
                                    require tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576
                                    require tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512
                                    require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                    require tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s
                                    idx = idx + 1
                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                    continue 
                                require s <= balanceOf[address(msg.sender)]
                                if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                                    require balanceOf[stor11] <= balanceOf[address(msg.sender)] - s
                                else:
                                    require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                            require calldata.size >= 68
                            require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] -= balanceOf[stor11]
                            require balanceOf[stor11] + balanceOf[arg2] >= balanceOf[arg2]
                            balanceOf[address(arg2)] = balanceOf[stor11] + balanceOf[arg2]
                            emit Transfer(balanceOf[stor11], msg.sender, arg2);
                else:
                    require 625 * 10^9 <= balanceOf[address(msg.sender)]
                    require calldata.size >= 68
                    require 625 * 10^9 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= 625 * 10^9
                    require balanceOf[arg1] + 625 * 10^9 >= balanceOf[arg1]
                    balanceOf[address(arg1)] = balanceOf[arg1] + 625 * 10^9
                    emit Transfer(625 * 10^9, msg.sender, arg1);
                    mem[mem[64] + 32] = tokenGrantsCount[address(arg1)].field_0
                    emit NewTokenGrant(625 * 10^9, tokenGrantsCount[address(arg1)].field_0, msg.sender, arg1);
                    require uint64(block.timestamp + (4368 * 24 * 3600)) >= uint64(block.timestamp)
                    require uint64(block.timestamp + (17520 * 24 * 3600)) >= uint64(block.timestamp + (4368 * 24 * 3600))
                    require tokenGrantsCount[address(arg2)].field_0 <= stor3
                    mem[32] = 4
                    tokenGrantsCount[address(arg2)].field_0++
                    if not tokenGrantsCount[address(arg2)].field_0 > tokenGrantsCount[address(arg2)].field_0 + 1:
                        mem[0] = sha3(address(arg2), 4)
                        _1220 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_1220] = 0
                        mem[_1220 + 32] = balanceOf[stor11]
                        mem[_1220 + 64] = uint64(block.timestamp + (4368 * 24 * 3600))
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_0 = 0
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_256 = 0
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_256 = balanceOf[stor11]
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_512 = uint64(block.timestamp + (4368 * 24 * 3600))
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_576 = uint64(block.timestamp + (17520 * 24 * 3600))
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_640 = uint64(block.timestamp)
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_704 = 0
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_712 = 0
                        if arg2 != msg.sender:
                            if not tokenGrantsCount[address(msg.sender)].field_0:
                                require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                            else:
                                idx = 0
                                s = 0
                                while idx < tokenGrantsCount[address(msg.sender)].field_0:
                                    mem[32] = 4
                                    require idx < tokenGrantsCount[address(msg.sender)].field_0
                                    mem[0] = sha3(address(msg.sender), 4)
                                    _1809 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_1809] = tokenGrantsCount[address(msg.sender)][idx].field_0
                                    mem[_1809 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                                    mem[_1809 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                                    mem[_1809 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                                    mem[_1809 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                                    mem[_1809 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                                    mem[_1809 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                                    if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                        require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                        require tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s
                                        idx = idx + 1
                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                        continue 
                                    if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                        require tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                        require s >= s
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    require tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp)
                                    if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        require tokenGrantsCount[address(msg.sender)][idx].field_256
                                        require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512
                                    require tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576
                                    require tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512
                                    require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                    require tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s
                                    idx = idx + 1
                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                    continue 
                                require s <= balanceOf[address(msg.sender)]
                                if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                                    require balanceOf[stor11] <= balanceOf[address(msg.sender)] - s
                                else:
                                    require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                            require calldata.size >= 68
                            require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] -= balanceOf[stor11]
                            require balanceOf[stor11] + balanceOf[arg2] >= balanceOf[arg2]
                            balanceOf[address(arg2)] = balanceOf[stor11] + balanceOf[arg2]
                            emit Transfer(balanceOf[stor11], msg.sender, arg2);
                    else:
                        idx = (3 * tokenGrantsCount[address(arg2)].field_0) + 3
                        while 3 * tokenGrantsCount[address(arg2)].field_0 > idx:
                            tokenGrantsCount[address(arg2)][idx].field_0 = 0
                            tokenGrantsCount[address(arg2)][idx].field_256 = 0
                            tokenGrantsCount[address(arg2)][idx].field_512 = 0
                            idx = idx + 3
                            continue 
                        mem[0] = sha3(address(arg2), 4)
                        _1836 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_1836] = 0
                        mem[_1836 + 32] = balanceOf[stor11]
                        mem[_1836 + 64] = uint64(block.timestamp + (4368 * 24 * 3600))
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_0 = 0
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_256 = 0
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_256 = balanceOf[stor11]
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_512 = uint64(block.timestamp + (4368 * 24 * 3600))
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_576 = uint64(block.timestamp + (17520 * 24 * 3600))
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_640 = uint64(block.timestamp)
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_704 = 0
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_712 = 0
                        if arg2 != msg.sender:
                            if not tokenGrantsCount[address(msg.sender)].field_0:
                                require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                            else:
                                idx = 0
                                s = 0
                                while idx < tokenGrantsCount[address(msg.sender)].field_0:
                                    mem[32] = 4
                                    require idx < tokenGrantsCount[address(msg.sender)].field_0
                                    mem[0] = sha3(address(msg.sender), 4)
                                    _2419 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_2419] = tokenGrantsCount[address(msg.sender)][idx].field_0
                                    mem[_2419 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                                    mem[_2419 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                                    mem[_2419 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                                    mem[_2419 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                                    mem[_2419 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                                    mem[_2419 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                                    if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                        require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                        require tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s
                                        idx = idx + 1
                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                        continue 
                                    if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                        require tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                        require s >= s
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    require tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp)
                                    if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        require tokenGrantsCount[address(msg.sender)][idx].field_256
                                        require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512
                                    require tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576
                                    require tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512
                                    require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                    require tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s
                                    idx = idx + 1
                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                    continue 
                                require s <= balanceOf[address(msg.sender)]
                                if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                                    require balanceOf[stor11] <= balanceOf[address(msg.sender)] - s
                                else:
                                    require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                            require calldata.size >= 68
                            require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] -= balanceOf[stor11]
                            require balanceOf[stor11] + balanceOf[arg2] >= balanceOf[arg2]
                            balanceOf[address(arg2)] = balanceOf[stor11] + balanceOf[arg2]
                            emit Transfer(balanceOf[stor11], msg.sender, arg2);
    else:
        idx = (3 * tokenGrantsCount[address(arg1)].field_0) + 3
        while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
            tokenGrantsCount[address(arg1)][idx].field_0 = 0
            tokenGrantsCount[address(arg1)][idx].field_256 = 0
            tokenGrantsCount[address(arg1)][idx].field_512 = 0
            idx = idx + 3
            continue 
        mem[64] = 320
        tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = 0
        tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = 0
        tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = 625 * 10^9
        tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_512 = uint64(block.timestamp + (2184 * 24 * 3600))
        tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_576 = uint64(block.timestamp + (8760 * 24 * 3600))
        tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_640 = uint64(block.timestamp)
        tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_704 = 0
        tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_712 = 0
        if arg1 == msg.sender:
            emit NewTokenGrant(625 * 10^9, tokenGrantsCount[address(arg1)].field_0, msg.sender, arg1);
            require uint64(block.timestamp + (4368 * 24 * 3600)) >= uint64(block.timestamp)
            require uint64(block.timestamp + (17520 * 24 * 3600)) >= uint64(block.timestamp + (4368 * 24 * 3600))
            require tokenGrantsCount[address(arg2)].field_0 <= stor3
            tokenGrantsCount[address(arg2)].field_0++
            if not tokenGrantsCount[address(arg2)].field_0 > tokenGrantsCount[address(arg2)].field_0 + 1:
                mem[64] = 544
                tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_0 = 0
                tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_256 = 0
                tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_256 = balanceOf[stor11]
                tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_512 = uint64(block.timestamp + (4368 * 24 * 3600))
                tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_576 = uint64(block.timestamp + (17520 * 24 * 3600))
                tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_640 = uint64(block.timestamp)
                tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_704 = 0
                tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_712 = 0
                if arg2 != msg.sender:
                    if not tokenGrantsCount[address(msg.sender)].field_0:
                        require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                    else:
                        idx = 0
                        s = 0
                        while idx < tokenGrantsCount[address(msg.sender)].field_0:
                            mem[32] = 4
                            require idx < tokenGrantsCount[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 4)
                            _1824 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_1824] = tokenGrantsCount[address(msg.sender)][idx].field_0
                            mem[_1824 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                            mem[_1824 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                            mem[_1824 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                            mem[_1824 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                            mem[_1824 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                            mem[_1824 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                            if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                require tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s
                                idx = idx + 1
                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                continue 
                            if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                require tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                require s >= s
                                idx = idx + 1
                                s = s
                                continue 
                            require tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp)
                            if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                require tokenGrantsCount[address(msg.sender)][idx].field_256
                                require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512
                            require tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576
                            require tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512
                            require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                            require tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s
                            idx = idx + 1
                            s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                            continue 
                        require s <= balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                            require balanceOf[stor11] <= balanceOf[address(msg.sender)] - s
                        else:
                            require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                    require calldata.size >= 68
                    require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= balanceOf[stor11]
                    require balanceOf[stor11] + balanceOf[arg2] >= balanceOf[arg2]
                    balanceOf[address(arg2)] = balanceOf[stor11] + balanceOf[arg2]
                    emit Transfer(balanceOf[stor11], msg.sender, arg2);
            else:
                idx = (3 * tokenGrantsCount[address(arg2)].field_0) + 3
                while 3 * tokenGrantsCount[address(arg2)].field_0 > idx:
                    tokenGrantsCount[address(arg2)][idx].field_0 = 0
                    tokenGrantsCount[address(arg2)][idx].field_256 = 0
                    tokenGrantsCount[address(arg2)][idx].field_512 = 0
                    idx = idx + 3
                    continue 
                mem[64] = 544
                tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_0 = 0
                tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_256 = 0
                tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_256 = balanceOf[stor11]
                tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_512 = uint64(block.timestamp + (4368 * 24 * 3600))
                tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_576 = uint64(block.timestamp + (17520 * 24 * 3600))
                tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_640 = uint64(block.timestamp)
                tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_704 = 0
                tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_712 = 0
                if arg2 != msg.sender:
                    if not tokenGrantsCount[address(msg.sender)].field_0:
                        require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                    else:
                        idx = 0
                        s = 0
                        while idx < tokenGrantsCount[address(msg.sender)].field_0:
                            mem[32] = 4
                            require idx < tokenGrantsCount[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 4)
                            _2431 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_2431] = tokenGrantsCount[address(msg.sender)][idx].field_0
                            mem[_2431 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                            mem[_2431 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                            mem[_2431 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                            mem[_2431 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                            mem[_2431 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                            mem[_2431 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                            if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                require tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s
                                idx = idx + 1
                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                continue 
                            if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                require tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                require s >= s
                                idx = idx + 1
                                s = s
                                continue 
                            require tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp)
                            if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                require tokenGrantsCount[address(msg.sender)][idx].field_256
                                require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512
                            require tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576
                            require tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512
                            require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                            require tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s
                            idx = idx + 1
                            s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                            continue 
                        require s <= balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                            require balanceOf[stor11] <= balanceOf[address(msg.sender)] - s
                        else:
                            require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                    require calldata.size >= 68
                    require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= balanceOf[stor11]
                    require balanceOf[stor11] + balanceOf[arg2] >= balanceOf[arg2]
                    balanceOf[address(arg2)] = balanceOf[stor11] + balanceOf[arg2]
                    emit Transfer(balanceOf[stor11], msg.sender, arg2);
        else:
            mem[0] = msg.sender
            if not tokenGrantsCount[address(msg.sender)].field_0:
                require 625 * 10^9 <= balanceOf[address(msg.sender)]
                require calldata.size >= 68
                require 625 * 10^9 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= 625 * 10^9
                require balanceOf[arg1] + 625 * 10^9 >= balanceOf[arg1]
                balanceOf[address(arg1)] = balanceOf[arg1] + 625 * 10^9
                emit Transfer(625 * 10^9, msg.sender, arg1);
                emit NewTokenGrant(625 * 10^9, tokenGrantsCount[address(arg1)].field_0, msg.sender, arg1);
                require uint64(block.timestamp + (4368 * 24 * 3600)) >= uint64(block.timestamp)
                require uint64(block.timestamp + (17520 * 24 * 3600)) >= uint64(block.timestamp + (4368 * 24 * 3600))
                require tokenGrantsCount[address(arg2)].field_0 <= stor3
                tokenGrantsCount[address(arg2)].field_0++
                if not tokenGrantsCount[address(arg2)].field_0 > tokenGrantsCount[address(arg2)].field_0 + 1:
                    mem[64] = 544
                    tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_0 = 0
                    tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_256 = 0
                    tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_256 = balanceOf[stor11]
                    tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_512 = uint64(block.timestamp + (4368 * 24 * 3600))
                    tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_576 = uint64(block.timestamp + (17520 * 24 * 3600))
                    tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_640 = uint64(block.timestamp)
                    tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_704 = 0
                    tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_712 = 0
                    if arg2 != msg.sender:
                        if not tokenGrantsCount[address(msg.sender)].field_0:
                            require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                        else:
                            idx = 0
                            s = 0
                            while idx < tokenGrantsCount[address(msg.sender)].field_0:
                                mem[32] = 4
                                require idx < tokenGrantsCount[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 4)
                                _1821 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_1821] = tokenGrantsCount[address(msg.sender)][idx].field_0
                                mem[_1821 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                                mem[_1821 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                                mem[_1821 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                                mem[_1821 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                                mem[_1821 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                                mem[_1821 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                                if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                    require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                    require tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s
                                    idx = idx + 1
                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                    continue 
                                if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                    require tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                    require s >= s
                                    idx = idx + 1
                                    s = s
                                    continue 
                                require tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp)
                                if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    require tokenGrantsCount[address(msg.sender)][idx].field_256
                                    require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512
                                require tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576
                                require tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512
                                require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                require tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s
                                idx = idx + 1
                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                continue 
                            require s <= balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                                require balanceOf[stor11] <= balanceOf[address(msg.sender)] - s
                            else:
                                require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                        require calldata.size >= 68
                        require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] -= balanceOf[stor11]
                        require balanceOf[stor11] + balanceOf[arg2] >= balanceOf[arg2]
                        balanceOf[address(arg2)] = balanceOf[stor11] + balanceOf[arg2]
                        emit Transfer(balanceOf[stor11], msg.sender, arg2);
                else:
                    idx = (3 * tokenGrantsCount[address(arg2)].field_0) + 3
                    while 3 * tokenGrantsCount[address(arg2)].field_0 > idx:
                        tokenGrantsCount[address(arg2)][idx].field_0 = 0
                        tokenGrantsCount[address(arg2)][idx].field_256 = 0
                        tokenGrantsCount[address(arg2)][idx].field_512 = 0
                        idx = idx + 3
                        continue 
                    mem[64] = 544
                    tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_0 = 0
                    tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_256 = 0
                    tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_256 = balanceOf[stor11]
                    tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_512 = uint64(block.timestamp + (4368 * 24 * 3600))
                    tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_576 = uint64(block.timestamp + (17520 * 24 * 3600))
                    tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_640 = uint64(block.timestamp)
                    tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_704 = 0
                    tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_712 = 0
                    if arg2 != msg.sender:
                        if not tokenGrantsCount[address(msg.sender)].field_0:
                            require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                        else:
                            idx = 0
                            s = 0
                            while idx < tokenGrantsCount[address(msg.sender)].field_0:
                                mem[32] = 4
                                require idx < tokenGrantsCount[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 4)
                                _2428 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_2428] = tokenGrantsCount[address(msg.sender)][idx].field_0
                                mem[_2428 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                                mem[_2428 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                                mem[_2428 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                                mem[_2428 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                                mem[_2428 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                                mem[_2428 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                                if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                    require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                    require tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s
                                    idx = idx + 1
                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                    continue 
                                if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                    require tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                    require s >= s
                                    idx = idx + 1
                                    s = s
                                    continue 
                                require tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp)
                                if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    require tokenGrantsCount[address(msg.sender)][idx].field_256
                                    require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512
                                require tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576
                                require tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512
                                require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                require tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s
                                idx = idx + 1
                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                continue 
                            require s <= balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                                require balanceOf[stor11] <= balanceOf[address(msg.sender)] - s
                            else:
                                require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                        require calldata.size >= 68
                        require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] -= balanceOf[stor11]
                        require balanceOf[stor11] + balanceOf[arg2] >= balanceOf[arg2]
                        balanceOf[address(arg2)] = balanceOf[stor11] + balanceOf[arg2]
                        emit Transfer(balanceOf[stor11], msg.sender, arg2);
            else:
                idx = 0
                s = 0
                while idx < tokenGrantsCount[address(msg.sender)].field_0:
                    mem[32] = 4
                    require idx < tokenGrantsCount[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 4)
                    _1818 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_1818] = tokenGrantsCount[address(msg.sender)][idx].field_0
                    mem[_1818 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                    mem[_1818 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                    mem[_1818 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                    mem[_1818 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                    mem[_1818 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                    mem[_1818 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                    if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                        require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                        require tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s
                        idx = idx + 1
                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                        continue 
                    if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                        require tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                        require s >= s
                        idx = idx + 1
                        s = s
                        continue 
                    require tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp)
                    if tokenGrantsCount[address(msg.sender)][idx].field_256:
                        require tokenGrantsCount[address(msg.sender)][idx].field_256
                        require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512
                    require tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576
                    require tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512
                    require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                    require tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s
                    idx = idx + 1
                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                    continue 
                require s <= balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                    require 625 * 10^9 <= balanceOf[address(msg.sender)] - s
                    require calldata.size >= 68
                    require 625 * 10^9 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= 625 * 10^9
                    require balanceOf[arg1] + 625 * 10^9 >= balanceOf[arg1]
                    balanceOf[address(arg1)] = balanceOf[arg1] + 625 * 10^9
                    emit Transfer(625 * 10^9, msg.sender, arg1);
                    mem[mem[64] + 32] = tokenGrantsCount[address(arg1)].field_0
                    emit NewTokenGrant(625 * 10^9, tokenGrantsCount[address(arg1)].field_0, msg.sender, arg1);
                    require uint64(block.timestamp + (4368 * 24 * 3600)) >= uint64(block.timestamp)
                    require uint64(block.timestamp + (17520 * 24 * 3600)) >= uint64(block.timestamp + (4368 * 24 * 3600))
                    require tokenGrantsCount[address(arg2)].field_0 <= stor3
                    mem[32] = 4
                    tokenGrantsCount[address(arg2)].field_0++
                    if not tokenGrantsCount[address(arg2)].field_0 > tokenGrantsCount[address(arg2)].field_0 + 1:
                        mem[0] = sha3(address(arg2), 4)
                        _2170 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_2170] = 0
                        mem[_2170 + 32] = balanceOf[stor11]
                        mem[_2170 + 64] = uint64(block.timestamp + (4368 * 24 * 3600))
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_0 = 0
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_256 = 0
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_256 = balanceOf[stor11]
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_512 = uint64(block.timestamp + (4368 * 24 * 3600))
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_576 = uint64(block.timestamp + (17520 * 24 * 3600))
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_640 = uint64(block.timestamp)
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_704 = 0
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_712 = 0
                        if arg2 != msg.sender:
                            if not tokenGrantsCount[address(msg.sender)].field_0:
                                require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                            else:
                                idx = 0
                                s = 0
                                while idx < tokenGrantsCount[address(msg.sender)].field_0:
                                    mem[32] = 4
                                    require idx < tokenGrantsCount[address(msg.sender)].field_0
                                    mem[0] = sha3(address(msg.sender), 4)
                                    _2422 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_2422] = tokenGrantsCount[address(msg.sender)][idx].field_0
                                    mem[_2422 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                                    mem[_2422 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                                    mem[_2422 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                                    mem[_2422 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                                    mem[_2422 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                                    mem[_2422 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                                    if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                        require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                        require tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s
                                        idx = idx + 1
                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                        continue 
                                    if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                        require tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                        require s >= s
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    require tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp)
                                    if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        require tokenGrantsCount[address(msg.sender)][idx].field_256
                                        require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512
                                    require tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576
                                    require tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512
                                    require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                    require tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s
                                    idx = idx + 1
                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                    continue 
                                require s <= balanceOf[address(msg.sender)]
                                if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                                    require balanceOf[stor11] <= balanceOf[address(msg.sender)] - s
                                else:
                                    require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                            require calldata.size >= 68
                            require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] -= balanceOf[stor11]
                            require balanceOf[stor11] + balanceOf[arg2] >= balanceOf[arg2]
                            balanceOf[address(arg2)] = balanceOf[stor11] + balanceOf[arg2]
                            emit Transfer(balanceOf[stor11], msg.sender, arg2);
                    else:
                        idx = (3 * tokenGrantsCount[address(arg2)].field_0) + 3
                        while 3 * tokenGrantsCount[address(arg2)].field_0 > idx:
                            tokenGrantsCount[address(arg2)][idx].field_0 = 0
                            tokenGrantsCount[address(arg2)][idx].field_256 = 0
                            tokenGrantsCount[address(arg2)][idx].field_512 = 0
                            idx = idx + 3
                            continue 
                        mem[0] = sha3(address(arg2), 4)
                        _2445 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_2445] = 0
                        mem[_2445 + 32] = balanceOf[stor11]
                        mem[_2445 + 64] = uint64(block.timestamp + (4368 * 24 * 3600))
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_0 = 0
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_256 = 0
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_256 = balanceOf[stor11]
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_512 = uint64(block.timestamp + (4368 * 24 * 3600))
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_576 = uint64(block.timestamp + (17520 * 24 * 3600))
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_640 = uint64(block.timestamp)
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_704 = 0
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_712 = 0
                        if arg2 != msg.sender:
                            if not tokenGrantsCount[address(msg.sender)].field_0:
                                require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                            else:
                                idx = 0
                                s = 0
                                while idx < tokenGrantsCount[address(msg.sender)].field_0:
                                    mem[32] = 4
                                    require idx < tokenGrantsCount[address(msg.sender)].field_0
                                    mem[0] = sha3(address(msg.sender), 4)
                                    _2686 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_2686] = tokenGrantsCount[address(msg.sender)][idx].field_0
                                    mem[_2686 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                                    mem[_2686 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                                    mem[_2686 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                                    mem[_2686 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                                    mem[_2686 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                                    mem[_2686 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                                    if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                        require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                        require tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s
                                        idx = idx + 1
                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                        continue 
                                    if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                        require tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                        require s >= s
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    require tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp)
                                    if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        require tokenGrantsCount[address(msg.sender)][idx].field_256
                                        require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512
                                    require tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576
                                    require tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512
                                    require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                    require tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s
                                    idx = idx + 1
                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                    continue 
                                require s <= balanceOf[address(msg.sender)]
                                if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                                    require balanceOf[stor11] <= balanceOf[address(msg.sender)] - s
                                else:
                                    require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                            require calldata.size >= 68
                            require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] -= balanceOf[stor11]
                            require balanceOf[stor11] + balanceOf[arg2] >= balanceOf[arg2]
                            balanceOf[address(arg2)] = balanceOf[stor11] + balanceOf[arg2]
                            emit Transfer(balanceOf[stor11], msg.sender, arg2);
                else:
                    require 625 * 10^9 <= balanceOf[address(msg.sender)]
                    require calldata.size >= 68
                    require 625 * 10^9 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= 625 * 10^9
                    require balanceOf[arg1] + 625 * 10^9 >= balanceOf[arg1]
                    balanceOf[address(arg1)] = balanceOf[arg1] + 625 * 10^9
                    emit Transfer(625 * 10^9, msg.sender, arg1);
                    mem[mem[64] + 32] = tokenGrantsCount[address(arg1)].field_0
                    emit NewTokenGrant(625 * 10^9, tokenGrantsCount[address(arg1)].field_0, msg.sender, arg1);
                    require uint64(block.timestamp + (4368 * 24 * 3600)) >= uint64(block.timestamp)
                    require uint64(block.timestamp + (17520 * 24 * 3600)) >= uint64(block.timestamp + (4368 * 24 * 3600))
                    require tokenGrantsCount[address(arg2)].field_0 <= stor3
                    mem[32] = 4
                    tokenGrantsCount[address(arg2)].field_0++
                    if not tokenGrantsCount[address(arg2)].field_0 > tokenGrantsCount[address(arg2)].field_0 + 1:
                        mem[0] = sha3(address(arg2), 4)
                        _2187 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_2187] = 0
                        mem[_2187 + 32] = balanceOf[stor11]
                        mem[_2187 + 64] = uint64(block.timestamp + (4368 * 24 * 3600))
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_0 = 0
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_256 = 0
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_256 = balanceOf[stor11]
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_512 = uint64(block.timestamp + (4368 * 24 * 3600))
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_576 = uint64(block.timestamp + (17520 * 24 * 3600))
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_640 = uint64(block.timestamp)
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_704 = 0
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_712 = 0
                        if arg2 != msg.sender:
                            if not tokenGrantsCount[address(msg.sender)].field_0:
                                require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                            else:
                                idx = 0
                                s = 0
                                while idx < tokenGrantsCount[address(msg.sender)].field_0:
                                    mem[32] = 4
                                    require idx < tokenGrantsCount[address(msg.sender)].field_0
                                    mem[0] = sha3(address(msg.sender), 4)
                                    _2425 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_2425] = tokenGrantsCount[address(msg.sender)][idx].field_0
                                    mem[_2425 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                                    mem[_2425 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                                    mem[_2425 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                                    mem[_2425 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                                    mem[_2425 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                                    mem[_2425 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                                    if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                        require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                        require tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s
                                        idx = idx + 1
                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                        continue 
                                    if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                        require tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                        require s >= s
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    require tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp)
                                    if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        require tokenGrantsCount[address(msg.sender)][idx].field_256
                                        require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512
                                    require tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576
                                    require tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512
                                    require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                    require tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s
                                    idx = idx + 1
                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                    continue 
                                require s <= balanceOf[address(msg.sender)]
                                if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                                    require balanceOf[stor11] <= balanceOf[address(msg.sender)] - s
                                else:
                                    require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                            require calldata.size >= 68
                            require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] -= balanceOf[stor11]
                            require balanceOf[stor11] + balanceOf[arg2] >= balanceOf[arg2]
                            balanceOf[address(arg2)] = balanceOf[stor11] + balanceOf[arg2]
                            emit Transfer(balanceOf[stor11], msg.sender, arg2);
                    else:
                        idx = (3 * tokenGrantsCount[address(arg2)].field_0) + 3
                        while 3 * tokenGrantsCount[address(arg2)].field_0 > idx:
                            tokenGrantsCount[address(arg2)][idx].field_0 = 0
                            tokenGrantsCount[address(arg2)][idx].field_256 = 0
                            tokenGrantsCount[address(arg2)][idx].field_512 = 0
                            idx = idx + 3
                            continue 
                        mem[0] = sha3(address(arg2), 4)
                        _2451 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_2451] = 0
                        mem[_2451 + 32] = balanceOf[stor11]
                        mem[_2451 + 64] = uint64(block.timestamp + (4368 * 24 * 3600))
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_0 = 0
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_256 = 0
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_256 = balanceOf[stor11]
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_512 = uint64(block.timestamp + (4368 * 24 * 3600))
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_576 = uint64(block.timestamp + (17520 * 24 * 3600))
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_640 = uint64(block.timestamp)
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_704 = 0
                        tokenGrantsCount[address(arg2)][tokenGrantsCount[address(arg2)].field_0].field_712 = 0
                        if arg2 != msg.sender:
                            if not tokenGrantsCount[address(msg.sender)].field_0:
                                require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                            else:
                                idx = 0
                                s = 0
                                while idx < tokenGrantsCount[address(msg.sender)].field_0:
                                    mem[32] = 4
                                    require idx < tokenGrantsCount[address(msg.sender)].field_0
                                    mem[0] = sha3(address(msg.sender), 4)
                                    _2689 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_2689] = tokenGrantsCount[address(msg.sender)][idx].field_0
                                    mem[_2689 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                                    mem[_2689 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                                    mem[_2689 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                                    mem[_2689 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                                    mem[_2689 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                                    mem[_2689 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                                    if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                        require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                        require tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s
                                        idx = idx + 1
                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                        continue 
                                    if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                        require tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                        require s >= s
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    require tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp)
                                    if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        require tokenGrantsCount[address(msg.sender)][idx].field_256
                                        require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512
                                    require tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576
                                    require tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512
                                    require (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                    require tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s
                                    idx = idx + 1
                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                    continue 
                                require s <= balanceOf[address(msg.sender)]
                                if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                                    require balanceOf[stor11] <= balanceOf[address(msg.sender)] - s
                                else:
                                    require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                            require calldata.size >= 68
                            require balanceOf[stor11] <= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] -= balanceOf[stor11]
                            require balanceOf[stor11] + balanceOf[arg2] >= balanceOf[arg2]
                            balanceOf[address(arg2)] = balanceOf[stor11] + balanceOf[arg2]
                            emit Transfer(balanceOf[stor11], msg.sender, arg2);
    emit NewTokenGrant(balanceOf[stor11], tokenGrantsCount[address(arg2)].field_0, msg.sender, arg2);
}



}
