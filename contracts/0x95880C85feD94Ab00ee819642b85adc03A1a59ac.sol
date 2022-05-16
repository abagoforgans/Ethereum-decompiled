contract main {




// =====================  Runtime code  =====================


address ceoAddress;
array of uint256 stor1;
array of struct roundBets;
array of struct bets;
array of struct rounds;
uint16 roundsCount;
uint256 fees;
uint256 MINIMUM_BET_VALUE;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037084;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037085;
array of uint8 stor87903029871075914254377627908054574944891091886930582284385770809450030037086;

function ceoAddress() {
    return ceoAddress
}

function bets(uint256 arg1) {
    require arg1 < bets.length
    return bets[arg1].field_0, bets[arg1].field_0, bets[arg1].field_256, bets[arg1].field_512, bool(bets[arg1].field_768)
}

function roundBets(uint16 arg1, uint256 arg2) {
    require arg2 < roundBets[arg1].field_0
    return roundBets[arg1][arg2].field_0
}

function rounds(uint256 arg1) {
    require arg1 < rounds.length
    mem[128] = rounds[arg1].field_0
    idx = 128
    s = 0
    while rounds[arg1].length + 96 > idx:
        mem[idx + 32] = rounds[(9 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if rounds[arg1].field_1024 <= 3:
        return Array(len=rounds[arg1].length, data=mem[128 len rounds[arg1].length]), 
               rounds[arg1].field_512,
               rounds[arg1].field_768,
               rounds[arg1].field_1024,
               rounds[arg1].field_1280,
               rounds[arg1].field_1536,
               rounds[arg1].field_1792,
               rounds[arg1].field_2048
    revert
}

function fees() {
    return fees
}

function roundsCount() {
    return roundsCount
}

function cooAddress() {
    return address(stor1.length)
}

function MINIMUM_BET_VALUE() {
    return MINIMUM_BET_VALUE
}

function _fallback() payable {
    revert
}

function setCEOAddress(address arg1) {
    require ceoAddress == msg.sender
    ceoAddress = arg1
}

function setCOOAddress(address arg1) {
    require ceoAddress == msg.sender
    address(stor1.length) = arg1
}

function setMinimumBetValue(uint256 arg1) {
    if ceoAddress != msg.sender:
        require address(stor1.length) == msg.sender
    MINIMUM_BET_VALUE = arg1
}

function extendRound(uint16 arg1, uint256 arg2) {
    if ceoAddress != msg.sender:
        require address(stor1.length) == msg.sender
    require arg1 < rounds.length
    rounds[arg1].field_2048 = arg2
}

function payout(address arg1, uint256 arg2) {
    require ceoAddress == msg.sender
    require arg2 <= fees
    fees -= arg2
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setRoundFinalScore(uint16 arg1, bytes32 arg2) payable {
    require arg1 < rounds.length
    require rounds[arg1].field_1024 <= 3
    require rounds[arg1].field_1024 == 1
    if ceoAddress != msg.sender:
        require address(stor1.length) == msg.sender
    require arg1 < rounds.length
    rounds[arg1].field_1024 = 2
    require arg1 < rounds.length
    rounds[arg1].field_1792 = block.timestamp
    rounds[arg1].field_1280 = arg2
    emit FinalScoreUpdated(arg1 << 240, arg2);
}

function updateRoundStatus(uint16 arg1, uint8 arg2) {
    if ceoAddress != msg.sender:
        require address(stor1.length) == msg.sender
    require arg1 < rounds.length
    require rounds[arg1].field_1024 <= 3
    require rounds[arg1].field_1024 != 2
    require arg1 < rounds.length
    require rounds[arg1].field_1024 <= 3
    require arg2 <= 3
    emit RoundStatusUpdated(arg1 << 240, rounds[arg1].field_1024, arg2);
    require arg1 < rounds.length
    require arg2 <= 3
    rounds[arg1].field_1024 = arg2
    if arg2 == 3:
        require arg1 < rounds.length
        rounds[arg1].field_1792 = block.timestamp
}

function bet(uint16 arg1, bytes32 arg2) payable {
    require arg1 < rounds.length
    require rounds[arg1].field_1024 <= 3
    require rounds[arg1].field_1024 == 1
    require msg.value >= MINIMUM_BET_VALUE
    require arg1 < rounds.length
    require arg1 < rounds.length
    if rounds[arg1].field_2048 != 0:
        require block.timestamp < rounds[arg1].field_2048
    emit Debug(arg1 << 240, rounds[arg1].field_2048, block.timestamp, block.timestamp >= rounds[arg1].field_2048);
    bets.length++
    bets[bets.length].field_0 = arg1
    bets[bets.length].field_16 = msg.sender
    storC257[stor3.length] = msg.value
    storC257[stor3.length] = arg2
    storC257[stor3.length] = 0
    roundBets[arg1 << 240].field_0++
    roundBets[arg1 << 240][roundBets[arg1 << 240].field_0].field_0 = bets.length
    rounds[arg1].field_512 = uint16(rounds[arg1].field_512 + 1)
    rounds[arg1].field_768 += msg.value
    emit BetPlaced(bets.length, arg1 << 240, msg.value);
}

function getRoundStatuses(uint16 arg1) {
    require arg1 < rounds.length
    if not rounds[arg1].field_256:
        mem[(32 * rounds[arg1].field_256) + 128] = 32
        mem[(32 * rounds[arg1].field_256) + 160] = rounds[arg1].field_256
        mem[(32 * rounds[arg1].field_256) + 192 len floor32(rounds[arg1].field_256)] = mem[128 len floor32(rounds[arg1].field_256)]
        return memory
          from (32 * rounds[arg1].field_256) + 128
           len (96 * rounds[arg1].field_256) + 64
    mem[128] = stor[sha3((9 * arg1) + ('name', 'rounds', 4) + 1)].field_0
    idx = 128
    s = 0
    while (32 * rounds[arg1].field_256) + 96 > idx:
        mem[idx + 32] = stor[s + sha3((9 * arg1) + ('name', 'rounds', 4) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * rounds[arg1].field_256) + 192 len floor32(rounds[arg1].field_256)] = mem[128 len floor32(rounds[arg1].field_256)]
    return Array(len=rounds[arg1].field_256, data=mem[128 len floor32(rounds[arg1].field_256)], mem[(32 * rounds[arg1].field_256) + floor32(rounds[arg1].field_256) + 192 len (32 * rounds[arg1].field_256) - floor32(rounds[arg1].field_256)]), 
}

function getRoundBets(uint16 arg1) {
    if not roundBets[arg1 << 240].field_0:
        mem[(32 * roundBets[arg1 << 240].field_0) + 128] = 32
        mem[(32 * roundBets[arg1 << 240].field_0) + 160] = roundBets[arg1 << 240].field_0
        mem[(32 * roundBets[arg1 << 240].field_0) + 192 len floor32(roundBets[arg1 << 240].field_0)] = mem[128 len floor32(roundBets[arg1 << 240].field_0)]
        return memory
          from (32 * roundBets[arg1 << 240].field_0) + 128
           len (96 * roundBets[arg1 << 240].field_0) + 64
    mem[128] = roundBets[arg1 << 240].field_0
    idx = 128
    s = 0
    while (32 * roundBets[arg1 << 240].field_0) + 96 > idx:
        mem[idx + 32] = roundBets[arg1 << 240][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * roundBets[arg1 << 240].field_0) + 192 len floor32(roundBets[arg1 << 240].field_0)] = mem[128 len floor32(roundBets[arg1 << 240].field_0)]
    return Array(len=roundBets[arg1 << 240].field_0, data=mem[128 len floor32(roundBets[arg1 << 240].field_0)], mem[(32 * roundBets[arg1 << 240].field_0) + floor32(roundBets[arg1 << 240].field_0) + 192 len (32 * roundBets[arg1 << 240].field_0) - floor32(roundBets[arg1 << 240].field_0)]), 
}

function claimCancelled(uint16 arg1, address arg2) {
    require arg1 < rounds.length
    require rounds[arg1].field_1024 <= 3
    require rounds[arg1].field_1024 == 3
    if roundBets[arg1 << 240].field_0:
        mem[128] = roundBets[arg1 << 240].field_0
        idx = 128
        s = 0
        while (32 * roundBets[arg1 << 240].field_0) + 96 > idx:
            mem[idx + 32] = roundBets[arg1 << 240][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    s = 0
    idx = 0
    s = 0
    while idx < roundBets[arg1 << 240].field_0:
        require idx < roundBets[arg1 << 240].field_0
        require mem[(32 * idx) + 128] < bets.length
        mem[0] = 3
        if bets[mem[(32 * idx) + 128]].field_16 != arg2:
            s = (4 * mem[(32 * idx) + 128]) + sha3(3)
            idx = idx + 1
            s = s
            continue 
        if 1 == bool(bets[mem[(32 * idx) + 128]].field_768):
            s = (4 * mem[(32 * idx) + 128]) + sha3(3)
            idx = idx + 1
            s = s
            continue 
        require bets[mem[(32 * idx) + 128]].field_256 + s >= s
        bets[mem[(32 * idx) + 128]].field_768 = 1
        s = (4 * mem[(32 * idx) + 128]) + sha3(3)
        idx = idx + 1
        s = bets[mem[(32 * idx) + 128]].field_256 + s
        continue 
    call arg2 with:
       value s wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return s
}

function createRound(string arg1, bytes32[] arg2, uint256 arg3) {
    mem[ceil32(arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if ceoAddress != msg.sender:
        require address(stor1.length) == msg.sender
    mem[(32 * arg2.length) + ceil32(arg1.length) + 160] = 96
    rounds.length++
    rounds[rounds.length][].field_0 = Array(len=arg1.length, data=arg1[all])
    rounds[rounds.length].field_256 = arg2.length
    if not arg2.length:
        idx = 0
        while rounds[rounds.length].field_256 > idx:
            stor[idx + sha3(('name', 'rounds', 4) + (9 * rounds.length) + 1)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(arg1.length) + 160
        while ceil32(arg1.length) + (32 * arg2.length) + 160 > idx:
            stor[s + sha3(('name', 'rounds', 4) + (9 * rounds.length) + 1)].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while rounds[rounds.length].field_256 > idx:
            stor[idx + sha3(('name', 'rounds', 4) + (9 * rounds.length) + 1)].field_0 = 0
            idx = idx + 1
            continue 
    rounds[rounds.length].field_512 = 0
    rounds[rounds.length].field_768 = 0
    rounds[rounds.length].field_768 = 0
    rounds[rounds.length].field_1024 = 1
    rounds[rounds.length].field_1280 = 0
    rounds[rounds.length].field_1536 = block.timestamp
    rounds[rounds.length].field_1792 = 0
    rounds[rounds.length].field_2048 = arg3
    require roundsCount + 1 >= roundsCount
    roundsCount = uint16(roundsCount + 1)
    emit RoundCreated(uint16(rounds.length));
}

function claimRoundReward(uint16 arg1, address arg2) {
    require arg1 < rounds.length
    require rounds[arg1].field_1024 <= 3
    require rounds[arg1].field_1024 == 2
    require arg1 < rounds.length
    idx = 704
    s = 0
    while rounds[arg1].length + 704 > idx + 32:
        mem[idx + 32] = rounds[(9 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if rounds[arg1].field_256:
        idx = ceil32(rounds[arg1].length) + 736
        s = 0
        while ceil32(rounds[arg1].length) + (32 * rounds[arg1].field_256) + 704 > idx:
            mem[idx + 32] = stor[s + sha3(('name', 'rounds', 4) + (9 * arg1) + 1)].field_256
            idx = idx + 32
            s = s + 1
            continue 
    require rounds[arg1].field_1024 <= 3
    if roundBets[arg1 << 240].field_0:
        mem[ceil32(rounds[arg1].length) + (32 * rounds[arg1].field_256) + 768] = roundBets[arg1 << 240].field_0
        idx = ceil32(rounds[arg1].length) + (32 * rounds[arg1].field_256) + 768
        s = 0
        while ceil32(rounds[arg1].length) + (32 * rounds[arg1].field_256) + (32 * roundBets[arg1 << 240].field_0) + 736 > idx:
            mem[idx + 32] = roundBets[arg1 << 240][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    s = 0
    idx = 0
    s = 0
    t = 0
    while idx < roundBets[arg1 << 240].field_0:
        require idx < roundBets[arg1 << 240].field_0
        require mem[ceil32(rounds[arg1].length) + (32 * rounds[arg1].field_256) + (32 * idx) + 768] < bets.length
        mem[0] = 3
        if bets[mem[ceil32(stor4[arg1].length) + (32 * stor4[arg1].field_256) + (32 * idx) + 768]].field_512 != rounds[arg1].field_1280:
            require bets[mem[ceil32(stor4[arg1].length) + (32 * stor4[arg1].field_256) + (32 * idx) + 768]].field_256 >= 0
            s = (4 * mem[ceil32(rounds[arg1].length) + (32 * rounds[arg1].field_256) + (32 * idx) + 768]) + sha3(3)
            idx = idx + 1
            s = s
            t = t
            continue 
        require bets[mem[ceil32(stor4[arg1].length) + (32 * stor4[arg1].field_256) + (32 * idx) + 768]].field_256 + t >= t
        if bets[mem[ceil32(stor4[arg1].length) + (32 * stor4[arg1].field_256) + (32 * idx) + 768]].field_768:
            s = (4 * mem[ceil32(rounds[arg1].length) + (32 * rounds[arg1].field_256) + (32 * idx) + 768]) + sha3(3)
            idx = idx + 1
            s = s
            t = bets[mem[ceil32(stor4[arg1].length) + (32 * stor4[arg1].field_256) + (32 * idx) + 768]].field_256 + t
            continue 
        if bets[mem[ceil32(stor4[arg1].length) + (32 * stor4[arg1].field_256) + (32 * idx) + 768]].field_16 != arg2:
            s = (4 * mem[ceil32(rounds[arg1].length) + (32 * rounds[arg1].field_256) + (32 * idx) + 768]) + sha3(3)
            idx = idx + 1
            s = s
            t = bets[mem[ceil32(stor4[arg1].length) + (32 * stor4[arg1].field_256) + (32 * idx) + 768]].field_256 + t
            continue 
        require bets[mem[ceil32(stor4[arg1].length) + (32 * stor4[arg1].field_256) + (32 * idx) + 768]].field_256 + s >= s
        bets[mem[ceil32(stor4[arg1].length) + (32 * stor4[arg1].field_256) + (32 * idx) + 768]].field_768 = 1
        s = (4 * mem[ceil32(rounds[arg1].length) + (32 * rounds[arg1].field_256) + (32 * idx) + 768]) + sha3(3)
        idx = idx + 1
        s = bets[mem[ceil32(stor4[arg1].length) + (32 * stor4[arg1].field_256) + (32 * idx) + 768]].field_256 + s
        t = bets[mem[ceil32(stor4[arg1].length) + (32 * stor4[arg1].field_256) + (32 * idx) + 768]].field_256 + t
        continue 
    if not s:
        require t
        if 0 / t:
            require not 0 / 0 / t
    else:
        require 10 * 10^6 * s / s == 10 * 10^6
        require t
        if 10 * 10^6 * s / t:
            require not 0 / 10 * 10^6 * s / t
    require s >= 0
    require fees >= fees
    call arg2 with:
       value s wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return s, 0
}

function claimRewards(uint16[] arg1, address arg2) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _100 = mem[(32 * idx) + 128]
        _101 = mem[64]
        mem[64] = mem[64] + 288
        mem[_101] = 96
        mem[_101 + 32] = 96
        mem[_101 + 64] = 0
        mem[_101 + 96] = 0
        mem[_101 + 128] = 0
        mem[_101 + 160] = 0
        mem[_101 + 192] = 0
        mem[_101 + 224] = 0
        mem[_101 + 256] = 0
        require uint16(_100) < rounds.length
        require rounds[uint16(_100)].field_1024 <= 3
        require rounds[uint16(_100)].field_1024 == 2
        require uint16(_100) < rounds.length
        _104 = mem[64]
        mem[64] = mem[64] + ceil32(rounds[uint16(_100)].length) + 320
        mem[_104 + 288] = rounds[uint16(_100)].length
        mem[0] = sha3(4) + (9 * uint16(_100))
        mem[_104 + 320] = rounds[uint16(_100)].field_0
        s = _104 + 320
        t = sha3(sha3(4) + (9 * uint16(_100)))
        while _104 + rounds[uint16(_100)].length + 320 > s + 32:
            mem[s + 32] = uint256(stor1[t])
            s = s + 32
            t = t + 1
            continue 
        mem[_104] = _104 + 288
        _156 = mem[64]
        mem[64] = mem[64] + (32 * rounds[uint16(_100)].field_256) + 32
        mem[_156] = rounds[uint16(_100)].field_256
        if not rounds[uint16(_100)].field_256:
            mem[_104 + 32] = _156
            mem[_104 + 64] = rounds[uint16(_100)].field_512
            mem[_104 + 96] = rounds[uint16(_100)].field_768
            require rounds[uint16(_100)].field_1024 <= 3
            mem[_104 + 128] = rounds[uint16(_100)].field_1024
            mem[_104 + 160] = rounds[uint16(_100)].field_1280
            mem[_104 + 192] = rounds[uint16(_100)].field_1536
            mem[_104 + 224] = rounds[uint16(_100)].field_1792
            mem[_104 + 256] = rounds[uint16(_100)].field_2048
            mem[0] = uint16(_100)
            mem[32] = 2
            _172 = mem[64]
            mem[64] = mem[64] + (32 * roundBets[_100 << 240].field_0) + 32
            mem[_172] = roundBets[_100 << 240].field_0
            if not roundBets[_100 << 240].field_0:
                t = 0
                s = 0
                t = 0
                u = 0
                while s < roundBets[_100 << 240].field_0:
                    require s < mem[_172]
                    require mem[_172 + (32 * s) + 32] < bets.length
                    mem[0] = 3
                    if bets[mem[_172 + (32 * s) + 32]].field_512 != rounds[uint16(_100)].field_1280:
                        require bets[mem[_172 + (32 * s) + 32]].field_256 >= 0
                        t = (4 * mem[_172 + (32 * s) + 32]) + sha3(3)
                        s = s + 1
                        t = t
                        u = u
                        continue 
                    require bets[mem[_172 + (32 * s) + 32]].field_256 + u >= u
                    if bets[mem[_172 + (32 * s) + 32]].field_768:
                        t = (4 * mem[_172 + (32 * s) + 32]) + sha3(3)
                        s = s + 1
                        t = t
                        u = bets[mem[_172 + (32 * s) + 32]].field_256 + u
                        continue 
                    if bets[mem[_172 + (32 * s) + 32]].field_16 != arg2:
                        t = (4 * mem[_172 + (32 * s) + 32]) + sha3(3)
                        s = s + 1
                        t = t
                        u = bets[mem[_172 + (32 * s) + 32]].field_256 + u
                        continue 
                    require bets[mem[_172 + (32 * s) + 32]].field_256 + t >= t
                    bets[mem[_172 + (32 * s) + 32]].field_768 = 1
                    t = (4 * mem[_172 + (32 * s) + 32]) + sha3(3)
                    s = s + 1
                    t = bets[mem[_172 + (32 * s) + 32]].field_256 + t
                    u = bets[mem[_172 + (32 * s) + 32]].field_256 + u
                    continue 
            else:
                mem[0] = sha3(_100 << 240, 2)
                mem[_172 + 32] = roundBets[_100 << 240].field_0
                s = _172 + 32
                t = sha3(sha3(_100 << 240, 2))
                while _172 + (32 * roundBets[_100 << 240].field_0) > s:
                    mem[s + 32] = uint256(stor1[t])
                    s = s + 32
                    t = t + 1
                    continue 
                t = 0
                s = 0
                t = 0
                u = 0
                while s < roundBets[_100 << 240].field_0:
                    require s < mem[_172]
                    require mem[_172 + (32 * s) + 32] < bets.length
                    mem[0] = 3
                    if bets[mem[_172 + (32 * s) + 32]].field_512 != mem[_104 + 160]:
                        require bets[mem[_172 + (32 * s) + 32]].field_256 >= 0
                        t = (4 * mem[_172 + (32 * s) + 32]) + sha3(3)
                        s = s + 1
                        t = t
                        u = u
                        continue 
                    require bets[mem[_172 + (32 * s) + 32]].field_256 + u >= u
                    if bets[mem[_172 + (32 * s) + 32]].field_768:
                        t = (4 * mem[_172 + (32 * s) + 32]) + sha3(3)
                        s = s + 1
                        t = t
                        u = bets[mem[_172 + (32 * s) + 32]].field_256 + u
                        continue 
                    if bets[mem[_172 + (32 * s) + 32]].field_16 != arg2:
                        t = (4 * mem[_172 + (32 * s) + 32]) + sha3(3)
                        s = s + 1
                        t = t
                        u = bets[mem[_172 + (32 * s) + 32]].field_256 + u
                        continue 
                    require bets[mem[_172 + (32 * s) + 32]].field_256 + t >= t
                    bets[mem[_172 + (32 * s) + 32]].field_768 = 1
                    t = (4 * mem[_172 + (32 * s) + 32]) + sha3(3)
                    s = s + 1
                    t = bets[mem[_172 + (32 * s) + 32]].field_256 + t
                    u = bets[mem[_172 + (32 * s) + 32]].field_256 + u
                    continue 
        else:
            mem[_156 + 32] = stor[sha3(('name', 'rounds', 4) + (9 * uint16(_100)) + 1)].field_0
            s = _156 + 32
            t = sha3(sha3(4) + (9 * uint16(_100)) + 1)
            while _156 + (32 * rounds[uint16(_100)].field_256) > s:
                mem[s + 32] = uint256(stor1[t])
                s = s + 32
                t = t + 1
                continue 
            mem[_104 + 32] = _156
            mem[_104 + 64] = rounds[uint16(_100)].field_512
            mem[_104 + 96] = rounds[uint16(_100)].field_768
            require rounds[uint16(_100)].field_1024 <= 3
            mem[_104 + 128] = rounds[uint16(_100)].field_1024
            mem[_104 + 160] = rounds[uint16(_100)].field_1280
            mem[_104 + 192] = rounds[uint16(_100)].field_1536
            mem[_104 + 224] = rounds[uint16(_100)].field_1792
            mem[_104 + 256] = rounds[uint16(_100)].field_2048
            mem[0] = uint16(_100)
            mem[32] = 2
            _267 = mem[64]
            mem[64] = mem[64] + (32 * roundBets[_100 << 240].field_0) + 32
            mem[_267] = roundBets[_100 << 240].field_0
            if not roundBets[_100 << 240].field_0:
                t = 0
                s = 0
                t = 0
                u = 0
                while s < roundBets[_100 << 240].field_0:
                    require s < mem[_267]
                    require mem[_267 + (32 * s) + 32] < bets.length
                    mem[0] = 3
                    if bets[mem[_267 + (32 * s) + 32]].field_512 != rounds[uint16(_100)].field_1280:
                        require bets[mem[_267 + (32 * s) + 32]].field_256 >= 0
                        t = (4 * mem[_267 + (32 * s) + 32]) + sha3(3)
                        s = s + 1
                        t = t
                        u = u
                        continue 
                    require bets[mem[_267 + (32 * s) + 32]].field_256 + u >= u
                    if bets[mem[_267 + (32 * s) + 32]].field_768:
                        t = (4 * mem[_267 + (32 * s) + 32]) + sha3(3)
                        s = s + 1
                        t = t
                        u = bets[mem[_267 + (32 * s) + 32]].field_256 + u
                        continue 
                    if bets[mem[_267 + (32 * s) + 32]].field_16 != arg2:
                        t = (4 * mem[_267 + (32 * s) + 32]) + sha3(3)
                        s = s + 1
                        t = t
                        u = bets[mem[_267 + (32 * s) + 32]].field_256 + u
                        continue 
                    require bets[mem[_267 + (32 * s) + 32]].field_256 + t >= t
                    bets[mem[_267 + (32 * s) + 32]].field_768 = 1
                    t = (4 * mem[_267 + (32 * s) + 32]) + sha3(3)
                    s = s + 1
                    t = bets[mem[_267 + (32 * s) + 32]].field_256 + t
                    u = bets[mem[_267 + (32 * s) + 32]].field_256 + u
                    continue 
            else:
                mem[0] = sha3(_100 << 240, 2)
                mem[_267 + 32] = roundBets[_100 << 240].field_0
                s = _267 + 32
                t = sha3(sha3(_100 << 240, 2))
                while _267 + (32 * roundBets[_100 << 240].field_0) > s:
                    mem[s + 32] = uint256(stor1[t])
                    s = s + 32
                    t = t + 1
                    continue 
                t = 0
                s = 0
                t = 0
                u = 0
                while s < roundBets[_100 << 240].field_0:
                    require s < mem[_267]
                    require mem[_267 + (32 * s) + 32] < bets.length
                    mem[0] = 3
                    if bets[mem[_267 + (32 * s) + 32]].field_512 != mem[_104 + 160]:
                        require bets[mem[_267 + (32 * s) + 32]].field_256 >= 0
                        t = (4 * mem[_267 + (32 * s) + 32]) + sha3(3)
                        s = s + 1
                        t = t
                        u = u
                        continue 
                    require bets[mem[_267 + (32 * s) + 32]].field_256 + u >= u
                    if bets[mem[_267 + (32 * s) + 32]].field_768:
                        t = (4 * mem[_267 + (32 * s) + 32]) + sha3(3)
                        s = s + 1
                        t = t
                        u = bets[mem[_267 + (32 * s) + 32]].field_256 + u
                        continue 
                    if bets[mem[_267 + (32 * s) + 32]].field_16 != arg2:
                        t = (4 * mem[_267 + (32 * s) + 32]) + sha3(3)
                        s = s + 1
                        t = t
                        u = bets[mem[_267 + (32 * s) + 32]].field_256 + u
                        continue 
                    require bets[mem[_267 + (32 * s) + 32]].field_256 + t >= t
                    bets[mem[_267 + (32 * s) + 32]].field_768 = 1
                    t = (4 * mem[_267 + (32 * s) + 32]) + sha3(3)
                    s = s + 1
                    t = bets[mem[_267 + (32 * s) + 32]].field_256 + t
                    u = bets[mem[_267 + (32 * s) + 32]].field_256 + u
                    continue 
        if not t:
            require u
            if 0 / u:
                require not 0 / 0 / u
        else:
            require 10 * 10^6 * t / t == 10 * 10^6
            require u
            if 10 * 10^6 * t / u:
                require not 0 / 10 * 10^6 * t / u
        require t >= 0
        require fees >= fees
        call arg2 with:
           value t wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
