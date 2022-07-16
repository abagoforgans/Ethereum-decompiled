contract main {




// =====================  Runtime code  =====================


const today = (block.timestamp / 24 * 3600)


uint256 m_required;
uint256 m_numOwners;
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



}
