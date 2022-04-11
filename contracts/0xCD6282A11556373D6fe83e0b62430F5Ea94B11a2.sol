contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
uint256 stor3;
array of uint256 stor5;
array of uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
address stor11;
address stor12;
address stor13;

function _fallback() payable {
    stor3 = 20
    bool(stor5.length) = 0
    stor5.length.field_1 = 10
    stor5.length.field_8 = 'BETNetwork' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor6.length) = 0
    stor6.length.field_1 = 3
    stor6.length.field_8 = 'BTN' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor7 = 4
    require not msg.value
    stor13 = msg.sender
    stor8 = block.timestamp
    stor9 = block.timestamp + (1344 * 24 * 3600)
    stor11 = code.data[14212 len 20]
    stor12 = code.data[14244 len 20]
    stor10 = 10^18 * code.data[14264 len 32]
    stor1[stor12] += 62500000 * 3600
    stor1[stor13] += 62500000 * 3600
    stor1[stor13] += 105 * 10^10
    return code.data[1019 len 13181]
}



// =====================  Runtime code  =====================


#
#  - grantVested(address arg1, address arg2)
#
const STAGE_FOUR_ETHRaised = 20000 * 10^18

const STAGE_TWO_ETHRaised = 8500 * 10^18

const STAGE_PRESALE_ETHRaised = 3500 * 10^18

const STAGE_THREE_ETHRaised = 14000 * 10^18

const PRICE_STAGE_TWO = 39100000

const PRICE_STAGE_PRESALE = 43792000

const ALLOC_CROWDSALE = 105 * 10^10

const ALLOC_TEAM = (62500000 * 3600)

const PRICE_STAGE_FOUR = 32844000

const ALLOC_RES = (62500000 * 3600)

const PRICE_STAGE_THREE = 35972000

const PRICE_STANDARD = 31280000


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 stor3;
array of struct tokenGrantsCount;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 publicStartTime;
uint256 publicEndTime;
uint256 hardcapInEth;
address multisigAddress;
address bETNetworkTeamAddress;
address ownerAddress;
uint256 etherRaised;
uint256 bTNSold;
uint8 halted;

function tokenGrantsCount(address arg1) {
    return tokenGrantsCount[address(arg1)].field_0
}

function name() {
    return name[0 len name.length]
}

function BTNSold() {
    return bTNSold
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

function multisigAddress() {
    return multisigAddress
}

function publicStartTime() {
    return publicStartTime
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

function BETNetworkTeamAddress() {
    return bETNetworkTeamAddress
}

function etherRaised() {
    return etherRaised
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function toggleHalt(bool arg1) {
    require msg.sender == ownerAddress
    halted = uint8(arg1)
}

function calcAmount(uint256 arg1, uint256 arg2) {
    if arg1:
        require arg1
        require arg1 * arg2 / arg1 == arg2
    return (arg1 * arg2 / 10^18)
}

function drain() {
    require msg.sender == ownerAddress
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
    if etherRaised < 3500 * 10^18:
        return 43792000
    if etherRaised < 8500 * 10^18:
        return 39100000
    if etherRaised < 14000 * 10^18:
        return 35972000
    if etherRaised >= 20000 * 10^18:
        return 31280000
    return 32844000
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
                require s + tokenGrantsCount[address(arg1)][idx].field_256 >= s
                idx = idx + 1
                s = s + tokenGrantsCount[address(arg1)][idx].field_256
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
            require s + tokenGrantsCount[address(arg1)][idx].field_256 - ((arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) >= s
            idx = idx + 1
            s = s + tokenGrantsCount[address(arg1)][idx].field_256 - ((arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512)
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

function _fallback() payable {
    require block.timestamp >= publicStartTime
    require block.timestamp <= publicEndTime
    require bTNSold < 105 * 10^10
    require etherRaised < hardcapInEth
    require not halted
    require bTNSold <= 105 * 10^10
    if etherRaised < 3500 * 10^18:
        if msg.value:
            require msg.value
            require 43792000 * msg.value / msg.value == 43792000
        require 43792000 * msg.value / 10^18 <= -bTNSold + 105 * 10^10
        call multisigAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require 43792000 * msg.value / 10^18 <= balanceOf[stor13]
        balanceOf[stor13] -= 43792000 * msg.value / 10^18
        require balanceOf[address(msg.sender)] + (43792000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 43792000 * msg.value / 10^18
        bTNSold += 43792000 * msg.value / 10^18
        etherRaised += msg.value
        emit Buy((43792000 * msg.value / 10^18), msg.sender);
    else:
        if etherRaised < 8500 * 10^18:
            if msg.value:
                require msg.value
                require 39100000 * msg.value / msg.value == 39100000
            require 39100000 * msg.value / 10^18 <= -bTNSold + 105 * 10^10
            call multisigAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require 39100000 * msg.value / 10^18 <= balanceOf[stor13]
            balanceOf[stor13] -= 39100000 * msg.value / 10^18
            require balanceOf[address(msg.sender)] + (39100000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 39100000 * msg.value / 10^18
            bTNSold += 39100000 * msg.value / 10^18
            etherRaised += msg.value
            emit Buy((39100000 * msg.value / 10^18), msg.sender);
        else:
            if etherRaised < 14000 * 10^18:
                if msg.value:
                    require msg.value
                    require 35972000 * msg.value / msg.value == 35972000
                require 35972000 * msg.value / 10^18 <= -bTNSold + 105 * 10^10
                call multisigAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require 35972000 * msg.value / 10^18 <= balanceOf[stor13]
                balanceOf[stor13] -= 35972000 * msg.value / 10^18
                require balanceOf[address(msg.sender)] + (35972000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 35972000 * msg.value / 10^18
                bTNSold += 35972000 * msg.value / 10^18
                etherRaised += msg.value
                emit Buy((35972000 * msg.value / 10^18), msg.sender);
            else:
                if etherRaised >= 20000 * 10^18:
                    if msg.value:
                        require msg.value
                        require 31280000 * msg.value / msg.value == 31280000
                    require 31280000 * msg.value / 10^18 <= -bTNSold + 105 * 10^10
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require 31280000 * msg.value / 10^18 <= balanceOf[stor13]
                    balanceOf[stor13] -= 31280000 * msg.value / 10^18
                    require balanceOf[address(msg.sender)] + (31280000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 31280000 * msg.value / 10^18
                    bTNSold += 31280000 * msg.value / 10^18
                    etherRaised += msg.value
                    emit Buy((31280000 * msg.value / 10^18), msg.sender);
                else:
                    if msg.value:
                        require msg.value
                        require 32844000 * msg.value / msg.value == 32844000
                    require 32844000 * msg.value / 10^18 <= -bTNSold + 105 * 10^10
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require 32844000 * msg.value / 10^18 <= balanceOf[stor13]
                    balanceOf[stor13] -= 32844000 * msg.value / 10^18
                    require balanceOf[address(msg.sender)] + (32844000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 32844000 * msg.value / 10^18
                    bTNSold += 32844000 * msg.value / 10^18
                    etherRaised += msg.value
                    emit Buy((32844000 * msg.value / 10^18), msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    mem[64] = 96
    require not msg.value
    if block.timestamp > publicEndTime:
        if not tokenGrantsCount[address(arg1)].field_0:
            require arg3 <= balanceOf[address(arg1)]
        else:
            idx = 0
            s = 0
            while idx < tokenGrantsCount[address(arg1)].field_0:
                mem[32] = 4
                require idx < tokenGrantsCount[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 4)
                _145 = mem[64]
                mem[64] = mem[64] + 224
                mem[_145] = tokenGrantsCount[address(arg1)][idx].field_0
                mem[_145 + 32] = tokenGrantsCount[address(arg1)][idx].field_256
                mem[_145 + 64] = tokenGrantsCount[address(arg1)][idx].field_512
                mem[_145 + 96] = tokenGrantsCount[address(arg1)][idx].field_576
                mem[_145 + 128] = tokenGrantsCount[address(arg1)][idx].field_640
                mem[_145 + 160] = bool(tokenGrantsCount[address(arg1)][idx].field_704)
                mem[_145 + 192] = bool(tokenGrantsCount[address(arg1)][idx].field_712)
                if uint64(block.timestamp) < tokenGrantsCount[address(arg1)][idx].field_512:
                    require 0 <= tokenGrantsCount[address(arg1)][idx].field_256
                    require s + tokenGrantsCount[address(arg1)][idx].field_256 >= s
                    idx = idx + 1
                    s = s + tokenGrantsCount[address(arg1)][idx].field_256
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
                require s + tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) >= s
                idx = idx + 1
                s = s + tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512)
                continue 
            require s <= balanceOf[address(arg1)]
            if balanceOf[address(arg1)] - s < balanceOf[address(arg1)]:
                require arg3 <= balanceOf[address(arg1)] - s
            else:
                require arg3 <= balanceOf[address(arg1)]
    else:
        if bTNSold >= 105 * 10^10:
            if not tokenGrantsCount[address(arg1)].field_0:
                require arg3 <= balanceOf[address(arg1)]
            else:
                idx = 0
                s = 0
                while idx < tokenGrantsCount[address(arg1)].field_0:
                    mem[32] = 4
                    require idx < tokenGrantsCount[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 4)
                    _146 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_146] = tokenGrantsCount[address(arg1)][idx].field_0
                    mem[_146 + 32] = tokenGrantsCount[address(arg1)][idx].field_256
                    mem[_146 + 64] = tokenGrantsCount[address(arg1)][idx].field_512
                    mem[_146 + 96] = tokenGrantsCount[address(arg1)][idx].field_576
                    mem[_146 + 128] = tokenGrantsCount[address(arg1)][idx].field_640
                    mem[_146 + 160] = bool(tokenGrantsCount[address(arg1)][idx].field_704)
                    mem[_146 + 192] = bool(tokenGrantsCount[address(arg1)][idx].field_712)
                    if uint64(block.timestamp) < tokenGrantsCount[address(arg1)][idx].field_512:
                        require 0 <= tokenGrantsCount[address(arg1)][idx].field_256
                        require s + tokenGrantsCount[address(arg1)][idx].field_256 >= s
                        idx = idx + 1
                        s = s + tokenGrantsCount[address(arg1)][idx].field_256
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
                    require s + tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) >= s
                    idx = idx + 1
                    s = s + tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512)
                    continue 
                require s <= balanceOf[address(arg1)]
                if balanceOf[address(arg1)] - s < balanceOf[address(arg1)]:
                    require arg3 <= balanceOf[address(arg1)] - s
                else:
                    require arg3 <= balanceOf[address(arg1)]
        else:
            require etherRaised >= hardcapInEth
            if not tokenGrantsCount[address(arg1)].field_0:
                require arg3 <= balanceOf[address(arg1)]
            else:
                idx = 0
                s = 0
                while idx < tokenGrantsCount[address(arg1)].field_0:
                    mem[32] = 4
                    require idx < tokenGrantsCount[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 4)
                    _147 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_147] = tokenGrantsCount[address(arg1)][idx].field_0
                    mem[_147 + 32] = tokenGrantsCount[address(arg1)][idx].field_256
                    mem[_147 + 64] = tokenGrantsCount[address(arg1)][idx].field_512
                    mem[_147 + 96] = tokenGrantsCount[address(arg1)][idx].field_576
                    mem[_147 + 128] = tokenGrantsCount[address(arg1)][idx].field_640
                    mem[_147 + 160] = bool(tokenGrantsCount[address(arg1)][idx].field_704)
                    mem[_147 + 192] = bool(tokenGrantsCount[address(arg1)][idx].field_712)
                    if uint64(block.timestamp) < tokenGrantsCount[address(arg1)][idx].field_512:
                        require 0 <= tokenGrantsCount[address(arg1)][idx].field_256
                        require s + tokenGrantsCount[address(arg1)][idx].field_256 >= s
                        idx = idx + 1
                        s = s + tokenGrantsCount[address(arg1)][idx].field_256
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
                    require s + tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) >= s
                    idx = idx + 1
                    s = s + tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512)
                    continue 
                require s <= balanceOf[address(arg1)]
                if balanceOf[address(arg1)] - s < balanceOf[address(arg1)]:
                    require arg3 <= balanceOf[address(arg1)] - s
                else:
                    require arg3 <= balanceOf[address(arg1)]
    require calldata.size >= 100
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function transfer(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    if arg1 != msg.sender:
        if block.timestamp > publicEndTime:
            if not tokenGrantsCount[address(msg.sender)].field_0:
                require arg2 <= balanceOf[address(msg.sender)]
            else:
                idx = 0
                s = 0
                while idx < tokenGrantsCount[address(msg.sender)].field_0:
                    mem[32] = 4
                    require idx < tokenGrantsCount[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 4)
                    _109 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_109] = tokenGrantsCount[address(msg.sender)][idx].field_0
                    mem[_109 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                    mem[_109 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                    mem[_109 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                    mem[_109 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                    mem[_109 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                    mem[_109 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                    if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                        require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                        require s + tokenGrantsCount[address(msg.sender)][idx].field_256 >= s
                        idx = idx + 1
                        s = s + tokenGrantsCount[address(msg.sender)][idx].field_256
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
                    require s + tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) >= s
                    idx = idx + 1
                    s = s + tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512)
                    continue 
                require s <= balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                    require arg2 <= balanceOf[address(msg.sender)] - s
                else:
                    require arg2 <= balanceOf[address(msg.sender)]
        else:
            if bTNSold >= 105 * 10^10:
                if not tokenGrantsCount[address(msg.sender)].field_0:
                    require arg2 <= balanceOf[address(msg.sender)]
                else:
                    idx = 0
                    s = 0
                    while idx < tokenGrantsCount[address(msg.sender)].field_0:
                        mem[32] = 4
                        require idx < tokenGrantsCount[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 4)
                        _110 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_110] = tokenGrantsCount[address(msg.sender)][idx].field_0
                        mem[_110 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                        mem[_110 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                        mem[_110 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                        mem[_110 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                        mem[_110 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                        mem[_110 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                        if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                            require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                            require s + tokenGrantsCount[address(msg.sender)][idx].field_256 >= s
                            idx = idx + 1
                            s = s + tokenGrantsCount[address(msg.sender)][idx].field_256
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
                        require s + tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) >= s
                        idx = idx + 1
                        s = s + tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512)
                        continue 
                    require s <= balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                        require arg2 <= balanceOf[address(msg.sender)] - s
                    else:
                        require arg2 <= balanceOf[address(msg.sender)]
            else:
                require etherRaised >= hardcapInEth
                if not tokenGrantsCount[address(msg.sender)].field_0:
                    require arg2 <= balanceOf[address(msg.sender)]
                else:
                    idx = 0
                    s = 0
                    while idx < tokenGrantsCount[address(msg.sender)].field_0:
                        mem[32] = 4
                        require idx < tokenGrantsCount[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 4)
                        _111 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_111] = tokenGrantsCount[address(msg.sender)][idx].field_0
                        mem[_111 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                        mem[_111 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                        mem[_111 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                        mem[_111 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                        mem[_111 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                        mem[_111 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                        if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                            require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                            require s + tokenGrantsCount[address(msg.sender)][idx].field_256 >= s
                            idx = idx + 1
                            s = s + tokenGrantsCount[address(msg.sender)][idx].field_256
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
                        require s + tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) >= s
                        idx = idx + 1
                        s = s + tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512)
                        continue 
                    require s <= balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                        require arg2 <= balanceOf[address(msg.sender)] - s
                    else:
                        require arg2 <= balanceOf[address(msg.sender)]
        require calldata.size >= 68
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
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
            tokenGrantsCount[address(arg1)][arg2].field_576 = 0
            tokenGrantsCount[address(arg1)][arg2].field_640 = 0
            tokenGrantsCount[address(arg1)][arg2].field_704 = 0
            tokenGrantsCount[address(arg1)][arg2].field_712 = 0
            require 1 <= tokenGrantsCount[address(arg1)].field_0
            require tokenGrantsCount[address(arg1)].field_0 - 1 < tokenGrantsCount[address(arg1)].field_0
            require arg2 < tokenGrantsCount[address(arg1)].field_0
            tokenGrantsCount[address(arg1)][arg2].field_0 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_256 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_704 = uint64(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
            tokenGrantsCount[address(arg1)][arg2].field_712 = bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0) % 72057594037927936
            tokenGrantsCount[address(arg1)].field_0--
            if not tokenGrantsCount[address(arg1)].field_0 <= tokenGrantsCount[address(arg1)].field_0 - 1:
                idx = (3 * tokenGrantsCount[address(arg1)].field_0) - 3
                while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
                    tokenGrantsCount[address(arg1)][idx].field_0 = 0
                    tokenGrantsCount[address(arg1)][idx].field_256 = 0
                    tokenGrantsCount[address(arg1)][idx].field_512 = 0
                    tokenGrantsCount[address(arg1)][idx].field_576 = 0
                    tokenGrantsCount[address(arg1)][idx].field_640 = 0
                    tokenGrantsCount[address(arg1)][idx].field_704 = 0
                    tokenGrantsCount[address(arg1)][idx].field_712 = 0
                    idx = idx + 3
                    continue 
            require balanceOf[57005] + tokenGrantsCount[address(arg1)][arg2].field_256 >= balanceOf[57005]
            balanceOf[57005] += tokenGrantsCount[address(arg1)][arg2].field_256
            require tokenGrantsCount[address(arg1)][arg2].field_256 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= tokenGrantsCount[address(arg1)][arg2].field_256
            emit Transfer(tokenGrantsCount[address(arg1)][arg2].field_256, arg1, 57005);
        else:
            if uint64(block.timestamp) >= tokenGrantsCount[address(arg1)][arg2].field_576:
                require tokenGrantsCount[address(arg1)][arg2].field_256 <= tokenGrantsCount[address(arg1)][arg2].field_256
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = 0
                tokenGrantsCount[address(arg1)][arg2].field_256 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = 0
                tokenGrantsCount[address(arg1)][arg2].field_576 = 0
                tokenGrantsCount[address(arg1)][arg2].field_640 = 0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                require 1 <= tokenGrantsCount[address(arg1)].field_0
                require tokenGrantsCount[address(arg1)].field_0 - 1 < tokenGrantsCount[address(arg1)].field_0
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_256 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint64(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0) % 72057594037927936
                tokenGrantsCount[address(arg1)].field_0--
                if not tokenGrantsCount[address(arg1)].field_0 <= tokenGrantsCount[address(arg1)].field_0 - 1:
                    idx = (3 * tokenGrantsCount[address(arg1)].field_0) - 3
                    while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
                        tokenGrantsCount[address(arg1)][idx].field_0 = 0
                        tokenGrantsCount[address(arg1)][idx].field_256 = 0
                        tokenGrantsCount[address(arg1)][idx].field_512 = 0
                        tokenGrantsCount[address(arg1)][idx].field_576 = 0
                        tokenGrantsCount[address(arg1)][idx].field_640 = 0
                        tokenGrantsCount[address(arg1)][idx].field_704 = 0
                        tokenGrantsCount[address(arg1)][idx].field_712 = 0
                        idx = idx + 3
                        continue 
                require balanceOf[57005] >= balanceOf[57005]
                require 0 <= balanceOf[address(arg1)]
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
                tokenGrantsCount[address(arg1)][arg2].field_576 = 0
                tokenGrantsCount[address(arg1)][arg2].field_640 = 0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                require 1 <= tokenGrantsCount[address(arg1)].field_0
                require tokenGrantsCount[address(arg1)].field_0 - 1 < tokenGrantsCount[address(arg1)].field_0
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_256 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint64(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0) % 72057594037927936
                tokenGrantsCount[address(arg1)].field_0--
                if not tokenGrantsCount[address(arg1)].field_0 <= tokenGrantsCount[address(arg1)].field_0 - 1:
                    idx = (3 * tokenGrantsCount[address(arg1)].field_0) - 3
                    while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
                        tokenGrantsCount[address(arg1)][idx].field_0 = 0
                        tokenGrantsCount[address(arg1)][idx].field_256 = 0
                        tokenGrantsCount[address(arg1)][idx].field_512 = 0
                        tokenGrantsCount[address(arg1)][idx].field_576 = 0
                        tokenGrantsCount[address(arg1)][idx].field_640 = 0
                        tokenGrantsCount[address(arg1)][idx].field_704 = 0
                        tokenGrantsCount[address(arg1)][idx].field_712 = 0
                        idx = idx + 3
                        continue 
                require balanceOf[57005] + tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640) >= balanceOf[57005]
                balanceOf[57005] = balanceOf[57005] + tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640)
                require tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640) <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] = balanceOf[address(arg1)] - tokenGrantsCount[address(arg1)][arg2].field_256 + ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640)
                emit Transfer((tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640)), arg1, 57005);
    else:
        if uint64(block.timestamp) < tokenGrantsCount[address(arg1)][arg2].field_512:
            require 0 <= tokenGrantsCount[address(arg1)][arg2].field_256
            require arg2 < tokenGrantsCount[address(arg1)].field_0
            tokenGrantsCount[address(arg1)][arg2].field_0 = 0
            tokenGrantsCount[address(arg1)][arg2].field_256 = 0
            tokenGrantsCount[address(arg1)][arg2].field_512 = 0
            tokenGrantsCount[address(arg1)][arg2].field_576 = 0
            tokenGrantsCount[address(arg1)][arg2].field_640 = 0
            tokenGrantsCount[address(arg1)][arg2].field_704 = 0
            tokenGrantsCount[address(arg1)][arg2].field_712 = 0
            require 1 <= tokenGrantsCount[address(arg1)].field_0
            require tokenGrantsCount[address(arg1)].field_0 - 1 < tokenGrantsCount[address(arg1)].field_0
            require arg2 < tokenGrantsCount[address(arg1)].field_0
            tokenGrantsCount[address(arg1)][arg2].field_0 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_256 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_704 = uint64(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
            tokenGrantsCount[address(arg1)][arg2].field_712 = bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0) % 72057594037927936
            tokenGrantsCount[address(arg1)].field_0--
            if not tokenGrantsCount[address(arg1)].field_0 <= tokenGrantsCount[address(arg1)].field_0 - 1:
                idx = (3 * tokenGrantsCount[address(arg1)].field_0) - 3
                while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
                    tokenGrantsCount[address(arg1)][idx].field_0 = 0
                    tokenGrantsCount[address(arg1)][idx].field_256 = 0
                    tokenGrantsCount[address(arg1)][idx].field_512 = 0
                    tokenGrantsCount[address(arg1)][idx].field_576 = 0
                    tokenGrantsCount[address(arg1)][idx].field_640 = 0
                    tokenGrantsCount[address(arg1)][idx].field_704 = 0
                    tokenGrantsCount[address(arg1)][idx].field_712 = 0
                    idx = idx + 3
                    continue 
            require balanceOf[address(msg.sender)] + tokenGrantsCount[address(arg1)][arg2].field_256 >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += tokenGrantsCount[address(arg1)][arg2].field_256
            require tokenGrantsCount[address(arg1)][arg2].field_256 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= tokenGrantsCount[address(arg1)][arg2].field_256
            emit Transfer(tokenGrantsCount[address(arg1)][arg2].field_256, arg1, msg.sender);
        else:
            if uint64(block.timestamp) >= tokenGrantsCount[address(arg1)][arg2].field_576:
                require tokenGrantsCount[address(arg1)][arg2].field_256 <= tokenGrantsCount[address(arg1)][arg2].field_256
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = 0
                tokenGrantsCount[address(arg1)][arg2].field_256 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = 0
                tokenGrantsCount[address(arg1)][arg2].field_576 = 0
                tokenGrantsCount[address(arg1)][arg2].field_640 = 0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                require 1 <= tokenGrantsCount[address(arg1)].field_0
                require tokenGrantsCount[address(arg1)].field_0 - 1 < tokenGrantsCount[address(arg1)].field_0
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_256 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint64(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0) % 72057594037927936
                tokenGrantsCount[address(arg1)].field_0--
                if not tokenGrantsCount[address(arg1)].field_0 <= tokenGrantsCount[address(arg1)].field_0 - 1:
                    idx = (3 * tokenGrantsCount[address(arg1)].field_0) - 3
                    while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
                        tokenGrantsCount[address(arg1)][idx].field_0 = 0
                        tokenGrantsCount[address(arg1)][idx].field_256 = 0
                        tokenGrantsCount[address(arg1)][idx].field_512 = 0
                        tokenGrantsCount[address(arg1)][idx].field_576 = 0
                        tokenGrantsCount[address(arg1)][idx].field_640 = 0
                        tokenGrantsCount[address(arg1)][idx].field_704 = 0
                        tokenGrantsCount[address(arg1)][idx].field_712 = 0
                        idx = idx + 3
                        continue 
                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require 0 <= balanceOf[address(arg1)]
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
                tokenGrantsCount[address(arg1)][arg2].field_576 = 0
                tokenGrantsCount[address(arg1)][arg2].field_640 = 0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                require 1 <= tokenGrantsCount[address(arg1)].field_0
                require tokenGrantsCount[address(arg1)].field_0 - 1 < tokenGrantsCount[address(arg1)].field_0
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_256 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint64(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0) % 72057594037927936
                tokenGrantsCount[address(arg1)].field_0--
                if not tokenGrantsCount[address(arg1)].field_0 <= tokenGrantsCount[address(arg1)].field_0 - 1:
                    idx = (3 * tokenGrantsCount[address(arg1)].field_0) - 3
                    while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
                        tokenGrantsCount[address(arg1)][idx].field_0 = 0
                        tokenGrantsCount[address(arg1)][idx].field_256 = 0
                        tokenGrantsCount[address(arg1)][idx].field_512 = 0
                        tokenGrantsCount[address(arg1)][idx].field_576 = 0
                        tokenGrantsCount[address(arg1)][idx].field_640 = 0
                        tokenGrantsCount[address(arg1)][idx].field_704 = 0
                        tokenGrantsCount[address(arg1)][idx].field_712 = 0
                        idx = idx + 3
                        continue 
                require balanceOf[address(msg.sender)] + tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640)
                require tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640) <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] = balanceOf[address(arg1)] - tokenGrantsCount[address(arg1)][arg2].field_256 + ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640)
                emit Transfer((tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640)), arg1, msg.sender);
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
                if block.timestamp > publicEndTime:
                    if not tokenGrantsCount[address(msg.sender)].field_0:
                        require arg2 <= balanceOf[address(msg.sender)]
                    else:
                        idx = 0
                        s = 0
                        while idx < tokenGrantsCount[address(msg.sender)].field_0:
                            mem[32] = 4
                            require idx < tokenGrantsCount[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 4)
                            _530 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_530] = tokenGrantsCount[address(msg.sender)][idx].field_0
                            mem[_530 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                            mem[_530 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                            mem[_530 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                            mem[_530 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                            mem[_530 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                            mem[_530 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                            if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                require s + tokenGrantsCount[address(msg.sender)][idx].field_256 >= s
                                idx = idx + 1
                                s = s + tokenGrantsCount[address(msg.sender)][idx].field_256
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
                            require s + tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) >= s
                            idx = idx + 1
                            s = s + tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512)
                            continue 
                        require s <= balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                            require arg2 <= balanceOf[address(msg.sender)] - s
                        else:
                            require arg2 <= balanceOf[address(msg.sender)]
                else:
                    if bTNSold >= 105 * 10^10:
                        if not tokenGrantsCount[address(msg.sender)].field_0:
                            require arg2 <= balanceOf[address(msg.sender)]
                        else:
                            idx = 0
                            s = 0
                            while idx < tokenGrantsCount[address(msg.sender)].field_0:
                                mem[32] = 4
                                require idx < tokenGrantsCount[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 4)
                                _531 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_531] = tokenGrantsCount[address(msg.sender)][idx].field_0
                                mem[_531 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                                mem[_531 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                                mem[_531 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                                mem[_531 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                                mem[_531 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                                mem[_531 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                                if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                    require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                    require s + tokenGrantsCount[address(msg.sender)][idx].field_256 >= s
                                    idx = idx + 1
                                    s = s + tokenGrantsCount[address(msg.sender)][idx].field_256
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
                                require s + tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) >= s
                                idx = idx + 1
                                s = s + tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512)
                                continue 
                            require s <= balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                                require arg2 <= balanceOf[address(msg.sender)] - s
                            else:
                                require arg2 <= balanceOf[address(msg.sender)]
                    else:
                        require etherRaised >= hardcapInEth
                        if not tokenGrantsCount[address(msg.sender)].field_0:
                            require arg2 <= balanceOf[address(msg.sender)]
                        else:
                            idx = 0
                            s = 0
                            while idx < tokenGrantsCount[address(msg.sender)].field_0:
                                mem[32] = 4
                                require idx < tokenGrantsCount[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 4)
                                _532 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_532] = tokenGrantsCount[address(msg.sender)][idx].field_0
                                mem[_532 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                                mem[_532 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                                mem[_532 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                                mem[_532 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                                mem[_532 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                                mem[_532 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                                if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                    require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                    require s + tokenGrantsCount[address(msg.sender)][idx].field_256 >= s
                                    idx = idx + 1
                                    s = s + tokenGrantsCount[address(msg.sender)][idx].field_256
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
                                require s + tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) >= s
                                idx = idx + 1
                                s = s + tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512)
                                continue 
                            require s <= balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                                require arg2 <= balanceOf[address(msg.sender)] - s
                            else:
                                require arg2 <= balanceOf[address(msg.sender)]
                require calldata.size >= 68
                require arg2 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2
                require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += arg2
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
                if block.timestamp > publicEndTime:
                    if not tokenGrantsCount[address(msg.sender)].field_0:
                        require arg2 <= balanceOf[address(msg.sender)]
                    else:
                        idx = 0
                        s = 0
                        while idx < tokenGrantsCount[address(msg.sender)].field_0:
                            mem[32] = 4
                            require idx < tokenGrantsCount[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 4)
                            _533 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_533] = tokenGrantsCount[address(msg.sender)][idx].field_0
                            mem[_533 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                            mem[_533 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                            mem[_533 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                            mem[_533 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                            mem[_533 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                            mem[_533 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                            if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                require s + tokenGrantsCount[address(msg.sender)][idx].field_256 >= s
                                idx = idx + 1
                                s = s + tokenGrantsCount[address(msg.sender)][idx].field_256
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
                            require s + tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) >= s
                            idx = idx + 1
                            s = s + tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512)
                            continue 
                        require s <= balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                            require arg2 <= balanceOf[address(msg.sender)] - s
                        else:
                            require arg2 <= balanceOf[address(msg.sender)]
                else:
                    if bTNSold >= 105 * 10^10:
                        if not tokenGrantsCount[address(msg.sender)].field_0:
                            require arg2 <= balanceOf[address(msg.sender)]
                        else:
                            idx = 0
                            s = 0
                            while idx < tokenGrantsCount[address(msg.sender)].field_0:
                                mem[32] = 4
                                require idx < tokenGrantsCount[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 4)
                                _534 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_534] = tokenGrantsCount[address(msg.sender)][idx].field_0
                                mem[_534 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                                mem[_534 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                                mem[_534 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                                mem[_534 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                                mem[_534 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                                mem[_534 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                                if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                    require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                    require s + tokenGrantsCount[address(msg.sender)][idx].field_256 >= s
                                    idx = idx + 1
                                    s = s + tokenGrantsCount[address(msg.sender)][idx].field_256
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
                                require s + tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) >= s
                                idx = idx + 1
                                s = s + tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512)
                                continue 
                            require s <= balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                                require arg2 <= balanceOf[address(msg.sender)] - s
                            else:
                                require arg2 <= balanceOf[address(msg.sender)]
                    else:
                        require etherRaised >= hardcapInEth
                        if not tokenGrantsCount[address(msg.sender)].field_0:
                            require arg2 <= balanceOf[address(msg.sender)]
                        else:
                            idx = 0
                            s = 0
                            while idx < tokenGrantsCount[address(msg.sender)].field_0:
                                mem[32] = 4
                                require idx < tokenGrantsCount[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 4)
                                _535 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_535] = tokenGrantsCount[address(msg.sender)][idx].field_0
                                mem[_535 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                                mem[_535 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                                mem[_535 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                                mem[_535 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                                mem[_535 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                                mem[_535 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                                if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                    require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                    require s + tokenGrantsCount[address(msg.sender)][idx].field_256 >= s
                                    idx = idx + 1
                                    s = s + tokenGrantsCount[address(msg.sender)][idx].field_256
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
                                require s + tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) >= s
                                idx = idx + 1
                                s = s + tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512)
                                continue 
                            require s <= balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                                require arg2 <= balanceOf[address(msg.sender)] - s
                            else:
                                require arg2 <= balanceOf[address(msg.sender)]
                require calldata.size >= 68
                require arg2 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2
                require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
    else:
        idx = (3 * tokenGrantsCount[address(arg1)].field_0) + 3
        while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
            tokenGrantsCount[address(arg1)][idx].field_0 = 0
            tokenGrantsCount[address(arg1)][idx].field_256 = 0
            tokenGrantsCount[address(arg1)][idx].field_512 = 0
            tokenGrantsCount[address(arg1)][idx].field_576 = 0
            tokenGrantsCount[address(arg1)][idx].field_640 = 0
            tokenGrantsCount[address(arg1)][idx].field_704 = 0
            tokenGrantsCount[address(arg1)][idx].field_712 = 0
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
                if block.timestamp > publicEndTime:
                    if not tokenGrantsCount[address(msg.sender)].field_0:
                        require arg2 <= balanceOf[address(msg.sender)]
                    else:
                        idx = 0
                        s = 0
                        while idx < tokenGrantsCount[address(msg.sender)].field_0:
                            mem[32] = 4
                            require idx < tokenGrantsCount[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 4)
                            _958 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_958] = tokenGrantsCount[address(msg.sender)][idx].field_0
                            mem[_958 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                            mem[_958 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                            mem[_958 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                            mem[_958 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                            mem[_958 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                            mem[_958 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                            if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                require s + tokenGrantsCount[address(msg.sender)][idx].field_256 >= s
                                idx = idx + 1
                                s = s + tokenGrantsCount[address(msg.sender)][idx].field_256
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
                            require s + tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) >= s
                            idx = idx + 1
                            s = s + tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512)
                            continue 
                        require s <= balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                            require arg2 <= balanceOf[address(msg.sender)] - s
                        else:
                            require arg2 <= balanceOf[address(msg.sender)]
                else:
                    if bTNSold >= 105 * 10^10:
                        if not tokenGrantsCount[address(msg.sender)].field_0:
                            require arg2 <= balanceOf[address(msg.sender)]
                        else:
                            idx = 0
                            s = 0
                            while idx < tokenGrantsCount[address(msg.sender)].field_0:
                                mem[32] = 4
                                require idx < tokenGrantsCount[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 4)
                                _959 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_959] = tokenGrantsCount[address(msg.sender)][idx].field_0
                                mem[_959 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                                mem[_959 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                                mem[_959 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                                mem[_959 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                                mem[_959 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                                mem[_959 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                                if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                    require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                    require s + tokenGrantsCount[address(msg.sender)][idx].field_256 >= s
                                    idx = idx + 1
                                    s = s + tokenGrantsCount[address(msg.sender)][idx].field_256
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
                                require s + tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) >= s
                                idx = idx + 1
                                s = s + tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512)
                                continue 
                            require s <= balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                                require arg2 <= balanceOf[address(msg.sender)] - s
                            else:
                                require arg2 <= balanceOf[address(msg.sender)]
                    else:
                        require etherRaised >= hardcapInEth
                        if not tokenGrantsCount[address(msg.sender)].field_0:
                            require arg2 <= balanceOf[address(msg.sender)]
                        else:
                            idx = 0
                            s = 0
                            while idx < tokenGrantsCount[address(msg.sender)].field_0:
                                mem[32] = 4
                                require idx < tokenGrantsCount[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 4)
                                _960 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_960] = tokenGrantsCount[address(msg.sender)][idx].field_0
                                mem[_960 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                                mem[_960 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                                mem[_960 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                                mem[_960 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                                mem[_960 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                                mem[_960 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                                if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                    require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                    require s + tokenGrantsCount[address(msg.sender)][idx].field_256 >= s
                                    idx = idx + 1
                                    s = s + tokenGrantsCount[address(msg.sender)][idx].field_256
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
                                require s + tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) >= s
                                idx = idx + 1
                                s = s + tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512)
                                continue 
                            require s <= balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                                require arg2 <= balanceOf[address(msg.sender)] - s
                            else:
                                require arg2 <= balanceOf[address(msg.sender)]
                require calldata.size >= 68
                require arg2 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2
                require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += arg2
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
                if block.timestamp > publicEndTime:
                    if not tokenGrantsCount[address(msg.sender)].field_0:
                        require arg2 <= balanceOf[address(msg.sender)]
                    else:
                        idx = 0
                        s = 0
                        while idx < tokenGrantsCount[address(msg.sender)].field_0:
                            mem[32] = 4
                            require idx < tokenGrantsCount[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 4)
                            _961 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_961] = tokenGrantsCount[address(msg.sender)][idx].field_0
                            mem[_961 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                            mem[_961 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                            mem[_961 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                            mem[_961 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                            mem[_961 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                            mem[_961 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                            if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                require s + tokenGrantsCount[address(msg.sender)][idx].field_256 >= s
                                idx = idx + 1
                                s = s + tokenGrantsCount[address(msg.sender)][idx].field_256
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
                            require s + tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) >= s
                            idx = idx + 1
                            s = s + tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512)
                            continue 
                        require s <= balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                            require arg2 <= balanceOf[address(msg.sender)] - s
                        else:
                            require arg2 <= balanceOf[address(msg.sender)]
                else:
                    if bTNSold >= 105 * 10^10:
                        if not tokenGrantsCount[address(msg.sender)].field_0:
                            require arg2 <= balanceOf[address(msg.sender)]
                        else:
                            idx = 0
                            s = 0
                            while idx < tokenGrantsCount[address(msg.sender)].field_0:
                                mem[32] = 4
                                require idx < tokenGrantsCount[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 4)
                                _962 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_962] = tokenGrantsCount[address(msg.sender)][idx].field_0
                                mem[_962 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                                mem[_962 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                                mem[_962 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                                mem[_962 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                                mem[_962 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                                mem[_962 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                                if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                    require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                    require s + tokenGrantsCount[address(msg.sender)][idx].field_256 >= s
                                    idx = idx + 1
                                    s = s + tokenGrantsCount[address(msg.sender)][idx].field_256
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
                                require s + tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) >= s
                                idx = idx + 1
                                s = s + tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512)
                                continue 
                            require s <= balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                                require arg2 <= balanceOf[address(msg.sender)] - s
                            else:
                                require arg2 <= balanceOf[address(msg.sender)]
                    else:
                        require etherRaised >= hardcapInEth
                        if not tokenGrantsCount[address(msg.sender)].field_0:
                            require arg2 <= balanceOf[address(msg.sender)]
                        else:
                            idx = 0
                            s = 0
                            while idx < tokenGrantsCount[address(msg.sender)].field_0:
                                mem[32] = 4
                                require idx < tokenGrantsCount[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 4)
                                _963 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_963] = tokenGrantsCount[address(msg.sender)][idx].field_0
                                mem[_963 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                                mem[_963 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                                mem[_963 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                                mem[_963 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                                mem[_963 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                                mem[_963 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                                if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                    require 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256
                                    require s + tokenGrantsCount[address(msg.sender)][idx].field_256 >= s
                                    idx = idx + 1
                                    s = s + tokenGrantsCount[address(msg.sender)][idx].field_256
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
                                require s + tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) >= s
                                idx = idx + 1
                                s = s + tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512)
                                continue 
                            require s <= balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                                require arg2 <= balanceOf[address(msg.sender)] - s
                            else:
                                require arg2 <= balanceOf[address(msg.sender)]
                require calldata.size >= 68
                require arg2 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2
                require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
    emit NewTokenGrant(arg2, tokenGrantsCount[address(arg1)].field_0, msg.sender, arg1);
}



}
