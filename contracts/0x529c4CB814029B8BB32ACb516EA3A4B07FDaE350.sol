contract main {


// =======================  Init code  ======================


address stor5;

function _fallback() payable {
    stor5 = 0x92f1dbea03ce08225e31e95cc926ddbe0198e6f2
    return code.data[56 len 6720]
}



// =====================  Runtime code  =====================


mapping of struct stor0;
mapping of uint256 shares;
mapping of struct oracleOutcomes;
array of address eventOracles;
mapping of uint256 descriptionHashes;
address stor5;

function descriptionHashes(bytes32 arg1) payable {
    return descriptionHashes[arg1]
}

function shares(address arg1, bytes32 arg2, int256 arg3) payable {
    return shares[arg1][arg2][arg3]
}

function oracleOutcomes(bytes32 arg1, address arg2) payable {
    return uint256(oracleOutcomes[arg1][arg2].field_0), uint256(oracleOutcomes[arg1][arg2].field_256)
}

function eventOracles(bytes32 arg1, uint256 arg2) payable {
    require arg2 < uint256(eventOracles[arg1])
    return address(eventOracles[arg1][arg2])
}

function _fallback() payable {
  stop
}

function ultimateOutcomes(bytes32 arg1) payable {
    return bool(uint8(stor0[arg1].field_0)), 
           uint256(stor0[arg1].field_256),
           uint256(stor0[arg1].field_512),
           uint256(stor0[arg1].field_768),
           uint256(stor0[arg1].field_1024)
}

function setUltimateOutcome(bytes32 arg1) payable {
    if uint256(stor0[arg1].field_768) <= 0:
        return 0
    if uint256(stor0[arg1].field_768) > block.timestamp:
        return 0
    uint256(stor0[arg1].field_256) = uint256(stor0[arg1].field_512)
    uint8(stor0[arg1].field_0) = 1
    return 1
}

function getFee(bytes32[] arg1) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 1
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        idx = idx + 4
        s = mem[(32 * idx) + 128] + s
        continue 
    return _11 * Mask(254, 0, arg1.length + 2) >> 2, stor5
}

function getEventData(bytes32 arg1) payable {
    require 0 < uint256(eventOracles[arg1]) + 1
    mem[0] = arg1
    mem[32] = 3
    idx = 0
    while idx < uint256(eventOracles[arg1]):
        require idx < uint256(stor[sha3(mem[0 len 64])])
        mem[0] = sha3(mem[0 len 64])
        require idx < uint256(eventOracles[arg1])
        mem[(32 * idx + 1) + 160] = address(stor[idx + sha3(mem[0])])
        mem[0] = arg1
        mem[32] = 3
        idx = idx + 1
        continue 
    mem[(32 * uint256(eventOracles[arg1]) + 1) + 160] = 32
    return Array(len=uint256(eventOracles[arg1]) + 1, data=descriptionHashes[arg1], mem[192 len (32 * uint256(eventOracles[arg1]) + 1) - 32]), 
}

function challengeWinningOutcome(bytes32 arg1, uint16 arg2) payable {
    if uint256(stor0[arg1].field_768) > 0:
        if msg.value <= 0:
            return 1
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        require ext_call.success
        return 1
    if msg.value < 100 * 10^18:
        if msg.value <= 0:
            return 0
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        require ext_call.success
        return 0
    shares[address(msg.sender)][arg1][arg2 << 240] += msg.value
    uint16(stor0[arg1].field_512) = arg2
    Mask(240, 0, stor0[arg1].field_528) = 0
    uint256(stor0[arg1].field_768) = block.timestamp + (24 * 3600)
    uint256(stor0[arg1][5][arg2 << 240].field_0) += msg.value
    uint256(stor0[arg1].field_1024) += msg.value
    return 1
}

function withdraw(bytes32 arg1) payable {
    if not uint8(stor0[arg1].field_0):
        return 0
    if ((uint256(stor0[arg1].field_1024) * shares[address(msg.sender)][arg1][uint256(stor0[arg1].field_256)]) - (uint256(stor0[arg1][5][uint256(stor0[arg1].field_256)].field_0) * shares[address(msg.sender)][arg1][uint256(stor0[arg1].field_256)]) / uint256(stor0[arg1][5][uint256(stor0[arg1].field_256)].field_0)) + shares[address(msg.sender)][arg1][uint256(stor0[arg1].field_256)] > 0:
        call msg.sender with:
           value ((uint256(stor0[arg1].field_1024) * shares[address(msg.sender)][arg1][uint256(stor0[arg1].field_256)]) - (uint256(stor0[arg1][5][uint256(stor0[arg1].field_256)].field_0) * shares[address(msg.sender)][arg1][uint256(stor0[arg1].field_256)]) / uint256(stor0[arg1][5][uint256(stor0[arg1].field_256)].field_0)) + shares[address(msg.sender)][arg1][uint256(stor0[arg1].field_256)] wei
             gas 0 wei
        require ext_call.success
    shares[address(msg.sender)][arg1][uint256(stor0[arg1].field_256)] = 0
    return 1
}

function voteForUltimateOutcome(bytes32 arg1, uint16 arg2) payable {
    if uint8(stor0[arg1].field_0):
        if msg.value <= 0:
            return 0
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        require ext_call.success
        return 0
    if uint256(stor0[arg1].field_768) <= block.timestamp:
        if msg.value <= 0:
            return 0
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        require ext_call.success
        return 0
    if msg.value + uint256(stor0[arg1][5][arg2 << 240].field_0) > (3 * uint256(stor0[arg1].field_1024)) - (3 * uint256(stor0[arg1][5][arg2 << 240].field_0)):
        if msg.value <= 0:
            return 0
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        require ext_call.success
        return 0
    shares[address(msg.sender)][arg1][arg2 << 240] += msg.value
    uint256(stor0[arg1][5][arg2 << 240].field_0) += msg.value
    uint256(stor0[arg1].field_1024) += msg.value
    if uint256(stor0[arg1][5][uint256(stor0[arg1].field_512)].field_0) < uint256(stor0[arg1][5][arg2 << 240].field_0):
        uint256(stor0[arg1].field_768) = block.timestamp + (24 * 3600)
        uint16(stor0[arg1].field_512) = arg2
        Mask(240, 0, stor0[arg1].field_528) = 0
    return 1
}

function setOutcome(bytes32 arg1, bytes32[] arg2) payable {
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[0] = arg1
    idx = 0
    s = 0
    s = 0
    s = 0
    s = 0
    s = 0
    while idx < arg2.length / 4:
        require 4 * idx < mem[96]
        _28 = mem[(128 * idx) + 128]
        require (4 * idx) + 1 < mem[96]
        _30 = mem[(32 * (4 * idx) + 1) + 128]
        require (4 * idx) + 2 < mem[96]
        _32 = mem[(32 * (4 * idx) + 2) + 128]
        require (4 * idx) + 3 < mem[96]
        _34 = mem[(32 * (4 * idx) + 3) + 128]
        mem[mem[64]] = sha3(descriptionHashes[arg1], mem[(128 * idx) + 128])
        mem[mem[64] + 32] = uint8(_30)
        mem[mem[64] + 64] = _32
        mem[mem[64] + 96] = _34
        signer = erecover(mem[mem[64]], _30 << 248, _32, _34) 
        mem[mem[64]] = signer
        require erecover.result
        mem[0] = address(signer)
        mem[32] = sha3(descriptionHashes[arg1], 2)
        if not uint256(oracleOutcomes[stor4[arg1]][address(signer)].field_0):
            mem[0] = address(signer)
            mem[32] = sha3(descriptionHashes[arg1], 2)
            uint256(oracleOutcomes[stor4[arg1]][address(signer)].field_256) = _28
            uint256(oracleOutcomes[stor4[arg1]][address(signer)].field_0) = block.timestamp
        idx = idx + 1
        s = signer
        s = _34
        s = _32
        s = _30
        s = _28
        continue 
    return 1
}

function getUltimateOutcomes(bytes32[] arg1) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 0
    mem[(32 * arg1.length) + 192] = 6 * arg1.length
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < 6 * arg1.length
        mem[(32 * arg1.length) + (32 * idx) + 224] = mem[(32 * idx) + 128]
        require idx < arg1.length
        require idx + 1 < 6 * arg1.length
        if not uint8(stor0[mem[(32 * idx) + 128]].field_0):
            mem[(32 * arg1.length) + (32 * idx + 1) + 224] = 0
        else:
            mem[(32 * arg1.length) + (32 * idx + 1) + 224] = 1
        require idx < arg1.length
        require idx + 2 < 6 * arg1.length
        mem[(32 * arg1.length) + (32 * idx + 2) + 224] = uint256(stor0[mem[(32 * idx) + 128]].field_256)
        require idx < arg1.length
        require idx + 3 < 6 * arg1.length
        mem[(32 * arg1.length) + (32 * idx + 3) + 224] = uint256(stor0[mem[(32 * idx) + 128]].field_512)
        require idx < arg1.length
        require idx + 4 < 6 * arg1.length
        mem[(32 * arg1.length) + (32 * idx + 4) + 224] = uint256(stor0[mem[(32 * idx) + 128]].field_768)
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 0
        require idx + 5 < 6 * arg1.length
        mem[(32 * arg1.length) + (32 * idx + 5) + 224] = uint256(stor0[mem[(32 * idx) + 128]].field_1024)
        idx = idx + 1
        s = s + 6
        continue 
    return Array(len=6 * arg1.length, data=mem[(32 * arg1.length) + 224 len 32 * 6 * arg1.length])
}

function getShares(address arg1, bytes32[] arg2, int256[] arg3) payable {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
    mem[(32 * arg2.length) + (32 * arg3.length) + 192] = 0
    idx = 0
    while idx < arg2.length:
        s = 0
        t = 0
        while s < arg3.length:
            require idx < arg2.length
            require s < arg3.length
            mem[0] = mem[(32 * s) + (32 * arg2.length) + 160]
            mem[32] = sha3(mem[(32 * idx) + 128], sha3(address(arg1), 1))
            if shares[address(arg1)][mem[(32 * idx) + 128]][mem[(32 * s) + (32 * arg2.length) + 160]] <= 0:
                s = s + 1
                t = t
                continue 
            s = s + 1
            t = t + 1
            continue 
        idx = idx + 1
        continue 
    mem[(32 * arg2.length) + (32 * arg3.length) + 224] = 0
    idx = 0
    while idx < arg2.length:
        s = 0
        t = 0
        while s < arg3.length:
            require idx < arg2.length
            require s < arg3.length
            mem[0] = mem[(32 * s) + (32 * arg2.length) + 160]
            mem[32] = sha3(mem[(32 * idx) + 128], sha3(address(arg1), 1))
            if shares[address(arg1)][mem[(32 * idx) + 128]][mem[(32 * s) + (32 * arg2.length) + 160]] <= 0:
                s = s + 1
                t = t
                continue 
            require s < arg3.length
            require s + 2 < 0
            mem[(32 * arg2.length) + (32 * arg3.length) + (32 * s + 2) + 256] = mem[(32 * s) + (32 * arg2.length) + 160]
            require idx < arg2.length
            require s < arg3.length
            mem[0] = mem[(32 * s) + (32 * arg2.length) + 160]
            mem[32] = sha3(mem[(32 * idx) + 128], sha3(address(arg1), 1))
            require s + 3 < 0
            mem[(32 * arg2.length) + (32 * arg3.length) + (32 * s + 3) + 256] = shares[address(arg1)][mem[(32 * idx) + 128]][mem[(32 * s) + (32 * arg2.length) + 160]]
            s = s + 1
            t = t + 1
            continue 
        if t <= 0:
            idx = idx + 1
            continue 
        revert 
    return ''
}

function registerEvent(bytes32[] arg1) payable {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 0 < arg1.length
    _7 = mem[128]
    mem[0] = sha3(call.data[arg1 + 36 len 32 * arg1.length])
    descriptionHashes[call.data[arg1 + 36 len 32 * arg1.length]] = mem[128]
    idx = 1
    s = 0
    s = 0
    s = 0
    s = 0
    s = 0
    while idx < arg1.length:
        require idx < mem[96]
        _42 = mem[(32 * idx) + 128]
        require idx + 1 < mem[96]
        _44 = mem[(32 * idx + 1) + 128]
        require idx + 2 < mem[96]
        _46 = mem[(32 * idx + 2) + 128]
        require idx + 3 < mem[96]
        _48 = mem[(32 * idx + 3) + 128]
        mem[mem[64]] = sha3(_7, mem[(32 * idx) + 128])
        mem[mem[64] + 32] = uint8(_44)
        mem[mem[64] + 64] = _46
        mem[mem[64] + 96] = _48
        signer = erecover(mem[mem[64]], _44 << 248, _46, _48) 
        mem[mem[64]] = signer
        require erecover.result
        mem[32] = 3
        uint256(eventOracles[call.data[arg1 + 36 len 32 * arg1.length]])++
        if not uint256(eventOracles[call.data[arg1 + 36 len 32 * arg1.length]]) <= uint256(eventOracles[call.data[arg1 + 36 len 32 * arg1.length]]) + 1:
            s = uint256(eventOracles[call.data[arg1 + 36 len 32 * arg1.length]]) + sha3(sha3(sha3(call.data[arg1 + 36 len 32 * arg1.length]), 3)) + 1
            while sha3(sha3(sha3(call.data[arg1 + 36 len 32 * arg1.length]), 3)) + uint256(eventOracles[call.data[arg1 + 36 len 32 * arg1.length]]) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
        mem[0] = sha3(sha3(call.data[arg1 + 36 len 32 * arg1.length]), 3)
        uint256(eventOracles[call.data[arg1 + 36 len 32 * arg1.length]][uint256(eventOracles[call.data[arg1 + 36 len 32 * arg1.length]])]) = signer or Mask(96, 160, uint256(eventOracles[call.data[arg1 + 36 len 32 * arg1.length]][uint256(eventOracles[call.data[arg1 + 36 len 32 * arg1.length]])]))
        if _42 <= 0:
            idx = idx + 4
            s = signer
            s = _48
            s = _46
            s = _44
            s = _42
            continue 
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(signer)
        mem[mem[64] + 68] = _42
        call stor5.0x23b872dd with:
             gas gas_remaining - 25050 wei
            args msg.sender, address(signer), _42
        mem[mem[64]] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        idx = idx + 4
        s = signer
        s = _48
        s = _46
        s = _44
        s = _42
        continue 
    return sha3(call.data[arg1 + 36 len 32 * arg1.length])
}

function getOracleOutcomes(bytes32[] arg1, address[] arg2) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 192] = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        t = 0
        u = s + 3
        while t < arg2.length:
            require idx < arg1.length
            require idx < arg2.length
            mem[0] = mem[(32 * arg1.length) + (32 * idx) + 172 len 20]
            mem[32] = sha3(mem[(32 * idx) + 128], 2)
            if uint256(oracleOutcomes[mem[(32 * idx) + 128]][mem[(32 * arg1.length) + (32 * idx) + 172 len 20]].field_0) <= 0:
                t = t + 1
                u = u
                continue 
            t = t + 1
            u = u + 3
            continue 
        idx = idx + 1
        s = u
        continue 
    mem[(32 * arg1.length) + (32 * arg2.length) + 224] = s
    idx = 0
    t = 0
    while idx < arg1.length:
        require idx < arg1.length
        require t < s
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * t) + 256] = mem[(32 * idx) + 128]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 0
        require t + 1 < s
        if uint256(stor0[mem[(32 * idx) + 128]].field_1024) <= 0:
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * t + 1) + 256] = 0
        else:
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * t + 1) + 256] = 1
        v = 0
        u = 0
        while u < arg2.length:
            require idx < arg1.length
            require idx < arg2.length
            mem[0] = mem[(32 * arg1.length) + (32 * idx) + 172 len 20]
            mem[32] = sha3(mem[(32 * idx) + 128], 2)
            if uint256(oracleOutcomes[mem[(32 * idx) + 128]][mem[(32 * arg1.length) + (32 * idx) + 172 len 20]].field_0) <= 0:
                v = v
                u = u + 1
                continue 
            require idx < arg2.length
            require t + u + 3 < s
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * t + u + 3) + 256] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
            require idx < arg1.length
            require idx < arg2.length
            require u + t + 4 < s
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * u + t + 4) + 256] = uint256(oracleOutcomes[mem[(32 * idx) + 128]][mem[(32 * arg1.length) + (32 * idx) + 172 len 20]].field_0)
            require idx < arg1.length
            require idx < arg2.length
            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
            mem[32] = sha3(mem[(32 * idx) + 128], 2)
            require t + u + 5 < s
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * t + u + 5) + 256] = uint256(oracleOutcomes[mem[(32 * idx) + 128]][mem[(32 * idx) + (32 * arg1.length) + 172 len 20]].field_256)
            v = v + 1
            u = u + 1
            continue 
        require t + 2 < s
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * t + 2) + 256] = v
        idx = idx + 1
        t = t + (3 * v) + 3
        continue 
    return Array(len=s, data=mem[(32 * arg1.length) + (32 * arg2.length) + 256 len 32 * s])
}

function getOutcome(bytes32 arg1) payable {
    if uint256(stor0[stor4[arg1]].field_768) > 0:
        require uint8(stor0[stor4[arg1]].field_0)
        return uint256(stor0[stor4[arg1]].field_256)
    if 192 < (32 * uint256(eventOracles[arg1])) + 192:
        mem[(32 * uint256(eventOracles[arg1])) + 192] = uint256(eventOracles[arg1])
        s = 0
        idx = 0
        while uint8(idx) < uint256(eventOracles[arg1]):
            mem[0] = address(eventOracles[arg1][uint8(idx)])
            mem[32] = sha3(descriptionHashes[arg1], 2)
            if not uint256(oracleOutcomes[stor4[arg1]][address(stor3[arg1][uint8(idx)])].field_0):
                s = s
                idx = idx + 1
                continue 
            require uint8(idx) < uint256(eventOracles[arg1])
            mem[0] = address(eventOracles[arg1][uint8(idx)])
            mem[32] = sha3(descriptionHashes[arg1], 2)
            if uint256(oracleOutcomes[stor4[arg1]][address(stor3[arg1][uint8(idx)])].field_0) + (12 * 3600) > block.timestamp:
                s = s
                idx = idx + 1
                continue 
            require uint8(idx) < uint256(eventOracles[arg1])
            mem[0] = address(eventOracles[arg1][uint8(idx)])
            mem[32] = sha3(descriptionHashes[arg1], 2)
            s = 0
            while uint8(s) <= uint8(idx):
                require uint8(s) < uint256(eventOracles[arg1])
                if uint256(oracleOutcomes[stor4[arg1]][address(stor3[arg1][uint8(idx)])].field_256) == mem[(32 * uint8(s)) + 192]:
                    require uint8(s) < mem[(32 * uint256(eventOracles[arg1])) + 192]
                    mem[(32 * uint256(eventOracles[arg1])) + (32 * uint8(s)) + 224] = uint8(mem[(32 * uint256(eventOracles[arg1])) + (32 * uint8(s)) + 224] + 1)
                    s = uint256(oracleOutcomes[stor4[arg1]][address(stor3[arg1][uint8(idx)])].field_256)
                    idx = idx + 1
                    continue 
                require uint8(s) < uint256(eventOracles[arg1])
                if 0 == mem[(32 * uint8(s)) + 192]:
                    require uint8(s) < uint256(eventOracles[arg1])
                    mem[(32 * uint8(s)) + 192] = uint256(oracleOutcomes[stor4[arg1]][address(stor3[arg1][uint8(idx)])].field_256)
                    require uint8(s) < mem[(32 * uint256(eventOracles[arg1])) + 192]
                    mem[(32 * uint256(eventOracles[arg1])) + (32 * uint8(s)) + 224] = uint8(mem[(32 * uint256(eventOracles[arg1])) + (32 * uint8(s)) + 224] + 1)
                s = s + 1
                continue 
            s = uint256(oracleOutcomes[stor4[arg1]][address(stor3[arg1][uint8(idx)])].field_256)
            idx = idx + 1
            continue 
        s = 0
        idx = 0
        while uint8(idx) < uint256(eventOracles[arg1]):
            require uint8(idx) < mem[(32 * uint256(eventOracles[arg1])) + 192]
            if mem[(32 * uint8(idx)) + (32 * uint256(eventOracles[arg1])) + 255 len 1] <= uint8(s):
                s = s
                idx = idx + 1
                continue 
            require uint8(idx) < mem[(32 * uint256(eventOracles[arg1])) + 192]
            s = mem[(32 * uint256(eventOracles[arg1])) + (32 * uint8(idx)) + 224]
            idx = idx + 1
            continue 
    else:
        mem[192] = uint256(eventOracles[arg1])
        s = 0
        idx = 0
        while uint8(idx) < uint256(eventOracles[arg1]):
            mem[0] = address(eventOracles[arg1][uint8(idx)])
            mem[32] = sha3(descriptionHashes[arg1], 2)
            if not uint256(oracleOutcomes[stor4[arg1]][address(stor3[arg1][uint8(idx)])].field_0):
                s = s
                idx = idx + 1
                continue 
            require uint8(idx) < uint256(eventOracles[arg1])
            mem[0] = address(eventOracles[arg1][uint8(idx)])
            mem[32] = sha3(descriptionHashes[arg1], 2)
            if uint256(oracleOutcomes[stor4[arg1]][address(stor3[arg1][uint8(idx)])].field_0) + (12 * 3600) > block.timestamp:
                s = s
                idx = idx + 1
                continue 
            require uint8(idx) < uint256(eventOracles[arg1])
            mem[0] = address(eventOracles[arg1][uint8(idx)])
            mem[32] = sha3(descriptionHashes[arg1], 2)
            s = 0
            while uint8(s) <= uint8(idx):
                require uint8(s) < uint256(eventOracles[arg1])
                if uint256(oracleOutcomes[stor4[arg1]][address(stor3[arg1][uint8(idx)])].field_256) == mem[(32 * uint8(s)) + 192]:
                    require uint8(s) < mem[192]
                    mem[(32 * uint8(s)) + 224] = uint8(mem[(32 * uint8(s)) + 224] + 1)
                    s = uint256(oracleOutcomes[stor4[arg1]][address(stor3[arg1][uint8(idx)])].field_256)
                    idx = idx + 1
                    continue 
                require uint8(s) < uint256(eventOracles[arg1])
                if 0 == mem[(32 * uint8(s)) + 192]:
                    require uint8(s) < uint256(eventOracles[arg1])
                    mem[(32 * uint8(s)) + 192] = uint256(oracleOutcomes[stor4[arg1]][address(stor3[arg1][uint8(idx)])].field_256)
                    require uint8(s) < mem[192]
                    mem[(32 * uint8(s)) + 224] = uint8(mem[(32 * uint8(s)) + 224] + 1)
                s = s + 1
                continue 
            s = uint256(oracleOutcomes[stor4[arg1]][address(stor3[arg1][uint8(idx)])].field_256)
            idx = idx + 1
            continue 
        s = 0
        idx = 0
        while uint8(idx) < uint256(eventOracles[arg1]):
            require uint8(idx) < mem[192]
            if mem[(32 * uint8(idx)) + 255 len 1] <= uint8(s):
                s = s
                idx = idx + 1
                continue 
            require uint8(idx) < mem[192]
            s = mem[(32 * uint8(idx)) + 224]
            idx = idx + 1
            continue 
    require 2 * s % 128 > uint256(eventOracles[arg1])
    require 0 < uint256(eventOracles[arg1])
    return memory
      from 192
       len 32
}

function isOutcomeSet(bytes32 arg1) payable {
    if uint256(stor0[stor4[arg1]].field_768) > 0:
        if not uint8(stor0[stor4[arg1]].field_0):
            return 0
    else:
        if 192 < (32 * uint256(eventOracles[arg1])) + 192:
            mem[(32 * uint256(eventOracles[arg1])) + 192] = uint256(eventOracles[arg1])
            s = 0
            idx = 0
            while uint8(idx) < uint256(eventOracles[arg1]):
                mem[0] = address(eventOracles[arg1][uint8(idx)])
                mem[32] = sha3(descriptionHashes[arg1], 2)
                if not uint256(oracleOutcomes[stor4[arg1]][address(stor3[arg1][uint8(idx)])].field_0):
                    s = s
                    idx = idx + 1
                    continue 
                require uint8(idx) < uint256(eventOracles[arg1])
                mem[0] = address(eventOracles[arg1][uint8(idx)])
                mem[32] = sha3(descriptionHashes[arg1], 2)
                if uint256(oracleOutcomes[stor4[arg1]][address(stor3[arg1][uint8(idx)])].field_0) + (12 * 3600) > block.timestamp:
                    s = s
                    idx = idx + 1
                    continue 
                require uint8(idx) < uint256(eventOracles[arg1])
                mem[0] = address(eventOracles[arg1][uint8(idx)])
                mem[32] = sha3(descriptionHashes[arg1], 2)
                s = 0
                while uint8(s) <= uint8(idx):
                    require uint8(s) < uint256(eventOracles[arg1])
                    if uint256(oracleOutcomes[stor4[arg1]][address(stor3[arg1][uint8(idx)])].field_256) == mem[(32 * uint8(s)) + 192]:
                        require uint8(s) < mem[(32 * uint256(eventOracles[arg1])) + 192]
                        mem[(32 * uint256(eventOracles[arg1])) + (32 * uint8(s)) + 224] = uint8(mem[(32 * uint256(eventOracles[arg1])) + (32 * uint8(s)) + 224] + 1)
                        s = uint256(oracleOutcomes[stor4[arg1]][address(stor3[arg1][uint8(idx)])].field_256)
                        idx = idx + 1
                        continue 
                    require uint8(s) < uint256(eventOracles[arg1])
                    if 0 == mem[(32 * uint8(s)) + 192]:
                        require uint8(s) < uint256(eventOracles[arg1])
                        mem[(32 * uint8(s)) + 192] = uint256(oracleOutcomes[stor4[arg1]][address(stor3[arg1][uint8(idx)])].field_256)
                        require uint8(s) < mem[(32 * uint256(eventOracles[arg1])) + 192]
                        mem[(32 * uint256(eventOracles[arg1])) + (32 * uint8(s)) + 224] = uint8(mem[(32 * uint256(eventOracles[arg1])) + (32 * uint8(s)) + 224] + 1)
                    s = s + 1
                    continue 
                s = uint256(oracleOutcomes[stor4[arg1]][address(stor3[arg1][uint8(idx)])].field_256)
                idx = idx + 1
                continue 
            s = 0
            idx = 0
            while uint8(idx) < uint256(eventOracles[arg1]):
                require uint8(idx) < mem[(32 * uint256(eventOracles[arg1])) + 192]
                if mem[(32 * uint8(idx)) + (32 * uint256(eventOracles[arg1])) + 255 len 1] <= uint8(s):
                    s = s
                    idx = idx + 1
                    continue 
                require uint8(idx) < mem[(32 * uint256(eventOracles[arg1])) + 192]
                s = mem[(32 * uint256(eventOracles[arg1])) + (32 * uint8(idx)) + 224]
                idx = idx + 1
                continue 
        else:
            mem[192] = uint256(eventOracles[arg1])
            s = 0
            idx = 0
            while uint8(idx) < uint256(eventOracles[arg1]):
                mem[0] = address(eventOracles[arg1][uint8(idx)])
                mem[32] = sha3(descriptionHashes[arg1], 2)
                if not uint256(oracleOutcomes[stor4[arg1]][address(stor3[arg1][uint8(idx)])].field_0):
                    s = s
                    idx = idx + 1
                    continue 
                require uint8(idx) < uint256(eventOracles[arg1])
                mem[0] = address(eventOracles[arg1][uint8(idx)])
                mem[32] = sha3(descriptionHashes[arg1], 2)
                if uint256(oracleOutcomes[stor4[arg1]][address(stor3[arg1][uint8(idx)])].field_0) + (12 * 3600) > block.timestamp:
                    s = s
                    idx = idx + 1
                    continue 
                require uint8(idx) < uint256(eventOracles[arg1])
                mem[0] = address(eventOracles[arg1][uint8(idx)])
                mem[32] = sha3(descriptionHashes[arg1], 2)
                s = 0
                while uint8(s) <= uint8(idx):
                    require uint8(s) < uint256(eventOracles[arg1])
                    if uint256(oracleOutcomes[stor4[arg1]][address(stor3[arg1][uint8(idx)])].field_256) == mem[(32 * uint8(s)) + 192]:
                        require uint8(s) < mem[192]
                        mem[(32 * uint8(s)) + 224] = uint8(mem[(32 * uint8(s)) + 224] + 1)
                        s = uint256(oracleOutcomes[stor4[arg1]][address(stor3[arg1][uint8(idx)])].field_256)
                        idx = idx + 1
                        continue 
                    require uint8(s) < uint256(eventOracles[arg1])
                    if 0 == mem[(32 * uint8(s)) + 192]:
                        require uint8(s) < uint256(eventOracles[arg1])
                        mem[(32 * uint8(s)) + 192] = uint256(oracleOutcomes[stor4[arg1]][address(stor3[arg1][uint8(idx)])].field_256)
                        require uint8(s) < mem[192]
                        mem[(32 * uint8(s)) + 224] = uint8(mem[(32 * uint8(s)) + 224] + 1)
                    s = s + 1
                    continue 
                s = uint256(oracleOutcomes[stor4[arg1]][address(stor3[arg1][uint8(idx)])].field_256)
                idx = idx + 1
                continue 
            s = 0
            idx = 0
            while uint8(idx) < uint256(eventOracles[arg1]):
                require uint8(idx) < mem[192]
                if mem[(32 * uint8(idx)) + 255 len 1] <= uint8(s):
                    s = s
                    idx = idx + 1
                    continue 
                require uint8(idx) < mem[192]
                s = mem[(32 * uint8(idx)) + 224]
                idx = idx + 1
                continue 
        if 2 * s % 128 <= uint256(eventOracles[arg1]):
            return 0
        require 0 < uint256(eventOracles[arg1])
    return 1
}



}
