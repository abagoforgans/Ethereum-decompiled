contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - claimDividends()
#
address owner;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
array of uint256 stor4;
array of struct loggedTotalSupply;
array of uint256 stor6;
array of uint256 stor7;
array of struct loggedBalances;
mapping of uint256 allowance;
mapping of uint8 stor10;
mapping of struct dividends;
uint256 icoSince;
uint256 icoTill;
uint256 collectedEthers;
array of struct phases;

function collectedEthers() {
    return collectedEthers
}

function name() {
    return name[0 len name.length]
}

function creationBlock() {
    return stor7.length
}

function icoTill() {
    return icoTill
}

function phases(uint256 arg1) {
    require arg1 < phases.length
    return phases[arg1].field_0, phases[arg1].field_256
}

function decimals() {
    return uint8(stor4.length)
}

function loggedBalances(address arg1, uint256 arg2) {
    require arg2 < loggedBalances[arg1].field_0
    return loggedBalances[arg1][arg2].field_0, loggedBalances[arg1][arg2].field_256
}

function icoSince() {
    return icoSince
}

function standard() {
    return standard[0 len standard.length]
}

function dividends(uint256 arg1) {
    require arg1 < dividends.length
    return dividends[arg1].field_0, 
           dividends[arg1].field_256,
           dividends[arg1].field_512,
           dividends[arg1].field_768,
           dividends[arg1].field_1024,
           dividends[arg1].field_1280,
           dividends[arg1].field_1536,
           dividends[arg1].field_1792,
           bool(uint8(dividends[arg1].field_2048))
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function loggedTotalSupply(uint256 arg1) {
    require arg1 < loggedTotalSupply.length
    return loggedTotalSupply[arg1].field_0, loggedTotalSupply[arg1].field_256
}

function frozenAccount(address arg1) {
    return bool(stor10[arg1])
}

function locked() {
    return bool(uint8(stor6.length))
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function setLocked(bool arg1) {
    require owner == msg.sender
    uint8(stor6.length) = uint8(arg1)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function setIcoDates(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    icoSince = arg1
    icoTill = arg2
}

function approve(address arg1, uint256 arg2) {
    if uint8(stor6.length):
        return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function transferEthers() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function recycleDividend(uint256 arg1) {
    require owner == msg.sender
    if dividends.length - 1 < arg1:
        return 0
    require arg1 < dividends.length
    if uint8(dividends[arg1].field_2048):
        return 0
    uint8(dividends[arg1].field_2048) = 1
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    if uint8(stor6.length):
        return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function refundUnclaimedEthers(uint256 arg1) {
    require owner == msg.sender
    if dividends.length - 1 < arg1:
        return 0
    require arg1 < dividends.length
    if not uint8(dividends[arg1].field_2048):
        if block.timestamp < dividends[arg1].field_512 + dividends[arg1].field_1792:
            return 0
    dividends[arg1].field_1280 = dividends[arg1].field_768 - dividends[arg1].field_1024
    if dividends[arg1].field_768 - dividends[arg1].field_1024 <= 0:
        return 0
    call owner with:
       value dividends[arg1].field_768 - dividends[arg1].field_1024 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit UnclaimedDividendTransfer(arg1, dividends[arg1].field_768 - dividends[arg1].field_1024);
    return 1
}

function totalSupply() {
    mem[96] = 0
    mem[128] = 0
    mem[64] = 224
    mem[160] = 0
    mem[192] = 0
    if not loggedTotalSupply.length:
        return 0
    s = 160
    idx = 0
    s = 96
    while idx < loggedTotalSupply.length:
        mem[0] = 5
        _16 = mem[64]
        mem[64] = mem[64] + 64
        mem[_16] = loggedTotalSupply[idx].field_0
        mem[_16 + 32] = loggedTotalSupply[idx].field_256
        if loggedTotalSupply[idx].field_256 <= block.number:
            s = _16
            idx = idx + 1
            s = _16
            continue 
        mem[mem[64]] = mem[s]
        return memory
          from mem[64]
           len 32
    mem[mem[64]] = mem[(_16 * loggedTotalSupply.length) + 96]
    return memory
      from mem[64]
       len 32
}

function balanceOf(address arg1) {
    mem[0] = arg1
    mem[96] = 0
    mem[128] = 0
    mem[64] = 224
    mem[160] = 0
    mem[192] = 0
    if not loggedBalances[address(arg1)].field_0:
        return 0
    s = 160
    idx = 0
    s = 96
    while idx < loggedBalances[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 8)
        _17 = mem[64]
        mem[64] = mem[64] + 64
        mem[_17] = loggedBalances[address(arg1)][idx].field_0
        mem[_17 + 32] = loggedBalances[address(arg1)][idx].field_256
        if loggedBalances[address(arg1)][idx].field_256 <= block.number:
            s = _17
            idx = idx + 1
            s = _17
            continue 
        mem[mem[64]] = mem[s]
        return memory
          from mem[64]
           len 32
    mem[mem[64]] = mem[(_17 * loggedBalances[address(arg1)].field_0) + 96]
    return memory
      from mem[64]
       len 32
}

function getIcoTokensAmount(uint256 arg1, uint256 arg2) {
    s = 0
    t = 0
    idx = 0
    t = arg2
    u = arg1
    v = 0
    while idx < phases.length:
        mem[0] = 16
        if phases[idx].field_256 <= u:
            if t:
                s = s
                t = (2 * idx) + sha3(16)
                idx = idx + 1
                t = t
                u = u
                v = v
                continue 
            if t <= 0:
                return v
        else:
            if u + t <= phases[idx].field_256:
                require phases[idx].field_0
                return (v + (10^18 * t / phases[idx].field_0))
            require phases[idx].field_0
            if t - phases[idx].field_256 + u:
                s = phases[idx].field_256 - u
                t = (2 * idx) + sha3(16)
                idx = idx + 1
                t = t - phases[idx].field_256 + u
                u = phases[idx].field_256
                v = v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0)
                continue 
            if t - phases[idx].field_256 + u <= 0:
                return (v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0))
        return 0
    if t <= 0:
        return v
    else:
        return 0
}

function claimDividend(uint256 arg1) {
    if dividends.length - 1 < arg1:
        return 0
    require arg1 < dividends.length
    if 1 == bool(uint8(stor[(10 * arg1) + ('name', 'dividends', 11) + 9][address(msg.sender)].field_0)):
        return 0
    if 1 == bool(uint8(dividends[arg1].field_2048)):
        return 0
    if block.timestamp >= dividends[arg1].field_512 + dividends[arg1].field_1792:
        return 0
    mem[96] = 0
    mem[128] = 0
    mem[64] = 224
    mem[160] = 0
    mem[192] = 0
    if not loggedBalances[address(msg.sender)].field_0:
        return 0
    s = 160
    idx = 0
    s = 96
    while idx < loggedBalances[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 8)
        _45 = mem[64]
        mem[64] = mem[64] + 64
        mem[_45] = loggedBalances[address(msg.sender)][idx].field_0
        mem[_45 + 32] = loggedBalances[address(msg.sender)][idx].field_256
        if loggedBalances[address(msg.sender)][idx].field_256 <= dividends[arg1].field_256:
            s = _45
            idx = idx + 1
            s = _45
            continue 
        if not mem[s]:
            return 0
        require dividends[arg1].field_1536
        uint8(stor[(10 * arg1) + ('name', 'dividends', 11) + 9][address(msg.sender)].field_0) = 1
        dividends[arg1].field_1024 += mem[s] * dividends[arg1].field_768 / dividends[arg1].field_1536
        if mem[s] * dividends[arg1].field_768 / dividends[arg1].field_1536 <= 0:
            return 0
        call msg.sender with:
           value mem[s] * dividends[arg1].field_768 / dividends[arg1].field_1536 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit DividendClaimed(arg1, mem[s] * dividends[arg1].field_768 / dividends[arg1].field_1536, msg.sender);
        return 1
    if not mem[(_45 * loggedBalances[address(msg.sender)].field_0) + 96]:
        return 0
    require dividends[arg1].field_1536
    uint8(stor[(10 * arg1) + ('name', 'dividends', 11) + 9][address(msg.sender)].field_0) = 1
    dividends[arg1].field_1024 += mem[(_45 * loggedBalances[address(msg.sender)].field_0) + 96] * dividends[arg1].field_768 / dividends[arg1].field_1536
    if mem[(_45 * loggedBalances[address(msg.sender)].field_0) + 96] * dividends[arg1].field_768 / dividends[arg1].field_1536 <= 0:
        return 0
    call msg.sender with:
       value mem[(_45 * loggedBalances[address(msg.sender)].field_0) + 96] * dividends[arg1].field_768 / dividends[arg1].field_1536 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit DividendClaimed(arg1, mem[(_45 * loggedBalances[address(msg.sender)].field_0) + 96] * dividends[arg1].field_768 / dividends[arg1].field_1536, msg.sender);
    return 1
}

function addDividend(uint256 arg1) payable {
    require owner == msg.sender
    require msg.value > 0
    mem[96] = 0
    mem[128] = 0
    mem[64] = 224
    mem[160] = 0
    mem[192] = 0
    if not loggedTotalSupply.length:
        dividends.length++
        if not dividends.length <= dividends.length + 1:
            idx = (10 * dividends.length) + 10
            while 10 * dividends.length > idx:
                dividends[idx].field_0 = 0
                dividends[idx].field_256 = 0
                dividends[idx].field_512 = 0
                dividends[idx].field_768 = 0
                dividends[idx].field_1024 = 0
                dividends[idx].field_1280 = 0
                dividends[idx].field_1536 = 0
                dividends[idx].field_1792 = 0
                uint8(dividends[idx].field_2048) = 0
                idx = idx + 10
                continue 
        dividends[dividends.length].field_0 = dividends.length
        dividends[dividends.length].field_256 = block.number
        dividends[dividends.length].field_512 = block.timestamp
        dividends[dividends.length].field_768 = msg.value
        dividends[dividends.length].field_1024 = 0
        dividends[dividends.length].field_1280 = 0
        dividends[dividends.length].field_1536 = 0
        dividends[dividends.length].field_1792 = arg1
        uint8(dividends[dividends.length].field_2048) = 0
        emit DividendTransfered(dividends.length, block.number, msg.value, 0, msg.sender);
    else:
        s = 160
        idx = 0
        s = 96
        while idx < loggedTotalSupply.length:
            mem[0] = 5
            _91 = mem[64]
            mem[64] = mem[64] + 64
            mem[_91] = loggedTotalSupply[idx].field_0
            mem[_91 + 32] = loggedTotalSupply[idx].field_256
            if loggedTotalSupply[idx].field_256 <= block.number:
                s = _91
                idx = idx + 1
                s = _91
                continue 
            dividends.length++
            if not dividends.length <= dividends.length + 1:
                idx = sha3(11) + (10 * dividends.length) + 10
                while sha3(11) + (10 * dividends.length) > idx:
                    stor[idx] = 0
                    standard[idx] = 0
                    name[idx] = 0
                    symbol[idx] = 0
                    uint256(stor4[idx]) = 0
                    loggedTotalSupply[idx].field_0 = 0
                    uint256(stor6[idx]) = 0
                    stor7[idx] = 0
                    uint8(loggedBalances[idx].field_0) = 0
                    idx = idx + 10
                    continue 
            dividends[dividends.length].field_0 = dividends.length
            dividends[dividends.length].field_256 = block.number
            dividends[dividends.length].field_512 = block.timestamp
            dividends[dividends.length].field_768 = msg.value
            dividends[dividends.length].field_1024 = 0
            dividends[dividends.length].field_1280 = 0
            dividends[dividends.length].field_1536 = mem[s]
            dividends[dividends.length].field_1792 = arg1
            uint8(dividends[dividends.length].field_2048) = 0
            emit DividendTransfered(dividends.length, block.number, msg.value, mem[s], msg.sender);
        dividends.length++
        if not dividends.length <= dividends.length + 1:
            idx = (10 * dividends.length) + 10
            while 10 * dividends.length > idx:
                dividends[idx].field_0 = 0
                dividends[idx].field_256 = 0
                dividends[idx].field_512 = 0
                dividends[idx].field_768 = 0
                dividends[idx].field_1024 = 0
                dividends[idx].field_1280 = 0
                dividends[idx].field_1536 = 0
                dividends[idx].field_1792 = 0
                uint8(dividends[idx].field_2048) = 0
                idx = idx + 10
                continue 
        dividends[dividends.length].field_0 = dividends.length
        dividends[dividends.length].field_256 = block.number
        dividends[dividends.length].field_512 = block.timestamp
        dividends[dividends.length].field_768 = msg.value
        dividends[dividends.length].field_1024 = 0
        dividends[dividends.length].field_1280 = 0
        dividends[dividends.length].field_1536 = mem[s]
        dividends[dividends.length].field_1792 = arg1
        uint8(dividends[dividends.length].field_2048) = 0
        emit DividendTransfered(dividends.length, block.number, msg.value, mem[s], msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor6.length)
    mem[0] = msg.sender
    mem[32] = 8
    mem[96] = 0
    mem[128] = 0
    mem[64] = 224
    mem[160] = 0
    mem[192] = 0
    if not loggedBalances[address(msg.sender)].field_0:
        mem[0] = arg1
        mem[32] = 8
        mem[224] = 0
        mem[256] = 0
        mem[64] = 352
        mem[288] = 0
        mem[320] = 0
        if not loggedBalances[address(arg1)].field_0:
            require arg2
            require bool(stor10[address(msg.sender)]) != 1
            require 0 >= arg2
            require arg2 > 0
            loggedBalances[address(msg.sender)].field_0++
            if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                idx = 2 * loggedBalances[address(msg.sender)].field_0 + 1
                while 2 * loggedBalances[address(msg.sender)].field_0 > idx:
                    loggedBalances[address(msg.sender)][idx].field_0 = 0
                    loggedBalances[address(msg.sender)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = -arg2
            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
            loggedBalances[address(arg1)].field_0++
            if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                while 2 * loggedBalances[address(arg1)].field_0 > idx:
                    loggedBalances[address(arg1)][idx].field_0 = 0
                    loggedBalances[address(arg1)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = arg2
        else:
            s = 288
            idx = 0
            s = 224
            while idx < loggedBalances[address(arg1)].field_0:
                mem[0] = sha3(address(arg1), 8)
                _391 = mem[64]
                mem[64] = mem[64] + 64
                mem[_391] = loggedBalances[address(arg1)][idx].field_0
                mem[_391 + 32] = loggedBalances[address(arg1)][idx].field_256
                if loggedBalances[address(arg1)][idx].field_256 <= block.number:
                    s = _391
                    idx = idx + 1
                    s = _391
                    continue 
                require arg2
                require bool(stor10[address(msg.sender)]) != 1
                require 0 >= arg2
                require mem[s] + arg2 > mem[s]
                loggedBalances[address(msg.sender)].field_0++
                if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                    idx = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                    while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = -arg2
                loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
                loggedBalances[address(arg1)].field_0++
                if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                    idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                    while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = arg2 + mem[s]
                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                emit Transfer(arg2, msg.sender, arg1);
            require arg2
            require bool(stor10[address(msg.sender)]) != 1
            require 0 >= arg2
            require mem[s] + arg2 > mem[s]
            loggedBalances[address(msg.sender)].field_0++
            if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                idx = 2 * loggedBalances[address(msg.sender)].field_0 + 1
                while 2 * loggedBalances[address(msg.sender)].field_0 > idx:
                    loggedBalances[address(msg.sender)][idx].field_0 = 0
                    loggedBalances[address(msg.sender)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = -arg2
            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
            loggedBalances[address(arg1)].field_0++
            if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                while 2 * loggedBalances[address(arg1)].field_0 > idx:
                    loggedBalances[address(arg1)][idx].field_0 = 0
                    loggedBalances[address(arg1)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = arg2 + mem[s]
    else:
        s = 160
        idx = 0
        s = 96
        while idx < loggedBalances[address(msg.sender)].field_0:
            mem[0] = sha3(address(msg.sender), 8)
            _389 = mem[64]
            mem[64] = mem[64] + 64
            mem[_389] = loggedBalances[address(msg.sender)][idx].field_0
            mem[_389 + 32] = loggedBalances[address(msg.sender)][idx].field_256
            if loggedBalances[address(msg.sender)][idx].field_256 <= block.number:
                s = _389
                idx = idx + 1
                s = _389
                continue 
            _393 = mem[s]
            mem[0] = arg1
            mem[32] = 8
            _412 = mem[64]
            mem[64] = mem[64] + 64
            mem[_412] = 0
            mem[_412 + 32] = 0
            _415 = mem[64]
            mem[64] = mem[64] + 64
            mem[_415] = 0
            mem[_415 + 32] = 0
            if not loggedBalances[address(arg1)].field_0:
                require arg2
                require bool(stor10[address(msg.sender)]) != 1
                require _393 >= arg2
                require arg2 > 0
                loggedBalances[address(msg.sender)].field_0++
                if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                    idx = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                    while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = _393 - arg2
                loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
                loggedBalances[address(arg1)].field_0++
                if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                    idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                    while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = arg2
            else:
                s = _415
                idx = 0
                s = _412
                while idx < loggedBalances[address(arg1)].field_0:
                    mem[0] = sha3(address(arg1), 8)
                    _752 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_752] = loggedBalances[address(arg1)][idx].field_0
                    mem[_752 + 32] = loggedBalances[address(arg1)][idx].field_256
                    if loggedBalances[address(arg1)][idx].field_256 <= block.number:
                        s = _752
                        idx = idx + 1
                        s = _752
                        continue 
                    require arg2
                    require bool(stor10[address(msg.sender)]) != 1
                    require _393 >= arg2
                    require mem[s] + arg2 > mem[s]
                    loggedBalances[address(msg.sender)].field_0++
                    if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                        idx = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                        while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > idx:
                            stor[idx] = 0
                            standard[idx] = 0
                            idx = idx + 2
                            continue 
                    loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = _393 - arg2
                    loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
                    loggedBalances[address(arg1)].field_0++
                    if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                        idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                        while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                            stor[idx] = 0
                            standard[idx] = 0
                            idx = idx + 2
                            continue 
                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = arg2 + mem[s]
                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                    emit Transfer(arg2, msg.sender, arg1);
                require arg2
                require bool(stor10[address(msg.sender)]) != 1
                require _393 >= arg2
                require mem[s] + arg2 > mem[s]
                loggedBalances[address(msg.sender)].field_0++
                if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                    idx = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                    while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = _393 - arg2
                loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
                loggedBalances[address(arg1)].field_0++
                if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                    idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                    while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = arg2 + mem[s]
            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
            emit Transfer(arg2, msg.sender, arg1);
        _384 = mem[s]
        mem[0] = arg1
        mem[32] = 8
        _396 = mem[64]
        mem[64] = mem[64] + 64
        mem[_396] = 0
        mem[_396 + 32] = 0
        _409 = mem[64]
        mem[64] = mem[64] + 64
        mem[_409] = 0
        mem[_409 + 32] = 0
        if not loggedBalances[address(arg1)].field_0:
            require arg2
            require bool(stor10[address(msg.sender)]) != 1
            require _384 >= arg2
            require arg2 > 0
            loggedBalances[address(msg.sender)].field_0++
            if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                idx = 2 * loggedBalances[address(msg.sender)].field_0 + 1
                while 2 * loggedBalances[address(msg.sender)].field_0 > idx:
                    loggedBalances[address(msg.sender)][idx].field_0 = 0
                    loggedBalances[address(msg.sender)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = _384 - arg2
            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
            loggedBalances[address(arg1)].field_0++
            if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                while 2 * loggedBalances[address(arg1)].field_0 > idx:
                    loggedBalances[address(arg1)][idx].field_0 = 0
                    loggedBalances[address(arg1)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = arg2
        else:
            s = _409
            idx = 0
            s = _396
            while idx < loggedBalances[address(arg1)].field_0:
                mem[0] = sha3(address(arg1), 8)
                _750 = mem[64]
                mem[64] = mem[64] + 64
                mem[_750] = loggedBalances[address(arg1)][idx].field_0
                mem[_750 + 32] = loggedBalances[address(arg1)][idx].field_256
                if loggedBalances[address(arg1)][idx].field_256 <= block.number:
                    s = _750
                    idx = idx + 1
                    s = _750
                    continue 
                require arg2
                require bool(stor10[address(msg.sender)]) != 1
                require _384 >= arg2
                require mem[s] + arg2 > mem[s]
                loggedBalances[address(msg.sender)].field_0++
                if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                    idx = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                    while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = _384 - arg2
                loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
                loggedBalances[address(arg1)].field_0++
                if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                    idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                    while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = arg2 + mem[s]
                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                emit Transfer(arg2, msg.sender, arg1);
            require arg2
            require bool(stor10[address(msg.sender)]) != 1
            require _384 >= arg2
            require mem[s] + arg2 > mem[s]
            loggedBalances[address(msg.sender)].field_0++
            if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                idx = 2 * loggedBalances[address(msg.sender)].field_0 + 1
                while 2 * loggedBalances[address(msg.sender)].field_0 > idx:
                    loggedBalances[address(msg.sender)][idx].field_0 = 0
                    loggedBalances[address(msg.sender)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = _384 - arg2
            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
            loggedBalances[address(arg1)].field_0++
            if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                while 2 * loggedBalances[address(arg1)].field_0 > idx:
                    loggedBalances[address(arg1)][idx].field_0 = 0
                    loggedBalances[address(arg1)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = arg2 + mem[s]
    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if uint8(stor6.length):
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    mem[0] = arg1
    mem[32] = 8
    mem[96] = 0
    mem[128] = 0
    mem[64] = 224
    mem[160] = 0
    mem[192] = 0
    if not loggedBalances[address(arg1)].field_0:
        mem[0] = arg2
        mem[32] = 8
        mem[224] = 0
        mem[256] = 0
        mem[64] = 352
        mem[288] = 0
        mem[320] = 0
        if not loggedBalances[address(arg2)].field_0:
            if not arg3:
                return 0
            if 1 == bool(stor10[address(arg1)]):
                return 0
            if 0 < arg3:
                return 0
            if arg3 <= 0:
                return 0
            loggedBalances[address(arg1)].field_0++
            if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                while 2 * loggedBalances[address(arg1)].field_0 > idx:
                    loggedBalances[address(arg1)][idx].field_0 = 0
                    loggedBalances[address(arg1)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = -arg3
            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
            loggedBalances[address(arg2)].field_0++
            if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                while 2 * loggedBalances[address(arg2)].field_0 > idx:
                    loggedBalances[address(arg2)][idx].field_0 = 0
                    loggedBalances[address(arg2)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = arg3
        else:
            s = 288
            idx = 0
            s = 224
            while idx < loggedBalances[address(arg2)].field_0:
                mem[0] = sha3(address(arg2), 8)
                _613 = mem[64]
                mem[64] = mem[64] + 64
                mem[_613] = loggedBalances[address(arg2)][idx].field_0
                mem[_613 + 32] = loggedBalances[address(arg2)][idx].field_256
                if loggedBalances[address(arg2)][idx].field_256 <= block.number:
                    s = _613
                    idx = idx + 1
                    s = _613
                    continue 
                if not arg3:
                    return 0
                if 1 == bool(stor10[address(arg1)]):
                    return 0
                if 0 < arg3:
                    return 0
                if mem[s] + arg3 <= mem[s]:
                    return 0
                loggedBalances[address(arg1)].field_0++
                if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                    idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                    while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = -arg3
                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                loggedBalances[address(arg2)].field_0++
                if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                    idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                    while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = arg3 + mem[s]
                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                emit Transfer(arg3, arg1, arg2);
                allowance[address(arg1)][address(msg.sender)] -= arg3
                return 1
            if not arg3:
                return 0
            if 1 == bool(stor10[address(arg1)]):
                return 0
            if 0 < arg3:
                return 0
            if mem[s] + arg3 <= mem[s]:
                return 0
            loggedBalances[address(arg1)].field_0++
            if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                while 2 * loggedBalances[address(arg1)].field_0 > idx:
                    loggedBalances[address(arg1)][idx].field_0 = 0
                    loggedBalances[address(arg1)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = -arg3
            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
            loggedBalances[address(arg2)].field_0++
            if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                while 2 * loggedBalances[address(arg2)].field_0 > idx:
                    loggedBalances[address(arg2)][idx].field_0 = 0
                    loggedBalances[address(arg2)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = arg3 + mem[s]
    else:
        s = 160
        idx = 0
        s = 96
        while idx < loggedBalances[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 8)
            _611 = mem[64]
            mem[64] = mem[64] + 64
            mem[_611] = loggedBalances[address(arg1)][idx].field_0
            mem[_611 + 32] = loggedBalances[address(arg1)][idx].field_256
            if loggedBalances[address(arg1)][idx].field_256 <= block.number:
                s = _611
                idx = idx + 1
                s = _611
                continue 
            _615 = mem[s]
            mem[0] = arg2
            mem[32] = 8
            _634 = mem[64]
            mem[64] = mem[64] + 64
            mem[_634] = 0
            mem[_634 + 32] = 0
            _641 = mem[64]
            mem[64] = mem[64] + 64
            mem[_641] = 0
            mem[_641 + 32] = 0
            if not loggedBalances[address(arg2)].field_0:
                if not arg3:
                    return 0
                if 1 == bool(stor10[address(arg1)]):
                    return 0
                if _615 < arg3:
                    return 0
                if arg3 <= 0:
                    return 0
                loggedBalances[address(arg1)].field_0++
                if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                    idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                    while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = _615 - arg3
                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                loggedBalances[address(arg2)].field_0++
                if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                    idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                    while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = arg3
            else:
                s = _641
                idx = 0
                s = _634
                while idx < loggedBalances[address(arg2)].field_0:
                    mem[0] = sha3(address(arg2), 8)
                    _1178 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1178] = loggedBalances[address(arg2)][idx].field_0
                    mem[_1178 + 32] = loggedBalances[address(arg2)][idx].field_256
                    if loggedBalances[address(arg2)][idx].field_256 <= block.number:
                        s = _1178
                        idx = idx + 1
                        s = _1178
                        continue 
                    if not arg3:
                        return 0
                    if 1 == bool(stor10[address(arg1)]):
                        return 0
                    if _615 < arg3:
                        return 0
                    if mem[s] + arg3 <= mem[s]:
                        return 0
                    loggedBalances[address(arg1)].field_0++
                    if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                        idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                        while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                            stor[idx] = 0
                            standard[idx] = 0
                            idx = idx + 2
                            continue 
                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = _615 - arg3
                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                    loggedBalances[address(arg2)].field_0++
                    if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                        idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                        while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                            stor[idx] = 0
                            standard[idx] = 0
                            idx = idx + 2
                            continue 
                    loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = arg3 + mem[s]
                    loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                    emit Transfer(arg3, arg1, arg2);
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    return 1
                if not arg3:
                    return 0
                if 1 == bool(stor10[address(arg1)]):
                    return 0
                if _615 < arg3:
                    return 0
                if mem[s] + arg3 <= mem[s]:
                    return 0
                loggedBalances[address(arg1)].field_0++
                if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                    idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                    while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = _615 - arg3
                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                loggedBalances[address(arg2)].field_0++
                if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                    idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                    while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = arg3 + mem[s]
            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
            emit Transfer(arg3, arg1, arg2);
            allowance[address(arg1)][address(msg.sender)] -= arg3
            return 1
        _606 = mem[s]
        mem[0] = arg2
        mem[32] = 8
        _618 = mem[64]
        mem[64] = mem[64] + 64
        mem[_618] = 0
        mem[_618 + 32] = 0
        _631 = mem[64]
        mem[64] = mem[64] + 64
        mem[_631] = 0
        mem[_631 + 32] = 0
        if not loggedBalances[address(arg2)].field_0:
            if not arg3:
                return 0
            if 1 == bool(stor10[address(arg1)]):
                return 0
            if _606 < arg3:
                return 0
            if arg3 <= 0:
                return 0
            loggedBalances[address(arg1)].field_0++
            if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                while 2 * loggedBalances[address(arg1)].field_0 > idx:
                    loggedBalances[address(arg1)][idx].field_0 = 0
                    loggedBalances[address(arg1)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = _606 - arg3
            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
            loggedBalances[address(arg2)].field_0++
            if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                while 2 * loggedBalances[address(arg2)].field_0 > idx:
                    loggedBalances[address(arg2)][idx].field_0 = 0
                    loggedBalances[address(arg2)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = arg3
        else:
            s = _631
            idx = 0
            s = _618
            while idx < loggedBalances[address(arg2)].field_0:
                mem[0] = sha3(address(arg2), 8)
                _1176 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1176] = loggedBalances[address(arg2)][idx].field_0
                mem[_1176 + 32] = loggedBalances[address(arg2)][idx].field_256
                if loggedBalances[address(arg2)][idx].field_256 <= block.number:
                    s = _1176
                    idx = idx + 1
                    s = _1176
                    continue 
                if not arg3:
                    return 0
                if 1 == bool(stor10[address(arg1)]):
                    return 0
                if _606 < arg3:
                    return 0
                if mem[s] + arg3 <= mem[s]:
                    return 0
                loggedBalances[address(arg1)].field_0++
                if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                    idx = sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0 + 1)
                    while sha3(sha3(address(arg1), 8)) + (2 * loggedBalances[address(arg1)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = _606 - arg3
                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
                loggedBalances[address(arg2)].field_0++
                if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                    idx = sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0 + 1)
                    while sha3(sha3(address(arg2), 8)) + (2 * loggedBalances[address(arg2)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = arg3 + mem[s]
                loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
                emit Transfer(arg3, arg1, arg2);
                allowance[address(arg1)][address(msg.sender)] -= arg3
                return 1
            if not arg3:
                return 0
            if 1 == bool(stor10[address(arg1)]):
                return 0
            if _606 < arg3:
                return 0
            if mem[s] + arg3 <= mem[s]:
                return 0
            loggedBalances[address(arg1)].field_0++
            if not loggedBalances[address(arg1)].field_0 <= loggedBalances[address(arg1)].field_0 + 1:
                idx = 2 * loggedBalances[address(arg1)].field_0 + 1
                while 2 * loggedBalances[address(arg1)].field_0 > idx:
                    loggedBalances[address(arg1)][idx].field_0 = 0
                    loggedBalances[address(arg1)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = _606 - arg3
            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_256 = block.number
            loggedBalances[address(arg2)].field_0++
            if not loggedBalances[address(arg2)].field_0 <= loggedBalances[address(arg2)].field_0 + 1:
                idx = 2 * loggedBalances[address(arg2)].field_0 + 1
                while 2 * loggedBalances[address(arg2)].field_0 > idx:
                    loggedBalances[address(arg2)][idx].field_0 = 0
                    loggedBalances[address(arg2)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_0 = arg3 + mem[s]
    loggedBalances[address(arg2)][loggedBalances[address(arg2)].field_0].field_256 = block.number
    emit Transfer(arg3, arg1, arg2);
    allowance[address(arg1)][address(msg.sender)] -= arg3
    return 1
}

function _fallback() payable {
    mem[64] = 96
    require bool(uint8(stor6.length)) != 1
    require block.timestamp >= icoSince
    require block.timestamp <= icoTill
    require msg.value
    s = 0
    t = 0
    idx = 0
    t = msg.value
    u = collectedEthers
    v = 0
    while idx < phases.length:
        mem[0] = 16
        if phases[idx].field_256 <= u:
            if t:
                s = s
                t = (2 * idx) + sha3(16)
                idx = idx + 1
                t = t
                u = u
                v = v
                continue 
            require t <= 0
            require v
            mem[0] = this.address
            mem[32] = 8
            mem[96] = 0
            mem[128] = 0
            mem[64] = 224
            mem[160] = 0
            mem[192] = 0
            if not loggedBalances[address(this.address)].field_0:
                mem[0] = msg.sender
                mem[32] = 8
                mem[224] = 0
                mem[256] = 0
                mem[64] = 352
                mem[288] = 0
                mem[320] = 0
                if not loggedBalances[address(msg.sender)].field_0:
                    require 0 >= v
                    require v >= 0
                    loggedBalances[address(msg.sender)].field_0++
                    if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                        idx = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                        while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > idx:
                            stor[idx] = 0
                            standard[idx] = 0
                            idx = idx + 2
                            continue 
                    loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = v
                else:
                    s = 288
                    idx = 0
                    s = 224
                    while idx < loggedBalances[address(msg.sender)].field_0:
                        mem[0] = sha3(address(msg.sender), 8)
                        _2271 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2271] = loggedBalances[address(msg.sender)][idx].field_0
                        mem[_2271 + 32] = loggedBalances[address(msg.sender)][idx].field_256
                        if loggedBalances[address(msg.sender)][idx].field_256 <= block.number:
                            s = _2271
                            idx = idx + 1
                            s = _2271
                            continue 
                        require 0 >= v
                        require mem[s] + v >= mem[s]
                        loggedBalances[address(msg.sender)].field_0++
                        if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                            idx = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                            while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > idx:
                                stor[idx] = 0
                                standard[idx] = 0
                                idx = idx + 2
                                continue 
                        loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = mem[s] + v
                        loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
                        loggedBalances[address(this.address)].field_0++
                        if not loggedBalances[address(this.address)].field_0 <= loggedBalances[address(this.address)].field_0 + 1:
                            idx = sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0 + 1)
                            while sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0) > idx:
                                stor[idx] = 0
                                standard[idx] = 0
                                idx = idx + 2
                                continue 
                        loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_0 = -v
                        loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_256 = block.number
                        collectedEthers += msg.value
                        emit Transfer(v, this.address, msg.sender);
                    require 0 >= v
                    require mem[s] + v >= mem[s]
                    loggedBalances[address(msg.sender)].field_0++
                    if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                        idx = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                        while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > idx:
                            stor[idx] = 0
                            standard[idx] = 0
                            idx = idx + 2
                            continue 
                    loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = mem[s] + v
                loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
                loggedBalances[address(this.address)].field_0++
                if not loggedBalances[address(this.address)].field_0 <= loggedBalances[address(this.address)].field_0 + 1:
                    idx = sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0 + 1)
                    while sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_0 = -v
            else:
                s = 160
                idx = 0
                s = 96
                while idx < loggedBalances[address(this.address)].field_0:
                    mem[0] = sha3(address(this.address), 8)
                    _2269 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2269] = loggedBalances[address(this.address)][idx].field_0
                    mem[_2269 + 32] = loggedBalances[address(this.address)][idx].field_256
                    if loggedBalances[address(this.address)][idx].field_256 <= block.number:
                        s = _2269
                        idx = idx + 1
                        s = _2269
                        continue 
                    _2285 = mem[s]
                    mem[0] = msg.sender
                    mem[32] = 8
                    _2343 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2343] = 0
                    mem[_2343 + 32] = 0
                    _2365 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2365] = 0
                    mem[_2365 + 32] = 0
                    if not loggedBalances[address(msg.sender)].field_0:
                        require _2285 >= v
                        require v >= 0
                        loggedBalances[address(msg.sender)].field_0++
                        if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                            idx = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                            while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > idx:
                                stor[idx] = 0
                                standard[idx] = 0
                                idx = idx + 2
                                continue 
                        loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = v
                    else:
                        s = _2365
                        idx = 0
                        s = _2343
                        while idx < loggedBalances[address(msg.sender)].field_0:
                            mem[0] = sha3(address(msg.sender), 8)
                            _3685 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3685] = loggedBalances[address(msg.sender)][idx].field_0
                            mem[_3685 + 32] = loggedBalances[address(msg.sender)][idx].field_256
                            if loggedBalances[address(msg.sender)][idx].field_256 <= block.number:
                                s = _3685
                                idx = idx + 1
                                s = _3685
                                continue 
                            require _2285 >= v
                            require mem[s] + v >= mem[s]
                            loggedBalances[address(msg.sender)].field_0++
                            if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                                idx = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                                while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > idx:
                                    stor[idx] = 0
                                    standard[idx] = 0
                                    idx = idx + 2
                                    continue 
                            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = mem[s] + v
                            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
                            loggedBalances[address(this.address)].field_0++
                            if not loggedBalances[address(this.address)].field_0 <= loggedBalances[address(this.address)].field_0 + 1:
                                idx = sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0 + 1)
                                while sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0) > idx:
                                    stor[idx] = 0
                                    standard[idx] = 0
                                    idx = idx + 2
                                    continue 
                            loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_0 = _2285 - v
                            loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_256 = block.number
                            collectedEthers += msg.value
                            emit Transfer(v, this.address, msg.sender);
                        require _2285 >= v
                        require mem[s] + v >= mem[s]
                        loggedBalances[address(msg.sender)].field_0++
                        if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                            idx = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                            while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > idx:
                                stor[idx] = 0
                                standard[idx] = 0
                                idx = idx + 2
                                continue 
                        loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = mem[s] + v
                    loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
                    loggedBalances[address(this.address)].field_0++
                    if not loggedBalances[address(this.address)].field_0 <= loggedBalances[address(this.address)].field_0 + 1:
                        idx = sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0 + 1)
                        while sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0) > idx:
                            stor[idx] = 0
                            standard[idx] = 0
                            idx = idx + 2
                            continue 
                    loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_0 = _2285 - v
                    loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_256 = block.number
                    collectedEthers += msg.value
                    emit Transfer(v, this.address, msg.sender);
                _2249 = mem[s]
                mem[0] = msg.sender
                mem[32] = 8
                _2294 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2294] = 0
                mem[_2294 + 32] = 0
                _2336 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2336] = 0
                mem[_2336 + 32] = 0
                if not loggedBalances[address(msg.sender)].field_0:
                    require _2249 >= v
                    require v >= 0
                    loggedBalances[address(msg.sender)].field_0++
                    if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                        idx = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                        while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > idx:
                            stor[idx] = 0
                            standard[idx] = 0
                            idx = idx + 2
                            continue 
                    loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = v
                else:
                    s = _2336
                    idx = 0
                    s = _2294
                    while idx < loggedBalances[address(msg.sender)].field_0:
                        mem[0] = sha3(address(msg.sender), 8)
                        _3683 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3683] = loggedBalances[address(msg.sender)][idx].field_0
                        mem[_3683 + 32] = loggedBalances[address(msg.sender)][idx].field_256
                        if loggedBalances[address(msg.sender)][idx].field_256 <= block.number:
                            s = _3683
                            idx = idx + 1
                            s = _3683
                            continue 
                        require _2249 >= v
                        require mem[s] + v >= mem[s]
                        loggedBalances[address(msg.sender)].field_0++
                        if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                            idx = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                            while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > idx:
                                stor[idx] = 0
                                standard[idx] = 0
                                idx = idx + 2
                                continue 
                        loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = mem[s] + v
                        loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
                        loggedBalances[address(this.address)].field_0++
                        if not loggedBalances[address(this.address)].field_0 <= loggedBalances[address(this.address)].field_0 + 1:
                            idx = sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0 + 1)
                            while sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0) > idx:
                                stor[idx] = 0
                                standard[idx] = 0
                                idx = idx + 2
                                continue 
                        loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_0 = _2249 - v
                        loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_256 = block.number
                        collectedEthers += msg.value
                        emit Transfer(v, this.address, msg.sender);
                    require _2249 >= v
                    require mem[s] + v >= mem[s]
                    loggedBalances[address(msg.sender)].field_0++
                    if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                        idx = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                        while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > idx:
                            stor[idx] = 0
                            standard[idx] = 0
                            idx = idx + 2
                            continue 
                    loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = mem[s] + v
                loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
                loggedBalances[address(this.address)].field_0++
                if not loggedBalances[address(this.address)].field_0 <= loggedBalances[address(this.address)].field_0 + 1:
                    idx = sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0 + 1)
                    while sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_0 = _2249 - v
            loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_256 = block.number
            collectedEthers += msg.value
            emit Transfer(v, this.address, msg.sender);
        else:
            require phases[idx].field_0
            if u + t <= phases[idx].field_256:
                require v + (10^18 * t / phases[idx].field_0)
                mem[0] = this.address
                mem[32] = 8
                mem[96] = 0
                mem[128] = 0
                mem[64] = 224
                mem[160] = 0
                mem[192] = 0
                if not loggedBalances[address(this.address)].field_0:
                    mem[0] = msg.sender
                    mem[32] = 8
                    mem[224] = 0
                    mem[256] = 0
                    mem[64] = 352
                    mem[288] = 0
                    mem[320] = 0
                    if not loggedBalances[address(msg.sender)].field_0:
                        require 0 >= v + (10^18 * t / phases[idx].field_0)
                        require v + (10^18 * t / phases[idx].field_0) >= 0
                        loggedBalances[address(msg.sender)].field_0++
                        if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                            s = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                            while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > s:
                                stor[s] = 0
                                standard[s] = 0
                                s = s + 2
                                continue 
                        loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = v + (10^18 * t / phases[idx].field_0)
                    else:
                        u = 288
                        s = 0
                        u = 224
                        while s < loggedBalances[address(msg.sender)].field_0:
                            mem[0] = sha3(address(msg.sender), 8)
                            _2276 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2276] = loggedBalances[address(msg.sender)][s].field_0
                            mem[_2276 + 32] = loggedBalances[address(msg.sender)][s].field_256
                            if loggedBalances[address(msg.sender)][s].field_256 <= block.number:
                                u = _2276
                                s = s + 1
                                u = _2276
                                continue 
                            require 0 >= v + (10^18 * t / phases[idx].field_0)
                            require mem[u] + v + (10^18 * t / phases[idx].field_0) >= mem[u]
                            loggedBalances[address(msg.sender)].field_0++
                            if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                                s = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                                while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > s:
                                    stor[s] = 0
                                    standard[s] = 0
                                    s = s + 2
                                    continue 
                            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = mem[u] + v + (10^18 * t / phases[idx].field_0)
                            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
                            loggedBalances[address(this.address)].field_0++
                            if not loggedBalances[address(this.address)].field_0 <= loggedBalances[address(this.address)].field_0 + 1:
                                s = sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0 + 1)
                                while sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0) > s:
                                    stor[s] = 0
                                    standard[s] = 0
                                    s = s + 2
                                    continue 
                            loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_0 = -v - (10^18 * t / phases[idx].field_0)
                            loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_256 = block.number
                            collectedEthers += msg.value
                            emit Transfer((v + (10^18 * t / phases[idx].field_0)), this.address, msg.sender);
                        require 0 >= v + (10^18 * t / phases[idx].field_0)
                        require mem[u] + v + (10^18 * t / phases[idx].field_0) >= mem[u]
                        loggedBalances[address(msg.sender)].field_0++
                        if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                            s = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                            while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > s:
                                stor[s] = 0
                                standard[s] = 0
                                s = s + 2
                                continue 
                        loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = mem[u] + v + (10^18 * t / phases[idx].field_0)
                    loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
                    loggedBalances[address(this.address)].field_0++
                    if not loggedBalances[address(this.address)].field_0 <= loggedBalances[address(this.address)].field_0 + 1:
                        s = sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0 + 1)
                        while sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0) > s:
                            stor[s] = 0
                            standard[s] = 0
                            s = s + 2
                            continue 
                    loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_0 = -v - (10^18 * t / phases[idx].field_0)
                else:
                    u = 160
                    s = 0
                    u = 96
                    while s < loggedBalances[address(this.address)].field_0:
                        mem[0] = sha3(address(this.address), 8)
                        _2274 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2274] = loggedBalances[address(this.address)][s].field_0
                        mem[_2274 + 32] = loggedBalances[address(this.address)][s].field_256
                        if loggedBalances[address(this.address)][s].field_256 <= block.number:
                            u = _2274
                            s = s + 1
                            u = _2274
                            continue 
                        _2287 = mem[u]
                        mem[0] = msg.sender
                        mem[32] = 8
                        _2347 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2347] = 0
                        mem[_2347 + 32] = 0
                        _2367 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2367] = 0
                        mem[_2367 + 32] = 0
                        if not loggedBalances[address(msg.sender)].field_0:
                            require _2287 >= v + (10^18 * t / phases[idx].field_0)
                            require v + (10^18 * t / phases[idx].field_0) >= 0
                            loggedBalances[address(msg.sender)].field_0++
                            if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                                s = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                                while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > s:
                                    stor[s] = 0
                                    standard[s] = 0
                                    s = s + 2
                                    continue 
                            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = v + (10^18 * t / phases[idx].field_0)
                        else:
                            u = _2367
                            s = 0
                            u = _2347
                            while s < loggedBalances[address(msg.sender)].field_0:
                                mem[0] = sha3(address(msg.sender), 8)
                                _3689 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3689] = loggedBalances[address(msg.sender)][s].field_0
                                mem[_3689 + 32] = loggedBalances[address(msg.sender)][s].field_256
                                if loggedBalances[address(msg.sender)][s].field_256 <= block.number:
                                    u = _3689
                                    s = s + 1
                                    u = _3689
                                    continue 
                                require _2287 >= v + (10^18 * t / phases[idx].field_0)
                                require mem[u] + v + (10^18 * t / phases[idx].field_0) >= mem[u]
                                loggedBalances[address(msg.sender)].field_0++
                                if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                                    s = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                                    while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > s:
                                        stor[s] = 0
                                        standard[s] = 0
                                        s = s + 2
                                        continue 
                                loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = mem[u] + v + (10^18 * t / phases[idx].field_0)
                                loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
                                loggedBalances[address(this.address)].field_0++
                                if not loggedBalances[address(this.address)].field_0 <= loggedBalances[address(this.address)].field_0 + 1:
                                    s = sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0 + 1)
                                    while sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0) > s:
                                        stor[s] = 0
                                        standard[s] = 0
                                        s = s + 2
                                        continue 
                                loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_0 = _2287 - v - (10^18 * t / phases[idx].field_0)
                                loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_256 = block.number
                                collectedEthers += msg.value
                                emit Transfer((v + (10^18 * t / phases[idx].field_0)), this.address, msg.sender);
                            require _2287 >= v + (10^18 * t / phases[idx].field_0)
                            require mem[u] + v + (10^18 * t / phases[idx].field_0) >= mem[u]
                            loggedBalances[address(msg.sender)].field_0++
                            if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                                s = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                                while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > s:
                                    stor[s] = 0
                                    standard[s] = 0
                                    s = s + 2
                                    continue 
                            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = mem[u] + v + (10^18 * t / phases[idx].field_0)
                        loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
                        loggedBalances[address(this.address)].field_0++
                        if not loggedBalances[address(this.address)].field_0 <= loggedBalances[address(this.address)].field_0 + 1:
                            s = sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0 + 1)
                            while sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0) > s:
                                stor[s] = 0
                                standard[s] = 0
                                s = s + 2
                                continue 
                        loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_0 = _2287 - v - (10^18 * t / phases[idx].field_0)
                        loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_256 = block.number
                        collectedEthers += msg.value
                        emit Transfer((v + (10^18 * t / phases[idx].field_0)), this.address, msg.sender);
                    _2251 = mem[u]
                    mem[0] = msg.sender
                    mem[32] = 8
                    _2297 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2297] = 0
                    mem[_2297 + 32] = 0
                    _2337 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2337] = 0
                    mem[_2337 + 32] = 0
                    if not loggedBalances[address(msg.sender)].field_0:
                        require _2251 >= v + (10^18 * t / phases[idx].field_0)
                        require v + (10^18 * t / phases[idx].field_0) >= 0
                        loggedBalances[address(msg.sender)].field_0++
                        if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                            s = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                            while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > s:
                                stor[s] = 0
                                standard[s] = 0
                                s = s + 2
                                continue 
                        loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = v + (10^18 * t / phases[idx].field_0)
                    else:
                        u = _2337
                        s = 0
                        u = _2297
                        while s < loggedBalances[address(msg.sender)].field_0:
                            mem[0] = sha3(address(msg.sender), 8)
                            _3687 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3687] = loggedBalances[address(msg.sender)][s].field_0
                            mem[_3687 + 32] = loggedBalances[address(msg.sender)][s].field_256
                            if loggedBalances[address(msg.sender)][s].field_256 <= block.number:
                                u = _3687
                                s = s + 1
                                u = _3687
                                continue 
                            require _2251 >= v + (10^18 * t / phases[idx].field_0)
                            require mem[u] + v + (10^18 * t / phases[idx].field_0) >= mem[u]
                            loggedBalances[address(msg.sender)].field_0++
                            if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                                s = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                                while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > s:
                                    stor[s] = 0
                                    standard[s] = 0
                                    s = s + 2
                                    continue 
                            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = mem[u] + v + (10^18 * t / phases[idx].field_0)
                            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
                            loggedBalances[address(this.address)].field_0++
                            if not loggedBalances[address(this.address)].field_0 <= loggedBalances[address(this.address)].field_0 + 1:
                                s = sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0 + 1)
                                while sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0) > s:
                                    stor[s] = 0
                                    standard[s] = 0
                                    s = s + 2
                                    continue 
                            loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_0 = _2251 - v - (10^18 * t / phases[idx].field_0)
                            loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_256 = block.number
                            collectedEthers += msg.value
                            emit Transfer((v + (10^18 * t / phases[idx].field_0)), this.address, msg.sender);
                        require _2251 >= v + (10^18 * t / phases[idx].field_0)
                        require mem[u] + v + (10^18 * t / phases[idx].field_0) >= mem[u]
                        loggedBalances[address(msg.sender)].field_0++
                        if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                            s = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                            while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > s:
                                stor[s] = 0
                                standard[s] = 0
                                s = s + 2
                                continue 
                        loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = mem[u] + v + (10^18 * t / phases[idx].field_0)
                    loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
                    loggedBalances[address(this.address)].field_0++
                    if not loggedBalances[address(this.address)].field_0 <= loggedBalances[address(this.address)].field_0 + 1:
                        s = sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0 + 1)
                        while sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0) > s:
                            stor[s] = 0
                            standard[s] = 0
                            s = s + 2
                            continue 
                    loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_0 = _2251 - v - (10^18 * t / phases[idx].field_0)
                loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_256 = block.number
                collectedEthers += msg.value
                emit Transfer((v + (10^18 * t / phases[idx].field_0)), this.address, msg.sender);
            else:
                if t - phases[idx].field_256 + u:
                    s = phases[idx].field_256 - u
                    t = (2 * idx) + sha3(16)
                    idx = idx + 1
                    t = t - phases[idx].field_256 + u
                    u = phases[idx].field_256
                    v = v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0)
                    continue 
                require t - phases[idx].field_256 + u <= 0
                require v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0)
                mem[0] = this.address
                mem[32] = 8
                mem[96] = 0
                mem[128] = 0
                mem[64] = 224
                mem[160] = 0
                mem[192] = 0
                if not loggedBalances[address(this.address)].field_0:
                    mem[0] = msg.sender
                    mem[32] = 8
                    mem[224] = 0
                    mem[256] = 0
                    mem[64] = 352
                    mem[288] = 0
                    mem[320] = 0
                    if not loggedBalances[address(msg.sender)].field_0:
                        require 0 >= v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0)
                        require v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0) >= 0
                        loggedBalances[address(msg.sender)].field_0++
                        if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                            s = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                            while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > s:
                                stor[s] = 0
                                standard[s] = 0
                                s = s + 2
                                continue 
                        loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0)
                    else:
                        t = 288
                        s = 0
                        t = 224
                        while s < loggedBalances[address(msg.sender)].field_0:
                            mem[0] = sha3(address(msg.sender), 8)
                            _2281 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2281] = loggedBalances[address(msg.sender)][s].field_0
                            mem[_2281 + 32] = loggedBalances[address(msg.sender)][s].field_256
                            if loggedBalances[address(msg.sender)][s].field_256 <= block.number:
                                t = _2281
                                s = s + 1
                                t = _2281
                                continue 
                            require 0 >= v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0)
                            require mem[t] + v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0) >= mem[t]
                            loggedBalances[address(msg.sender)].field_0++
                            if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                                s = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                                while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > s:
                                    stor[s] = 0
                                    standard[s] = 0
                                    s = s + 2
                                    continue 
                            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = mem[t] + v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0)
                            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
                            loggedBalances[address(this.address)].field_0++
                            if not loggedBalances[address(this.address)].field_0 <= loggedBalances[address(this.address)].field_0 + 1:
                                s = sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0 + 1)
                                while sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0) > s:
                                    stor[s] = 0
                                    standard[s] = 0
                                    s = s + 2
                                    continue 
                            loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_0 = -v - ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0)
                            loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_256 = block.number
                            collectedEthers += msg.value
                            emit Transfer((v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0)), this.address, msg.sender);
                        require 0 >= v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0)
                        require mem[t] + v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0) >= mem[t]
                        loggedBalances[address(msg.sender)].field_0++
                        if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                            s = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                            while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > s:
                                stor[s] = 0
                                standard[s] = 0
                                s = s + 2
                                continue 
                        loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = mem[t] + v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0)
                    loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
                    loggedBalances[address(this.address)].field_0++
                    if not loggedBalances[address(this.address)].field_0 <= loggedBalances[address(this.address)].field_0 + 1:
                        s = sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0 + 1)
                        while sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0) > s:
                            stor[s] = 0
                            standard[s] = 0
                            s = s + 2
                            continue 
                    loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_0 = -v - ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0)
                else:
                    t = 160
                    s = 0
                    t = 96
                    while s < loggedBalances[address(this.address)].field_0:
                        mem[0] = sha3(address(this.address), 8)
                        _2279 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2279] = loggedBalances[address(this.address)][s].field_0
                        mem[_2279 + 32] = loggedBalances[address(this.address)][s].field_256
                        if loggedBalances[address(this.address)][s].field_256 <= block.number:
                            t = _2279
                            s = s + 1
                            t = _2279
                            continue 
                        _2289 = mem[t]
                        mem[0] = msg.sender
                        mem[32] = 8
                        _2351 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2351] = 0
                        mem[_2351 + 32] = 0
                        _2369 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2369] = 0
                        mem[_2369 + 32] = 0
                        if not loggedBalances[address(msg.sender)].field_0:
                            require _2289 >= v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0)
                            require v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0) >= 0
                            loggedBalances[address(msg.sender)].field_0++
                            if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                                s = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                                while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > s:
                                    stor[s] = 0
                                    standard[s] = 0
                                    s = s + 2
                                    continue 
                            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0)
                        else:
                            t = _2369
                            s = 0
                            t = _2351
                            while s < loggedBalances[address(msg.sender)].field_0:
                                mem[0] = sha3(address(msg.sender), 8)
                                _3693 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3693] = loggedBalances[address(msg.sender)][s].field_0
                                mem[_3693 + 32] = loggedBalances[address(msg.sender)][s].field_256
                                if loggedBalances[address(msg.sender)][s].field_256 <= block.number:
                                    t = _3693
                                    s = s + 1
                                    t = _3693
                                    continue 
                                require _2289 >= v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0)
                                require mem[t] + v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0) >= mem[t]
                                loggedBalances[address(msg.sender)].field_0++
                                if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                                    s = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                                    while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > s:
                                        stor[s] = 0
                                        standard[s] = 0
                                        s = s + 2
                                        continue 
                                loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = mem[t] + v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0)
                                loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
                                loggedBalances[address(this.address)].field_0++
                                if not loggedBalances[address(this.address)].field_0 <= loggedBalances[address(this.address)].field_0 + 1:
                                    s = sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0 + 1)
                                    while sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0) > s:
                                        stor[s] = 0
                                        standard[s] = 0
                                        s = s + 2
                                        continue 
                                loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_0 = _2289 - v - ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0)
                                loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_256 = block.number
                                collectedEthers += msg.value
                                emit Transfer((v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0)), this.address, msg.sender);
                            require _2289 >= v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0)
                            require mem[t] + v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0) >= mem[t]
                            loggedBalances[address(msg.sender)].field_0++
                            if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                                s = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                                while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > s:
                                    stor[s] = 0
                                    standard[s] = 0
                                    s = s + 2
                                    continue 
                            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = mem[t] + v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0)
                        loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
                        loggedBalances[address(this.address)].field_0++
                        if not loggedBalances[address(this.address)].field_0 <= loggedBalances[address(this.address)].field_0 + 1:
                            s = sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0 + 1)
                            while sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0) > s:
                                stor[s] = 0
                                standard[s] = 0
                                s = s + 2
                                continue 
                        loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_0 = _2289 - v - ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0)
                        loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_256 = block.number
                        collectedEthers += msg.value
                        emit Transfer((v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0)), this.address, msg.sender);
                    _2253 = mem[t]
                    mem[0] = msg.sender
                    mem[32] = 8
                    _2300 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2300] = 0
                    mem[_2300 + 32] = 0
                    _2338 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2338] = 0
                    mem[_2338 + 32] = 0
                    if not loggedBalances[address(msg.sender)].field_0:
                        require _2253 >= v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0)
                        require v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0) >= 0
                        loggedBalances[address(msg.sender)].field_0++
                        if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                            s = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                            while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > s:
                                stor[s] = 0
                                standard[s] = 0
                                s = s + 2
                                continue 
                        loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0)
                    else:
                        t = _2338
                        s = 0
                        t = _2300
                        while s < loggedBalances[address(msg.sender)].field_0:
                            mem[0] = sha3(address(msg.sender), 8)
                            _3691 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3691] = loggedBalances[address(msg.sender)][s].field_0
                            mem[_3691 + 32] = loggedBalances[address(msg.sender)][s].field_256
                            if loggedBalances[address(msg.sender)][s].field_256 <= block.number:
                                t = _3691
                                s = s + 1
                                t = _3691
                                continue 
                            require _2253 >= v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0)
                            require mem[t] + v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0) >= mem[t]
                            loggedBalances[address(msg.sender)].field_0++
                            if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                                s = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                                while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > s:
                                    stor[s] = 0
                                    standard[s] = 0
                                    s = s + 2
                                    continue 
                            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = mem[t] + v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0)
                            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
                            loggedBalances[address(this.address)].field_0++
                            if not loggedBalances[address(this.address)].field_0 <= loggedBalances[address(this.address)].field_0 + 1:
                                s = sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0 + 1)
                                while sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0) > s:
                                    stor[s] = 0
                                    standard[s] = 0
                                    s = s + 2
                                    continue 
                            loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_0 = _2253 - v - ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0)
                            loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_256 = block.number
                            collectedEthers += msg.value
                            emit Transfer((v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0)), this.address, msg.sender);
                        require _2253 >= v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0)
                        require mem[t] + v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0) >= mem[t]
                        loggedBalances[address(msg.sender)].field_0++
                        if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                            s = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                            while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > s:
                                stor[s] = 0
                                standard[s] = 0
                                s = s + 2
                                continue 
                        loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = mem[t] + v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0)
                    loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
                    loggedBalances[address(this.address)].field_0++
                    if not loggedBalances[address(this.address)].field_0 <= loggedBalances[address(this.address)].field_0 + 1:
                        s = sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0 + 1)
                        while sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0) > s:
                            stor[s] = 0
                            standard[s] = 0
                            s = s + 2
                            continue 
                    loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_0 = _2253 - v - ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0)
                loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_256 = block.number
                collectedEthers += msg.value
                emit Transfer((v + ((10^18 * phases[idx].field_256) - (10^18 * u) / phases[idx].field_0)), this.address, msg.sender);
    require t <= 0
    require v
    mem[0] = this.address
    mem[32] = 8
    mem[96] = 0
    mem[128] = 0
    mem[64] = 224
    mem[160] = 0
    mem[192] = 0
    if not loggedBalances[address(this.address)].field_0:
        mem[0] = msg.sender
        mem[32] = 8
        mem[224] = 0
        mem[256] = 0
        mem[64] = 352
        mem[288] = 0
        mem[320] = 0
        if not loggedBalances[address(msg.sender)].field_0:
            require 0 >= v
            require v >= 0
            loggedBalances[address(msg.sender)].field_0++
            if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                idx = 2 * loggedBalances[address(msg.sender)].field_0 + 1
                while 2 * loggedBalances[address(msg.sender)].field_0 > idx:
                    loggedBalances[address(msg.sender)][idx].field_0 = 0
                    loggedBalances[address(msg.sender)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = v
        else:
            s = 288
            idx = 0
            s = 224
            while idx < loggedBalances[address(msg.sender)].field_0:
                mem[0] = sha3(address(msg.sender), 8)
                _2266 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2266] = loggedBalances[address(msg.sender)][idx].field_0
                mem[_2266 + 32] = loggedBalances[address(msg.sender)][idx].field_256
                if loggedBalances[address(msg.sender)][idx].field_256 <= block.number:
                    s = _2266
                    idx = idx + 1
                    s = _2266
                    continue 
                require 0 >= v
                require mem[s] + v >= mem[s]
                loggedBalances[address(msg.sender)].field_0++
                if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                    idx = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                    while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = mem[s] + v
                loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
                loggedBalances[address(this.address)].field_0++
                if not loggedBalances[address(this.address)].field_0 <= loggedBalances[address(this.address)].field_0 + 1:
                    idx = sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0 + 1)
                    while sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_0 = -v
                loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_256 = block.number
                collectedEthers += msg.value
                emit Transfer(v, this.address, msg.sender);
            require 0 >= v
            require mem[s] + v >= mem[s]
            loggedBalances[address(msg.sender)].field_0++
            if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                idx = 2 * loggedBalances[address(msg.sender)].field_0 + 1
                while 2 * loggedBalances[address(msg.sender)].field_0 > idx:
                    loggedBalances[address(msg.sender)][idx].field_0 = 0
                    loggedBalances[address(msg.sender)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = mem[s] + v
        loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
        loggedBalances[address(this.address)].field_0++
        if not loggedBalances[address(this.address)].field_0 <= loggedBalances[address(this.address)].field_0 + 1:
            idx = 2 * loggedBalances[address(this.address)].field_0 + 1
            while 2 * loggedBalances[address(this.address)].field_0 > idx:
                loggedBalances[address(this.address)][idx].field_0 = 0
                loggedBalances[address(this.address)][idx].field_256 = 0
                idx = idx + 2
                continue 
        loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_0 = -v
    else:
        s = 160
        idx = 0
        s = 96
        while idx < loggedBalances[address(this.address)].field_0:
            mem[0] = sha3(address(this.address), 8)
            _2264 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2264] = loggedBalances[address(this.address)][idx].field_0
            mem[_2264 + 32] = loggedBalances[address(this.address)][idx].field_256
            if loggedBalances[address(this.address)][idx].field_256 <= block.number:
                s = _2264
                idx = idx + 1
                s = _2264
                continue 
            _2283 = mem[s]
            mem[0] = msg.sender
            mem[32] = 8
            _2339 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2339] = 0
            mem[_2339 + 32] = 0
            _2363 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2363] = 0
            mem[_2363 + 32] = 0
            if not loggedBalances[address(msg.sender)].field_0:
                require _2283 >= v
                require v >= 0
                loggedBalances[address(msg.sender)].field_0++
                if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                    idx = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                    while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = v
            else:
                s = _2363
                idx = 0
                s = _2339
                while idx < loggedBalances[address(msg.sender)].field_0:
                    mem[0] = sha3(address(msg.sender), 8)
                    _3681 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3681] = loggedBalances[address(msg.sender)][idx].field_0
                    mem[_3681 + 32] = loggedBalances[address(msg.sender)][idx].field_256
                    if loggedBalances[address(msg.sender)][idx].field_256 <= block.number:
                        s = _3681
                        idx = idx + 1
                        s = _3681
                        continue 
                    require _2283 >= v
                    require mem[s] + v >= mem[s]
                    loggedBalances[address(msg.sender)].field_0++
                    if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                        idx = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                        while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > idx:
                            stor[idx] = 0
                            standard[idx] = 0
                            idx = idx + 2
                            continue 
                    loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = mem[s] + v
                    loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
                    loggedBalances[address(this.address)].field_0++
                    if not loggedBalances[address(this.address)].field_0 <= loggedBalances[address(this.address)].field_0 + 1:
                        idx = sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0 + 1)
                        while sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0) > idx:
                            stor[idx] = 0
                            standard[idx] = 0
                            idx = idx + 2
                            continue 
                    loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_0 = _2283 - v
                    loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_256 = block.number
                    collectedEthers += msg.value
                    emit Transfer(v, this.address, msg.sender);
                require _2283 >= v
                require mem[s] + v >= mem[s]
                loggedBalances[address(msg.sender)].field_0++
                if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                    idx = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                    while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = mem[s] + v
            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
            loggedBalances[address(this.address)].field_0++
            if not loggedBalances[address(this.address)].field_0 <= loggedBalances[address(this.address)].field_0 + 1:
                idx = sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0 + 1)
                while sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0) > idx:
                    stor[idx] = 0
                    standard[idx] = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_0 = _2283 - v
            loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_256 = block.number
            collectedEthers += msg.value
            emit Transfer(v, this.address, msg.sender);
        _2247 = mem[s]
        mem[0] = msg.sender
        mem[32] = 8
        _2291 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2291] = 0
        mem[_2291 + 32] = 0
        _2335 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2335] = 0
        mem[_2335 + 32] = 0
        if not loggedBalances[address(msg.sender)].field_0:
            require _2247 >= v
            require v >= 0
            loggedBalances[address(msg.sender)].field_0++
            if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                idx = 2 * loggedBalances[address(msg.sender)].field_0 + 1
                while 2 * loggedBalances[address(msg.sender)].field_0 > idx:
                    loggedBalances[address(msg.sender)][idx].field_0 = 0
                    loggedBalances[address(msg.sender)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = v
        else:
            s = _2335
            idx = 0
            s = _2291
            while idx < loggedBalances[address(msg.sender)].field_0:
                mem[0] = sha3(address(msg.sender), 8)
                _3679 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3679] = loggedBalances[address(msg.sender)][idx].field_0
                mem[_3679 + 32] = loggedBalances[address(msg.sender)][idx].field_256
                if loggedBalances[address(msg.sender)][idx].field_256 <= block.number:
                    s = _3679
                    idx = idx + 1
                    s = _3679
                    continue 
                require _2247 >= v
                require mem[s] + v >= mem[s]
                loggedBalances[address(msg.sender)].field_0++
                if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                    idx = sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0 + 1)
                    while sha3(sha3(address(msg.sender), 8)) + (2 * loggedBalances[address(msg.sender)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = mem[s] + v
                loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
                loggedBalances[address(this.address)].field_0++
                if not loggedBalances[address(this.address)].field_0 <= loggedBalances[address(this.address)].field_0 + 1:
                    idx = sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0 + 1)
                    while sha3(sha3(address(this.address), 8)) + (2 * loggedBalances[address(this.address)].field_0) > idx:
                        stor[idx] = 0
                        standard[idx] = 0
                        idx = idx + 2
                        continue 
                loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_0 = _2247 - v
                loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_256 = block.number
                collectedEthers += msg.value
                emit Transfer(v, this.address, msg.sender);
            require _2247 >= v
            require mem[s] + v >= mem[s]
            loggedBalances[address(msg.sender)].field_0++
            if not loggedBalances[address(msg.sender)].field_0 <= loggedBalances[address(msg.sender)].field_0 + 1:
                idx = 2 * loggedBalances[address(msg.sender)].field_0 + 1
                while 2 * loggedBalances[address(msg.sender)].field_0 > idx:
                    loggedBalances[address(msg.sender)][idx].field_0 = 0
                    loggedBalances[address(msg.sender)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_0 = mem[s] + v
        loggedBalances[address(msg.sender)][loggedBalances[address(msg.sender)].field_0].field_256 = block.number
        loggedBalances[address(this.address)].field_0++
        if not loggedBalances[address(this.address)].field_0 <= loggedBalances[address(this.address)].field_0 + 1:
            idx = 2 * loggedBalances[address(this.address)].field_0 + 1
            while 2 * loggedBalances[address(this.address)].field_0 > idx:
                loggedBalances[address(this.address)][idx].field_0 = 0
                loggedBalances[address(this.address)][idx].field_256 = 0
                idx = idx + 2
                continue 
        loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_0 = _2247 - v
    loggedBalances[address(this.address)][loggedBalances[address(this.address)].field_0].field_256 = block.number
    collectedEthers += msg.value
    emit Transfer(v, this.address, msg.sender);
}



}
