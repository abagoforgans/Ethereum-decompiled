contract main {


// =======================  Init code  ======================


mapping of struct stor2;

function _fallback() payable {
    stor2[code.data[9877 len 20]].field_768 = code.data[9897 len 32]
    stor2[address(code.data[9865 len 32])][1][address(code.data[9865 len 32])].field_0 = 1
    stor2[address(code.data[9865 len 32])].field_512 = 1
    stor2[address(code.data[9865 len 32])].field_520 = 1
    stor2[address(code.data[9865 len 32])].field_1024 = block.timestamp
    return code.data[436 len 9429]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint256 stor1;
mapping of struct accountBalance;

function getAccountBalance(address arg1) payable {
    return accountBalance[address(arg1)].field_768
}

function _fallback() payable {
  stop
}

function transfer(address arg1, uint256 arg2) payable {
    if accountBalance[tx.origin].field_0:
        emit 0xd29821f1: tx.origin
        return 0
    if accountBalance[address(arg1)].field_0:
        emit 0xd29821f1: arg1
        return 0
    if accountBalance[tx.origin].field_512:
        if accountBalance[tx.origin].field_512 != 1:
            emit 0xc17f9005: tx.origin
            return 0
        if not accountBalance[tx.origin][1][tx.origin].field_0:
            emit 0xc17f9005: tx.origin
            return 0
    else:
        accountBalance[tx.origin][1][tx.origin].field_0 = 1
        accountBalance[tx.origin].field_512 = 1
        accountBalance[tx.origin].field_520 = 1
        accountBalance[tx.origin].field_1024 = block.timestamp
    if accountBalance[tx.origin].field_512 > 1:
        emit 0xe48db3e4: tx.origin, address(arg1), arg2
        return 0
    if accountBalance[tx.origin].field_768 < arg2:
        return 0
    accountBalance[tx.origin].field_768 -= arg2
    accountBalance[address(arg1)].field_768 += arg2
    emit Transaction(tx.origin, address(arg1), block.timestamp, arg2);
    return 1
}

function sub_d3a3f889(?) payable {
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    s = 128
    idx = 0
    while idx < arg2.length:
        _10 = mem[64]
        mem[64] = mem[64] + 64
        mem[_10 len 64] = call.data[(64 * idx) + arg2 + 36 len 64]
        mem[s] = _10
        s = s + 32
        idx = idx + 1
        continue 
    _9 = mem[64]
    mem[64] = mem[64] + (32 * arg3.length) + 32
    mem[_9] = arg3.length
    mem[_9 + 32 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[mem[64]] = 'transfer'
    mem[mem[64] + 8] = arg1 << 224
    mem[mem[64] + 12] = tx.origin
    mem[mem[64] + 32] = address(arg4)
    mem[mem[64] + 52] = arg5
    mem[0] = tx.origin
    mem[32] = 2
    _15 = mem[64]
    mem[64] = mem[64] + 64
    mem[_15] = 0
    mem[_15 + 32] = 0
    if accountBalance[tx.origin].field_1024 >= arg1:
        emit 0xc17f9005: tx.origin
        emit 0xc17f9005: tx.origin
        return 0
    if block.timestamp - arg1 > stor0.length:
        emit 0xc17f9005: tx.origin
        emit 0xc17f9005: tx.origin
        return 0
    if block.timestamp - arg1 < stor1:
        emit 0xc17f9005: tx.origin
        emit 0xc17f9005: tx.origin
        return 0
    if accountBalance[tx.origin].field_512 <= 1:
        emit 0xc17f9005: tx.origin
        emit 0xc17f9005: tx.origin
        return 0
    if accountBalance[tx.origin].field_0:
        emit 0xc17f9005: tx.origin
        emit 0xc17f9005: tx.origin
        return 0
    if mem[96] < accountBalance[tx.origin].field_520:
        emit 0xc17f9005: tx.origin
        emit 0xc17f9005: tx.origin
        return 0
    if arg3.length >= accountBalance[tx.origin].field_520:
        if mem[96] > 255:
            emit 0xc17f9005: tx.origin
            emit 0xc17f9005: tx.origin
            return 0
        _182 = mem[96]
        s = 0
        s = 0
        s = _15
        idx = 0
        s = 0
        while uint8(idx) < _182:
            require idx < mem[96]
            _188 = mem[(32 * idx) + 128]
            require idx < mem[_9]
            _194 = mem[(32 * idx) + _9 + 32]
            _196 = mem[mem[(32 * idx) + 128]]
            _201 = mem[mem[(32 * idx) + 128] + 32]
            mem[mem[64] + 32] = mem[(32 * idx) + _9 + 63 len 1]
            mem[mem[64] + 64] = _196
            mem[mem[64] + 96] = _201
            signer = erecover(sha3('transfer', arg1, tx.origin, arg4, arg5), _194 << 248, _196, _201) 
            mem[mem[64]] = signer
            require erecover.result
            if stor0[address(signer)]:
                emit 0xc17f9005: tx.origin
                emit 0xc17f9005: tx.origin
                return 0
            if not accountBalance[tx.origin][1][address(signer)].field_0:
                emit 0xc17f9005: tx.origin
                emit 0xc17f9005: tx.origin
                return 0
            mem[0] = address(signer)
            mem[32] = 0
            stor0[address(signer)] = 1
            _182 = mem[96]
            s = signer
            s = _194
            s = _188
            idx = idx + 1
            s = s + 1
            continue 
    else:
        if mem[96] != arg3.length:
            emit 0xc17f9005: tx.origin
            emit 0xc17f9005: tx.origin
            return 0
        if mem[96] > 255:
            emit 0xc17f9005: tx.origin
            emit 0xc17f9005: tx.origin
            return 0
        _183 = mem[96]
        s = 0
        s = 0
        s = _15
        idx = 0
        s = 0
        while uint8(idx) < _183:
            require idx < mem[96]
            _192 = mem[(32 * idx) + 128]
            require idx < mem[_9]
            _195 = mem[(32 * idx) + _9 + 32]
            _197 = mem[mem[(32 * idx) + 128]]
            _207 = mem[mem[(32 * idx) + 128] + 32]
            mem[mem[64] + 32] = mem[(32 * idx) + _9 + 63 len 1]
            mem[mem[64] + 64] = _197
            mem[mem[64] + 96] = _207
            signer = erecover(sha3('transfer', arg1, tx.origin, arg4, arg5), _195 << 248, _197, _207) 
            mem[mem[64]] = signer
            require erecover.result
            if stor0[address(signer)]:
                emit 0xc17f9005: tx.origin
                emit 0xc17f9005: tx.origin
                return 0
            if not accountBalance[tx.origin][1][address(signer)].field_0:
                emit 0xc17f9005: tx.origin
                emit 0xc17f9005: tx.origin
                return 0
            mem[0] = address(signer)
            mem[32] = 0
            stor0[address(signer)] = 1
            _183 = mem[96]
            s = signer
            s = _195
            s = _192
            idx = idx + 1
            s = s + 1
            continue 
    if uint8(None) < accountBalance[tx.origin].field_520:
        emit 0xc17f9005: tx.origin
        emit 0xc17f9005: tx.origin
        return 0
    if accountBalance[tx.origin].field_0:
        emit 0xd29821f1: tx.origin
        return 0
    if accountBalance[address(arg4)].field_0:
        emit 0xd29821f1: arg4
        return 0
    if accountBalance[tx.origin].field_768 < arg5:
        return 0
    accountBalance[tx.origin].field_768 -= arg5
    accountBalance[address(arg4)].field_768 += arg5
    emit Transaction(tx.origin, address(arg4), arg1 << 224, arg5);
    return 1
}

function sub_a6461016(?) payable {
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    s = 128
    idx = 0
    while idx < arg2.length:
        _10 = mem[64]
        mem[64] = mem[64] + 64
        mem[_10 len 64] = call.data[(64 * idx) + arg2 + 36 len 64]
        mem[s] = _10
        s = s + 32
        idx = idx + 1
        continue 
    _9 = mem[64]
    mem[64] = mem[64] + (32 * arg3.length) + 32
    mem[_9] = arg3.length
    mem[_9 + 32 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[mem[64]] = 'recoverAccount'
    mem[mem[64] + 14] = arg1 << 224
    mem[mem[64] + 18] = address(arg4)
    mem[0] = tx.origin
    mem[32] = 2
    _15 = mem[64]
    mem[64] = mem[64] + 64
    mem[_15] = 0
    mem[_15 + 32] = 0
    if accountBalance[tx.origin].field_1024 >= arg1:
        emit 0xc17f9005: tx.origin
        emit 0xc17f9005: tx.origin
    else:
        if block.timestamp - arg1 > stor0.length:
            emit 0xc17f9005: tx.origin
            emit 0xc17f9005: tx.origin
        else:
            if block.timestamp - arg1 < stor1:
                emit 0xc17f9005: tx.origin
                emit 0xc17f9005: tx.origin
            else:
                if accountBalance[tx.origin].field_512 <= 1:
                    emit 0xc17f9005: tx.origin
                    emit 0xc17f9005: tx.origin
                else:
                    if accountBalance[tx.origin].field_0:
                        emit 0xc17f9005: tx.origin
                        emit 0xc17f9005: tx.origin
                    else:
                        if mem[96] < accountBalance[tx.origin].field_520:
                            emit 0xc17f9005: tx.origin
                            emit 0xc17f9005: tx.origin
                        else:
                            if arg3.length >= accountBalance[tx.origin].field_520:
                                if mem[96] > 255:
                                    emit 0xc17f9005: tx.origin
                                    emit 0xc17f9005: tx.origin
                                else:
                                    _126 = mem[96]
                                    s = 0
                                    s = 0
                                    s = _15
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < _126:
                                        require idx < mem[96]
                                        _132 = mem[(32 * idx) + 128]
                                        require idx < mem[_9]
                                        _138 = mem[(32 * idx) + _9 + 32]
                                        _140 = mem[mem[(32 * idx) + 128]]
                                        _145 = mem[mem[(32 * idx) + 128] + 32]
                                        mem[mem[64] + 32] = mem[(32 * idx) + _9 + 63 len 1]
                                        mem[mem[64] + 64] = _140
                                        mem[mem[64] + 96] = _145
                                        signer = erecover(sha3('recoverAccount', arg1, arg4), _138 << 248, _140, _145) 
                                        mem[mem[64]] = signer
                                        require erecover.result
                                        if stor0[address(signer)]:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: tx.origin
                                        if not accountBalance[tx.origin][1][address(signer)].field_0:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: tx.origin
                                        mem[0] = address(signer)
                                        mem[32] = 0
                                        stor0[address(signer)] = 1
                                        _126 = mem[96]
                                        s = signer
                                        s = _138
                                        s = _132
                                        idx = idx + 1
                                        s = s + 1
                                        continue 
                                    if uint8(None) < accountBalance[tx.origin].field_520:
                                        emit 0xc17f9005: tx.origin
                                        emit 0xc17f9005: tx.origin
                                    else:
                                        if accountBalance[tx.origin].field_0:
                                            emit 0xd29821f1: tx.origin
                                        else:
                                            accountBalance[address(arg4)].field_768 += accountBalance[tx.origin].field_768
                                            accountBalance[tx.origin].field_768 = 0
                                            emit 0x17c6e25a: address(arg4), accountBalance[tx.origin].field_768
                            else:
                                if mem[96] != arg3.length:
                                    emit 0xc17f9005: tx.origin
                                    emit 0xc17f9005: tx.origin
                                else:
                                    if mem[96] > 255:
                                        emit 0xc17f9005: tx.origin
                                        emit 0xc17f9005: tx.origin
                                    else:
                                        _127 = mem[96]
                                        s = 0
                                        s = 0
                                        s = _15
                                        idx = 0
                                        s = 0
                                        while uint8(idx) < _127:
                                            require idx < mem[96]
                                            _136 = mem[(32 * idx) + 128]
                                            require idx < mem[_9]
                                            _139 = mem[(32 * idx) + _9 + 32]
                                            _141 = mem[mem[(32 * idx) + 128]]
                                            _151 = mem[mem[(32 * idx) + 128] + 32]
                                            mem[mem[64] + 32] = mem[(32 * idx) + _9 + 63 len 1]
                                            mem[mem[64] + 64] = _141
                                            mem[mem[64] + 96] = _151
                                            signer = erecover(sha3('recoverAccount', arg1, arg4), _139 << 248, _141, _151) 
                                            mem[mem[64]] = signer
                                            require erecover.result
                                            if stor0[address(signer)]:
                                                emit 0xc17f9005: tx.origin
                                                emit 0xc17f9005: tx.origin
                                            if not accountBalance[tx.origin][1][address(signer)].field_0:
                                                emit 0xc17f9005: tx.origin
                                                emit 0xc17f9005: tx.origin
                                            mem[0] = address(signer)
                                            mem[32] = 0
                                            stor0[address(signer)] = 1
                                            _127 = mem[96]
                                            s = signer
                                            s = _139
                                            s = _136
                                            idx = idx + 1
                                            s = s + 1
                                            continue 
                                        if uint8(None) < accountBalance[tx.origin].field_520:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: tx.origin
                                        else:
                                            if accountBalance[tx.origin].field_0:
                                                emit 0xd29821f1: tx.origin
                                            else:
                                                accountBalance[address(arg4)].field_768 += accountBalance[tx.origin].field_768
                                                accountBalance[tx.origin].field_768 = 0
                                                emit 0x17c6e25a: address(arg4), accountBalance[tx.origin].field_768
}

function sub_6053a6f9(?) payable {
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    s = 128
    idx = 0
    while idx < arg2.length:
        _10 = mem[64]
        mem[64] = mem[64] + 64
        mem[_10 len 64] = call.data[(64 * idx) + arg2 + 36 len 64]
        mem[s] = _10
        s = s + 32
        idx = idx + 1
        continue 
    _9 = mem[64]
    mem[64] = mem[64] + (32 * arg3.length) + 32
    mem[_9] = arg3.length
    mem[_9 + 32 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[mem[64]] = 'changeAccountSignsRequired'
    mem[mem[64] + 26] = arg1 << 224
    mem[mem[64] + 30] = arg4 << 248
    mem[0] = tx.origin
    mem[32] = 2
    _15 = mem[64]
    mem[64] = mem[64] + 64
    mem[_15] = 0
    mem[_15 + 32] = 0
    if accountBalance[tx.origin].field_1024 >= arg1:
        emit 0xc17f9005: tx.origin
        emit 0xc17f9005: tx.origin
    else:
        if block.timestamp - arg1 > stor0.length:
            emit 0xc17f9005: tx.origin
            emit 0xc17f9005: tx.origin
        else:
            if block.timestamp - arg1 < stor1:
                emit 0xc17f9005: tx.origin
                emit 0xc17f9005: tx.origin
            else:
                if accountBalance[tx.origin].field_512 <= 1:
                    emit 0xc17f9005: tx.origin
                    emit 0xc17f9005: tx.origin
                else:
                    if accountBalance[tx.origin].field_0:
                        emit 0xc17f9005: tx.origin
                        emit 0xc17f9005: tx.origin
                    else:
                        if mem[96] < accountBalance[tx.origin].field_520:
                            emit 0xc17f9005: tx.origin
                            emit 0xc17f9005: tx.origin
                        else:
                            if arg3.length >= accountBalance[tx.origin].field_520:
                                if mem[96] > 255:
                                    emit 0xc17f9005: tx.origin
                                    emit 0xc17f9005: tx.origin
                                else:
                                    _130 = mem[96]
                                    s = 0
                                    s = 0
                                    s = _15
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < _130:
                                        require idx < mem[96]
                                        _136 = mem[(32 * idx) + 128]
                                        require idx < mem[_9]
                                        _142 = mem[(32 * idx) + _9 + 32]
                                        _144 = mem[mem[(32 * idx) + 128]]
                                        _149 = mem[mem[(32 * idx) + 128] + 32]
                                        mem[mem[64] + 32] = mem[(32 * idx) + _9 + 63 len 1]
                                        mem[mem[64] + 64] = _144
                                        mem[mem[64] + 96] = _149
                                        signer = erecover(sha3('changeAccountSignsRequired', arg1, arg4), _142 << 248, _144, _149) 
                                        mem[mem[64]] = signer
                                        require erecover.result
                                        if stor0[address(signer)]:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: tx.origin
                                        if not accountBalance[tx.origin][1][address(signer)].field_0:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: tx.origin
                                        mem[0] = address(signer)
                                        mem[32] = 0
                                        stor0[address(signer)] = 1
                                        _130 = mem[96]
                                        s = signer
                                        s = _142
                                        s = _136
                                        idx = idx + 1
                                        s = s + 1
                                        continue 
                                    if uint8(None) < accountBalance[tx.origin].field_520:
                                        emit 0xc17f9005: tx.origin
                                        emit 0xc17f9005: tx.origin
                                    else:
                                        if accountBalance[tx.origin].field_0:
                                            emit 0xd29821f1: tx.origin
                                        else:
                                            if accountBalance[tx.origin].field_512 >= arg4:
                                                if arg4:
                                                    accountBalance[tx.origin].field_520 = Mask(248, 0, arg4)
                                            emit 0x6e4df7e2: tx.origin, arg4
                            else:
                                if mem[96] != arg3.length:
                                    emit 0xc17f9005: tx.origin
                                    emit 0xc17f9005: tx.origin
                                else:
                                    if mem[96] > 255:
                                        emit 0xc17f9005: tx.origin
                                        emit 0xc17f9005: tx.origin
                                    else:
                                        _131 = mem[96]
                                        s = 0
                                        s = 0
                                        s = _15
                                        idx = 0
                                        s = 0
                                        while uint8(idx) < _131:
                                            require idx < mem[96]
                                            _140 = mem[(32 * idx) + 128]
                                            require idx < mem[_9]
                                            _143 = mem[(32 * idx) + _9 + 32]
                                            _145 = mem[mem[(32 * idx) + 128]]
                                            _155 = mem[mem[(32 * idx) + 128] + 32]
                                            mem[mem[64] + 32] = mem[(32 * idx) + _9 + 63 len 1]
                                            mem[mem[64] + 64] = _145
                                            mem[mem[64] + 96] = _155
                                            signer = erecover(sha3('changeAccountSignsRequired', arg1, arg4), _143 << 248, _145, _155) 
                                            mem[mem[64]] = signer
                                            require erecover.result
                                            if stor0[address(signer)]:
                                                emit 0xc17f9005: tx.origin
                                                emit 0xc17f9005: tx.origin
                                            if not accountBalance[tx.origin][1][address(signer)].field_0:
                                                emit 0xc17f9005: tx.origin
                                                emit 0xc17f9005: tx.origin
                                            mem[0] = address(signer)
                                            mem[32] = 0
                                            stor0[address(signer)] = 1
                                            _131 = mem[96]
                                            s = signer
                                            s = _143
                                            s = _140
                                            idx = idx + 1
                                            s = s + 1
                                            continue 
                                        if uint8(None) < accountBalance[tx.origin].field_520:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: tx.origin
                                        else:
                                            if accountBalance[tx.origin].field_0:
                                                emit 0xd29821f1: tx.origin
                                            else:
                                                if accountBalance[tx.origin].field_512 >= arg4:
                                                    if arg4:
                                                        accountBalance[tx.origin].field_520 = Mask(248, 0, arg4)
                                                emit 0x6e4df7e2: tx.origin, arg4
}

function sub_fbf35f96(?) payable {
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    s = 128
    idx = 0
    while idx < arg2.length:
        _10 = mem[64]
        mem[64] = mem[64] + 64
        mem[_10 len 64] = call.data[(64 * idx) + arg2 + 36 len 64]
        mem[s] = _10
        s = s + 32
        idx = idx + 1
        continue 
    _9 = mem[64]
    mem[64] = mem[64] + (32 * arg3.length) + 32
    mem[_9] = arg3.length
    mem[_9 + 32 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[mem[64]] = 'addAccountHolder'
    mem[mem[64] + 16] = arg1 << 224
    mem[mem[64] + 20] = address(arg4)
    mem[0] = tx.origin
    mem[32] = 2
    _15 = mem[64]
    mem[64] = mem[64] + 64
    mem[_15] = 0
    mem[_15 + 32] = 0
    if accountBalance[tx.origin].field_1024 >= arg1:
        emit 0xc17f9005: tx.origin
        emit 0xc17f9005: tx.origin
    else:
        if block.timestamp - arg1 > stor0.length:
            emit 0xc17f9005: tx.origin
            emit 0xc17f9005: tx.origin
        else:
            if block.timestamp - arg1 < stor1:
                emit 0xc17f9005: tx.origin
                emit 0xc17f9005: tx.origin
            else:
                if accountBalance[tx.origin].field_512 <= 1:
                    emit 0xc17f9005: tx.origin
                    emit 0xc17f9005: tx.origin
                else:
                    if accountBalance[tx.origin].field_0:
                        emit 0xc17f9005: tx.origin
                        emit 0xc17f9005: tx.origin
                    else:
                        if mem[96] < accountBalance[tx.origin].field_520:
                            emit 0xc17f9005: tx.origin
                            emit 0xc17f9005: tx.origin
                        else:
                            if arg3.length >= accountBalance[tx.origin].field_520:
                                if mem[96] > 255:
                                    emit 0xc17f9005: tx.origin
                                    emit 0xc17f9005: tx.origin
                                else:
                                    _130 = mem[96]
                                    s = 0
                                    s = 0
                                    s = _15
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < _130:
                                        require idx < mem[96]
                                        _136 = mem[(32 * idx) + 128]
                                        require idx < mem[_9]
                                        _142 = mem[(32 * idx) + _9 + 32]
                                        _144 = mem[mem[(32 * idx) + 128]]
                                        _149 = mem[mem[(32 * idx) + 128] + 32]
                                        mem[mem[64] + 32] = mem[(32 * idx) + _9 + 63 len 1]
                                        mem[mem[64] + 64] = _144
                                        mem[mem[64] + 96] = _149
                                        signer = erecover(sha3('addAccountHolder', arg1, arg4), _142 << 248, _144, _149) 
                                        mem[mem[64]] = signer
                                        require erecover.result
                                        if stor0[address(signer)]:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: tx.origin
                                        if not accountBalance[tx.origin][1][address(signer)].field_0:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: tx.origin
                                        mem[0] = address(signer)
                                        mem[32] = 0
                                        stor0[address(signer)] = 1
                                        _130 = mem[96]
                                        s = signer
                                        s = _142
                                        s = _136
                                        idx = idx + 1
                                        s = s + 1
                                        continue 
                                    if uint8(None) < accountBalance[tx.origin].field_520:
                                        emit 0xc17f9005: tx.origin
                                        emit 0xc17f9005: tx.origin
                                    else:
                                        if accountBalance[tx.origin].field_0:
                                            emit 0xd29821f1: tx.origin
                                        else:
                                            if not accountBalance[tx.origin][1][address(arg4)].field_0:
                                                accountBalance[tx.origin][1][address(arg4)].field_0 = 1
                                                accountBalance[tx.origin].field_512 = accountBalance[tx.origin].field_512 + 1 or Mask(248, 8, accountBalance[tx.origin].field_512)
                                            emit 0xbff23936: tx.origin, arg4
                            else:
                                if mem[96] != arg3.length:
                                    emit 0xc17f9005: tx.origin
                                    emit 0xc17f9005: tx.origin
                                else:
                                    if mem[96] > 255:
                                        emit 0xc17f9005: tx.origin
                                        emit 0xc17f9005: tx.origin
                                    else:
                                        _131 = mem[96]
                                        s = 0
                                        s = 0
                                        s = _15
                                        idx = 0
                                        s = 0
                                        while uint8(idx) < _131:
                                            require idx < mem[96]
                                            _140 = mem[(32 * idx) + 128]
                                            require idx < mem[_9]
                                            _143 = mem[(32 * idx) + _9 + 32]
                                            _145 = mem[mem[(32 * idx) + 128]]
                                            _155 = mem[mem[(32 * idx) + 128] + 32]
                                            mem[mem[64] + 32] = mem[(32 * idx) + _9 + 63 len 1]
                                            mem[mem[64] + 64] = _145
                                            mem[mem[64] + 96] = _155
                                            signer = erecover(sha3('addAccountHolder', arg1, arg4), _143 << 248, _145, _155) 
                                            mem[mem[64]] = signer
                                            require erecover.result
                                            if stor0[address(signer)]:
                                                emit 0xc17f9005: tx.origin
                                                emit 0xc17f9005: tx.origin
                                            if not accountBalance[tx.origin][1][address(signer)].field_0:
                                                emit 0xc17f9005: tx.origin
                                                emit 0xc17f9005: tx.origin
                                            mem[0] = address(signer)
                                            mem[32] = 0
                                            stor0[address(signer)] = 1
                                            _131 = mem[96]
                                            s = signer
                                            s = _143
                                            s = _140
                                            idx = idx + 1
                                            s = s + 1
                                            continue 
                                        if uint8(None) < accountBalance[tx.origin].field_520:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: tx.origin
                                        else:
                                            if accountBalance[tx.origin].field_0:
                                                emit 0xd29821f1: tx.origin
                                            else:
                                                if not accountBalance[tx.origin][1][address(arg4)].field_0:
                                                    accountBalance[tx.origin][1][address(arg4)].field_0 = 1
                                                    accountBalance[tx.origin].field_512 = accountBalance[tx.origin].field_512 + 1 or Mask(248, 8, accountBalance[tx.origin].field_512)
                                                emit 0xbff23936: tx.origin, arg4
}

function sub_820b7faf(?) payable {
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    s = 128
    idx = 0
    while idx < arg2.length:
        _10 = mem[64]
        mem[64] = mem[64] + 64
        mem[_10 len 64] = call.data[(64 * idx) + arg2 + 36 len 64]
        mem[s] = _10
        s = s + 32
        idx = idx + 1
        continue 
    _9 = mem[64]
    mem[64] = mem[64] + (32 * arg3.length) + 32
    mem[_9] = arg3.length
    mem[_9 + 32 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[mem[64]] = 'removeAccountHolder'
    mem[mem[64] + 19] = arg1 << 224
    mem[mem[64] + 23] = address(arg4)
    mem[0] = tx.origin
    mem[32] = 2
    _15 = mem[64]
    mem[64] = mem[64] + 64
    mem[_15] = 0
    mem[_15 + 32] = 0
    if accountBalance[tx.origin].field_1024 >= arg1:
        emit 0xc17f9005: tx.origin
        emit 0xc17f9005: tx.origin
    else:
        if block.timestamp - arg1 > stor0.length:
            emit 0xc17f9005: tx.origin
            emit 0xc17f9005: tx.origin
        else:
            if block.timestamp - arg1 < stor1:
                emit 0xc17f9005: tx.origin
                emit 0xc17f9005: tx.origin
            else:
                if accountBalance[tx.origin].field_512 <= 1:
                    emit 0xc17f9005: tx.origin
                    emit 0xc17f9005: tx.origin
                else:
                    if accountBalance[tx.origin].field_0:
                        emit 0xc17f9005: tx.origin
                        emit 0xc17f9005: tx.origin
                    else:
                        if mem[96] < accountBalance[tx.origin].field_520:
                            emit 0xc17f9005: tx.origin
                            emit 0xc17f9005: tx.origin
                        else:
                            if arg3.length >= accountBalance[tx.origin].field_520:
                                if mem[96] > 255:
                                    emit 0xc17f9005: tx.origin
                                    emit 0xc17f9005: tx.origin
                                else:
                                    _134 = mem[96]
                                    s = 0
                                    s = 0
                                    s = _15
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < _134:
                                        require idx < mem[96]
                                        _140 = mem[(32 * idx) + 128]
                                        require idx < mem[_9]
                                        _146 = mem[(32 * idx) + _9 + 32]
                                        _148 = mem[mem[(32 * idx) + 128]]
                                        _153 = mem[mem[(32 * idx) + 128] + 32]
                                        mem[mem[64] + 32] = mem[(32 * idx) + _9 + 63 len 1]
                                        mem[mem[64] + 64] = _148
                                        mem[mem[64] + 96] = _153
                                        signer = erecover(sha3('removeAccountHolder', arg1, arg4), _146 << 248, _148, _153) 
                                        mem[mem[64]] = signer
                                        require erecover.result
                                        if stor0[address(signer)]:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: tx.origin
                                        if not accountBalance[tx.origin][1][address(signer)].field_0:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: tx.origin
                                        mem[0] = address(signer)
                                        mem[32] = 0
                                        stor0[address(signer)] = 1
                                        _134 = mem[96]
                                        s = signer
                                        s = _146
                                        s = _140
                                        idx = idx + 1
                                        s = s + 1
                                        continue 
                                    if uint8(None) < accountBalance[tx.origin].field_520:
                                        emit 0xc17f9005: tx.origin
                                        emit 0xc17f9005: tx.origin
                                    else:
                                        if accountBalance[tx.origin].field_0:
                                            emit 0xd29821f1: tx.origin
                                        else:
                                            if accountBalance[tx.origin][1][address(arg4)].field_0:
                                                if accountBalance[tx.origin].field_512 != accountBalance[tx.origin].field_520:
                                                    accountBalance[tx.origin][1][address(arg4)].field_0 = 0
                                                    accountBalance[tx.origin].field_512 = accountBalance[tx.origin].field_512 - 1 or Mask(248, 8, accountBalance[tx.origin].field_512)
                                            emit 0x22af6052: tx.origin, arg4
                            else:
                                if mem[96] != arg3.length:
                                    emit 0xc17f9005: tx.origin
                                    emit 0xc17f9005: tx.origin
                                else:
                                    if mem[96] > 255:
                                        emit 0xc17f9005: tx.origin
                                        emit 0xc17f9005: tx.origin
                                    else:
                                        _135 = mem[96]
                                        s = 0
                                        s = 0
                                        s = _15
                                        idx = 0
                                        s = 0
                                        while uint8(idx) < _135:
                                            require idx < mem[96]
                                            _144 = mem[(32 * idx) + 128]
                                            require idx < mem[_9]
                                            _147 = mem[(32 * idx) + _9 + 32]
                                            _149 = mem[mem[(32 * idx) + 128]]
                                            _159 = mem[mem[(32 * idx) + 128] + 32]
                                            mem[mem[64] + 32] = mem[(32 * idx) + _9 + 63 len 1]
                                            mem[mem[64] + 64] = _149
                                            mem[mem[64] + 96] = _159
                                            signer = erecover(sha3('removeAccountHolder', arg1, arg4), _147 << 248, _149, _159) 
                                            mem[mem[64]] = signer
                                            require erecover.result
                                            if stor0[address(signer)]:
                                                emit 0xc17f9005: tx.origin
                                                emit 0xc17f9005: tx.origin
                                            if not accountBalance[tx.origin][1][address(signer)].field_0:
                                                emit 0xc17f9005: tx.origin
                                                emit 0xc17f9005: tx.origin
                                            mem[0] = address(signer)
                                            mem[32] = 0
                                            stor0[address(signer)] = 1
                                            _135 = mem[96]
                                            s = signer
                                            s = _147
                                            s = _144
                                            idx = idx + 1
                                            s = s + 1
                                            continue 
                                        if uint8(None) < accountBalance[tx.origin].field_520:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: tx.origin
                                        else:
                                            if accountBalance[tx.origin].field_0:
                                                emit 0xd29821f1: tx.origin
                                            else:
                                                if accountBalance[tx.origin][1][address(arg4)].field_0:
                                                    if accountBalance[tx.origin].field_512 != accountBalance[tx.origin].field_520:
                                                        accountBalance[tx.origin][1][address(arg4)].field_0 = 0
                                                        accountBalance[tx.origin].field_512 = accountBalance[tx.origin].field_512 - 1 or Mask(248, 8, accountBalance[tx.origin].field_512)
                                                emit 0x22af6052: tx.origin, arg4
}



}
