contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
address stor1;
uint256 stor1;
address stor2;
uint256 stor2;
mapping of uint8 stor5;
uint256 stor6;
uint256 stor8;
uint8 stor11;

function _fallback() payable {
    stor6 = code.data[5732 len 32]
    stor8 = block.timestamp / 24 * 3600
    uint256(stor0) = code.data[5636 len 32]
    uint256(stor1) = code.data[5668 len 32]
    uint256(stor2) = code.data[5700 len 32]
    stor5[address(stor0)] = 1
    stor5[address(stor1)] = 2
    stor5[address(stor2)] = 4
    stor11 = 1
    return code.data[617 len 5019]
}



// =====================  Runtime code  =====================


address sub_07c6e57cAddress;
address sub_6206f029Address;
uint256 stor1;
address sub_79860361Address;
mapping of uint8 stor3;
array of uint256 stor4;
mapping of uint8 stor5;
uint256 m_dailyLimit;
uint256 m_spentToday;
uint256 m_lastDay;
mapping of uint256 stor10;
uint8 state;

function sub_07c6e57c(?) {
    return sub_07c6e57cAddress
}

function getState() {
    return bool(state)
}

function m_lastDay() {
    return m_lastDay
}

function sub_6206f029(?) {
    return address(sub_6206f029Address)
}

function m_spentToday() {
    return m_spentToday
}

function sub_79860361(?) {
    return sub_79860361Address
}

function m_dailyLimit() {
    return m_dailyLimit
}

function kill(address arg1) {
    if not state:
    if not Mask(2, 1, uint8(stor5[address(msg.sender)])):
    if not uint8(stor3['kill'][arg1]):
        stor4.length++
        if not stor4.length <= stor4.length + 1:
            idx = stor4.length + 1
            while stor4.length > idx:
                stor4[idx] = 0
                idx = idx + 1
                continue 
        stor4[stor4.length] = sha3('kill', arg1)
    if uint8(uint8(stor3['kill'][arg1]) and Mask(2, 1, uint8(stor5[address(msg.sender)]))):
    emit 0x386e9e20: msg.sender, sha3('kill', arg1), 6
    uint256(stor3['kill'][arg1]) = uint8(stor3['kill'][arg1]) + Mask(2, 1, uint8(stor5[address(msg.sender)])) or Mask(248, 8, uint256(stor3['kill'][arg1]))
    if Mask(2, 1, uint8(stor3['kill'][arg1])) != 6:
    selfdestruct(arg1)
}

function _fallback() payable {
    if msg.value > 0:
        emit EventDeposit(msg.sender, msg.value);
}

function sub_9123f2eb(?) {
    if not state:
        return 0
    if stor10[arg4] <= 0:
        return 0, uint8(stor3[arg1][arg2][arg3[all]][arg4])
    return 1, stor10[arg4]
}

function sub_42e7085c(?) {
    if state:
        if msg.sender == sub_07c6e57cAddress:
            state = 0
            idx = 0
            while idx < stor4.length:
                mem[0] = 4
                if stor4[idx] != sha3('reportReclaim'):
                    idx = idx + 1
                    continue 
                require idx < stor4.length
                stor4[idx] = 0
                uint8(stor3['reportReclaim']) = 0
            uint8(stor3['reportReclaim']) = 0
}

function pay(address arg1, uint256 arg2, uint256 arg3) {
    if not state:
        return 0
    if stor10[arg3]:
        return 0
    if sub_07c6e57cAddress != msg.sender:
        return 0
    if uint8(stor5[address(msg.sender)]) <= 0:
        emit 0x6ab3e318: arg3, arg2, arg1
        return 0
    if block.timestamp / 24 * 3600 > m_lastDay:
        m_spentToday = 0
        m_lastDay = block.timestamp / 24 * 3600
    if m_spentToday + arg2 < m_spentToday:
        emit 0x6ab3e318: arg3, arg2, arg1
        return 0
    if m_spentToday + arg2 > m_dailyLimit:
        emit 0x6ab3e318: arg3, arg2, arg1
        return 0
    m_spentToday += arg2
    emit 0x79fdfbbb: arg3, arg2, arg1
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor10[arg3] = block.timestamp
    return 1
}

function setDailyLimit(uint256 arg1) {
    if stor5[address(msg.sender)] % 4:
        if uint8(stor3['setDailyLimit'][arg1]):
            if not uint8(uint8(stor3['setDailyLimit'][arg1]) and stor5[address(msg.sender)] % 4):
                emit 0x386e9e20: msg.sender, sha3('setDailyLimit', arg1), 3
                uint256(stor3['setDailyLimit'][arg1]) = uint8(stor3['setDailyLimit'][arg1]) + stor5[address(msg.sender)] % 4 or Mask(248, 8, uint256(stor3['setDailyLimit'][arg1]))
                if stor3['setDailyLimit'][arg1] % 4 == 3:
                    m_dailyLimit = arg1
        else:
            stor4.length++
            if not stor4.length <= stor4.length + 1:
                idx = stor4.length + 1
                while stor4.length > idx:
                    stor4[idx] = 0
                    idx = idx + 1
                    continue 
            stor4[stor4.length] = sha3('setDailyLimit', arg1)
            if not uint8(uint8(stor3['setDailyLimit'][arg1]) and stor5[address(msg.sender)] % 4):
                emit 0x386e9e20: msg.sender, sha3('setDailyLimit', arg1), 3
                uint256(stor3['setDailyLimit'][arg1]) = uint8(stor3['setDailyLimit'][arg1]) + stor5[address(msg.sender)] % 4 or Mask(248, 8, uint256(stor3['setDailyLimit'][arg1]))
                if stor3['setDailyLimit'][arg1] % 4 == 3:
                    m_dailyLimit = arg1
}

function sub_514af038(?) {
    if state:
        if not stor10[arg3]:
            if stor5[address(msg.sender)] % 4:
                if not uint8(stor3[arg1][arg2][arg3]):
                    stor4.length++
                    if not stor4.length <= stor4.length + 1:
                        idx = stor4.length + 1
                        while stor4.length > idx:
                            stor4[idx] = 0
                            idx = idx + 1
                            continue 
                    stor4[stor4.length] = sha3(arg1, arg2, arg3)
                if not uint8(uint8(stor3[arg1][arg2][arg3]) and stor5[address(msg.sender)] % 4):
                    emit 0x386e9e20: msg.sender, sha3(arg1, arg2, arg3), 3
                    uint256(stor3[arg1][arg2][arg3]) = uint8(stor3[arg1][arg2][arg3]) + stor5[address(msg.sender)] % 4 or Mask(248, 8, uint256(stor3[arg1][arg2][arg3]))
                    if stor3[arg1][arg2][arg3] % 4 == 3:
                        emit 0x3a897014: arg3, arg2, arg1
                        call arg1 with:
                           value arg2 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        idx = 0
                        while idx < stor4.length:
                            mem[0] = 4
                            if stor4[idx] != sha3(arg1, arg2, arg3):
                                idx = idx + 1
                                continue 
                            require idx < stor4.length
                            stor4[idx] = 0
                            uint8(stor3[arg1][arg2][arg3]) = 0
                            stor10[arg3] = block.timestamp
                        uint8(stor3[arg1][arg2][arg3]) = 0
                        stor10[arg3] = block.timestamp
}

function execute(address arg1, uint256 arg2, bytes arg3, uint256 arg4) {
    if state:
        if not stor10[arg4]:
            if stor5[address(msg.sender)] % 4:
                if not uint8(stor3[arg1][arg2][call.data[0 len calldata.size]][arg4]):
                    stor4.length++
                    if not stor4.length <= stor4.length + 1:
                        idx = stor4.length + 1
                        while stor4.length > idx:
                            stor4[idx] = 0
                            idx = idx + 1
                            continue 
                    stor4[stor4.length] = sha3(arg1, arg2, call.data[0 len calldata.size], arg4)
                if not uint8(uint8(stor3[arg1][arg2][call.data[0 len calldata.size]][arg4]) and stor5[address(msg.sender)] % 4):
                    emit 0x386e9e20: msg.sender, sha3(arg1, arg2, call.data[0 len calldata.size], arg4), 3
                    uint256(stor3[arg1][arg2][call.data[0 len calldata.size]][arg4]) = uint8(stor3[arg1][arg2][call.data[0 len calldata.size]][arg4]) + stor5[address(msg.sender)] % 4 or Mask(248, 8, uint256(stor3[arg1][arg2][call.data[0 len calldata.size]][arg4]))
                    if stor3[arg1][arg2][call.data[0 len calldata.size]][arg4] % 4 == 3:
                        emit 0xef75a5c6: arg4, arg2, address(arg1), Array(len=arg3.length, data=arg3[all])
                        call arg1 with:
                           value arg2 wei
                             gas gas_remaining - 34050 wei
                            args arg3[all]
                        require ext_call.success
                        idx = 0
                        while idx < stor4.length:
                            mem[0] = 4
                            if stor4[idx] != sha3(arg1, arg2, call.data[0 len calldata.size], arg4):
                                idx = idx + 1
                                continue 
                            require idx < stor4.length
                            stor4[idx] = 0
                            uint8(stor3[arg1][arg2][call.data[0 len calldata.size]][arg4]) = 0
                            stor10[arg4] = block.timestamp
                        uint8(stor3[arg1][arg2][call.data[0 len calldata.size]][arg4]) = 0
                        stor10[arg4] = block.timestamp
}

function sub_40cf1fcb(?) {
    if stor5[address(msg.sender)] % 4:
        if uint8(stor3['reportReclaim']):
            if not uint8(uint8(stor3['reportReclaim']) and stor5[address(msg.sender)] % 4):
                emit 0x386e9e20: msg.sender, sha3('reportReclaim'), 3
                uint256(stor3['reportReclaim']) = uint8(stor3['reportReclaim']) + stor5[address(msg.sender)] % 4 or Mask(248, 8, uint256(stor3['reportReclaim']))
                if stor3['reportReclaim'] % 4 == 3:
                    if not state:
                        state = 1
                        idx = 0
                        while idx < stor4.length:
                            mem[0] = 4
                            if stor4[idx] != sha3('reportReclaim'):
                                idx = idx + 1
                                continue 
                            require idx < stor4.length
                            stor4[idx] = 0
                            uint8(stor3['reportReclaim']) = 0
                        uint8(stor3['reportReclaim']) = 0
        else:
            stor4.length++
            if not stor4.length <= stor4.length + 1:
                idx = stor4.length + 1
                while stor4.length > idx:
                    stor4[idx] = 0
                    idx = idx + 1
                    continue 
            stor4[stor4.length] = sha3('reportReclaim')
            if not uint8(uint8(stor3['reportReclaim']) and stor5[address(msg.sender)] % 4):
                emit 0x386e9e20: msg.sender, sha3('reportReclaim'), 3
                uint256(stor3['reportReclaim']) = uint8(stor3['reportReclaim']) + stor5[address(msg.sender)] % 4 or Mask(248, 8, uint256(stor3['reportReclaim']))
                if stor3['reportReclaim'] % 4 == 3:
                    if not state:
                        state = 1
                        idx = 0
                        while idx < stor4.length:
                            mem[0] = 4
                            if stor4[idx] != sha3('reportReclaim'):
                                idx = idx + 1
                                continue 
                            require idx < stor4.length
                            stor4[idx] = 0
                            uint8(stor3['reportReclaim']) = 0
                        uint8(stor3['reportReclaim']) = 0
}

function changeUser(address arg1) {
    if uint8(5 and uint8(stor5[address(msg.sender)])):
        if uint8(stor3[call.data[0 len calldata.size]]):
            if not uint8(5 and uint8(stor3[call.data[0 len calldata.size]]) and uint8(stor5[address(msg.sender)])):
                emit 0x386e9e20: msg.sender, sha3(call.data[0 len calldata.size]), 5
                uint256(stor3[call.data[0 len calldata.size]]) = uint8(stor3[call.data[0 len calldata.size]]) + (5 and uint8(stor5[address(msg.sender)])) or Mask(248, 8, uint256(stor3[call.data[0 len calldata.size]]))
                if uint8(5 and uint8(stor3[call.data[0 len calldata.size]])) == 5:
                    if address(sub_6206f029Address) != arg1:
                        idx = 0
                        while idx < stor4.length:
                            mem[0] = stor4[idx]
                            mem[32] = 3
                            uint8(stor3[stor4[idx]]) = 0
                            idx = idx + 1
                            continue 
                        stor4.length = 0
                        s = sha3(4)
                        while sha3(4) + stor4.length > stor4.length:
                            stor4.length = 0
                            s = stor4.length + 1
                            continue 
                        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
                        emit 0x6af0a7f4: address(sub_6206f029Address)
        else:
            stor4.length++
            if not stor4.length <= stor4.length + 1:
                idx = stor4.length + 1
                while stor4.length > idx:
                    stor4[idx] = 0
                    idx = idx + 1
                    continue 
            stor4[stor4.length] = sha3(call.data[0 len calldata.size])
            if not uint8(5 and uint8(stor3[call.data[0 len calldata.size]]) and uint8(stor5[address(msg.sender)])):
                emit 0x386e9e20: msg.sender, sha3(call.data[0 len calldata.size]), 5
                uint256(stor3[call.data[0 len calldata.size]]) = uint8(stor3[call.data[0 len calldata.size]]) + (5 and uint8(stor5[address(msg.sender)])) or Mask(248, 8, uint256(stor3[call.data[0 len calldata.size]]))
                if uint8(5 and uint8(stor3[call.data[0 len calldata.size]])) == 5:
                    if address(sub_6206f029Address) != arg1:
                        idx = 0
                        while idx < stor4.length:
                            mem[0] = stor4[idx]
                            mem[32] = 3
                            uint8(stor3[stor4[idx]]) = 0
                            idx = idx + 1
                            continue 
                        stor4.length = 0
                        s = sha3(4)
                        while sha3(4) + stor4.length > stor4.length:
                            stor4.length = 0
                            s = stor4.length + 1
                            continue 
                        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
                        emit 0x6af0a7f4: address(sub_6206f029Address)
}



}
