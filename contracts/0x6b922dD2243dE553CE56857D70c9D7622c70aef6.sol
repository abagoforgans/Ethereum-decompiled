contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor8;
uint8 stor9;

function _fallback() payable {
    stor8 = 35000
    stor9 = 0
    require not msg.value
    stor0 = msg.sender
    return code.data[77 len 4567]
}



// =====================  Runtime code  =====================


address owner;
mapping of struct stor1;
array of uint256 stor2;
uint256 holdoverBalance;
uint256 totalFundsReceived;
uint256 totalFundsDistributed;
uint256 totalFundsWithdrawn;
uint256 evenDistThresh;
uint256 withdrawGas;
uint8 settingsState;

function withdrawGas() {
    return withdrawGas
}

function totalFundsDistributed() {
    return totalFundsDistributed
}

function settingsState() {
    require settingsState <= 1
    return settingsState
}

function totalFundsWithdrawn() {
    return totalFundsWithdrawn
}

function numAccounts() {
    return stor2.length
}

function owner() {
    return owner
}

function totalFundsReceived() {
    return totalFundsReceived
}

function evenDistThresh() {
    return evenDistThresh
}

function holdoverBalance() {
    return holdoverBalance
}

function hariKari() {
    if owner != msg.sender:
        emit code.data[4535 len 32]: 'err: not owner'
    else:
        require settingsState <= 1
        if settingsState != 1:
            selfdestruct(owner)
        emit code.data[4535 len 32]: 'err: locked'
}

function _fallback() payable {
    totalFundsReceived += msg.value
    holdoverBalance += msg.value
    emit 0x569e229c: Array(len=12, data='ok: incoming'), msg.value
}

function setWitdrawGas(uint256 arg1) {
    if owner != msg.sender:
        emit code.data[4535 len 32]: 'err: not owner'
    else:
        withdrawGas = arg1
        emit 0x569e229c: Array(len=20, data='ok: withdraw gas set'), arg1
}

function getTotalPctx10() {
    idx = 0
    s = 0
    while idx < stor2.length:
        mem[0] = idx
        mem[32] = 1
        idx = idx + 1
        s = stor1[idx].field_512 + s
        continue 
    emit 0x569e229c: Array(len=16, data='ok: total pctx10'), stor2[_12] * stor2.length
    return (stor2[_12] * stor2.length)
}

function lock() {
    if owner != msg.sender:
        emit code.data[4535 len 32]: 'err: not owner'
    else:
        require settingsState <= 1
        if settingsState == 1:
            emit code.data[4535 len 32]: 'err: locked'
        else:
            settingsState = 1
            emit code.data[4535 len 32]: Array(len=19, data='ok: contract locked')
}

function getNumEvenSplits() {
    idx = 0
    s = 0
    while idx < stor2.length:
        mem[0] = idx
        mem[32] = 1
        if not stor1[idx].field_928:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    emit 0x569e229c: Array(len=15, data='ok: even splits'), s
    return s
}

function setEvenDistThresh(uint256 arg1) {
    if owner != msg.sender:
        emit code.data[4535 len 32]: 'err: not owner'
    else:
        require settingsState <= 1
        if settingsState == 1:
            emit code.data[4535 len 32]: 'err: locked'
        else:
            evenDistThresh = 1000 * arg1 / 1000
            emit 0x569e229c: Array(len=17, data='ok: threshold set'), 1000 * arg1 / 1000
}

function reset() {
    if owner != msg.sender:
        emit code.data[4535 len 32]: 'err: not owner'
    else:
        require settingsState <= 1
        if settingsState == 1:
            emit code.data[4535 len 32]: 'err: locked'
        else:
            stor2.length = 0
            holdoverBalance = 0
            totalFundsReceived = 0
            totalFundsDistributed = 0
            totalFundsWithdrawn = 0
            emit code.data[4535 len 32]: Array(len=19, data='ok: all accts reset')
}

function getAccountInfo(address arg1) {
    s = 0
    idx = 0
    while idx < stor2.length:
        mem[0] = idx
        mem[32] = 1
        if stor1[idx].field_768 != arg1:
            s = stor1[idx].field_768
            idx = idx + 1
            continue 
        emit code.data[4535 len 32]: Array(len=14, data='ok: found acct')
        return idx, stor1[idx].field_512, bool(stor1[idx].field_928), stor1[idx].field_0, stor1[idx].field_256
    emit code.data[4535 len 32]: Array(len=19, data='err: acct not found')
    return 0
}

function addAccount(address arg1, uint256 arg2, bool arg3) {
    if owner != msg.sender:
        emit code.data[4535 len 32]: 'err: not owner'
    else:
        require settingsState <= 1
        if settingsState == 1:
            emit code.data[4535 len 32]: 'err: locked'
        else:
            if stor2.length >= 5:
                emit code.data[4535 len 32]: Array(len=17, data='err: max accounts')
            else:
                stor1[stor2.length].field_768 = arg1
                stor1[stor2.length].field_512 = arg2
                stor1[stor2.length].field_928 = uint8(arg3)
                stor1[stor2.length].field_0 = 0
                stor1[stor2.length].field_256 = 0
                stor2.length++
                emit code.data[4535 len 32]: Array(len=14, data='ok: acct added')
}

function withdraw() payable {
    mem[64] = 96
    require not msg.value
    s = 0
    t = 0
    idx = 0
    while idx < stor2.length:
        mem[0] = idx
        mem[32] = 1
        if stor1[idx].field_768 != msg.sender:
            s = s
            t = stor1[idx].field_768
            idx = idx + 1
            continue 
        mem[32] = 1
        if not stor1[idx].field_256:
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 20
            mem[mem[64] + 64] = 'err: balance is zero'
            mem[0] = idx
            emit code.data[4535 len 32]: Array(len=20, data='err: balance is zero')
        else:
            mem[0] = idx
            mem[32] = 1
            stor1[idx].field_256 = 0
            totalFundsWithdrawn += stor1[idx].field_256
            call msg.sender with:
               value stor1[idx].field_256 wei
                 gas withdrawGas wei
            require ext_call.success
            mem[mem[64] + 32] = stor1[idx].field_256
            mem[mem[64]] = 64
            mem[mem[64] + 64] = 16
            mem[mem[64] + 96] = 'ok: rewards paid'
            mem[0] = idx
            emit 0x569e229c: Array(len=16, data='ok: rewards paid'), stor1[idx].field_256
        s = stor1[idx].field_256
        t = stor1[idx].field_768
        idx = idx + 1
        continue 
}

function distribute() {
    if holdoverBalance >= 1000:
        s = 0
        idx = 0
        while idx < stor2.length:
            mem[0] = idx
            mem[32] = 1
            if stor1[idx].field_928:
                s = s + 1
                idx = idx + 1
                continue 
            mem[0] = idx
            mem[32] = 1
            if stor1[idx].field_0 >= stor1[idx].field_512 * totalFundsReceived / 1000:
            else:
                if (stor1[idx].field_512 * holdoverBalance / 1000) + stor1[idx].field_0 <= stor1[idx].field_512 * totalFundsReceived / 1000:
                    stor1[idx].field_0 += stor1[idx].field_512 * holdoverBalance / 1000
                    stor1[idx].field_256 += stor1[idx].field_512 * holdoverBalance / 1000
                    totalFundsDistributed += stor1[idx].field_512 * holdoverBalance / 1000
                    holdoverBalance -= stor1[idx].field_512 * holdoverBalance / 1000
                else:
                    stor1[idx].field_0 = stor1[idx].field_512 * totalFundsReceived / 1000
                    stor1[idx].field_256 = (stor1[idx].field_512 * totalFundsReceived / 1000) - stor1[idx].field_0 + stor1[idx].field_256
                    totalFundsDistributed = (stor1[idx].field_512 * totalFundsReceived / 1000) - stor1[idx].field_0 + totalFundsDistributed
                    holdoverBalance = holdoverBalance - (stor1[idx].field_512 * totalFundsReceived / 1000) + stor1[idx].field_0
            s = s
            idx = idx + 1
            continue 
        if totalFundsDistributed >= evenDistThresh:
            if holdoverBalance > 0:
                s = 0
                t = 0
                idx = 0
                while idx < stor2.length:
                    mem[0] = idx
                    mem[32] = 1
                    if not stor1[idx].field_928:
                        s = s
                        t = t
                        idx = idx + 1
                        continue 
                    mem[0] = idx
                    mem[32] = 1
                    if stor1[idx].field_0 >= stor1[idx].field_512 * totalFundsReceived / 1000:
                    else:
                        if (stor1[idx].field_512 * holdoverBalance / 1000) + stor1[idx].field_0 <= stor1[idx].field_512 * totalFundsReceived / 1000:
                            stor1[idx].field_0 += stor1[idx].field_512 * holdoverBalance / 1000
                            stor1[idx].field_256 += stor1[idx].field_512 * holdoverBalance / 1000
                            totalFundsDistributed += stor1[idx].field_512 * holdoverBalance / 1000
                            holdoverBalance -= stor1[idx].field_512 * holdoverBalance / 1000
                        else:
                            stor1[idx].field_0 = stor1[idx].field_512 * totalFundsReceived / 1000
                            stor1[idx].field_256 = (stor1[idx].field_512 * totalFundsReceived / 1000) - stor1[idx].field_0 + stor1[idx].field_256
                            totalFundsDistributed = (stor1[idx].field_512 * totalFundsReceived / 1000) - stor1[idx].field_0 + totalFundsDistributed
                            holdoverBalance = holdoverBalance - (stor1[idx].field_512 * totalFundsReceived / 1000) + stor1[idx].field_0
                    s = stor1[idx].field_512 * totalFundsReceived / 1000
                    t = stor1[idx].field_512
                    idx = idx + 1
                    continue 
        else:
            t = 0
            u = 0
            idx = 0
            while idx < stor2.length:
                mem[0] = idx
                mem[32] = 1
                if not stor1[idx].field_928:
                    t = t
                    u = u
                    idx = idx + 1
                    continue 
                require s
                require s
                mem[0] = idx
                mem[32] = 1
                if totalFundsReceived <= evenDistThresh:
                    if stor1[idx].field_0 >= totalFundsReceived / s:
                    else:
                        if (holdoverBalance / s) + stor1[idx].field_0 <= totalFundsReceived / s:
                            stor1[idx].field_0 += holdoverBalance / s
                            stor1[idx].field_256 += holdoverBalance / s
                            totalFundsDistributed += holdoverBalance / s
                            holdoverBalance -= holdoverBalance / s
                        else:
                            stor1[idx].field_0 = totalFundsReceived / s
                            stor1[idx].field_256 = (totalFundsReceived / s) - stor1[idx].field_0 + stor1[idx].field_256
                            totalFundsDistributed = (totalFundsReceived / s) - stor1[idx].field_0 + totalFundsDistributed
                            holdoverBalance = holdoverBalance - (totalFundsReceived / s) + stor1[idx].field_0
                    t = totalFundsReceived
                    u = totalFundsReceived / s
                    idx = idx + 1
                    continue 
                if stor1[idx].field_0 >= evenDistThresh / s:
                else:
                    if (holdoverBalance / s) + stor1[idx].field_0 <= evenDistThresh / s:
                        stor1[idx].field_0 += holdoverBalance / s
                        stor1[idx].field_256 += holdoverBalance / s
                        totalFundsDistributed += holdoverBalance / s
                        holdoverBalance -= holdoverBalance / s
                    else:
                        stor1[idx].field_0 = evenDistThresh / s
                        stor1[idx].field_256 = (evenDistThresh / s) - stor1[idx].field_0 + stor1[idx].field_256
                        totalFundsDistributed = (evenDistThresh / s) - stor1[idx].field_0 + totalFundsDistributed
                        holdoverBalance = holdoverBalance - (evenDistThresh / s) + stor1[idx].field_0
                t = evenDistThresh
                u = evenDistThresh / s
                idx = idx + 1
                continue 
            if holdoverBalance > 0:
                s = u
                t = 0
                idx = 0
                while idx < stor2.length:
                    mem[0] = idx
                    mem[32] = 1
                    if not stor1[idx].field_928:
                        s = s
                        t = t
                        idx = idx + 1
                        continue 
                    mem[0] = idx
                    mem[32] = 1
                    if stor1[idx].field_0 >= stor1[idx].field_512 * totalFundsReceived / 1000:
                    else:
                        if (stor1[idx].field_512 * holdoverBalance / 1000) + stor1[idx].field_0 <= stor1[idx].field_512 * totalFundsReceived / 1000:
                            stor1[idx].field_0 += stor1[idx].field_512 * holdoverBalance / 1000
                            stor1[idx].field_256 += stor1[idx].field_512 * holdoverBalance / 1000
                            totalFundsDistributed += stor1[idx].field_512 * holdoverBalance / 1000
                            holdoverBalance -= stor1[idx].field_512 * holdoverBalance / 1000
                        else:
                            stor1[idx].field_0 = stor1[idx].field_512 * totalFundsReceived / 1000
                            stor1[idx].field_256 = (stor1[idx].field_512 * totalFundsReceived / 1000) - stor1[idx].field_0 + stor1[idx].field_256
                            totalFundsDistributed = (stor1[idx].field_512 * totalFundsReceived / 1000) - stor1[idx].field_0 + totalFundsDistributed
                            holdoverBalance = holdoverBalance - (stor1[idx].field_512 * totalFundsReceived / 1000) + stor1[idx].field_0
                    s = stor1[idx].field_512 * totalFundsReceived / 1000
                    t = stor1[idx].field_512
                    idx = idx + 1
                    continue 
        emit code.data[4535 len 32]: Array(len=21, data='ok: distributed funds')
}



}
