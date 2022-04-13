contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - _fallback()
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
mapping of uint256 stor12;
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

function claimDividends() payable {
    mem[64] = 96
    require not msg.value
    require stor12[address(msg.sender)] < dividends.length
    mem[0] = msg.sender
    mem[32] = 12
    idx = stor[sha3(mem[0 len 64])]
    while idx < dividends.length:
        mem[0] = msg.sender
        mem[32] = (10 * idx) + sha3(11) + 9
        if not uint8(stor[(10 * idx) + ('name', 'dividends', 11) + 9][address(msg.sender)].field_0):
            require idx < dividends.length
            mem[0] = 11
            if not uint8(dividends[idx].field_2048):
                mem[0] = msg.sender
                mem[32] = 12
                stor12[address(msg.sender)] = idx + 1
                if dividends.length - 1 >= idx:
                    require idx < dividends.length
                    mem[0] = msg.sender
                    mem[32] = (10 * idx) + sha3(11) + 9
                    if bool(uint8(stor[(10 * idx) + ('name', 'dividends', 11) + 9][address(msg.sender)].field_0)) != 1:
                        if bool(uint8(dividends[idx].field_2048)) != 1:
                            if block.timestamp < dividends[idx].field_512 + dividends[idx].field_1792:
                                mem[0] = msg.sender
                                mem[32] = 8
                                _34 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_34] = 0
                                mem[_34 + 32] = 0
                                _35 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_35] = 0
                                mem[_35 + 32] = 0
                                if loggedBalances[address(msg.sender)].field_0:
                                    t = _35
                                    s = 0
                                    t = _34
                                    while s < loggedBalances[address(msg.sender)].field_0:
                                        mem[0] = sha3(address(msg.sender), 8)
                                        _53 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_53] = loggedBalances[address(msg.sender)][s].field_0
                                        mem[_53 + 32] = loggedBalances[address(msg.sender)][s].field_256
                                        if loggedBalances[address(msg.sender)][s].field_256 <= dividends[idx].field_256:
                                            t = _53
                                            s = s + 1
                                            t = _53
                                            continue 
                                        _55 = mem[t]
                                        if mem[t]:
                                            require dividends[idx].field_1536
                                            mem[0] = msg.sender
                                            mem[32] = (10 * idx) + sha3(11) + 9
                                            uint8(stor[(10 * idx) + ('name', 'dividends', 11) + 9][address(msg.sender)].field_0) = 1
                                            dividends[idx].field_1024 += _55 * dividends[idx].field_768 / dividends[idx].field_1536
                                            if _55 * dividends[idx].field_768 / dividends[idx].field_1536 > 0:
                                                call msg.sender with:
                                                   value _55 * dividends[idx].field_768 / dividends[idx].field_1536 wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                mem[mem[64]] = idx
                                                mem[mem[64] + 32] = _55 * dividends[idx].field_768 / dividends[idx].field_1536
                                                emit DividendClaimed(idx, _55 * dividends[idx].field_768 / dividends[idx].field_1536, msg.sender);
                                        idx = idx + 1
                                        continue 
                                    _51 = mem[t]
                                    if mem[t]:
                                        require dividends[idx].field_1536
                                        mem[0] = msg.sender
                                        mem[32] = (10 * idx) + sha3(11) + 9
                                        uint8(stor[(10 * idx) + ('name', 'dividends', 11) + 9][address(msg.sender)].field_0) = 1
                                        dividends[idx].field_1024 += _51 * dividends[idx].field_768 / dividends[idx].field_1536
                                        if _51 * dividends[idx].field_768 / dividends[idx].field_1536 > 0:
                                            call msg.sender with:
                                               value _51 * dividends[idx].field_768 / dividends[idx].field_1536 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            mem[mem[64]] = idx
                                            mem[mem[64] + 32] = _51 * dividends[idx].field_768 / dividends[idx].field_1536
                                            emit DividendClaimed(idx, _51 * dividends[idx].field_768 / dividends[idx].field_1536, msg.sender);
        idx = idx + 1
        continue 
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
    mem[0] = msg.sender
    mem[32] = 8
    mem[96] = 0
    mem[128] = 0
    mem[64] = 224
    mem[160] = 0
    mem[192] = 0
    if not loggedBalances[address(msg.sender)].field_0:
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
                _609 = mem[64]
                mem[64] = mem[64] + 64
                mem[_609] = loggedBalances[address(arg2)][idx].field_0
                mem[_609 + 32] = loggedBalances[address(arg2)][idx].field_256
                if loggedBalances[address(arg2)][idx].field_256 <= block.number:
                    s = _609
                    idx = idx + 1
                    s = _609
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
        while idx < loggedBalances[address(msg.sender)].field_0:
            mem[0] = sha3(address(msg.sender), 8)
            _607 = mem[64]
            mem[64] = mem[64] + 64
            mem[_607] = loggedBalances[address(msg.sender)][idx].field_0
            mem[_607 + 32] = loggedBalances[address(msg.sender)][idx].field_256
            if loggedBalances[address(msg.sender)][idx].field_256 <= block.number:
                s = _607
                idx = idx + 1
                s = _607
                continue 
            _611 = mem[s]
            mem[0] = arg2
            mem[32] = 8
            _630 = mem[64]
            mem[64] = mem[64] + 64
            mem[_630] = 0
            mem[_630 + 32] = 0
            _637 = mem[64]
            mem[64] = mem[64] + 64
            mem[_637] = 0
            mem[_637 + 32] = 0
            if not loggedBalances[address(arg2)].field_0:
                if not arg3:
                    return 0
                if 1 == bool(stor10[address(arg1)]):
                    return 0
                if _611 < arg3:
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
                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = _611 - arg3
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
                s = _637
                idx = 0
                s = _630
                while idx < loggedBalances[address(arg2)].field_0:
                    mem[0] = sha3(address(arg2), 8)
                    _1174 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1174] = loggedBalances[address(arg2)][idx].field_0
                    mem[_1174 + 32] = loggedBalances[address(arg2)][idx].field_256
                    if loggedBalances[address(arg2)][idx].field_256 <= block.number:
                        s = _1174
                        idx = idx + 1
                        s = _1174
                        continue 
                    if not arg3:
                        return 0
                    if 1 == bool(stor10[address(arg1)]):
                        return 0
                    if _611 < arg3:
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
                    loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = _611 - arg3
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
                if _611 < arg3:
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
                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = _611 - arg3
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
        _602 = mem[s]
        mem[0] = arg2
        mem[32] = 8
        _614 = mem[64]
        mem[64] = mem[64] + 64
        mem[_614] = 0
        mem[_614 + 32] = 0
        _627 = mem[64]
        mem[64] = mem[64] + 64
        mem[_627] = 0
        mem[_627 + 32] = 0
        if not loggedBalances[address(arg2)].field_0:
            if not arg3:
                return 0
            if 1 == bool(stor10[address(arg1)]):
                return 0
            if _602 < arg3:
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
            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = _602 - arg3
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
            s = _627
            idx = 0
            s = _614
            while idx < loggedBalances[address(arg2)].field_0:
                mem[0] = sha3(address(arg2), 8)
                _1172 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1172] = loggedBalances[address(arg2)][idx].field_0
                mem[_1172 + 32] = loggedBalances[address(arg2)][idx].field_256
                if loggedBalances[address(arg2)][idx].field_256 <= block.number:
                    s = _1172
                    idx = idx + 1
                    s = _1172
                    continue 
                if not arg3:
                    return 0
                if 1 == bool(stor10[address(arg1)]):
                    return 0
                if _602 < arg3:
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
                loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = _602 - arg3
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
            if _602 < arg3:
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
            loggedBalances[address(arg1)][loggedBalances[address(arg1)].field_0].field_0 = _602 - arg3
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



}
