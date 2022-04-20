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
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
address stor15;
address stor16;
address stor17;
address stor18;

function _fallback() payable {
    stor3 = 20
    bool(stor5.length) = 0
    stor5.length.field_1 = 11
    stor5.length.field_8 = 'BitProperty' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor6.length) = 0
    stor6.length.field_1 = 3
    stor6.length.field_8 = 'BTP' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor7 = 3
    stor10 = 29 * 10^11
    require not msg.value
    require code.data[9196 len 32] > code.data[9228 len 32]
    require code.data[9144 len 20]
    require code.data[9176 len 20]
    stor17 = msg.sender
    stor11 = code.data[9196 len 32]
    stor12 = code.data[9228 len 32]
    stor13 = code.data[9196 len 32] + (720 * 24 * 3600)
    stor15 = code.data[9144 len 20]
    stor16 = code.data[9176 len 20]
    stor14 = code.data[9260 len 32]
    stor18 = code.data[9304 len 20]
    stor1[code.data[9176 len 20]] += 384160345 * 3600
    stor1[stor17] += 1017022758000
    stor1[stor17] += 5 * 10^11
    stor8 = 10 * 10^6
    stor9 = code.data[9196 len 32]
    return code.data[678 len 8454]
}



// =====================  Runtime code  =====================


const sub_52292ff1(?) = 1017022758000

const PRICE_PREBUY = 13350000

const ALLOC_CROWDSALE = 5 * 10^11

const ALLOC_TEAM = (384160345 * 3600)

const PRICE_STANDARD = 10 * 10^6


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 stor3;
array of struct tokenGrantsCount;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 sub_248caaf6;
uint256 sub_546b7220;
uint256 totalSupply;
uint256 publicStartTime;
uint256 privateStartTime;
uint256 publicEndTime;
uint256 hardcapInEth;
address multisigAddress;
address teamAddress;
address ownerAddress;
address preBuy1Address;
uint256 etherRaised;
uint256 sub_451d800f;
uint256 sub_b84a2282;
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

function teamAddress() {
    return teamAddress
}

function sub_248caaf6(?) {
    return sub_248caaf6
}

function preBuy1() {
    return preBuy1Address
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

function sub_451d800f(?) {
    return sub_451d800f
}

function multisigAddress() {
    return multisigAddress
}

function sub_546b7220(?) {
    return sub_546b7220
}

function publicStartTime() {
    return publicStartTime
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function privateStartTime() {
    return privateStartTime
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

function sub_b84a2282(?) {
    return sub_b84a2282
}

function halted() {
    return bool(halted)
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
    if not arg1:
        return (arg2 * arg1 / 10^18)
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
    return 1
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

function withdrawToken(address arg1) {
    require ownerAddress == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
}

function calculateVestedTokens(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    if arg2 < arg4:
        return 0
    if arg2 >= arg5:
        return arg1
    require arg3 <= arg2
    if not arg1:
        if arg3 <= arg5:
            if arg5 - arg3:
                return ((arg2 * arg1) - (arg3 * arg1) / arg5 - arg3)
    else:
        if arg1:
            if (arg2 * arg1) - (arg3 * arg1) / arg1 == arg2 - arg3:
                if arg3 <= arg5:
                    if arg5 - arg3:
                        return ((arg2 * arg1) - (arg3 * arg1) / arg5 - arg3)
    revert
}

function preBuy() payable {
    require block.timestamp >= privateStartTime
    require block.timestamp < publicStartTime
    require not halted
    require preBuy1Address == msg.sender
    require sub_b84a2282 <= 1017022758000
    if msg.value:
        require msg.value
        require 13350000 * msg.value / msg.value == 13350000
    require 13350000 * msg.value / 10^18 <= -sub_b84a2282 + 1017022758000
    require 13350000 * msg.value / 10^18 <= balanceOf[stor17]
    balanceOf[stor17] -= 13350000 * msg.value / 10^18
    require (13350000 * msg.value / 10^18) + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = (13350000 * msg.value / 10^18) + balanceOf[msg.sender]
    call multisigAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    sub_b84a2282 += 13350000 * msg.value / 10^18
    emit PreBuy((13350000 * msg.value / 10^18));
}

function _fallback() payable {
    require block.timestamp >= publicStartTime
    require block.timestamp <= publicEndTime
    require sub_451d800f < 5 * 10^11
    require etherRaised < hardcapInEth
    require not halted
    etherRaised += msg.value
    require sub_451d800f <= 5 * 10^11
    if msg.value:
        require msg.value
        require sub_248caaf6 * msg.value / msg.value == sub_248caaf6
    require sub_248caaf6 * msg.value / 10^18 <= -sub_451d800f + 5 * 10^11
    require sub_248caaf6 * msg.value / 10^18 <= balanceOf[stor17]
    balanceOf[stor17] -= sub_248caaf6 * msg.value / 10^18
    require (sub_248caaf6 * msg.value / 10^18) + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = (sub_248caaf6 * msg.value / 10^18) + balanceOf[msg.sender]
    call multisigAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    sub_451d800f += sub_248caaf6 * msg.value / 10^18
    emit Buy((sub_248caaf6 * msg.value / 10^18), msg.sender);
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
        if tokenGrantsCount[address(arg1)][arg2].field_512 <= tokenGrantsCount[address(arg1)][arg2].field_576:
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
            if (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_512 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(arg1)][arg2].field_512:
                if tokenGrantsCount[address(arg1)][arg2].field_512 <= tokenGrantsCount[address(arg1)][arg2].field_576:
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
                if 0 <= tokenGrantsCount[address(arg1)][idx].field_256:
                    if tokenGrantsCount[address(arg1)][idx].field_256 + s >= s:
                        idx = idx + 1
                        s = tokenGrantsCount[address(arg1)][idx].field_256 + s
                        continue 
            else:
                if arg2 >= tokenGrantsCount[address(arg1)][idx].field_576:
                    if tokenGrantsCount[address(arg1)][idx].field_256 <= tokenGrantsCount[address(arg1)][idx].field_256:
                        if s >= s:
                            idx = idx + 1
                            s = s
                            continue 
                else:
                    if tokenGrantsCount[address(arg1)][idx].field_640 <= arg2:
                        if not tokenGrantsCount[address(arg1)][idx].field_256:
                            if tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_576:
                                if tokenGrantsCount[address(arg1)][idx].field_576 - tokenGrantsCount[address(arg1)][idx].field_512:
                                    if (arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_256:
                                        if tokenGrantsCount[address(arg1)][idx].field_256 - ((arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s >= s:
                                            idx = idx + 1
                                            s = tokenGrantsCount[address(arg1)][idx].field_256 - ((arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s
                                            continue 
                        else:
                            if tokenGrantsCount[address(arg1)][idx].field_256:
                                if (arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_256 == arg2 - tokenGrantsCount[address(arg1)][idx].field_512:
                                    if tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_576:
                                        if tokenGrantsCount[address(arg1)][idx].field_576 - tokenGrantsCount[address(arg1)][idx].field_512:
                                            if (arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_256:
                                                if tokenGrantsCount[address(arg1)][idx].field_256 - ((arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s >= s:
                                                    idx = idx + 1
                                                    s = tokenGrantsCount[address(arg1)][idx].field_256 - ((arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s
                                                    continue 
            revert
        require s <= balanceOf[address(arg1)]
        if balanceOf[address(arg1)] - s < balanceOf[address(arg1)]:
            return (balanceOf[address(arg1)] - s)
    return balanceOf[address(arg1)]
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
                _165 = mem[64]
                mem[64] = mem[64] + 224
                mem[_165] = tokenGrantsCount[address(arg1)][idx].field_0
                mem[_165 + 32] = tokenGrantsCount[address(arg1)][idx].field_256
                mem[_165 + 64] = tokenGrantsCount[address(arg1)][idx].field_512
                mem[_165 + 96] = tokenGrantsCount[address(arg1)][idx].field_576
                mem[_165 + 128] = tokenGrantsCount[address(arg1)][idx].field_640
                mem[_165 + 160] = bool(tokenGrantsCount[address(arg1)][idx].field_704)
                mem[_165 + 192] = bool(tokenGrantsCount[address(arg1)][idx].field_712)
                if uint64(block.timestamp) < tokenGrantsCount[address(arg1)][idx].field_512:
                    if 0 <= tokenGrantsCount[address(arg1)][idx].field_256:
                        if tokenGrantsCount[address(arg1)][idx].field_256 + s >= s:
                            idx = idx + 1
                            s = tokenGrantsCount[address(arg1)][idx].field_256 + s
                            continue 
                else:
                    if uint64(block.timestamp) >= tokenGrantsCount[address(arg1)][idx].field_576:
                        if tokenGrantsCount[address(arg1)][idx].field_256 <= tokenGrantsCount[address(arg1)][idx].field_256:
                            if s >= s:
                                idx = idx + 1
                                s = s
                                continue 
                    else:
                        if tokenGrantsCount[address(arg1)][idx].field_640 <= uint64(block.timestamp):
                            if not tokenGrantsCount[address(arg1)][idx].field_256:
                                if tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_576:
                                    if tokenGrantsCount[address(arg1)][idx].field_576 - tokenGrantsCount[address(arg1)][idx].field_512:
                                        if (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_256:
                                            if tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s >= s:
                                                idx = idx + 1
                                                s = tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s
                                                continue 
                            else:
                                if tokenGrantsCount[address(arg1)][idx].field_256:
                                    if (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(arg1)][idx].field_512:
                                        if tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_576:
                                            if tokenGrantsCount[address(arg1)][idx].field_576 - tokenGrantsCount[address(arg1)][idx].field_512:
                                                if (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_256:
                                                    if tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s >= s:
                                                        idx = idx + 1
                                                        s = tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s
                                                        continue 
                revert
            require s <= balanceOf[address(arg1)]
            if balanceOf[address(arg1)] - s < balanceOf[address(arg1)]:
                require arg3 <= balanceOf[address(arg1)] - s
            else:
                require arg3 <= balanceOf[address(arg1)]
    else:
        if sub_451d800f >= 5 * 10^11:
            if not tokenGrantsCount[address(arg1)].field_0:
                require arg3 <= balanceOf[address(arg1)]
            else:
                idx = 0
                s = 0
                while idx < tokenGrantsCount[address(arg1)].field_0:
                    mem[32] = 4
                    require idx < tokenGrantsCount[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 4)
                    _164 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_164] = tokenGrantsCount[address(arg1)][idx].field_0
                    mem[_164 + 32] = tokenGrantsCount[address(arg1)][idx].field_256
                    mem[_164 + 64] = tokenGrantsCount[address(arg1)][idx].field_512
                    mem[_164 + 96] = tokenGrantsCount[address(arg1)][idx].field_576
                    mem[_164 + 128] = tokenGrantsCount[address(arg1)][idx].field_640
                    mem[_164 + 160] = bool(tokenGrantsCount[address(arg1)][idx].field_704)
                    mem[_164 + 192] = bool(tokenGrantsCount[address(arg1)][idx].field_712)
                    if uint64(block.timestamp) < tokenGrantsCount[address(arg1)][idx].field_512:
                        if 0 <= tokenGrantsCount[address(arg1)][idx].field_256:
                            if tokenGrantsCount[address(arg1)][idx].field_256 + s >= s:
                                idx = idx + 1
                                s = tokenGrantsCount[address(arg1)][idx].field_256 + s
                                continue 
                    else:
                        if uint64(block.timestamp) >= tokenGrantsCount[address(arg1)][idx].field_576:
                            if tokenGrantsCount[address(arg1)][idx].field_256 <= tokenGrantsCount[address(arg1)][idx].field_256:
                                if s >= s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                        else:
                            if tokenGrantsCount[address(arg1)][idx].field_640 <= uint64(block.timestamp):
                                if not tokenGrantsCount[address(arg1)][idx].field_256:
                                    if tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_576:
                                        if tokenGrantsCount[address(arg1)][idx].field_576 - tokenGrantsCount[address(arg1)][idx].field_512:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_256:
                                                if tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s >= s:
                                                    idx = idx + 1
                                                    s = tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s
                                                    continue 
                                else:
                                    if tokenGrantsCount[address(arg1)][idx].field_256:
                                        if (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(arg1)][idx].field_512:
                                            if tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_576:
                                                if tokenGrantsCount[address(arg1)][idx].field_576 - tokenGrantsCount[address(arg1)][idx].field_512:
                                                    if (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_256:
                                                        if tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s >= s:
                                                            idx = idx + 1
                                                            s = tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s
                                                            continue 
                    revert
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
                    _163 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_163] = tokenGrantsCount[address(arg1)][idx].field_0
                    mem[_163 + 32] = tokenGrantsCount[address(arg1)][idx].field_256
                    mem[_163 + 64] = tokenGrantsCount[address(arg1)][idx].field_512
                    mem[_163 + 96] = tokenGrantsCount[address(arg1)][idx].field_576
                    mem[_163 + 128] = tokenGrantsCount[address(arg1)][idx].field_640
                    mem[_163 + 160] = bool(tokenGrantsCount[address(arg1)][idx].field_704)
                    mem[_163 + 192] = bool(tokenGrantsCount[address(arg1)][idx].field_712)
                    if uint64(block.timestamp) < tokenGrantsCount[address(arg1)][idx].field_512:
                        if 0 <= tokenGrantsCount[address(arg1)][idx].field_256:
                            if tokenGrantsCount[address(arg1)][idx].field_256 + s >= s:
                                idx = idx + 1
                                s = tokenGrantsCount[address(arg1)][idx].field_256 + s
                                continue 
                    else:
                        if uint64(block.timestamp) >= tokenGrantsCount[address(arg1)][idx].field_576:
                            if tokenGrantsCount[address(arg1)][idx].field_256 <= tokenGrantsCount[address(arg1)][idx].field_256:
                                if s >= s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                        else:
                            if tokenGrantsCount[address(arg1)][idx].field_640 <= uint64(block.timestamp):
                                if not tokenGrantsCount[address(arg1)][idx].field_256:
                                    if tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_576:
                                        if tokenGrantsCount[address(arg1)][idx].field_576 - tokenGrantsCount[address(arg1)][idx].field_512:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_256:
                                                if tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s >= s:
                                                    idx = idx + 1
                                                    s = tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s
                                                    continue 
                                else:
                                    if tokenGrantsCount[address(arg1)][idx].field_256:
                                        if (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(arg1)][idx].field_512:
                                            if tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_576:
                                                if tokenGrantsCount[address(arg1)][idx].field_576 - tokenGrantsCount[address(arg1)][idx].field_512:
                                                    if (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_256:
                                                        if tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s >= s:
                                                            idx = idx + 1
                                                            s = tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s
                                                            continue 
                    revert
                require s <= balanceOf[address(arg1)]
                if balanceOf[address(arg1)] - s < balanceOf[address(arg1)]:
                    require arg3 <= balanceOf[address(arg1)] - s
                else:
                    require arg3 <= balanceOf[address(arg1)]
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
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
                _129 = mem[64]
                mem[64] = mem[64] + 224
                mem[_129] = tokenGrantsCount[address(msg.sender)][idx].field_0
                mem[_129 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                mem[_129 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                mem[_129 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                mem[_129 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                mem[_129 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                mem[_129 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                    if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                        if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                            idx = idx + 1
                            s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                            continue 
                else:
                    if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                        if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                            if s >= s:
                                idx = idx + 1
                                s = s
                                continue 
                    else:
                        if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                            if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                        if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                idx = idx + 1
                                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                continue 
                            else:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                        idx = idx + 1
                                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                        continue 
                revert
            require s <= balanceOf[address(msg.sender)]
            if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                require arg2 <= balanceOf[address(msg.sender)] - s
            else:
                require arg2 <= balanceOf[address(msg.sender)]
    else:
        if sub_451d800f >= 5 * 10^11:
            if not tokenGrantsCount[address(msg.sender)].field_0:
                require arg2 <= balanceOf[address(msg.sender)]
            else:
                idx = 0
                s = 0
                while idx < tokenGrantsCount[address(msg.sender)].field_0:
                    mem[32] = 4
                    require idx < tokenGrantsCount[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 4)
                    _128 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_128] = tokenGrantsCount[address(msg.sender)][idx].field_0
                    mem[_128 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                    mem[_128 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                    mem[_128 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                    mem[_128 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                    mem[_128 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                    mem[_128 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                    if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                        if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                            if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                idx = idx + 1
                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                continue 
                    else:
                        if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                            if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                if s >= s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                        else:
                            if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                    idx = idx + 1
                                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                    continue 
                                else:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                    if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                        if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                            idx = idx + 1
                                                            s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                            continue 
                    revert
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
                    _127 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_127] = tokenGrantsCount[address(msg.sender)][idx].field_0
                    mem[_127 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                    mem[_127 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                    mem[_127 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                    mem[_127 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                    mem[_127 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                    mem[_127 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                    if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                        if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                            if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                idx = idx + 1
                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                continue 
                    else:
                        if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                            if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                if s >= s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                        else:
                            if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                    idx = idx + 1
                                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                    continue 
                                else:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                    if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                        if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                            idx = idx + 1
                                                            s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                            continue 
                    revert
                require s <= balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                    require arg2 <= balanceOf[address(msg.sender)] - s
                else:
                    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
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

function sub_62494e24(?) {
    require uint64(block.timestamp) >= uint64(block.timestamp)
    require uint64(block.timestamp + (4368 * 24 * 3600)) >= uint64(block.timestamp)
    require tokenGrantsCount[address(arg1)].field_0 < stor3
    tokenGrantsCount[address(arg1)].field_0++
    if not tokenGrantsCount[address(arg1)].field_0 > tokenGrantsCount[address(arg1)].field_0 + 1:
        mem[64] = 320
        tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = 0
        tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = 0
        tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = arg2
        tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_512 = uint64(block.timestamp)
        tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_576 = uint64(block.timestamp + (4368 * 24 * 3600))
        tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_640 = uint64(block.timestamp)
        tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_704 = 0
        tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_712 = 0
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
                    _267 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_267] = tokenGrantsCount[address(msg.sender)][idx].field_0
                    mem[_267 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                    mem[_267 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                    mem[_267 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                    mem[_267 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                    mem[_267 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                    mem[_267 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                    if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                        if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                            if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                idx = idx + 1
                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                continue 
                    else:
                        if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                            if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                if s >= s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                        else:
                            if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                    idx = idx + 1
                                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                    continue 
                                else:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                    if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                        if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                            idx = idx + 1
                                                            s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                            continue 
                    revert
                require s <= balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                    require arg2 <= balanceOf[address(msg.sender)] - s
                else:
                    require arg2 <= balanceOf[address(msg.sender)]
        else:
            if sub_451d800f >= 5 * 10^11:
                if not tokenGrantsCount[address(msg.sender)].field_0:
                    require arg2 <= balanceOf[address(msg.sender)]
                else:
                    idx = 0
                    s = 0
                    while idx < tokenGrantsCount[address(msg.sender)].field_0:
                        mem[32] = 4
                        require idx < tokenGrantsCount[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 4)
                        _266 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_266] = tokenGrantsCount[address(msg.sender)][idx].field_0
                        mem[_266 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                        mem[_266 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                        mem[_266 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                        mem[_266 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                        mem[_266 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                        mem[_266 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                        if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                            if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                    idx = idx + 1
                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                    continue 
                        else:
                            if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if s >= s:
                                        idx = idx + 1
                                        s = s
                                        continue 
                            else:
                                if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                    if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                        idx = idx + 1
                                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                        continue 
                                    else:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                        if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                            if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                                idx = idx + 1
                                                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                                continue 
                        revert
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
                        _265 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_265] = tokenGrantsCount[address(msg.sender)][idx].field_0
                        mem[_265 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                        mem[_265 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                        mem[_265 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                        mem[_265 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                        mem[_265 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                        mem[_265 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                        if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                            if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                    idx = idx + 1
                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                    continue 
                        else:
                            if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if s >= s:
                                        idx = idx + 1
                                        s = s
                                        continue 
                            else:
                                if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                    if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                        idx = idx + 1
                                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                        continue 
                                    else:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                        if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                            if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                                idx = idx + 1
                                                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                                continue 
                        revert
                    require s <= balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                        require arg2 <= balanceOf[address(msg.sender)] - s
                    else:
                        require arg2 <= balanceOf[address(msg.sender)]
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
        tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = arg2
        tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_512 = uint64(block.timestamp)
        tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_576 = uint64(block.timestamp + (4368 * 24 * 3600))
        tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_640 = uint64(block.timestamp)
        tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_704 = 0
        tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_712 = 0
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
                    _480 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_480] = tokenGrantsCount[address(msg.sender)][idx].field_0
                    mem[_480 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                    mem[_480 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                    mem[_480 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                    mem[_480 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                    mem[_480 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                    mem[_480 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                    if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                        if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                            if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                idx = idx + 1
                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                continue 
                    else:
                        if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                            if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                if s >= s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                        else:
                            if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                    idx = idx + 1
                                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                    continue 
                                else:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                    if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                        if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                            idx = idx + 1
                                                            s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                            continue 
                    revert
                require s <= balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                    require arg2 <= balanceOf[address(msg.sender)] - s
                else:
                    require arg2 <= balanceOf[address(msg.sender)]
        else:
            if sub_451d800f >= 5 * 10^11:
                if not tokenGrantsCount[address(msg.sender)].field_0:
                    require arg2 <= balanceOf[address(msg.sender)]
                else:
                    idx = 0
                    s = 0
                    while idx < tokenGrantsCount[address(msg.sender)].field_0:
                        mem[32] = 4
                        require idx < tokenGrantsCount[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 4)
                        _479 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_479] = tokenGrantsCount[address(msg.sender)][idx].field_0
                        mem[_479 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                        mem[_479 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                        mem[_479 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                        mem[_479 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                        mem[_479 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                        mem[_479 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                        if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                            if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                    idx = idx + 1
                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                    continue 
                        else:
                            if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if s >= s:
                                        idx = idx + 1
                                        s = s
                                        continue 
                            else:
                                if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                    if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                        idx = idx + 1
                                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                        continue 
                                    else:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                        if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                            if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                                idx = idx + 1
                                                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                                continue 
                        revert
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
                        _478 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_478] = tokenGrantsCount[address(msg.sender)][idx].field_0
                        mem[_478 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                        mem[_478 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                        mem[_478 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                        mem[_478 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                        mem[_478 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                        mem[_478 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                        if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                            if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                    idx = idx + 1
                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                    continue 
                        else:
                            if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if s >= s:
                                        idx = idx + 1
                                        s = s
                                        continue 
                            else:
                                if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                    if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                        idx = idx + 1
                                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                        continue 
                                    else:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                        if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                            if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                                idx = idx + 1
                                                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                                continue 
                        revert
                    require s <= balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                        require arg2 <= balanceOf[address(msg.sender)] - s
                    else:
                        require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    emit NewTokenGrant(arg2, tokenGrantsCount[address(arg1)].field_0, msg.sender, arg1);
}

function grantVestedTokens(address arg1, uint256 arg2, uint64 arg3, uint64 arg4, uint64 arg5, bool arg6, bool arg7) {
    require arg4 >= arg3
    require arg5 >= arg4
    require tokenGrantsCount[address(arg1)].field_0 < stor3
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
                        _524 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_524] = tokenGrantsCount[address(msg.sender)][idx].field_0
                        mem[_524 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                        mem[_524 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                        mem[_524 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                        mem[_524 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                        mem[_524 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                        mem[_524 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                        if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                            if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                    idx = idx + 1
                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                    continue 
                        else:
                            if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if s >= s:
                                        idx = idx + 1
                                        s = s
                                        continue 
                            else:
                                if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                    if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                        idx = idx + 1
                                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                        continue 
                                    else:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                        if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                            if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                                idx = idx + 1
                                                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                                continue 
                        revert
                    require s <= balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                        require arg2 <= balanceOf[address(msg.sender)] - s
                    else:
                        require arg2 <= balanceOf[address(msg.sender)]
            else:
                if sub_451d800f >= 5 * 10^11:
                    if not tokenGrantsCount[address(msg.sender)].field_0:
                        require arg2 <= balanceOf[address(msg.sender)]
                    else:
                        idx = 0
                        s = 0
                        while idx < tokenGrantsCount[address(msg.sender)].field_0:
                            mem[32] = 4
                            require idx < tokenGrantsCount[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 4)
                            _523 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_523] = tokenGrantsCount[address(msg.sender)][idx].field_0
                            mem[_523 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                            mem[_523 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                            mem[_523 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                            mem[_523 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                            mem[_523 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                            mem[_523 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                            if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                        idx = idx + 1
                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                        continue 
                            else:
                                if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        if s >= s:
                                            idx = idx + 1
                                            s = s
                                            continue 
                                else:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                        if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                    if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                        if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                            idx = idx + 1
                                                            s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                            continue 
                                        else:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                        if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                                if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                                    idx = idx + 1
                                                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                                    continue 
                            revert
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
                            _522 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_522] = tokenGrantsCount[address(msg.sender)][idx].field_0
                            mem[_522 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                            mem[_522 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                            mem[_522 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                            mem[_522 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                            mem[_522 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                            mem[_522 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                            if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                        idx = idx + 1
                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                        continue 
                            else:
                                if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        if s >= s:
                                            idx = idx + 1
                                            s = s
                                            continue 
                                else:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                        if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                    if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                        if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                            idx = idx + 1
                                                            s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                            continue 
                                        else:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                        if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                                if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                                    idx = idx + 1
                                                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                                    continue 
                            revert
                        require s <= balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                            require arg2 <= balanceOf[address(msg.sender)] - s
                        else:
                            require arg2 <= balanceOf[address(msg.sender)]
        else:
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = 0
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = 0
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = arg2
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_512 = arg4
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_576 = arg5
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_640 = arg3
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_704 = uint64(arg6)
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_712 = arg7 % 72057594037927936
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
                        _527 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_527] = tokenGrantsCount[address(msg.sender)][idx].field_0
                        mem[_527 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                        mem[_527 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                        mem[_527 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                        mem[_527 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                        mem[_527 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                        mem[_527 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                        if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                            if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                    idx = idx + 1
                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                    continue 
                        else:
                            if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if s >= s:
                                        idx = idx + 1
                                        s = s
                                        continue 
                            else:
                                if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                    if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                        idx = idx + 1
                                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                        continue 
                                    else:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                        if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                            if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                                idx = idx + 1
                                                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                                continue 
                        revert
                    require s <= balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                        require arg2 <= balanceOf[address(msg.sender)] - s
                    else:
                        require arg2 <= balanceOf[address(msg.sender)]
            else:
                if sub_451d800f >= 5 * 10^11:
                    if not tokenGrantsCount[address(msg.sender)].field_0:
                        require arg2 <= balanceOf[address(msg.sender)]
                    else:
                        idx = 0
                        s = 0
                        while idx < tokenGrantsCount[address(msg.sender)].field_0:
                            mem[32] = 4
                            require idx < tokenGrantsCount[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 4)
                            _526 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_526] = tokenGrantsCount[address(msg.sender)][idx].field_0
                            mem[_526 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                            mem[_526 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                            mem[_526 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                            mem[_526 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                            mem[_526 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                            mem[_526 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                            if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                        idx = idx + 1
                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                        continue 
                            else:
                                if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        if s >= s:
                                            idx = idx + 1
                                            s = s
                                            continue 
                                else:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                        if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                    if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                        if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                            idx = idx + 1
                                                            s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                            continue 
                                        else:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                        if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                                if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                                    idx = idx + 1
                                                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                                    continue 
                            revert
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
                            _525 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_525] = tokenGrantsCount[address(msg.sender)][idx].field_0
                            mem[_525 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                            mem[_525 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                            mem[_525 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                            mem[_525 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                            mem[_525 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                            mem[_525 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                            if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                        idx = idx + 1
                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                        continue 
                            else:
                                if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        if s >= s:
                                            idx = idx + 1
                                            s = s
                                            continue 
                                else:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                        if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                    if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                        if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                            idx = idx + 1
                                                            s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                            continue 
                                        else:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                        if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                                if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                                    idx = idx + 1
                                                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                                    continue 
                            revert
                        require s <= balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                            require arg2 <= balanceOf[address(msg.sender)] - s
                        else:
                            require arg2 <= balanceOf[address(msg.sender)]
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
                        _948 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_948] = tokenGrantsCount[address(msg.sender)][idx].field_0
                        mem[_948 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                        mem[_948 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                        mem[_948 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                        mem[_948 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                        mem[_948 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                        mem[_948 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                        if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                            if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                    idx = idx + 1
                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                    continue 
                        else:
                            if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if s >= s:
                                        idx = idx + 1
                                        s = s
                                        continue 
                            else:
                                if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                    if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                        idx = idx + 1
                                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                        continue 
                                    else:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                        if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                            if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                                idx = idx + 1
                                                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                                continue 
                        revert
                    require s <= balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                        require arg2 <= balanceOf[address(msg.sender)] - s
                    else:
                        require arg2 <= balanceOf[address(msg.sender)]
            else:
                if sub_451d800f >= 5 * 10^11:
                    if not tokenGrantsCount[address(msg.sender)].field_0:
                        require arg2 <= balanceOf[address(msg.sender)]
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
                                if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                        idx = idx + 1
                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                        continue 
                            else:
                                if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        if s >= s:
                                            idx = idx + 1
                                            s = s
                                            continue 
                                else:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                        if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                    if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                        if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                            idx = idx + 1
                                                            s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                            continue 
                                        else:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                        if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                                if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                                    idx = idx + 1
                                                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                                    continue 
                            revert
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
                            _946 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_946] = tokenGrantsCount[address(msg.sender)][idx].field_0
                            mem[_946 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                            mem[_946 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                            mem[_946 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                            mem[_946 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                            mem[_946 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                            mem[_946 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                            if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                        idx = idx + 1
                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                        continue 
                            else:
                                if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        if s >= s:
                                            idx = idx + 1
                                            s = s
                                            continue 
                                else:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                        if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                    if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                        if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                            idx = idx + 1
                                                            s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                            continue 
                                        else:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                        if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                                if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                                    idx = idx + 1
                                                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                                    continue 
                            revert
                        require s <= balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                            require arg2 <= balanceOf[address(msg.sender)] - s
                        else:
                            require arg2 <= balanceOf[address(msg.sender)]
        else:
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = 0
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = 0
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = arg2
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_512 = arg4
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_576 = arg5
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_640 = arg3
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_704 = uint64(arg6)
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_712 = arg7 % 72057594037927936
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
                        _951 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_951] = tokenGrantsCount[address(msg.sender)][idx].field_0
                        mem[_951 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                        mem[_951 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                        mem[_951 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                        mem[_951 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                        mem[_951 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                        mem[_951 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                        if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                            if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                    idx = idx + 1
                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                    continue 
                        else:
                            if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if s >= s:
                                        idx = idx + 1
                                        s = s
                                        continue 
                            else:
                                if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                    if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                        idx = idx + 1
                                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                        continue 
                                    else:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                        if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                            if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                                idx = idx + 1
                                                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                                continue 
                        revert
                    require s <= balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                        require arg2 <= balanceOf[address(msg.sender)] - s
                    else:
                        require arg2 <= balanceOf[address(msg.sender)]
            else:
                if sub_451d800f >= 5 * 10^11:
                    if not tokenGrantsCount[address(msg.sender)].field_0:
                        require arg2 <= balanceOf[address(msg.sender)]
                    else:
                        idx = 0
                        s = 0
                        while idx < tokenGrantsCount[address(msg.sender)].field_0:
                            mem[32] = 4
                            require idx < tokenGrantsCount[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 4)
                            _950 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_950] = tokenGrantsCount[address(msg.sender)][idx].field_0
                            mem[_950 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                            mem[_950 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                            mem[_950 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                            mem[_950 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                            mem[_950 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                            mem[_950 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                            if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                        idx = idx + 1
                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                        continue 
                            else:
                                if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        if s >= s:
                                            idx = idx + 1
                                            s = s
                                            continue 
                                else:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                        if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                    if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                        if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                            idx = idx + 1
                                                            s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                            continue 
                                        else:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                        if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                                if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                                    idx = idx + 1
                                                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                                    continue 
                            revert
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
                            _949 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_949] = tokenGrantsCount[address(msg.sender)][idx].field_0
                            mem[_949 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                            mem[_949 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                            mem[_949 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                            mem[_949 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                            mem[_949 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                            mem[_949 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                            if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                                if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                        idx = idx + 1
                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                        continue 
                            else:
                                if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        if s >= s:
                                            idx = idx + 1
                                            s = s
                                            continue 
                                else:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                        if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                    if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                        if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                            idx = idx + 1
                                                            s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                            continue 
                                        else:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                        if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                                if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                                    idx = idx + 1
                                                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                                    continue 
                            revert
                        require s <= balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                            require arg2 <= balanceOf[address(msg.sender)] - s
                        else:
                            require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    emit NewTokenGrant(arg2, tokenGrantsCount[address(arg1)].field_0, msg.sender, arg1);
}



}
