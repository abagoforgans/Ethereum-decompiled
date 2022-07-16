contract main {




// =====================  Runtime code  =====================


const today = (block.timestamp / 24 * 3600)


uint256 m_required;
uint256 m_numOwners;
array of address stor2;
mapping of uint256 stor13;
mapping of struct stor14;
array of uint256 stor15;
uint256 m_dailyLimit;
uint256 m_spentToday;
uint256 m_lastDay;
address _tokenAddress;
mapping of struct stor20;

function m_numOwners() {
    return m_numOwners
}

function m_lastDay() {
    return m_lastDay
}

function _tokenAddress() {
    return _tokenAddress
}

function m_spentToday() {
    return m_spentToday
}

function m_required() {
    return m_required
}

function m_dailyLimit() {
    return m_dailyLimit
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    return (stor13[address(arg1)] > 0)
}

function hasConfirmed(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if stor13[address(arg2)]:
        if stor14[arg1].field_256 and 2^stor13[address(arg2)]:
            return 1
        else:
            return 0
    else:
        return 0
}

function revoke(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if stor13[address(msg.sender)]:
        if stor14[arg1].field_256 and 2^stor13[address(msg.sender)] > 0:
            stor14[arg1].field_0++
            stor14[arg1].field_256 -= 2^stor13[address(msg.sender)]
            emit Revoke(msg.sender, arg1);
}

function confirm(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if not stor13[address(msg.sender)]:
        return 0
    if not stor14[arg1].field_0:
        stor14[arg1].field_0 = m_required
        stor14[arg1].field_256 = 0
        stor15.length++
        if stor15.length > stor15.length + 1:
            idx = stor15.length + 1
            while stor15.length > idx:
                stor15[idx] = 0
                idx = idx + 1
                continue 
        stor14[arg1].field_512 = stor15.length
        require stor14[arg1].field_512 < stor15.length
        stor15[stor14[arg1].field_512] = arg1
    if stor14[arg1].field_256 and 2^stor13[address(msg.sender)]:
        return 0
    emit Confirmation(msg.sender, arg1);
    if stor14[arg1].field_0 > 1:
        stor14[arg1].field_0--
        stor14[arg1].field_256 = stor14[arg1].field_256 or 2^stor13[address(msg.sender)]
        return 0
    require stor14[arg1].field_512 < stor15.length
    stor15[stor14[arg1].field_512] = 0
    stor14[arg1].field_0 = 0
    stor14[arg1].field_256 = 0
    stor14[arg1].field_512 = 0
    if not stor20[arg1].field_0:
        return 0
    require ext_code.size(_tokenAddress)
    call _tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor20[arg1].field_0, stor20[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit MultiTransact(address(msg.sender), arg1, stor20[arg1].field_256, stor20[arg1].field_0);
    stor20[arg1].field_0 = 0
    stor20[arg1].field_256 = 0
    return 1
}

function resetSpentToday() {
    if stor13[address(msg.sender)]:
        if not stor14[64][128][17]['resetSpentToday: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0:
            stor14[64][128][17]['resetSpentToday: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0 = m_required
            stor14[64][128][17]['resetSpentToday: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 = 0
            stor15.length++
            if stor15.length > stor15.length + 1:
                idx = stor15.length + 1
                while stor15.length > idx:
                    stor15[idx] = 0
                    idx = idx + 1
                    continue 
            stor14[64][128][17]['resetSpentToday: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 = stor15.length
            require stor14[64][128][17]['resetSpentToday: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 < stor15.length
            stor15[stor14[64][128][17]['resetSpentToday: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512] = sha3(64, 128, 17, 'resetSpentToday: ', calldata.size, call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256)
        if not stor14[64][128][17]['resetSpentToday: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 or not 2^stor13[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(64, 128, 17, 'resetSpentToday: ', calldata.size, call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256));
            if stor14[64][128][17]['resetSpentToday: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0 > 1:
                stor14[64][128][17]['resetSpentToday: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0--
                stor14[64][128][17]['resetSpentToday: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 = stor14[64][128][17]['resetSpentToday: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 or 2^stor13[address(msg.sender)]
            else:
                require stor14[64][128][17]['resetSpentToday: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 < stor15.length
                stor15[stor14[64][128][17]['resetSpentToday: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512] = 0
                stor14[64][128][17]['resetSpentToday: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0 = 0
                stor14[64][128][17]['resetSpentToday: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 = 0
                stor14[64][128][17]['resetSpentToday: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 = 0
                m_spentToday = 0
}

function setDailyLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor13[address(msg.sender)]:
        if not stor14[64][128][15]['setDailyLimit: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0:
            stor14[64][128][15]['setDailyLimit: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0 = m_required
            stor14[64][128][15]['setDailyLimit: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 = 0
            stor15.length++
            if stor15.length > stor15.length + 1:
                idx = stor15.length + 1
                while stor15.length > idx:
                    stor15[idx] = 0
                    idx = idx + 1
                    continue 
            stor14[64][128][15]['setDailyLimit: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 = stor15.length
            require stor14[64][128][15]['setDailyLimit: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 < stor15.length
            stor15[stor14[64][128][15]['setDailyLimit: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512] = sha3(64, 128, 15, 'setDailyLimit: ', calldata.size, call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256)
        if not stor14[64][128][15]['setDailyLimit: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 or not 2^stor13[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(64, 128, 15, 'setDailyLimit: ', calldata.size, call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256));
            if stor14[64][128][15]['setDailyLimit: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0 > 1:
                stor14[64][128][15]['setDailyLimit: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0--
                stor14[64][128][15]['setDailyLimit: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 = stor14[64][128][15]['setDailyLimit: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 or 2^stor13[address(msg.sender)]
            else:
                require stor14[64][128][15]['setDailyLimit: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 < stor15.length
                stor15[stor14[64][128][15]['setDailyLimit: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512] = 0
                stor14[64][128][15]['setDailyLimit: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0 = 0
                stor14[64][128][15]['setDailyLimit: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 = 0
                stor14[64][128][15]['setDailyLimit: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 = 0
                m_dailyLimit = arg1
}

function setTokenAddr(address arg1) {
    require calldata.size - 4 >= 32
    if stor13[address(msg.sender)]:
        if not stor14[64][128][14]['setTokenAddr: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0:
            stor14[64][128][14]['setTokenAddr: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0 = m_required
            stor14[64][128][14]['setTokenAddr: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 = 0
            stor15.length++
            if stor15.length > stor15.length + 1:
                idx = stor15.length + 1
                while stor15.length > idx:
                    stor15[idx] = 0
                    idx = idx + 1
                    continue 
            stor14[64][128][14]['setTokenAddr: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 = stor15.length
            require stor14[64][128][14]['setTokenAddr: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 < stor15.length
            stor15[stor14[64][128][14]['setTokenAddr: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512] = sha3(64, 128, 14, 'setTokenAddr: ', calldata.size, call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256)
        if not stor14[64][128][14]['setTokenAddr: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 or not 2^stor13[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(64, 128, 14, 'setTokenAddr: ', calldata.size, call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256));
            if stor14[64][128][14]['setTokenAddr: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0 > 1:
                stor14[64][128][14]['setTokenAddr: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0--
                stor14[64][128][14]['setTokenAddr: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 = stor14[64][128][14]['setTokenAddr: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 or 2^stor13[address(msg.sender)]
            else:
                require stor14[64][128][14]['setTokenAddr: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 < stor15.length
                stor15[stor14[64][128][14]['setTokenAddr: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512] = 0
                stor14[64][128][14]['setTokenAddr: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0 = 0
                stor14[64][128][14]['setTokenAddr: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 = 0
                stor14[64][128][14]['setTokenAddr: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 = 0
                if arg1:
                    _tokenAddress = arg1
            return 0
        else:
            return 0
    else:
        return 0
}

function execute(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor13[address(msg.sender)] <= 0:
        return 0
    if stor13[address(msg.sender)] > 0:
        if block.timestamp / 24 * 3600 > m_lastDay:
            m_spentToday = 0
            m_lastDay = block.timestamp / 24 * 3600
        if m_spentToday + arg2 >= m_spentToday:
            if m_spentToday + arg2 <= m_dailyLimit:
                m_spentToday += arg2
                emit SingleTransact(msg.sender, arg2, arg1);
                require ext_code.size(_tokenAddress)
                call _tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    return 0
    if not stor13[address(msg.sender)]:
        if not stor20[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_0:
            stor20[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_0 = arg1
            stor20[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_256 = arg2
            emit ConfirmationNeeded(sha3(Array(len=calldata.size, data=call.data[0 len calldata.size]), block.number), msg.sender, arg2, arg1);
    else:
        if not stor14[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_0:
            stor14[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_0 = m_required
            stor14[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_256 = 0
            stor15.length++
            if stor15.length > stor15.length + 1:
                idx = stor15.length + 1
                while stor15.length > idx:
                    stor15[idx] = 0
                    idx = idx + 1
                    continue 
            stor14[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_512 = stor15.length
            require stor14[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_512 < stor15.length
            stor15[stor14[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_512] = sha3(Array(len=calldata.size, data=call.data[0 len calldata.size]), block.number)
        if stor14[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_256 and 2^stor13[address(msg.sender)]:
            if not stor20[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_0:
                stor20[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_0 = arg1
                stor20[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_256 = arg2
                emit ConfirmationNeeded(sha3(Array(len=calldata.size, data=call.data[0 len calldata.size]), block.number), msg.sender, arg2, arg1);
        else:
            emit Confirmation(msg.sender, sha3(Array(len=calldata.size, data=call.data[0 len calldata.size]), block.number));
            if stor14[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_0 > 1:
                stor14[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_0--
                stor14[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_256 = stor14[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_256 or 2^stor13[address(msg.sender)]
                if not stor20[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_0:
                    stor20[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_0 = arg1
                    stor20[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_256 = arg2
                    emit ConfirmationNeeded(sha3(Array(len=calldata.size, data=call.data[0 len calldata.size]), block.number), msg.sender, arg2, arg1);
            else:
                require stor14[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_512 < stor15.length
                stor15[stor14[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_512] = 0
                stor14[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_0 = 0
                stor14[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_256 = 0
                stor14[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_512 = 0
                if not stor20[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_0:
                    if not stor20[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_0:
                        stor20[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_0 = arg1
                        stor20[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_256 = arg2
                        emit ConfirmationNeeded(sha3(Array(len=calldata.size, data=call.data[0 len calldata.size]), block.number), msg.sender, arg2, arg1);
                else:
                    require ext_code.size(_tokenAddress)
                    call _tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor20[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_0, stor20[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit MultiTransact(msg.sender, sha3(Array(len=calldata.size, data=call.data[0 len calldata.size]), block.number), stor20[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_256, stor20[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_0);
                    stor20[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_0 = 0
                    stor20[Array(len=calldata.size, data=call.data[0 len calldata.size])][block.number].field_256 = 0
    return sha3(Array(len=calldata.size, data=call.data[0 len calldata.size]), block.number)
}

function changeRequirement(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor13[address(msg.sender)]:
        if not stor14[64][128][19]['changeRequirement: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0:
            stor14[64][128][19]['changeRequirement: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0 = m_required
            stor14[64][128][19]['changeRequirement: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 = 0
            stor15.length++
            if stor15.length > stor15.length + 1:
                idx = stor15.length + 1
                while stor15.length > idx:
                    stor15[idx] = 0
                    idx = idx + 1
                    continue 
            stor14[64][128][19]['changeRequirement: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 = stor15.length
            require stor14[64][128][19]['changeRequirement: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 < stor15.length
            stor15[stor14[64][128][19]['changeRequirement: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512] = sha3(64, 128, 19, 'changeRequirement: ', calldata.size, call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256)
        if not stor14[64][128][19]['changeRequirement: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 or not 2^stor13[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(64, 128, 19, 'changeRequirement: ', calldata.size, call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256));
            if stor14[64][128][19]['changeRequirement: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0 > 1:
                stor14[64][128][19]['changeRequirement: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0--
                stor14[64][128][19]['changeRequirement: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 = stor14[64][128][19]['changeRequirement: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 or 2^stor13[address(msg.sender)]
            else:
                require stor14[64][128][19]['changeRequirement: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 < stor15.length
                stor15[stor14[64][128][19]['changeRequirement: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512] = 0
                stor14[64][128][19]['changeRequirement: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0 = 0
                stor14[64][128][19]['changeRequirement: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 = 0
                stor14[64][128][19]['changeRequirement: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 = 0
                if arg1 <= m_numOwners:
                    m_required = arg1
                    idx = 0
                    while idx < stor15.length:
                        mem[0] = stor15[idx]
                        mem[32] = 20
                        stor20[stor15[idx]].field_0 = 0
                        stor20[stor15[idx]].field_256 = 0
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < stor15.length:
                        mem[0] = 15
                        if stor15[idx]:
                            require idx < stor15.length
                            mem[0] = stor15[idx]
                            mem[32] = 14
                            stor14[stor15[idx]].field_0 = 0
                            stor14[stor15[idx]].field_256 = 0
                            stor14[stor15[idx]].field_512 = 0
                        idx = idx + 1
                        continue 
                    stor15.length = 0
                    idx = 0
                    while stor15.length > idx:
                        stor15[idx] = 0
                        idx = idx + 1
                        continue 
                    emit RequirementChanged(arg1);
}

function changeOwner(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if stor13[address(msg.sender)]:
        if not stor14[64][128][13]['changeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0:
            stor14[64][128][13]['changeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0 = m_required
            stor14[64][128][13]['changeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 = 0
            stor15.length++
            if stor15.length > stor15.length + 1:
                idx = stor15.length + 1
                while stor15.length > idx:
                    stor15[idx] = 0
                    idx = idx + 1
                    continue 
            stor14[64][128][13]['changeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 = stor15.length
            require stor14[64][128][13]['changeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 < stor15.length
            stor15[stor14[64][128][13]['changeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512] = sha3(64, 128, 13, 'changeOwner: ', calldata.size, call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256)
        if not stor14[64][128][13]['changeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 or not 2^stor13[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(64, 128, 13, 'changeOwner: ', calldata.size, call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256));
            if stor14[64][128][13]['changeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0 > 1:
                stor14[64][128][13]['changeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0--
                stor14[64][128][13]['changeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 = stor14[64][128][13]['changeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 or 2^stor13[address(msg.sender)]
            else:
                require stor14[64][128][13]['changeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 < stor15.length
                stor15[stor14[64][128][13]['changeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512] = 0
                stor14[64][128][13]['changeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0 = 0
                stor14[64][128][13]['changeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 = 0
                stor14[64][128][13]['changeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 = 0
                if stor13[address(arg2)] <= 0:
                    if stor13[address(arg1)]:
                        idx = 0
                        while idx < stor15.length:
                            mem[0] = stor15[idx]
                            mem[32] = 20
                            stor20[stor15[idx]].field_0 = 0
                            stor20[stor15[idx]].field_256 = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < stor15.length:
                            mem[0] = 15
                            if stor15[idx]:
                                require idx < stor15.length
                                mem[0] = stor15[idx]
                                mem[32] = 14
                                stor14[stor15[idx]].field_0 = 0
                                stor14[stor15[idx]].field_256 = 0
                                stor14[stor15[idx]].field_512 = 0
                            idx = idx + 1
                            continue 
                        stor15.length = 0
                        idx = 0
                        while stor15.length > idx:
                            stor15[idx] = 0
                            idx = idx + 1
                            continue 
                        require stor13[address(arg1)] < 11
                        stor2[stor13[address(arg1)]] = arg2
                        stor13[address(arg1)] = 0
                        stor13[address(arg2)] = stor13[address(arg1)]
                        emit OwnerChanged(address(arg1), arg2);
}

function removeOwner(address arg1) {
    require calldata.size - 4 >= 32
    if not stor13[address(msg.sender)]:
    if stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0:
        if stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 and 2^stor13[address(msg.sender)]:
        emit Confirmation(msg.sender, sha3(64, 128, 13, 'removeOwner: ', calldata.size, call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256));
        if stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0 > 1:
            stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0--
            stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 = stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 or 2^stor13[address(msg.sender)]
        require stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 < stor15.length
        stor15[stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512] = 0
        stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0 = 0
        stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 = 0
        stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 = 0
        if not stor13[address(arg1)]:
        if m_required > m_numOwners - 1:
        require stor13[address(arg1)] < 11
        stor2[stor13[address(arg1)]] = 0
        stor13[address(arg1)] = 0
        idx = 0
        while idx < stor15.length:
            mem[0] = stor15[idx]
            mem[32] = 20
            stor20[stor15[idx]].field_0 = 0
            stor20[stor15[idx]].field_256 = 0
            idx = idx + 1
            continue 
        idx = 0
        while idx < stor15.length:
            mem[0] = 15
            if stor15[idx]:
                require idx < stor15.length
                mem[0] = stor15[idx]
                mem[32] = 14
                stor14[stor15[idx]].field_0 = 0
                stor14[stor15[idx]].field_256 = 0
                stor14[stor15[idx]].field_512 = 0
            idx = idx + 1
            continue 
        stor15.length = 0
        idx = 0
        while stor15.length > idx:
            stor15[idx] = 0
            idx = idx + 1
            continue 
        if 1 < m_numOwners:
            # nil
        else:
            emit OwnerRemoved(arg1);
    else:
        stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0 = m_required
        stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 = 0
        stor15.length++
        if stor15.length > stor15.length + 1:
            idx = stor15.length + 1
            while stor15.length > idx:
                stor15[idx] = 0
                idx = idx + 1
                continue 
            stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 = stor15.length
            require stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 < stor15.length
            stor15[stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512] = sha3(64, 128, 13, 'removeOwner: ', calldata.size, call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256)
            if stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 and 2^stor13[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(64, 128, 13, 'removeOwner: ', calldata.size, call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256));
            if stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0 > 1:
                stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0--
                stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 = stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 or 2^stor13[address(msg.sender)]
            require stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 < stor15.length
            stor15[stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512] = 0
            stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0 = 0
            stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 = 0
            stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 = 0
            if not stor13[address(arg1)]:
            if m_required > m_numOwners - 1:
            require stor13[address(arg1)] < 11
            stor2[stor13[address(arg1)]] = 0
            stor13[address(arg1)] = 0
            idx = 0
            while idx < stor15.length:
                mem[0] = stor15[idx]
                mem[32] = 20
                stor20[stor15[idx]].field_0 = 0
                stor20[stor15[idx]].field_256 = 0
                idx = idx + 1
                continue 
            idx = 0
            while idx < stor15.length:
                mem[0] = 15
                if stor15[idx]:
                    require idx < stor15.length
                    mem[0] = stor15[idx]
                    mem[32] = 14
                    stor14[stor15[idx]].field_0 = 0
                    stor14[stor15[idx]].field_256 = 0
                    stor14[stor15[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor15.length = 0
            idx = 0
            while stor15.length > idx:
                stor15[idx] = 0
                idx = idx + 1
                continue 
            # nil
        else:
            stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 = stor15.length
            require stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 < stor15.length
            stor15[stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512] = sha3(64, 128, 13, 'removeOwner: ', calldata.size, call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256)
            if stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 and 2^stor13[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(64, 128, 13, 'removeOwner: ', calldata.size, call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256));
            if stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0 > 1:
                stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0--
                stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 = stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 or 2^stor13[address(msg.sender)]
            require stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 < stor15.length
            stor15[stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512] = 0
            stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0 = 0
            stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 = 0
            stor14[64][128][13]['removeOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 = 0
            if not stor13[address(arg1)]:
            if m_required > m_numOwners - 1:
            require stor13[address(arg1)] < 11
            stor2[stor13[address(arg1)]] = 0
            stor13[address(arg1)] = 0
            idx = 0
            while idx < stor15.length:
                mem[0] = stor15[idx]
                mem[32] = 20
                stor20[stor15[idx]].field_0 = 0
                stor20[stor15[idx]].field_256 = 0
                idx = idx + 1
                continue 
            idx = 0
            while idx < stor15.length:
                mem[0] = 15
                if stor15[idx]:
                    require idx < stor15.length
                    mem[0] = stor15[idx]
                    mem[32] = 14
                    stor14[stor15[idx]].field_0 = 0
                    stor14[stor15[idx]].field_256 = 0
                    stor14[stor15[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor15.length = 0
            idx = 0
            while stor15.length > idx:
                stor15[idx] = 0
                idx = idx + 1
                continue 
            if 1 < m_numOwners:
                # nil
            else:
                emit OwnerRemoved(arg1);
}

function addOwner(address arg1) {
    require calldata.size - 4 >= 32
    if not stor13[address(msg.sender)]:
    if stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0:
        if stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 and 2^stor13[address(msg.sender)]:
        emit Confirmation(msg.sender, sha3(64, 128, 10, 'addOwner: ', calldata.size, call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256));
        if stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0 > 1:
            stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0--
            stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 = stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 or 2^stor13[address(msg.sender)]
        require stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 < stor15.length
        stor15[stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512] = 0
        stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0 = 0
        stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 = 0
        stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 = 0
        if stor13[address(arg1)] > 0:
        idx = 0
        while idx < stor15.length:
            mem[0] = stor15[idx]
            mem[32] = 20
            stor20[stor15[idx]].field_0 = 0
            stor20[stor15[idx]].field_256 = 0
            idx = idx + 1
            continue 
        idx = 0
        while idx < stor15.length:
            mem[0] = 15
            if stor15[idx]:
                require idx < stor15.length
                mem[0] = stor15[idx]
                mem[32] = 14
                stor14[stor15[idx]].field_0 = 0
                stor14[stor15[idx]].field_256 = 0
                stor14[stor15[idx]].field_512 = 0
            idx = idx + 1
            continue 
        stor15.length = 0
        idx = 0
        while stor15.length > idx:
            stor15[idx] = 0
            idx = idx + 1
            continue 
        if m_numOwners < 10:
            m_numOwners++
            stor2[stor1] = arg1
            stor13[address(arg1)] = m_numOwners
            emit OwnerAdded(arg1);
        if 1 < m_numOwners:
            # nil
        else:
            if m_numOwners < 10:
                m_numOwners++
                stor2[stor1] = arg1
                stor13[address(arg1)] = m_numOwners
                emit OwnerAdded(arg1);
    else:
        stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0 = m_required
        stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 = 0
        stor15.length++
        if stor15.length > stor15.length + 1:
            idx = stor15.length + 1
            while stor15.length > idx:
                stor15[idx] = 0
                idx = idx + 1
                continue 
            stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 = stor15.length
            require stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 < stor15.length
            stor15[stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512] = sha3(64, 128, 10, 'addOwner: ', calldata.size, call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256)
            if stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 and 2^stor13[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(64, 128, 10, 'addOwner: ', calldata.size, call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256));
            if stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0 > 1:
                stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0--
                stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 = stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 or 2^stor13[address(msg.sender)]
            require stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 < stor15.length
            stor15[stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512] = 0
            stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0 = 0
            stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 = 0
            stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 = 0
            if stor13[address(arg1)] > 0:
            idx = 0
            while idx < stor15.length:
                mem[0] = stor15[idx]
                mem[32] = 20
                stor20[stor15[idx]].field_0 = 0
                stor20[stor15[idx]].field_256 = 0
                idx = idx + 1
                continue 
            idx = 0
            while idx < stor15.length:
                mem[0] = 15
                if stor15[idx]:
                    require idx < stor15.length
                    mem[0] = stor15[idx]
                    mem[32] = 14
                    stor14[stor15[idx]].field_0 = 0
                    stor14[stor15[idx]].field_256 = 0
                    stor14[stor15[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor15.length = 0
            idx = 0
            while stor15.length > idx:
                stor15[idx] = 0
                idx = idx + 1
                continue 
            if m_numOwners >= 10:
                # nil
            else:
                m_numOwners++
                stor2[stor1] = arg1
                stor13[address(arg1)] = m_numOwners
                emit OwnerAdded(arg1);
        else:
            stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 = stor15.length
            require stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 < stor15.length
            stor15[stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512] = sha3(64, 128, 10, 'addOwner: ', calldata.size, call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256)
            if stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 and 2^stor13[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(64, 128, 10, 'addOwner: ', calldata.size, call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256));
            if stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0 > 1:
                stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0--
                stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 = stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 or 2^stor13[address(msg.sender)]
            require stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 < stor15.length
            stor15[stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512] = 0
            stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_0 = 0
            stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_256 = 0
            stor14[64][128][10]['addOwner: '][calldata.size][call.data[0 len calldata.size]][Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> (8 * -ceil32(calldata.size)) + (8 * calldata.size) + 256].field_512 = 0
            if stor13[address(arg1)] > 0:
            idx = 0
            while idx < stor15.length:
                mem[0] = stor15[idx]
                mem[32] = 20
                stor20[stor15[idx]].field_0 = 0
                stor20[stor15[idx]].field_256 = 0
                idx = idx + 1
                continue 
            idx = 0
            while idx < stor15.length:
                mem[0] = 15
                if stor15[idx]:
                    require idx < stor15.length
                    mem[0] = stor15[idx]
                    mem[32] = 14
                    stor14[stor15[idx]].field_0 = 0
                    stor14[stor15[idx]].field_256 = 0
                    stor14[stor15[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor15.length = 0
            idx = 0
            while stor15.length > idx:
                stor15[idx] = 0
                idx = idx + 1
                continue 
            if m_numOwners < 10:
                m_numOwners++
                stor2[stor1] = arg1
                stor13[address(arg1)] = m_numOwners
                emit OwnerAdded(arg1);
            if 1 < m_numOwners:
                # nil
            else:
                if m_numOwners < 10:
                    m_numOwners++
                    stor2[stor1] = arg1
                    stor13[address(arg1)] = m_numOwners
                    emit OwnerAdded(arg1);
}



}
