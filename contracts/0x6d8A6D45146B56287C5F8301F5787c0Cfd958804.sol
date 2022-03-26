contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint128 stor3; offset 160
address stor3;
array of struct stor4;
mapping of uint256 stor258;
uint256 stor261;
uint256 stor263;
uint256 stor264;

function _fallback() payable {
    stor264 = 2
    mem[96 len -6546] = code.data[6993 len -6546]
    mem[64] = -6450
    stor1 = mem[mem[96] + 96] + 1
    address(stor3.field_0) = msg.sender
    Mask(96, 0, stor3.field_160) = 0
    mem[0] = msg.sender
    mem[32] = 258
    stor258[address(msg.sender)] = 1
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        require idx + 2 < 256
        stor4[idx].field_0 = mem[(32 * idx) + mem[96] + 140 len 20]
        stor4[idx].field_160 = 0
        require idx < mem[mem[96] + 96]
        mem[0] = mem[(32 * idx) + mem[96] + 140 len 20]
        mem[32] = 258
        stor258[mem[(32 * idx) + mem[96] + 140 len 20]] = idx + 2
        idx = idx + 1
        continue 
    stor0 = mem[128]
    stor261 = mem[160]
    stor263 = block.timestamp / 24 * 3600
    return code.data[447 len 6546]
}



// =====================  Runtime code  =====================


uint256 m_required;
uint256 m_numOwners;
array of uint256 stor2;
mapping of uint256 stor258;
mapping of struct stor259;
array of uint256 stor260;
uint256 m_dailyLimit;
uint256 m_spentToday;
uint256 m_lastDay;
uint256 version;
mapping of struct stor265;

function m_numOwners() payable {
    return m_numOwners
}

function m_lastDay() payable {
    return m_lastDay
}

function version() payable {
    return version
}

function m_spentToday() payable {
    return m_spentToday
}

function m_required() payable {
    return m_required
}

function m_dailyLimit() payable {
    return m_dailyLimit
}

function kill(address arg1) payable {
    if not stor258[address(msg.sender)]:
    if not stor259[call.data[0 len calldata.size]][block.number].field_0:
        stor259[call.data[0 len calldata.size]][block.number].field_0 = m_required
        stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
        stor260.length++
        if not stor260.length <= stor260.length + 1:
            idx = stor260.length + 1
            while stor260.length > idx:
                stor260[idx] = 0
                idx = idx + 1
                continue 
        stor259[call.data[0 len calldata.size]][block.number].field_512 = stor260.length
        require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
        stor260[stor259[call.data[0 len calldata.size]][block.number].field_512] = sha3(call.data[0 len calldata.size], block.number)
    if stor259[call.data[0 len calldata.size]][block.number].field_256 and 2^stor258[address(msg.sender)]:
    emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
    if stor259[call.data[0 len calldata.size]][block.number].field_0 > 1:
        stor259[call.data[0 len calldata.size]][block.number].field_0--
        stor259[call.data[0 len calldata.size]][block.number].field_256 = stor259[call.data[0 len calldata.size]][block.number].field_256 or 2^stor258[address(msg.sender)]
    require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
    stor260[stor259[call.data[0 len calldata.size]][block.number].field_512] = 0
    stor259[call.data[0 len calldata.size]][block.number].field_0 = 0
    stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
    stor259[call.data[0 len calldata.size]][block.number].field_512 = 0
    selfdestruct(arg1)
}

function isOwner(address arg1) payable {
    return (stor258[address(arg1)] > 0)
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.sender, msg.value);
}

function execute(address arg1, uint256 arg2, bytes arg3) payable {
    if stor258[address(msg.sender)] <= 0:
        return 0
    require stor258[address(msg.sender)] <= 0
    revert 
}

function hasConfirmed(bytes32 arg1, address arg2) payable {
    if stor258[address(arg2)]:
        if stor259[arg1].field_256 and 2^stor258[address(arg2)]:
            return 1
        else:
            return 0
    else:
        return 0
}

function revoke(bytes32 arg1) payable {
    if stor258[address(msg.sender)]:
        if stor259[arg1].field_256 and 2^stor258[address(msg.sender)] > 0:
            stor259[arg1].field_0++
            stor259[arg1].field_256 -= 2^stor258[address(msg.sender)]
            emit Revoke(msg.sender, arg1);
}

function changeRequirement(uint256 arg1) payable {
    if not stor258[address(msg.sender)]:
    if not stor259[call.data[0 len calldata.size]][block.number].field_0:
        stor259[call.data[0 len calldata.size]][block.number].field_0 = m_required
        stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
        stor260.length++
        if not stor260.length <= stor260.length + 1:
            idx = stor260.length + 1
            while stor260.length > idx:
                stor260[idx] = 0
                idx = idx + 1
                continue 
        stor259[call.data[0 len calldata.size]][block.number].field_512 = stor260.length
        require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
        stor260[stor259[call.data[0 len calldata.size]][block.number].field_512] = sha3(call.data[0 len calldata.size], block.number)
    if stor259[call.data[0 len calldata.size]][block.number].field_256 and 2^stor258[address(msg.sender)]:
    emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
    if stor259[call.data[0 len calldata.size]][block.number].field_0 > 1:
        stor259[call.data[0 len calldata.size]][block.number].field_0--
        stor259[call.data[0 len calldata.size]][block.number].field_256 = stor259[call.data[0 len calldata.size]][block.number].field_256 or 2^stor258[address(msg.sender)]
    require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
    stor260[stor259[call.data[0 len calldata.size]][block.number].field_512] = 0
    stor259[call.data[0 len calldata.size]][block.number].field_0 = 0
    stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
    stor259[call.data[0 len calldata.size]][block.number].field_512 = 0
    if arg1 > m_numOwners:
    m_required = arg1
    revert 
}

function removeOwner(address arg1) payable {
    if not stor258[address(msg.sender)]:
    if not stor259[call.data[0 len calldata.size]][block.number].field_0:
        stor259[call.data[0 len calldata.size]][block.number].field_0 = m_required
        stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
        stor260.length++
        if not stor260.length <= stor260.length + 1:
            idx = stor260.length + 1
            while stor260.length > idx:
                stor260[idx] = 0
                idx = idx + 1
                continue 
        stor259[call.data[0 len calldata.size]][block.number].field_512 = stor260.length
        require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
        stor260[stor259[call.data[0 len calldata.size]][block.number].field_512] = sha3(call.data[0 len calldata.size], block.number)
    if stor259[call.data[0 len calldata.size]][block.number].field_256 and 2^stor258[address(msg.sender)]:
    emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
    if stor259[call.data[0 len calldata.size]][block.number].field_0 > 1:
        stor259[call.data[0 len calldata.size]][block.number].field_0--
        stor259[call.data[0 len calldata.size]][block.number].field_256 = stor259[call.data[0 len calldata.size]][block.number].field_256 or 2^stor258[address(msg.sender)]
    require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
    stor260[stor259[call.data[0 len calldata.size]][block.number].field_512] = 0
    stor259[call.data[0 len calldata.size]][block.number].field_0 = 0
    stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
    stor259[call.data[0 len calldata.size]][block.number].field_512 = 0
    if not stor258[address(arg1)]:
    if m_required > m_numOwners - 1:
    require stor258[address(arg1)] < 256
    stor2[stor258[address(arg1)]] = 0
    stor258[address(arg1)] = 0
    revert 
}

function resetSpentToday() payable {
    if stor258[address(msg.sender)]:
        if not stor259[call.data[0 len calldata.size]][block.number].field_0:
            stor259[call.data[0 len calldata.size]][block.number].field_0 = m_required
            stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
            stor260.length++
            if not stor260.length <= stor260.length + 1:
                idx = stor260.length + 1
                while stor260.length > idx:
                    stor260[idx] = 0
                    idx = idx + 1
                    continue 
            stor259[call.data[0 len calldata.size]][block.number].field_512 = stor260.length
            require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
            stor260[stor259[call.data[0 len calldata.size]][block.number].field_512] = sha3(call.data[0 len calldata.size], block.number)
        if not stor259[call.data[0 len calldata.size]][block.number].field_256 or not 2^stor258[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
            if stor259[call.data[0 len calldata.size]][block.number].field_0 > 1:
                stor259[call.data[0 len calldata.size]][block.number].field_0--
                stor259[call.data[0 len calldata.size]][block.number].field_256 = stor259[call.data[0 len calldata.size]][block.number].field_256 or 2^stor258[address(msg.sender)]
            else:
                require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
                stor260[stor259[call.data[0 len calldata.size]][block.number].field_512] = 0
                stor259[call.data[0 len calldata.size]][block.number].field_0 = 0
                stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
                stor259[call.data[0 len calldata.size]][block.number].field_512 = 0
                m_spentToday = 0
}

function setDailyLimit(uint256 arg1) payable {
    if stor258[address(msg.sender)]:
        if not stor259[call.data[0 len calldata.size]][block.number].field_0:
            stor259[call.data[0 len calldata.size]][block.number].field_0 = m_required
            stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
            stor260.length++
            if not stor260.length <= stor260.length + 1:
                idx = stor260.length + 1
                while stor260.length > idx:
                    stor260[idx] = 0
                    idx = idx + 1
                    continue 
            stor259[call.data[0 len calldata.size]][block.number].field_512 = stor260.length
            require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
            stor260[stor259[call.data[0 len calldata.size]][block.number].field_512] = sha3(call.data[0 len calldata.size], block.number)
        if not stor259[call.data[0 len calldata.size]][block.number].field_256 or not 2^stor258[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
            if stor259[call.data[0 len calldata.size]][block.number].field_0 > 1:
                stor259[call.data[0 len calldata.size]][block.number].field_0--
                stor259[call.data[0 len calldata.size]][block.number].field_256 = stor259[call.data[0 len calldata.size]][block.number].field_256 or 2^stor258[address(msg.sender)]
            else:
                require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
                stor260[stor259[call.data[0 len calldata.size]][block.number].field_512] = 0
                stor259[call.data[0 len calldata.size]][block.number].field_0 = 0
                stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
                stor259[call.data[0 len calldata.size]][block.number].field_512 = 0
                m_dailyLimit = arg1
}

function addOwner(address arg1) payable {
    if stor258[address(msg.sender)]:
        if not stor259[call.data[0 len calldata.size]][block.number].field_0:
            stor259[call.data[0 len calldata.size]][block.number].field_0 = m_required
            stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
            stor260.length++
            if not stor260.length <= stor260.length + 1:
                idx = stor260.length + 1
                while stor260.length > idx:
                    stor260[idx] = 0
                    idx = idx + 1
                    continue 
            stor259[call.data[0 len calldata.size]][block.number].field_512 = stor260.length
            require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
            stor260[stor259[call.data[0 len calldata.size]][block.number].field_512] = sha3(call.data[0 len calldata.size], block.number)
        if not stor259[call.data[0 len calldata.size]][block.number].field_256 or not 2^stor258[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
            if stor259[call.data[0 len calldata.size]][block.number].field_0 > 1:
                stor259[call.data[0 len calldata.size]][block.number].field_0--
                stor259[call.data[0 len calldata.size]][block.number].field_256 = stor259[call.data[0 len calldata.size]][block.number].field_256 or 2^stor258[address(msg.sender)]
            else:
                require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
                stor260[stor259[call.data[0 len calldata.size]][block.number].field_512] = 0
                stor259[call.data[0 len calldata.size]][block.number].field_0 = 0
                stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
                stor259[call.data[0 len calldata.size]][block.number].field_512 = 0
                require stor258[address(arg1)] > 0
}

function changeOwner(address arg1, address arg2) payable {
    if stor258[address(msg.sender)]:
        if not stor259[call.data[0 len calldata.size]][block.number].field_0:
            stor259[call.data[0 len calldata.size]][block.number].field_0 = m_required
            stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
            stor260.length++
            if not stor260.length <= stor260.length + 1:
                idx = stor260.length + 1
                while stor260.length > idx:
                    stor260[idx] = 0
                    idx = idx + 1
                    continue 
            stor259[call.data[0 len calldata.size]][block.number].field_512 = stor260.length
            require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
            stor260[stor259[call.data[0 len calldata.size]][block.number].field_512] = sha3(call.data[0 len calldata.size], block.number)
        if not stor259[call.data[0 len calldata.size]][block.number].field_256 or not 2^stor258[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
            if stor259[call.data[0 len calldata.size]][block.number].field_0 > 1:
                stor259[call.data[0 len calldata.size]][block.number].field_0--
                stor259[call.data[0 len calldata.size]][block.number].field_256 = stor259[call.data[0 len calldata.size]][block.number].field_256 or 2^stor258[address(msg.sender)]
            else:
                require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
                stor260[stor259[call.data[0 len calldata.size]][block.number].field_512] = 0
                stor259[call.data[0 len calldata.size]][block.number].field_0 = 0
                stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
                stor259[call.data[0 len calldata.size]][block.number].field_512 = 0
                if stor258[address(arg2)] <= 0:
                    require not stor258[address(arg1)]
}

function confirm(bytes32 arg1) payable {
    if not stor258[address(msg.sender)]:
        return 0
    if not stor259[arg1].field_0:
        stor259[arg1].field_0 = m_required
        stor259[arg1].field_256 = 0
        stor260.length++
        if not stor260.length <= stor260.length + 1:
            idx = stor260.length + 1
            while stor260.length > idx:
                stor260[idx] = 0
                idx = idx + 1
                continue 
        stor259[arg1].field_512 = stor260.length
        require stor259[arg1].field_512 < stor260.length
        stor260[stor259[arg1].field_512] = arg1
    if stor259[arg1].field_256 and 2^stor258[address(msg.sender)]:
        return 0
    mem[128] = arg1
    emit Confirmation(msg.sender, arg1);
    if stor259[arg1].field_0 > 1:
        stor259[arg1].field_0--
        stor259[arg1].field_256 = stor259[arg1].field_256 or 2^stor258[address(msg.sender)]
        return 0
    require stor259[arg1].field_512 < stor260.length
    stor260[stor259[arg1].field_512] = 0
    stor259[arg1].field_0 = 0
    stor259[arg1].field_256 = 0
    stor259[arg1].field_512 = 0
    if not stor265[arg1].field_0:
        return 0
    mem[96] = stor265[arg1][2].field_0
    idx = 96
    s = 0
    while stor265[arg1][2].length + 96 > idx + 32:
        mem[idx + 32] = stor265[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    call stor265[arg1].field_0.mem[96 len 4] with:
       value stor265[arg1].field_256 wei
         gas gas_remaining - 34050 wei
        args mem[100 len stor265[arg1][2].length + (floor32(stor265[arg1][2].length - 1) + -stor265[arg1][2].length + 32 % 32) - 4]
    mem[288] = stor265[arg1][2].field_0
    idx = 288
    s = 0
    while stor265[arg1][2].length + 288 > idx + 32:
        mem[idx + 32] = stor265[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit MultiTransact(msg.sender, arg1, stor265[arg1].field_256, stor265[arg1].field_0, Array(len=stor265[arg1][2].length, data=mem[288 len stor265[arg1][2].length + (floor32(stor265[arg1][2].length - 1) + -stor265[arg1][2].length + 32 % 32)]));
    stor265[arg1].field_0 = 0
    stor265[arg1].field_256 = 0
    stor265[arg1].field_512 = 0
    if 31 < stor265[arg1][2].length:
        idx = 0
        while stor265[arg1][2].length + 31 / 32 > idx:
            stor265[arg1][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    return 1
}



}
