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

function _fallback() {
    mem[96 len -8327] = code.data[8674 len -8327]
    mem[64] = -8231
    stor1 = mem[mem[96] + 96] + 1
    address(stor3.field_0) = msg.sender
    Mask(96, 0, stor3.field_160) = 0
    stor258[address(msg.sender)] = 1
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        require idx + 2 < 256
        stor4[idx].field_0 = mem[mem[96] + (32 * idx) + 140 len 20]
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
    return code.data[347 len 8327]
}



// =====================  Runtime code  =====================


const TRANSITION_WINDOW = (3 * 3600)

const SWAP_LENGTH = (1230 * 3600)

const PRESALE_LENGTH = (72 * 24 * 3600)

const MAX_ETH = 75000 * 10^18


uint256 m_required;
uint256 m_numOwners;
array of struct stor2;
array of struct owner;
mapping of uint256 stor258;
mapping of struct stor259;
array of uint256 stor260;
uint256 m_dailyLimit;
uint256 m_spentToday;
uint256 m_lastDay;
uint8 tokenSwap; offset 160
address tokenCtrAddress;
uint256 amountRaised;
mapping of struct stor266;

function m_numOwners() {
    return m_numOwners
}

function m_lastDay() {
    return m_lastDay
}

function m_spentToday() {
    return m_spentToday
}

function m_required() {
    return m_required
}

function amountRaised() {
    return amountRaised
}

function tokenSwap() {
    return bool(tokenSwap)
}

function tokenCtr() {
    return tokenCtrAddress
}

function getOwner(uint256 arg1) {
    require arg1 + 1 < 256
    return address(owner[arg1].field_0)
}

function m_dailyLimit() {
    return m_dailyLimit
}

function kill(address arg1) {
    if not stor258[address(msg.sender)]:
    if not stor259[call.data[0 len calldata.size]].field_0:
        stor259[call.data[0 len calldata.size]].field_0 = m_required
        stor259[call.data[0 len calldata.size]].field_256 = 0
        stor260.length++
        if not stor260.length <= stor260.length + 1:
            idx = stor260.length + 1
            while stor260.length > idx:
                stor260[idx] = 0
                idx = idx + 1
                continue 
        stor259[call.data[0 len calldata.size]].field_512 = stor260.length
        require stor260.length < stor260.length
        stor260[stor260.length] = sha3(call.data[0 len calldata.size])
    if stor259[call.data[0 len calldata.size]].field_256 and 2^stor258[address(msg.sender)] != 0:
    emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
    if stor259[call.data[0 len calldata.size]].field_0 > 1:
        stor259[call.data[0 len calldata.size]].field_0--
        stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
    require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
    stor260[stor259[call.data[0 len calldata.size]].field_512] = 0
    stor259[call.data[0 len calldata.size]].field_0 = 0
    stor259[call.data[0 len calldata.size]].field_256 = 0
    stor259[call.data[0 len calldata.size]].field_512 = 0
    require not tokenSwap
    require ext_code.size(tokenCtrAddress)
    call tokenCtrAddress.0x6780a311 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    selfdestruct(arg1)
}

function isOwner(address arg1) {
    return (stor258[address(arg1)] > 0)
}

function stopTokenSwap() {
    if stor258[address(msg.sender)] > 0:
        tokenSwap = 0
}

function startTokenSwap() {
    if stor258[address(msg.sender)] > 0:
        tokenSwap = 1
}

function setTokenContract(address arg1) {
    if stor258[address(msg.sender)] > 0:
        require arg1
        require not tokenCtrAddress
        tokenCtrAddress = arg1
}

function hasConfirmed(bytes32 arg1, address arg2) {
    if stor258[address(arg2)]:
        return stor259[arg1].field_256 and 2^stor258[address(arg2)] != 0
    else:
        return 0
}

function revoke(bytes32 arg1) {
    if stor258[address(msg.sender)]:
        if 2^stor258[address(msg.sender)] and stor259[arg1].field_256 > 0:
            stor259[arg1].field_0++
            stor259[arg1].field_256 -= 2^stor258[address(msg.sender)]
            emit Revoke(msg.sender, arg1);
}

function withdrawReserve(address arg1) {
    if stor258[address(msg.sender)] <= 0:
    require ext_code.size(tokenCtrAddress)
    call tokenCtrAddress.0xd8270dce with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] + (1230 * 3600) >= block.timestamp:
    require ext_code.size(tokenCtrAddress)
    call tokenCtrAddress.0xa91ed8c6 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function resetSpentToday() {
    if stor258[address(msg.sender)]:
        if not stor259[call.data[0 len calldata.size]].field_0:
            stor259[call.data[0 len calldata.size]].field_0 = m_required
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor260.length++
            if not stor260.length <= stor260.length + 1:
                idx = stor260.length + 1
                while stor260.length > idx:
                    stor260[idx] = 0
                    idx = idx + 1
                    continue 
            stor259[call.data[0 len calldata.size]].field_512 = stor260.length
            require stor260.length < stor260.length
            stor260[stor260.length] = sha3(call.data[0 len calldata.size])
        if 0 == stor259[call.data[0 len calldata.size]].field_256 and 2^stor258[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            else:
                require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
                stor260[stor259[call.data[0 len calldata.size]].field_512] = 0
                stor259[call.data[0 len calldata.size]].field_0 = 0
                stor259[call.data[0 len calldata.size]].field_256 = 0
                stor259[call.data[0 len calldata.size]].field_512 = 0
                m_spentToday = 0
}

function setDailyLimit(uint256 arg1) {
    if stor258[address(msg.sender)]:
        if not stor259[call.data[0 len calldata.size]].field_0:
            stor259[call.data[0 len calldata.size]].field_0 = m_required
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor260.length++
            if not stor260.length <= stor260.length + 1:
                idx = stor260.length + 1
                while stor260.length > idx:
                    stor260[idx] = 0
                    idx = idx + 1
                    continue 
            stor259[call.data[0 len calldata.size]].field_512 = stor260.length
            require stor260.length < stor260.length
            stor260[stor260.length] = sha3(call.data[0 len calldata.size])
        if 0 == stor259[call.data[0 len calldata.size]].field_256 and 2^stor258[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            else:
                require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
                stor260[stor259[call.data[0 len calldata.size]].field_512] = 0
                stor259[call.data[0 len calldata.size]].field_0 = 0
                stor259[call.data[0 len calldata.size]].field_256 = 0
                stor259[call.data[0 len calldata.size]].field_512 = 0
                m_dailyLimit = arg1
}

function confirm(bytes32 arg1) {
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
        require stor260.length < stor260.length
        stor260[stor260.length] = arg1
    if stor259[arg1].field_256 and 2^stor258[address(msg.sender)] != 0:
        return 0
    mem[128] = arg1
    emit Confirmation(msg.sender, arg1);
    if stor259[arg1].field_0 > 1:
        stor259[arg1].field_0--
        stor259[arg1].field_256 = 2^stor258[address(msg.sender)] or stor259[arg1].field_256
        return 0
    require stor259[arg1].field_512 < stor260.length
    stor260[stor259[arg1].field_512] = 0
    stor259[arg1].field_0 = 0
    stor259[arg1].field_256 = 0
    stor259[arg1].field_512 = 0
    if not address(stor266[arg1].field_0):
        return 0
    mem[96] = stor266[arg1][2].field_0
    idx = 96
    s = 0
    while stor266[arg1][2].length + 96 > idx + 32:
        mem[idx + 32] = stor266[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    call address(stor266[arg1].field_0).mem[96 len 4] with:
       value stor266[arg1].field_256 wei
         gas gas_remaining - 34710 wei
        args mem[100 len stor266[arg1][2].length + (floor32(stor266[arg1][2].length - 1) + -stor266[arg1][2].length + 32 % 32) - 4]
    require ext_call.success
    mem[288] = stor266[arg1][2].field_0
    idx = 288
    s = 0
    while stor266[arg1][2].length + 288 > idx + 32:
        mem[idx + 32] = stor266[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit MultiTransact(msg.sender, arg1, stor266[arg1].field_256, address(stor266[arg1].field_0), Array(len=stor266[arg1][2].length, data=mem[288 len stor266[arg1][2].length + (floor32(stor266[arg1][2].length - 1) + -stor266[arg1][2].length + 32 % 32)]));
    address(stor266[arg1].field_0) = 0
    stor266[arg1].field_256 = 0
    stor266[arg1].field_512 = 0
    if 31 < stor266[arg1][2].length:
        idx = 0
        while stor266[arg1][2].length + 31 / 32 > idx:
            stor266[arg1][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    return 1
}

function stopToken() {
    if not stor258[address(msg.sender)]:
    if stor259[call.data[0 len calldata.size]].field_0:
        if stor259[call.data[0 len calldata.size]].field_256 and 2^stor258[address(msg.sender)] != 0:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
        if stor259[call.data[0 len calldata.size]].field_0 > 1:
            stor259[call.data[0 len calldata.size]].field_0--
            stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
        if stor259[call.data[0 len calldata.size]].field_512 < stor260.length:
            stor260[stor259[call.data[0 len calldata.size]].field_512] = 0
            stor259[call.data[0 len calldata.size]].field_0 = 0
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor259[call.data[0 len calldata.size]].field_512 = 0
            if ext_code.size(tokenCtrAddress):
                call tokenCtrAddress.0xd21c700f with:
                     gas gas_remaining - 710 wei
                if ext_call.success:
    else:
        stor259[call.data[0 len calldata.size]].field_0 = m_required
        stor259[call.data[0 len calldata.size]].field_256 = 0
        stor260.length++
        if not stor260.length <= stor260.length + 1:
            idx = stor260.length + 1
            while stor260.length > idx:
                stor260[idx] = 0
                idx = idx + 1
                continue 
        stor259[call.data[0 len calldata.size]].field_512 = stor260.length
        if stor260.length < stor260.length:
            stor260[stor260.length] = sha3(call.data[0 len calldata.size])
            if stor259[call.data[0 len calldata.size]].field_256 and 2^stor258[address(msg.sender)] != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            if stor259[call.data[0 len calldata.size]].field_512 < stor260.length:
                stor260[stor259[call.data[0 len calldata.size]].field_512] = 0
                stor259[call.data[0 len calldata.size]].field_0 = 0
                stor259[call.data[0 len calldata.size]].field_256 = 0
                stor259[call.data[0 len calldata.size]].field_512 = 0
                if ext_code.size(tokenCtrAddress):
                    call tokenCtrAddress.0xd21c700f with:
                         gas gas_remaining - 710 wei
                    if ext_call.success:
    revert
}

function _fallback() payable {
    require ext_code.size(tokenCtrAddress)
    call tokenCtrAddress.0xd8270dce with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] + (72 * 24 * 3600) > block.timestamp:
        require msg.value >= 20 * 10^18
    require msg.value
    require amountRaised + msg.value <= 75000 * 10^18
    require ext_code.size(tokenCtrAddress)
    call tokenCtrAddress.0x5334c231 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if msg.value:
        require msg.value
        require ext_call.return_data[0] * msg.value / msg.value == ext_call.return_data[0]
    require ext_code.size(tokenCtrAddress)
    call tokenCtrAddress.0x5334c231 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenCtrAddress)
    call tokenCtrAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] + (ext_call.return_data[0] * msg.value) >= ext_call.return_data[0]
    require ext_call.return_data[0] + (ext_call.return_data[0] * msg.value) >= ext_call.return_data[0] * msg.value
    require ext_code.size(tokenCtrAddress)
    call tokenCtrAddress.0xdd54291b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenCtrAddress)
    call tokenCtrAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] + (ext_call.return_data[0] * msg.value) <= ext_call.return_data[0]
    require tokenSwap
    emit Deposit(msg.sender, msg.value);
    require ext_code.size(tokenCtrAddress)
    call tokenCtrAddress.0xf0dda65c with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value
    require ext_call.success
    require amountRaised + msg.value >= amountRaised
    require amountRaised + msg.value >= msg.value
    amountRaised += msg.value
    require ext_code.size(tokenCtrAddress)
    call tokenCtrAddress.0xd8270dce with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenCtrAddress)
    if ext_call.return_data[0] + (1230 * 3600) < block.timestamp:
        call tokenCtrAddress.0x3592f369 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        tokenSwap = 0
    if amountRaised == 75000 * 10^18:
        call tokenCtrAddress.0x3592f369 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        tokenSwap = 0
    call tokenCtrAddress.0xdd54291b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenCtrAddress)
    call tokenCtrAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] == ext_call.return_data[0]:
        require ext_code.size(tokenCtrAddress)
        call tokenCtrAddress.0x3592f369 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        tokenSwap = 0
}

function buyTokens(address arg1) payable {
    require ext_code.size(tokenCtrAddress)
    call tokenCtrAddress.0xd8270dce with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] + (72 * 24 * 3600) > block.timestamp:
        require msg.value >= 20 * 10^18
    require msg.value
    require amountRaised + msg.value <= 75000 * 10^18
    require ext_code.size(tokenCtrAddress)
    call tokenCtrAddress.0x5334c231 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if msg.value:
        require msg.value
        require ext_call.return_data[0] * msg.value / msg.value == ext_call.return_data[0]
    require ext_code.size(tokenCtrAddress)
    call tokenCtrAddress.0x5334c231 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenCtrAddress)
    call tokenCtrAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] + (ext_call.return_data[0] * msg.value) >= ext_call.return_data[0]
    require ext_call.return_data[0] + (ext_call.return_data[0] * msg.value) >= ext_call.return_data[0] * msg.value
    require ext_code.size(tokenCtrAddress)
    call tokenCtrAddress.0xdd54291b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenCtrAddress)
    call tokenCtrAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] + (ext_call.return_data[0] * msg.value) <= ext_call.return_data[0]
    require tokenSwap
    emit Deposit(msg.sender, msg.value);
    require ext_code.size(tokenCtrAddress)
    call tokenCtrAddress.0xf0dda65c with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value
    require ext_call.success
    require amountRaised + msg.value >= amountRaised
    require amountRaised + msg.value >= msg.value
    amountRaised += msg.value
    require ext_code.size(tokenCtrAddress)
    call tokenCtrAddress.0xd8270dce with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenCtrAddress)
    if ext_call.return_data[0] + (1230 * 3600) < block.timestamp:
        call tokenCtrAddress.0x3592f369 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        tokenSwap = 0
    if amountRaised == 75000 * 10^18:
        call tokenCtrAddress.0x3592f369 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        tokenSwap = 0
    call tokenCtrAddress.0xdd54291b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenCtrAddress)
    call tokenCtrAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] == ext_call.return_data[0]:
        require ext_code.size(tokenCtrAddress)
        call tokenCtrAddress.0x3592f369 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        tokenSwap = 0
}

function changeRequirement(uint256 arg1) {
    if stor258[address(msg.sender)]:
        if not stor259[call.data[0 len calldata.size]].field_0:
            stor259[call.data[0 len calldata.size]].field_0 = m_required
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor260.length++
            if not stor260.length <= stor260.length + 1:
                idx = stor260.length + 1
                while stor260.length > idx:
                    stor260[idx] = 0
                    idx = idx + 1
                    continue 
            stor259[call.data[0 len calldata.size]].field_512 = stor260.length
            require stor260.length < stor260.length
            stor260[stor260.length] = sha3(call.data[0 len calldata.size])
        if 0 == stor259[call.data[0 len calldata.size]].field_256 and 2^stor258[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            else:
                require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
                stor260[stor259[call.data[0 len calldata.size]].field_512] = 0
                stor259[call.data[0 len calldata.size]].field_0 = 0
                stor259[call.data[0 len calldata.size]].field_256 = 0
                stor259[call.data[0 len calldata.size]].field_512 = 0
                if arg1 <= m_numOwners:
                    m_required = arg1
                    idx = 0
                    while idx < stor260.length:
                        mem[0] = stor260[idx]
                        mem[32] = 266
                        address(stor266[stor260[idx]].field_0) = 0
                        stor266[stor260[idx]].field_256 = 0
                        stor266[stor260[idx]].field_512 = 0
                        if 31 < stor266[stor260[idx]][2].length:
                            mem[0] = sha3(stor260[idx], 266) + 2
                            s = sha3(sha3(stor260[idx], 266) + 2)
                            while sha3(sha3(stor260[idx], 266) + 2) + (stor266[stor260[idx]][2].length + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        idx = idx + 1
                        continue 
                    s = 0
                    while s < stor260.length:
                        mem[0] = 260
                        if stor260[s]:
                            require s < stor260.length
                            mem[0] = stor260[s]
                            mem[32] = 259
                            stor259[stor260[s]].field_0 = 0
                            stor259[stor260[s]].field_256 = 0
                            stor259[stor260[s]].field_512 = 0
                        s = s + 1
                        continue 
                    stor260.length = 0
                    s = 0
                    while stor260.length > s:
                        stor260[s] = 0
                        s = s + 1
                        continue 
                    emit RequirementChanged(arg1);
}

function changeOwner(address arg1, address arg2) {
    if stor258[address(msg.sender)]:
        if not stor259[call.data[0 len calldata.size]].field_0:
            stor259[call.data[0 len calldata.size]].field_0 = m_required
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor260.length++
            if not stor260.length <= stor260.length + 1:
                idx = stor260.length + 1
                while stor260.length > idx:
                    stor260[idx] = 0
                    idx = idx + 1
                    continue 
            stor259[call.data[0 len calldata.size]].field_512 = stor260.length
            require stor260.length < stor260.length
            stor260[stor260.length] = sha3(call.data[0 len calldata.size])
        if 0 == stor259[call.data[0 len calldata.size]].field_256 and 2^stor258[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            else:
                require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
                stor260[stor259[call.data[0 len calldata.size]].field_512] = 0
                stor259[call.data[0 len calldata.size]].field_0 = 0
                stor259[call.data[0 len calldata.size]].field_256 = 0
                stor259[call.data[0 len calldata.size]].field_512 = 0
                if stor258[address(arg2)] <= 0:
                    if stor258[address(arg1)]:
                        idx = 0
                        while idx < stor260.length:
                            mem[0] = stor260[idx]
                            mem[32] = 266
                            address(stor266[stor260[idx]].field_0) = 0
                            stor266[stor260[idx]].field_256 = 0
                            stor266[stor260[idx]].field_512 = 0
                            if 31 < stor266[stor260[idx]][2].length:
                                mem[0] = sha3(stor260[idx], 266) + 2
                                s = sha3(sha3(stor260[idx], 266) + 2)
                                while sha3(sha3(stor260[idx], 266) + 2) + (stor266[stor260[idx]][2].length + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            idx = idx + 1
                            continue 
                        s = 0
                        while s < stor260.length:
                            mem[0] = 260
                            if stor260[s]:
                                require s < stor260.length
                                mem[0] = stor260[s]
                                mem[32] = 259
                                stor259[stor260[s]].field_0 = 0
                                stor259[stor260[s]].field_256 = 0
                                stor259[stor260[s]].field_512 = 0
                            s = s + 1
                            continue 
                        stor260.length = 0
                        s = 0
                        while stor260.length > s:
                            stor260[s] = 0
                            s = s + 1
                            continue 
                        require stor258[address(arg1)] < 256
                        address(stor2[stor258[address(arg1)]].field_0) = arg2
                        Mask(96, 0, stor2[stor258[address(arg1)]].field_160) = 0
                        stor258[address(arg1)] = 0
                        stor258[arg2] = stor258[address(arg1)]
                        emit OwnerChanged(address(arg1), arg2);
}

function removeOwner(address arg1) {
    if not stor258[address(msg.sender)]:
    if stor259[call.data[0 len calldata.size]].field_0:
        if stor259[call.data[0 len calldata.size]].field_256 and 2^stor258[address(msg.sender)] != 0:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
        if stor259[call.data[0 len calldata.size]].field_0 > 1:
            stor259[call.data[0 len calldata.size]].field_0--
            stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
        require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
        stor260[stor259[call.data[0 len calldata.size]].field_512] = 0
        stor259[call.data[0 len calldata.size]].field_0 = 0
        stor259[call.data[0 len calldata.size]].field_256 = 0
        stor259[call.data[0 len calldata.size]].field_512 = 0
        if not stor258[address(arg1)]:
        if m_required > m_numOwners - 1:
        require stor258[address(arg1)] < 256
        stor2[stor258[address(arg1)]].field_0 = 0
        stor258[address(arg1)] = 0
        idx = 0
        while idx < stor260.length:
            mem[0] = stor260[idx]
            mem[32] = 266
            address(stor266[stor260[idx]].field_0) = 0
            stor266[stor260[idx]].field_256 = 0
            stor266[stor260[idx]].field_512 = 0
            if 31 < stor266[stor260[idx]][2].length:
                mem[0] = sha3(stor260[idx], 266) + 2
                s = sha3(sha3(stor260[idx], 266) + 2)
                while sha3(sha3(stor260[idx], 266) + 2) + (stor266[stor260[idx]][2].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
        s = 0
        while s < stor260.length:
            mem[0] = 260
            if stor260[s]:
                require s < stor260.length
                mem[0] = stor260[s]
                mem[32] = 259
                stor259[stor260[s]].field_0 = 0
                stor259[stor260[s]].field_256 = 0
                stor259[stor260[s]].field_512 = 0
            s = s + 1
            continue 
        stor260.length = 0
        s = 0
        while stor260.length > s:
            stor260[s] = 0
            s = s + 1
            continue 
        if 1 < m_numOwners:
            # nil
        else:
            emit OwnerRemoved(arg1);
    else:
        stor259[call.data[0 len calldata.size]].field_0 = m_required
        stor259[call.data[0 len calldata.size]].field_256 = 0
        stor260.length++
        if not stor260.length <= stor260.length + 1:
            idx = stor260.length + 1
            while stor260.length > idx:
                stor260[idx] = 0
                idx = idx + 1
                continue 
            stor259[call.data[0 len calldata.size]].field_512 = stor260.length
            require stor260.length < stor260.length
            stor260[stor260.length] = sha3(call.data[0 len calldata.size])
            if stor259[call.data[0 len calldata.size]].field_256 and 2^stor258[address(msg.sender)] != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
            stor260[stor259[call.data[0 len calldata.size]].field_512] = 0
            stor259[call.data[0 len calldata.size]].field_0 = 0
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor259[call.data[0 len calldata.size]].field_512 = 0
            if not stor258[address(arg1)]:
            if m_required > m_numOwners - 1:
            require stor258[address(arg1)] < 256
            stor2[stor258[address(arg1)]].field_0 = 0
            stor258[address(arg1)] = 0
            idx = 0
            while idx < stor260.length:
                mem[0] = stor260[idx]
                mem[32] = 266
                address(stor266[stor260[idx]].field_0) = 0
                stor266[stor260[idx]].field_256 = 0
                stor266[stor260[idx]].field_512 = 0
                if 31 < stor266[stor260[idx]][2].length:
                    mem[0] = sha3(stor260[idx], 266) + 2
                    s = sha3(sha3(stor260[idx], 266) + 2)
                    while sha3(sha3(stor260[idx], 266) + 2) + (stor266[stor260[idx]][2].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            s = 0
            while s < stor260.length:
                mem[0] = 260
                if stor260[s]:
                    require s < stor260.length
                    mem[0] = stor260[s]
                    mem[32] = 259
                    stor259[stor260[s]].field_0 = 0
                    stor259[stor260[s]].field_256 = 0
                    stor259[stor260[s]].field_512 = 0
                s = s + 1
                continue 
            stor260.length = 0
            s = 0
            while stor260.length > s:
                stor260[s] = 0
                s = s + 1
                continue 
            # nil
        else:
            stor259[call.data[0 len calldata.size]].field_512 = stor260.length
            require stor260.length < stor260.length
            stor260[stor260.length] = sha3(call.data[0 len calldata.size])
            if stor259[call.data[0 len calldata.size]].field_256 and 2^stor258[address(msg.sender)] != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
            stor260[stor259[call.data[0 len calldata.size]].field_512] = 0
            stor259[call.data[0 len calldata.size]].field_0 = 0
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor259[call.data[0 len calldata.size]].field_512 = 0
            if not stor258[address(arg1)]:
            if m_required > m_numOwners - 1:
            require stor258[address(arg1)] < 256
            stor2[stor258[address(arg1)]].field_0 = 0
            stor258[address(arg1)] = 0
            idx = 0
            while idx < stor260.length:
                mem[0] = stor260[idx]
                mem[32] = 266
                address(stor266[stor260[idx]].field_0) = 0
                stor266[stor260[idx]].field_256 = 0
                stor266[stor260[idx]].field_512 = 0
                if 31 < stor266[stor260[idx]][2].length:
                    mem[0] = sha3(stor260[idx], 266) + 2
                    s = sha3(sha3(stor260[idx], 266) + 2)
                    while sha3(sha3(stor260[idx], 266) + 2) + (stor266[stor260[idx]][2].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            s = 0
            while s < stor260.length:
                mem[0] = 260
                if stor260[s]:
                    require s < stor260.length
                    mem[0] = stor260[s]
                    mem[32] = 259
                    stor259[stor260[s]].field_0 = 0
                    stor259[stor260[s]].field_256 = 0
                    stor259[stor260[s]].field_512 = 0
                s = s + 1
                continue 
            stor260.length = 0
            s = 0
            while stor260.length > s:
                stor260[s] = 0
                s = s + 1
                continue 
            if 1 < m_numOwners:
                # nil
            else:
                emit OwnerRemoved(arg1);
}

function addOwner(address arg1) {
    if not stor258[address(msg.sender)]:
    if stor259[call.data[0 len calldata.size]].field_0:
        if stor259[call.data[0 len calldata.size]].field_256 and 2^stor258[address(msg.sender)] != 0:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
        if stor259[call.data[0 len calldata.size]].field_0 > 1:
            stor259[call.data[0 len calldata.size]].field_0--
            stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
        require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
        stor260[stor259[call.data[0 len calldata.size]].field_512] = 0
        stor259[call.data[0 len calldata.size]].field_0 = 0
        stor259[call.data[0 len calldata.size]].field_256 = 0
        stor259[call.data[0 len calldata.size]].field_512 = 0
        if stor258[address(arg1)] > 0:
        idx = 0
        while idx < stor260.length:
            mem[0] = stor260[idx]
            mem[32] = 266
            address(stor266[stor260[idx]].field_0) = 0
            stor266[stor260[idx]].field_256 = 0
            stor266[stor260[idx]].field_512 = 0
            if 31 < stor266[stor260[idx]][2].length:
                mem[0] = sha3(stor260[idx], 266) + 2
                s = sha3(sha3(stor260[idx], 266) + 2)
                while sha3(sha3(stor260[idx], 266) + 2) + (stor266[stor260[idx]][2].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
        s = 0
        while s < stor260.length:
            mem[0] = 260
            if stor260[s]:
                require s < stor260.length
                mem[0] = stor260[s]
                mem[32] = 259
                stor259[stor260[s]].field_0 = 0
                stor259[stor260[s]].field_256 = 0
                stor259[stor260[s]].field_512 = 0
            s = s + 1
            continue 
        stor260.length = 0
        s = 0
        while stor260.length > s:
            stor260[s] = 0
            s = s + 1
            continue 
        if m_numOwners < 250:
            m_numOwners++
            require m_numOwners + 1 < 256
            address(owner[stor1].field_0) = arg1
            Mask(96, 0, owner[stor1].field_160) = 0
            stor258[address(arg1)] = m_numOwners
            emit OwnerAdded(arg1);
        if 1 < m_numOwners:
            # nil
        else:
            if m_numOwners < 250:
                m_numOwners++
                require m_numOwners + 1 < 256
                address(owner[stor1].field_0) = arg1
                Mask(96, 0, owner[stor1].field_160) = 0
                stor258[address(arg1)] = m_numOwners
                emit OwnerAdded(arg1);
    else:
        stor259[call.data[0 len calldata.size]].field_0 = m_required
        stor259[call.data[0 len calldata.size]].field_256 = 0
        stor260.length++
        if not stor260.length <= stor260.length + 1:
            idx = stor260.length + 1
            while stor260.length > idx:
                stor260[idx] = 0
                idx = idx + 1
                continue 
            stor259[call.data[0 len calldata.size]].field_512 = stor260.length
            require stor260.length < stor260.length
            stor260[stor260.length] = sha3(call.data[0 len calldata.size])
            if stor259[call.data[0 len calldata.size]].field_256 and 2^stor258[address(msg.sender)] != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
            stor260[stor259[call.data[0 len calldata.size]].field_512] = 0
            stor259[call.data[0 len calldata.size]].field_0 = 0
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor259[call.data[0 len calldata.size]].field_512 = 0
            if stor258[address(arg1)] > 0:
            idx = 0
            while idx < stor260.length:
                mem[0] = stor260[idx]
                mem[32] = 266
                address(stor266[stor260[idx]].field_0) = 0
                stor266[stor260[idx]].field_256 = 0
                stor266[stor260[idx]].field_512 = 0
                if 31 < stor266[stor260[idx]][2].length:
                    mem[0] = sha3(stor260[idx], 266) + 2
                    s = sha3(sha3(stor260[idx], 266) + 2)
                    while sha3(sha3(stor260[idx], 266) + 2) + (stor266[stor260[idx]][2].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            s = 0
            while s < stor260.length:
                mem[0] = 260
                if stor260[s]:
                    require s < stor260.length
                    mem[0] = stor260[s]
                    mem[32] = 259
                    stor259[stor260[s]].field_0 = 0
                    stor259[stor260[s]].field_256 = 0
                    stor259[stor260[s]].field_512 = 0
                s = s + 1
                continue 
            stor260.length = 0
            s = 0
            while stor260.length > s:
                stor260[s] = 0
                s = s + 1
                continue 
            if m_numOwners >= 250:
                # nil
            else:
                m_numOwners++
                require m_numOwners + 1 < 256
                address(owner[stor1].field_0) = arg1
                Mask(96, 0, owner[stor1].field_160) = 0
                stor258[address(arg1)] = m_numOwners
                emit OwnerAdded(arg1);
        else:
            stor259[call.data[0 len calldata.size]].field_512 = stor260.length
            require stor260.length < stor260.length
            stor260[stor260.length] = sha3(call.data[0 len calldata.size])
            if stor259[call.data[0 len calldata.size]].field_256 and 2^stor258[address(msg.sender)] != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
            stor260[stor259[call.data[0 len calldata.size]].field_512] = 0
            stor259[call.data[0 len calldata.size]].field_0 = 0
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor259[call.data[0 len calldata.size]].field_512 = 0
            if stor258[address(arg1)] > 0:
            idx = 0
            while idx < stor260.length:
                mem[0] = stor260[idx]
                mem[32] = 266
                address(stor266[stor260[idx]].field_0) = 0
                stor266[stor260[idx]].field_256 = 0
                stor266[stor260[idx]].field_512 = 0
                if 31 < stor266[stor260[idx]][2].length:
                    mem[0] = sha3(stor260[idx], 266) + 2
                    s = sha3(sha3(stor260[idx], 266) + 2)
                    while sha3(sha3(stor260[idx], 266) + 2) + (stor266[stor260[idx]][2].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            s = 0
            while s < stor260.length:
                mem[0] = 260
                if stor260[s]:
                    require s < stor260.length
                    mem[0] = stor260[s]
                    mem[32] = 259
                    stor259[stor260[s]].field_0 = 0
                    stor259[stor260[s]].field_256 = 0
                    stor259[stor260[s]].field_512 = 0
                s = s + 1
                continue 
            stor260.length = 0
            s = 0
            while stor260.length > s:
                stor260[s] = 0
                s = s + 1
                continue 
            if m_numOwners < 250:
                m_numOwners++
                require m_numOwners + 1 < 256
                address(owner[stor1].field_0) = arg1
                Mask(96, 0, owner[stor1].field_160) = 0
                stor258[address(arg1)] = m_numOwners
                emit OwnerAdded(arg1);
            if 1 < m_numOwners:
                # nil
            else:
                if m_numOwners < 250:
                    m_numOwners++
                    require m_numOwners + 1 < 256
                    address(owner[stor1].field_0) = arg1
                    Mask(96, 0, owner[stor1].field_160) = 0
                    stor258[address(arg1)] = m_numOwners
                    emit OwnerAdded(arg1);
}

function execute(address arg1, uint256 arg2, bytes arg3) {
    if stor258[address(msg.sender)] <= 0:
        return 0
    require tokenCtrAddress != arg1
    if stor258[address(msg.sender)] > 0:
        if block.timestamp / 24 * 3600 > m_lastDay:
            m_spentToday = 0
            m_lastDay = block.timestamp / 24 * 3600
        if arg2:
            if m_spentToday + arg2 >= m_spentToday:
                if m_spentToday + arg2 <= m_dailyLimit:
                    m_spentToday += arg2
                    mem[96] = msg.sender
                    mem[160] = arg1
                    mem[192] = 128
                    mem[224] = arg3.length
                    mem[256 len arg3.length] = arg3[all]
                    emit SingleTransact(address(msg.sender), arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
                    mem[96 len arg3.length] = arg3[all]
                    call arg1 with:
                       value arg2 wei
                         gas gas_remaining - 34710 wei
                        args arg3[all]
                    if not ext_call.success:
                        return 0
    mem[96 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + 96] = block.number
    if not stor258[address(msg.sender)]:
        if not address(stor266[call.data[0 len calldata.size]][block.number].field_0):
            address(stor266[call.data[0 len calldata.size]][block.number].field_0) = arg1
            stor266[call.data[0 len calldata.size]][block.number].field_256 = arg2
            stor266[call.data[0 len calldata.size]][block.number].field_512 = (2 * arg3.length) + 1
            s = 0
            idx = arg3 + 36
            while arg3 + arg3.length + 36 > idx:
                stor266[call.data[0 len calldata.size]][block.number][s + 2].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg3.length + 31) >> 5
            while stor266[call.data[0 len calldata.size]][block.number][2].length + 31 / 32 > idx:
                stor266[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
            emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
    else:
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
            require stor260.length < stor260.length
            stor260[stor260.length] = sha3(call.data[0 len calldata.size], block.number)
        if stor259[call.data[0 len calldata.size]][block.number].field_256 and 2^stor258[address(msg.sender)] != 0:
            if not address(stor266[call.data[0 len calldata.size]][block.number].field_0):
                address(stor266[call.data[0 len calldata.size]][block.number].field_0) = arg1
                stor266[call.data[0 len calldata.size]][block.number].field_256 = arg2
                stor266[call.data[0 len calldata.size]][block.number].field_512 = (2 * arg3.length) + 1
                s = 0
                idx = arg3 + 36
                while arg3 + arg3.length + 36 > idx:
                    stor266[call.data[0 len calldata.size]][block.number][s + 2].field_0 = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, arg3.length + 31) >> 5
                while stor266[call.data[0 len calldata.size]][block.number][2].length + 31 / 32 > idx:
                    stor266[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
                emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
        else:
            mem[128] = sha3(call.data[0 len calldata.size], block.number)
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
            if stor259[call.data[0 len calldata.size]][block.number].field_0 > 1:
                stor259[call.data[0 len calldata.size]][block.number].field_0--
                stor259[call.data[0 len calldata.size]][block.number].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]][block.number].field_256
                if not address(stor266[call.data[0 len calldata.size]][block.number].field_0):
                    address(stor266[call.data[0 len calldata.size]][block.number].field_0) = arg1
                    stor266[call.data[0 len calldata.size]][block.number].field_256 = arg2
                    stor266[call.data[0 len calldata.size]][block.number].field_512 = (2 * arg3.length) + 1
                    s = 0
                    idx = arg3 + 36
                    while arg3 + arg3.length + 36 > idx:
                        stor266[call.data[0 len calldata.size]][block.number][s + 2].field_0 = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, arg3.length + 31) >> 5
                    while stor266[call.data[0 len calldata.size]][block.number][2].length + 31 / 32 > idx:
                        stor266[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                        idx = idx + 1
                        continue 
                    emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
            else:
                require stor259[call.data[0 len calldata.size]][block.number].field_512 < stor260.length
                stor260[stor259[call.data[0 len calldata.size]][block.number].field_512] = 0
                stor259[call.data[0 len calldata.size]][block.number].field_0 = 0
                stor259[call.data[0 len calldata.size]][block.number].field_256 = 0
                stor259[call.data[0 len calldata.size]][block.number].field_512 = 0
                if not address(stor266[call.data[0 len calldata.size]][block.number].field_0):
                    if not address(stor266[call.data[0 len calldata.size]][block.number].field_0):
                        address(stor266[call.data[0 len calldata.size]][block.number].field_0) = arg1
                        stor266[call.data[0 len calldata.size]][block.number].field_256 = arg2
                        stor266[call.data[0 len calldata.size]][block.number].field_512 = (2 * arg3.length) + 1
                        s = 0
                        idx = arg3 + 36
                        while arg3 + arg3.length + 36 > idx:
                            stor266[call.data[0 len calldata.size]][block.number][s + 2].field_0 = cd[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, arg3.length + 31) >> 5
                        while stor266[call.data[0 len calldata.size]][block.number][2].length + 31 / 32 > idx:
                            stor266[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                            idx = idx + 1
                            continue 
                        emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
                else:
                    mem[96] = stor266[call.data[0 len calldata.size]][block.number][2].field_0
                    idx = 96
                    s = 0
                    while stor266[call.data[0 len calldata.size]][block.number][2].length + 96 > idx + 32:
                        mem[idx + 32] = stor266[call.data[0 len calldata.size]][block.number][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    call address(stor266[call.data[0 len calldata.size]][block.number].field_0).mem[96 len 4] with:
                       value stor266[call.data[0 len calldata.size]][block.number].field_256 wei
                         gas gas_remaining - 34710 wei
                        args mem[100 len stor266[call.data[0 len calldata.size]][block.number][2].length + (floor32(stor266[call.data[0 len calldata.size]][block.number][2].length - 1) + -stor266[call.data[0 len calldata.size]][block.number][2].length + 32 % 32) - 4]
                    require ext_call.success
                    mem[288] = stor266[call.data[0 len calldata.size]][block.number][2].field_0
                    idx = 288
                    s = 0
                    while stor266[call.data[0 len calldata.size]][block.number][2].length + 288 > idx + 32:
                        mem[idx + 32] = stor266[call.data[0 len calldata.size]][block.number][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit MultiTransact(msg.sender, sha3(call.data[0 len calldata.size], block.number), stor266[call.data[0 len calldata.size]][block.number].field_256, address(stor266[call.data[0 len calldata.size]][block.number].field_0), Array(len=stor266[call.data[0 len calldata.size]][block.number][2].length, data=mem[288 len stor266[call.data[0 len calldata.size]][block.number][2].length + (floor32(stor266[call.data[0 len calldata.size]][block.number][2].length - 1) + -stor266[call.data[0 len calldata.size]][block.number][2].length + 32 % 32)]));
                    address(stor266[call.data[0 len calldata.size]][block.number].field_0) = 0
                    stor266[call.data[0 len calldata.size]][block.number].field_256 = 0
                    stor266[call.data[0 len calldata.size]][block.number].field_512 = 0
                    if 31 < stor266[call.data[0 len calldata.size]][block.number][2].length:
                        idx = 0
                        while stor266[call.data[0 len calldata.size]][block.number][2].length + 31 / 32 > idx:
                            stor266[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                            idx = idx + 1
                            continue 
    return sha3(call.data[0 len calldata.size], block.number)
}



}
