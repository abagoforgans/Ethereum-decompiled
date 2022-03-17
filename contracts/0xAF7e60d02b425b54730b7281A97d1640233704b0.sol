contract main {


// =======================  Init code  ======================


mapping of struct stor6;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    stor6[code.data[12507 len 20]].field_768 = code.data[12527 len 32]
    stor6[address(code.data[12495 len 32])][1][address(code.data[12495 len 32])].field_0 = 1
    stor6[address(code.data[12495 len 32])].field_512 = 1
    stor6[address(code.data[12495 len 32])].field_520 = 1
    stor6[address(code.data[12495 len 32])].field_1024 = block.timestamp
    stor10 = block.timestamp
    stor11 = block.timestamp + (240 * 24 * 3600)
    return code.data[473 len 12022]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor5;
mapping of struct accountBalance;
uint256 stor10;
uint256 stor11;
uint8 stor12;
mapping of struct stor13;
array of address stor14;
uint256 stor15;
array of struct stor16;

function getAccountBalance(address arg1) payable {
    return accountBalance[address(arg1)].field_768
}

function _fallback() payable {
  stop
}

function annualInterest() payable {
    if stor11 + (240 * 24 * 3600) > block.timestamp:
        emit 0xf69a3561: msg.sender
    else:
        if block.timestamp - stor10 / 24 * 3600 <= 90:
            s = 0
            s = 0
            idx = 0
            while idx < stor14.length:
                mem[0] = address(stor14[idx])
                mem[32] = 6
                if not accountBalance[address(stor14[idx])].field_0:
                    if stor13[address(stor14[idx])].field_256 > 0:
                        accountBalance[address(stor14[idx])].field_768 += 100 * stor13[address(stor14[idx])].field_256 / 130
                        mem[96] = address(stor14[idx])
                        mem[128] = 100 * stor13[address(stor14[idx])].field_256 / 130
                        emit 0x1bd25a83: address(stor14[idx]), 100 * stor13[address(stor14[idx])].field_256 / 130
                    mem[0] = address(stor14[idx])
                    mem[32] = 13
                    stor13[address(stor14[idx])].field_0 = 0
                    stor13[address(stor14[idx])].field_256 = 0
                s = sha3(address(stor14[idx]), 6)
                s = address(stor14[idx])
                idx = idx + 1
                continue 
            stor14.length = 0
            idx = 0
            while stor14.length > idx:
                uint256(stor14[idx]) = 0
                idx = idx + 1
                continue 
        else:
            if block.timestamp - stor10 / 24 * 3600 <= 180:
                s = 0
                s = 0
                idx = 0
                while idx < stor14.length:
                    mem[0] = address(stor14[idx])
                    mem[32] = 6
                    if not accountBalance[address(stor14[idx])].field_0:
                        if stor13[address(stor14[idx])].field_256 > 0:
                            accountBalance[address(stor14[idx])].field_768 += 100 * stor13[address(stor14[idx])].field_256 / 100
                            mem[96] = address(stor14[idx])
                            mem[128] = 100 * stor13[address(stor14[idx])].field_256 / 100
                            emit 0x1bd25a83: address(stor14[idx]), 100 * stor13[address(stor14[idx])].field_256 / 100
                        mem[0] = address(stor14[idx])
                        mem[32] = 13
                        stor13[address(stor14[idx])].field_0 = 0
                        stor13[address(stor14[idx])].field_256 = 0
                    s = sha3(address(stor14[idx]), 6)
                    s = address(stor14[idx])
                    idx = idx + 1
                    continue 
                stor14.length = 0
                idx = 0
                while stor14.length > idx:
                    uint256(stor14[idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                if block.timestamp - stor10 / 24 * 3600 <= 270:
                    s = 0
                    s = 0
                    idx = 0
                    while idx < stor14.length:
                        mem[0] = address(stor14[idx])
                        mem[32] = 6
                        if not accountBalance[address(stor14[idx])].field_0:
                            if stor13[address(stor14[idx])].field_256 > 0:
                                accountBalance[address(stor14[idx])].field_768 += 100 * stor13[address(stor14[idx])].field_256 / 80
                                mem[96] = address(stor14[idx])
                                mem[128] = 100 * stor13[address(stor14[idx])].field_256 / 80
                                emit 0x1bd25a83: address(stor14[idx]), 100 * stor13[address(stor14[idx])].field_256 / 80
                            mem[0] = address(stor14[idx])
                            mem[32] = 13
                            stor13[address(stor14[idx])].field_0 = 0
                            stor13[address(stor14[idx])].field_256 = 0
                        s = sha3(address(stor14[idx]), 6)
                        s = address(stor14[idx])
                        idx = idx + 1
                        continue 
                    stor14.length = 0
                    idx = 0
                    while stor14.length > idx:
                        uint256(stor14[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    if block.timestamp - stor10 / 24 * 3600 <= 360:
                        s = 0
                        s = 0
                        idx = 0
                        while idx < stor14.length:
                            mem[0] = address(stor14[idx])
                            mem[32] = 6
                            if not accountBalance[address(stor14[idx])].field_0:
                                if stor13[address(stor14[idx])].field_256 > 0:
                                    accountBalance[address(stor14[idx])].field_768 += 100 * stor13[address(stor14[idx])].field_256 / 50
                                    mem[96] = address(stor14[idx])
                                    mem[128] = 100 * stor13[address(stor14[idx])].field_256 / 50
                                    emit 0x1bd25a83: address(stor14[idx]), 100 * stor13[address(stor14[idx])].field_256 / 50
                                mem[0] = address(stor14[idx])
                                mem[32] = 13
                                stor13[address(stor14[idx])].field_0 = 0
                                stor13[address(stor14[idx])].field_256 = 0
                            s = sha3(address(stor14[idx]), 6)
                            s = address(stor14[idx])
                            idx = idx + 1
                            continue 
                        stor14.length = 0
                        idx = 0
                        while stor14.length > idx:
                            uint256(stor14[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        if block.timestamp - stor10 / 24 * 3600 > 2190:
                            stor12 = 1
                        else:
                            s = 0
                            s = 0
                            idx = 0
                            while idx < stor14.length:
                                mem[0] = address(stor14[idx])
                                mem[32] = 6
                                if not accountBalance[address(stor14[idx])].field_0:
                                    if stor13[address(stor14[idx])].field_256 > 0:
                                        accountBalance[address(stor14[idx])].field_768 += 100 * stor13[address(stor14[idx])].field_256 / 20
                                        mem[96] = address(stor14[idx])
                                        mem[128] = 100 * stor13[address(stor14[idx])].field_256 / 20
                                        emit 0x1bd25a83: address(stor14[idx]), 100 * stor13[address(stor14[idx])].field_256 / 20
                                    mem[0] = address(stor14[idx])
                                    mem[32] = 13
                                    stor13[address(stor14[idx])].field_0 = 0
                                    stor13[address(stor14[idx])].field_256 = 0
                                s = sha3(address(stor14[idx]), 6)
                                s = address(stor14[idx])
                                idx = idx + 1
                                continue 
                            stor14.length = 0
                            idx = 0
                            while stor14.length > idx:
                                uint256(stor14[idx]) = 0
                                idx = idx + 1
                                continue 
    return 0
}

function sub_ae10440e(?) payable {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + 160
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = 'recoverAccount'
    mem[(32 * arg3.length) + (32 * arg4.length) + 174] = address(arg1)
    mem[(32 * arg3.length) + (32 * arg4.length) + 194] = arg2 << 224
    mem[(32 * arg3.length) + (32 * arg4.length) + 198] = address(arg5)
    if accountBalance[address(arg1)].field_1024 >= arg2:
        emit 0xc17f9005: tx.origin
        emit 0xc17f9005: msg.sender
    else:
        if block.timestamp - arg2 > stor4:
            emit 0xc17f9005: tx.origin
            emit 0xc17f9005: msg.sender
        else:
            if block.timestamp - arg2 < stor5:
                emit 0xc17f9005: tx.origin
                emit 0xc17f9005: msg.sender
            else:
                if accountBalance[address(arg1)].field_512 <= 1:
                    emit 0xc17f9005: tx.origin
                    emit 0xc17f9005: msg.sender
                else:
                    if accountBalance[address(arg1)].field_0:
                        emit 0xc17f9005: tx.origin
                        emit 0xc17f9005: msg.sender
                    else:
                        if arg3.length / 2 < accountBalance[address(arg1)].field_520:
                            emit 0xc17f9005: tx.origin
                            emit 0xc17f9005: msg.sender
                        else:
                            if arg4.length >= accountBalance[address(arg1)].field_520:
                                if arg3.length > 512:
                                    emit 0xc17f9005: tx.origin
                                    emit 0xc17f9005: msg.sender
                                else:
                                    s = 0
                                    s = 0
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < arg3.length:
                                        require idx < mem[(32 * arg3.length) + 128]
                                        _123 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        require idx < mem[96]
                                        _129 = mem[(32 * idx) + 128]
                                        require idx + 1 < mem[96]
                                        _133 = mem[(32 * idx + 1) + 128]
                                        mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg3.length) + 191 len 1]
                                        mem[mem[64] + 64] = _129
                                        mem[mem[64] + 96] = _133
                                        signer = erecover(sha3('recoverAccount', arg1, arg2, arg5), _123 << 248, _129, _133) 
                                        mem[mem[64]] = signer
                                        require erecover.result
                                        if stor0[address(signer)]:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: msg.sender
                                        if not accountBalance[address(arg1)][1][address(signer)].field_0:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: msg.sender
                                        mem[0] = address(signer)
                                        mem[32] = 0
                                        stor0[address(signer)] = 1
                                        s = signer
                                        s = _123
                                        idx = idx + 2
                                        s = s + 1
                                        continue 
                                    if Mask(8, 1, None + 1) >> 1 < accountBalance[address(arg1)].field_520:
                                        emit 0xc17f9005: tx.origin
                                        emit 0xc17f9005: msg.sender
                                    else:
                                        if accountBalance[address(arg1)].field_0:
                                            emit 0xd29821f1: arg1
                                        else:
                                            accountBalance[address(arg5)].field_768 += accountBalance[address(arg1)].field_768
                                            accountBalance[address(arg1)].field_768 = 0
                                            emit 0x824f1227: address(arg1), address(arg5), accountBalance[address(arg1)].field_768
                            else:
                                if arg3.length / 2 != arg4.length:
                                    emit 0xc17f9005: tx.origin
                                    emit 0xc17f9005: msg.sender
                                else:
                                    if arg3.length > 512:
                                        emit 0xc17f9005: tx.origin
                                        emit 0xc17f9005: msg.sender
                                    else:
                                        s = 0
                                        s = 0
                                        idx = 0
                                        s = 0
                                        while uint8(idx) < arg3.length:
                                            require idx < mem[(32 * arg3.length) + 128]
                                            _127 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                            require idx < mem[96]
                                            _131 = mem[(32 * idx) + 128]
                                            require idx + 1 < mem[96]
                                            _136 = mem[(32 * idx + 1) + 128]
                                            mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg3.length) + 191 len 1]
                                            mem[mem[64] + 64] = _131
                                            mem[mem[64] + 96] = _136
                                            signer = erecover(sha3('recoverAccount', arg1, arg2, arg5), _127 << 248, _131, _136) 
                                            mem[mem[64]] = signer
                                            require erecover.result
                                            if stor0[address(signer)]:
                                                emit 0xc17f9005: tx.origin
                                                emit 0xc17f9005: msg.sender
                                            if not accountBalance[address(arg1)][1][address(signer)].field_0:
                                                emit 0xc17f9005: tx.origin
                                                emit 0xc17f9005: msg.sender
                                            mem[0] = address(signer)
                                            mem[32] = 0
                                            stor0[address(signer)] = 1
                                            s = signer
                                            s = _127
                                            idx = idx + 2
                                            s = s + 1
                                            continue 
                                        if Mask(8, 1, None + 1) >> 1 < accountBalance[address(arg1)].field_520:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: msg.sender
                                        else:
                                            if accountBalance[address(arg1)].field_0:
                                                emit 0xd29821f1: arg1
                                            else:
                                                accountBalance[address(arg5)].field_768 += accountBalance[address(arg1)].field_768
                                                accountBalance[address(arg1)].field_768 = 0
                                                emit 0x824f1227: address(arg1), address(arg5), accountBalance[address(arg1)].field_768
}

function sub_78239fbd(?) payable {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + 160
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = 'changeAccountsignaturesRequired'
    mem[(32 * arg3.length) + (32 * arg4.length) + 191] = address(arg1)
    mem[(32 * arg3.length) + (32 * arg4.length) + 211] = arg2 << 224
    mem[(32 * arg3.length) + (32 * arg4.length) + 215] = arg5 << 248
    if accountBalance[address(arg1)].field_1024 >= arg2:
        emit 0xc17f9005: tx.origin
        emit 0xc17f9005: msg.sender
    else:
        if block.timestamp - arg2 > stor4:
            emit 0xc17f9005: tx.origin
            emit 0xc17f9005: msg.sender
        else:
            if block.timestamp - arg2 < stor5:
                emit 0xc17f9005: tx.origin
                emit 0xc17f9005: msg.sender
            else:
                if accountBalance[address(arg1)].field_512 <= 1:
                    emit 0xc17f9005: tx.origin
                    emit 0xc17f9005: msg.sender
                else:
                    if accountBalance[address(arg1)].field_0:
                        emit 0xc17f9005: tx.origin
                        emit 0xc17f9005: msg.sender
                    else:
                        if arg3.length / 2 < accountBalance[address(arg1)].field_520:
                            emit 0xc17f9005: tx.origin
                            emit 0xc17f9005: msg.sender
                        else:
                            if arg4.length >= accountBalance[address(arg1)].field_520:
                                if arg3.length > 512:
                                    emit 0xc17f9005: tx.origin
                                    emit 0xc17f9005: msg.sender
                                else:
                                    s = 0
                                    s = 0
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < arg3.length:
                                        require idx < mem[(32 * arg3.length) + 128]
                                        _127 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        require idx < mem[96]
                                        _133 = mem[(32 * idx) + 128]
                                        require idx + 1 < mem[96]
                                        _137 = mem[(32 * idx + 1) + 128]
                                        mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg3.length) + 191 len 1]
                                        mem[mem[64] + 64] = _133
                                        mem[mem[64] + 96] = _137
                                        signer = erecover(sha3('changeAccountsignaturesRequired', arg1, arg2, arg5), _127 << 248, _133, _137) 
                                        mem[mem[64]] = signer
                                        require erecover.result
                                        if stor0[address(signer)]:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: msg.sender
                                        if not accountBalance[address(arg1)][1][address(signer)].field_0:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: msg.sender
                                        mem[0] = address(signer)
                                        mem[32] = 0
                                        stor0[address(signer)] = 1
                                        s = signer
                                        s = _127
                                        idx = idx + 2
                                        s = s + 1
                                        continue 
                                    if Mask(8, 1, None + 1) >> 1 < accountBalance[address(arg1)].field_520:
                                        emit 0xc17f9005: tx.origin
                                        emit 0xc17f9005: msg.sender
                                    else:
                                        if accountBalance[address(arg1)].field_0:
                                            emit 0xd29821f1: arg1
                                        else:
                                            if accountBalance[address(arg1)].field_512 >= arg5:
                                                if arg5:
                                                    accountBalance[address(arg1)].field_520 = Mask(248, 0, arg5)
                                            emit 0x6e4df7e2: address(arg1), arg5
                            else:
                                if arg3.length / 2 != arg4.length:
                                    emit 0xc17f9005: tx.origin
                                    emit 0xc17f9005: msg.sender
                                else:
                                    if arg3.length > 512:
                                        emit 0xc17f9005: tx.origin
                                        emit 0xc17f9005: msg.sender
                                    else:
                                        s = 0
                                        s = 0
                                        idx = 0
                                        s = 0
                                        while uint8(idx) < arg3.length:
                                            require idx < mem[(32 * arg3.length) + 128]
                                            _131 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                            require idx < mem[96]
                                            _135 = mem[(32 * idx) + 128]
                                            require idx + 1 < mem[96]
                                            _140 = mem[(32 * idx + 1) + 128]
                                            mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg3.length) + 191 len 1]
                                            mem[mem[64] + 64] = _135
                                            mem[mem[64] + 96] = _140
                                            signer = erecover(sha3('changeAccountsignaturesRequired', arg1, arg2, arg5), _131 << 248, _135, _140) 
                                            mem[mem[64]] = signer
                                            require erecover.result
                                            if stor0[address(signer)]:
                                                emit 0xc17f9005: tx.origin
                                                emit 0xc17f9005: msg.sender
                                            if not accountBalance[address(arg1)][1][address(signer)].field_0:
                                                emit 0xc17f9005: tx.origin
                                                emit 0xc17f9005: msg.sender
                                            mem[0] = address(signer)
                                            mem[32] = 0
                                            stor0[address(signer)] = 1
                                            s = signer
                                            s = _131
                                            idx = idx + 2
                                            s = s + 1
                                            continue 
                                        if Mask(8, 1, None + 1) >> 1 < accountBalance[address(arg1)].field_520:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: msg.sender
                                        else:
                                            if accountBalance[address(arg1)].field_0:
                                                emit 0xd29821f1: arg1
                                            else:
                                                if accountBalance[address(arg1)].field_512 >= arg5:
                                                    if arg5:
                                                        accountBalance[address(arg1)].field_520 = Mask(248, 0, arg5)
                                                emit 0x6e4df7e2: address(arg1), arg5
}

function sub_05fba8b7(?) payable {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + 160
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = 'addAccountHolder'
    mem[(32 * arg3.length) + (32 * arg4.length) + 176] = address(arg1)
    mem[(32 * arg3.length) + (32 * arg4.length) + 196] = arg2 << 224
    mem[(32 * arg3.length) + (32 * arg4.length) + 200] = address(arg5)
    if accountBalance[address(arg1)].field_1024 >= arg2:
        emit 0xc17f9005: tx.origin
        emit 0xc17f9005: msg.sender
    else:
        if block.timestamp - arg2 > stor4:
            emit 0xc17f9005: tx.origin
            emit 0xc17f9005: msg.sender
        else:
            if block.timestamp - arg2 < stor5:
                emit 0xc17f9005: tx.origin
                emit 0xc17f9005: msg.sender
            else:
                if accountBalance[address(arg1)].field_512 <= 1:
                    emit 0xc17f9005: tx.origin
                    emit 0xc17f9005: msg.sender
                else:
                    if accountBalance[address(arg1)].field_0:
                        emit 0xc17f9005: tx.origin
                        emit 0xc17f9005: msg.sender
                    else:
                        if arg3.length / 2 < accountBalance[address(arg1)].field_520:
                            emit 0xc17f9005: tx.origin
                            emit 0xc17f9005: msg.sender
                        else:
                            if arg4.length >= accountBalance[address(arg1)].field_520:
                                if arg3.length > 512:
                                    emit 0xc17f9005: tx.origin
                                    emit 0xc17f9005: msg.sender
                                else:
                                    s = 0
                                    s = 0
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < arg3.length:
                                        require idx < mem[(32 * arg3.length) + 128]
                                        _127 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        require idx < mem[96]
                                        _133 = mem[(32 * idx) + 128]
                                        require idx + 1 < mem[96]
                                        _137 = mem[(32 * idx + 1) + 128]
                                        mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg3.length) + 191 len 1]
                                        mem[mem[64] + 64] = _133
                                        mem[mem[64] + 96] = _137
                                        signer = erecover(sha3('addAccountHolder', arg1, arg2, arg5), _127 << 248, _133, _137) 
                                        mem[mem[64]] = signer
                                        require erecover.result
                                        if stor0[address(signer)]:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: msg.sender
                                        if not accountBalance[address(arg1)][1][address(signer)].field_0:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: msg.sender
                                        mem[0] = address(signer)
                                        mem[32] = 0
                                        stor0[address(signer)] = 1
                                        s = signer
                                        s = _127
                                        idx = idx + 2
                                        s = s + 1
                                        continue 
                                    if Mask(8, 1, None + 1) >> 1 < accountBalance[address(arg1)].field_520:
                                        emit 0xc17f9005: tx.origin
                                        emit 0xc17f9005: msg.sender
                                    else:
                                        if accountBalance[address(arg1)].field_0:
                                            emit 0xd29821f1: arg1
                                        else:
                                            if not accountBalance[address(arg1)][1][address(arg5)].field_0:
                                                accountBalance[address(arg1)][1][address(arg5)].field_0 = 1
                                                accountBalance[address(arg1)].field_512 = accountBalance[address(arg1)].field_512 + 1 or Mask(248, 8, accountBalance[address(arg1)].field_512)
                                            emit 0xbff23936: address(arg1), arg5
                            else:
                                if arg3.length / 2 != arg4.length:
                                    emit 0xc17f9005: tx.origin
                                    emit 0xc17f9005: msg.sender
                                else:
                                    if arg3.length > 512:
                                        emit 0xc17f9005: tx.origin
                                        emit 0xc17f9005: msg.sender
                                    else:
                                        s = 0
                                        s = 0
                                        idx = 0
                                        s = 0
                                        while uint8(idx) < arg3.length:
                                            require idx < mem[(32 * arg3.length) + 128]
                                            _131 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                            require idx < mem[96]
                                            _135 = mem[(32 * idx) + 128]
                                            require idx + 1 < mem[96]
                                            _140 = mem[(32 * idx + 1) + 128]
                                            mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg3.length) + 191 len 1]
                                            mem[mem[64] + 64] = _135
                                            mem[mem[64] + 96] = _140
                                            signer = erecover(sha3('addAccountHolder', arg1, arg2, arg5), _131 << 248, _135, _140) 
                                            mem[mem[64]] = signer
                                            require erecover.result
                                            if stor0[address(signer)]:
                                                emit 0xc17f9005: tx.origin
                                                emit 0xc17f9005: msg.sender
                                            if not accountBalance[address(arg1)][1][address(signer)].field_0:
                                                emit 0xc17f9005: tx.origin
                                                emit 0xc17f9005: msg.sender
                                            mem[0] = address(signer)
                                            mem[32] = 0
                                            stor0[address(signer)] = 1
                                            s = signer
                                            s = _131
                                            idx = idx + 2
                                            s = s + 1
                                            continue 
                                        if Mask(8, 1, None + 1) >> 1 < accountBalance[address(arg1)].field_520:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: msg.sender
                                        else:
                                            if accountBalance[address(arg1)].field_0:
                                                emit 0xd29821f1: arg1
                                            else:
                                                if not accountBalance[address(arg1)][1][address(arg5)].field_0:
                                                    accountBalance[address(arg1)][1][address(arg5)].field_0 = 1
                                                    accountBalance[address(arg1)].field_512 = accountBalance[address(arg1)].field_512 + 1 or Mask(248, 8, accountBalance[address(arg1)].field_512)
                                                emit 0xbff23936: address(arg1), arg5
}

function sub_778c634e(?) payable {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + 160
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = 'removeAccountHolder'
    mem[(32 * arg3.length) + (32 * arg4.length) + 179] = address(arg1)
    mem[(32 * arg3.length) + (32 * arg4.length) + 199] = arg2 << 224
    mem[(32 * arg3.length) + (32 * arg4.length) + 203] = address(arg5)
    if accountBalance[address(arg1)].field_1024 >= arg2:
        emit 0xc17f9005: tx.origin
        emit 0xc17f9005: msg.sender
    else:
        if block.timestamp - arg2 > stor4:
            emit 0xc17f9005: tx.origin
            emit 0xc17f9005: msg.sender
        else:
            if block.timestamp - arg2 < stor5:
                emit 0xc17f9005: tx.origin
                emit 0xc17f9005: msg.sender
            else:
                if accountBalance[address(arg1)].field_512 <= 1:
                    emit 0xc17f9005: tx.origin
                    emit 0xc17f9005: msg.sender
                else:
                    if accountBalance[address(arg1)].field_0:
                        emit 0xc17f9005: tx.origin
                        emit 0xc17f9005: msg.sender
                    else:
                        if arg3.length / 2 < accountBalance[address(arg1)].field_520:
                            emit 0xc17f9005: tx.origin
                            emit 0xc17f9005: msg.sender
                        else:
                            if arg4.length >= accountBalance[address(arg1)].field_520:
                                if arg3.length > 512:
                                    emit 0xc17f9005: tx.origin
                                    emit 0xc17f9005: msg.sender
                                else:
                                    s = 0
                                    s = 0
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < arg3.length:
                                        require idx < mem[(32 * arg3.length) + 128]
                                        _131 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        require idx < mem[96]
                                        _137 = mem[(32 * idx) + 128]
                                        require idx + 1 < mem[96]
                                        _141 = mem[(32 * idx + 1) + 128]
                                        mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg3.length) + 191 len 1]
                                        mem[mem[64] + 64] = _137
                                        mem[mem[64] + 96] = _141
                                        signer = erecover(sha3('removeAccountHolder', arg1, arg2, arg5), _131 << 248, _137, _141) 
                                        mem[mem[64]] = signer
                                        require erecover.result
                                        if stor0[address(signer)]:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: msg.sender
                                        if not accountBalance[address(arg1)][1][address(signer)].field_0:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: msg.sender
                                        mem[0] = address(signer)
                                        mem[32] = 0
                                        stor0[address(signer)] = 1
                                        s = signer
                                        s = _131
                                        idx = idx + 2
                                        s = s + 1
                                        continue 
                                    if Mask(8, 1, None + 1) >> 1 < accountBalance[address(arg1)].field_520:
                                        emit 0xc17f9005: tx.origin
                                        emit 0xc17f9005: msg.sender
                                    else:
                                        if accountBalance[address(arg1)].field_0:
                                            emit 0xd29821f1: arg1
                                        else:
                                            if accountBalance[address(arg1)][1][address(arg5)].field_0:
                                                if accountBalance[address(arg1)].field_512 != accountBalance[address(arg1)].field_520:
                                                    accountBalance[address(arg1)][1][address(arg5)].field_0 = 0
                                                    accountBalance[address(arg1)].field_512 = accountBalance[address(arg1)].field_512 - 1 or Mask(248, 8, accountBalance[address(arg1)].field_512)
                                            emit 0x22af6052: address(arg1), arg5
                            else:
                                if arg3.length / 2 != arg4.length:
                                    emit 0xc17f9005: tx.origin
                                    emit 0xc17f9005: msg.sender
                                else:
                                    if arg3.length > 512:
                                        emit 0xc17f9005: tx.origin
                                        emit 0xc17f9005: msg.sender
                                    else:
                                        s = 0
                                        s = 0
                                        idx = 0
                                        s = 0
                                        while uint8(idx) < arg3.length:
                                            require idx < mem[(32 * arg3.length) + 128]
                                            _135 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                            require idx < mem[96]
                                            _139 = mem[(32 * idx) + 128]
                                            require idx + 1 < mem[96]
                                            _144 = mem[(32 * idx + 1) + 128]
                                            mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg3.length) + 191 len 1]
                                            mem[mem[64] + 64] = _139
                                            mem[mem[64] + 96] = _144
                                            signer = erecover(sha3('removeAccountHolder', arg1, arg2, arg5), _135 << 248, _139, _144) 
                                            mem[mem[64]] = signer
                                            require erecover.result
                                            if stor0[address(signer)]:
                                                emit 0xc17f9005: tx.origin
                                                emit 0xc17f9005: msg.sender
                                            if not accountBalance[address(arg1)][1][address(signer)].field_0:
                                                emit 0xc17f9005: tx.origin
                                                emit 0xc17f9005: msg.sender
                                            mem[0] = address(signer)
                                            mem[32] = 0
                                            stor0[address(signer)] = 1
                                            s = signer
                                            s = _135
                                            idx = idx + 2
                                            s = s + 1
                                            continue 
                                        if Mask(8, 1, None + 1) >> 1 < accountBalance[address(arg1)].field_520:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: msg.sender
                                        else:
                                            if accountBalance[address(arg1)].field_0:
                                                emit 0xd29821f1: arg1
                                            else:
                                                if accountBalance[address(arg1)][1][address(arg5)].field_0:
                                                    if accountBalance[address(arg1)].field_512 != accountBalance[address(arg1)].field_520:
                                                        accountBalance[address(arg1)][1][address(arg5)].field_0 = 0
                                                        accountBalance[address(arg1)].field_512 = accountBalance[address(arg1)].field_512 - 1 or Mask(248, 8, accountBalance[address(arg1)].field_512)
                                                emit 0x22af6052: address(arg1), arg5
}

function transfer(address arg1, uint256 arg2) payable {
    if accountBalance[tx.origin].field_0:
        emit 0xd29821f1: tx.origin
        return 0
    if accountBalance[address(arg1)].field_0:
        emit 0xd29821f1: arg1
        return 0
    if not accountBalance[tx.origin].field_512:
        accountBalance[tx.origin].field_512 = 1
        accountBalance[tx.origin][1][tx.origin].field_0 = 1
        return 0
    if accountBalance[tx.origin].field_512 != 1:
        emit 0xcb6c1445: msg.sender
        return 0
    if not accountBalance[tx.origin][1][tx.origin].field_0:
        emit 0xcb6c1445: msg.sender
        return 0
    mem[96] = 0
    mem[128 len 288] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    if accountBalance[tx.origin].field_768 < arg2:
        return 0
    accountBalance[tx.origin].field_768 -= arg2
    if arg2 / 100 * stor1 < stor0.length:
        accountBalance[address(arg1)].field_768 = accountBalance[address(arg1)].field_768 + arg2 - stor0.length
        mem[576] = arg1
        mem[608] = block.timestamp
        mem[640] = arg2 - stor0.length
        emit Transaction(tx.origin, address(arg1), block.timestamp, arg2 - stor0.length);
        accountBalance[stor3].field_768 += stor0.length
        mem[544] = stor0.length
        emit 0xcd87d661: stor0.length
        stor15++
        if stor15 == 100001:
            stor15 = 0
            idx = 0
            while uint8(idx) < stor16.length:
                require idx < stor16.length
                mem[0] = stor16[idx].field_0
                mem[32] = 6
                if not accountBalance[stor16[idx].field_0].field_0:
                    require idx < stor16.length
                    require idx < stor16.length
                    if stor16[idx].field_512 > 0:
                        s = 0
                        while uint8(s) <= uint8(idx):
                            require s < 10
                            mem[(32 * s) + 96] = 0
                            s = s + 1
                            continue 
                        require idx < stor16.length
                        mem[0] = 16
                        require idx < 10
                        mem[(32 * idx) + 96] = stor16[idx].field_0
                    else:
                        mem[0] = 16
                        if not stor16[idx].field_512:
                            require idx < stor16.length
                            mem[0] = 16
                            require idx < 10
                            mem[(32 * idx) + 96] = stor16[idx].field_0
                idx = idx + 1
                continue 
            idx = 0
            while uint8(idx) < 10:
                require idx < 10
                mem[0] = mem[(32 * idx) + 108 len 20]
                mem[32] = 6
                accountBalance[mem[(32 * idx) + 108 len 20]].field_768 += 20
                mem[544] = mem[(32 * idx) + 108 len 20]
                mem[576] = 20
                emit 0xb71381b2: mem[544], 20
                idx = idx + 1
                continue 
        if stor15 <= 99990:
            if not stor12:
                if stor13[tx.origin].field_0:
                    if accountBalance[tx.origin].field_768 < stor13[tx.origin].field_256:
                        stor13[tx.origin].field_256 = accountBalance[tx.origin].field_768
                else:
                    stor14.length++
                    if not stor14.length <= stor14.length + 1:
                        idx = stor14.length + 1
                        while stor14.length > idx:
                            uint256(stor14[idx]) = 0
                            idx = idx + 1
                            continue 
                    uint256(stor14[stor14.length]) = tx.origin or Mask(96, 160, uint256(stor14[stor14.length]))
                    stor13[tx.origin].field_0 = 1
                    stor13[tx.origin].field_256 = accountBalance[tx.origin].field_768
        else:
            if arg2 <= 10:
                if not stor12:
                    if stor13[tx.origin].field_0:
                        if accountBalance[tx.origin].field_768 < stor13[tx.origin].field_256:
                            stor13[tx.origin].field_256 = accountBalance[tx.origin].field_768
                    else:
                        stor14.length++
                        if not stor14.length <= stor14.length + 1:
                            idx = stor14.length + 1
                            while stor14.length > idx:
                                uint256(stor14[idx]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor14[stor14.length]) = tx.origin or Mask(96, 160, uint256(stor14[stor14.length]))
                        stor13[tx.origin].field_0 = 1
                        stor13[tx.origin].field_256 = accountBalance[tx.origin].field_768
            else:
                stor16.length++
                if not stor16.length <= stor16.length + 1:
                    idx = 4 * stor16.length + 1
                    while 4 * stor16.length > idx:
                        stor16[idx].field_0 = 0
                        stor16[idx].field_256 = 0
                        stor16[idx].field_512 = 0
                        stor16[idx].field_768 = 0
                        idx = idx + 1
                        continue 
                stor16[stor16.length].field_0 = tx.origin
                stor16[stor16.length].field_256 = arg1
                stor16[stor16.length].field_512 = arg2
                stor16[stor16.length].field_768 = block.timestamp
                if not stor12:
                    if stor13[tx.origin].field_0:
                        if accountBalance[tx.origin].field_768 < stor13[tx.origin].field_256:
                            stor13[tx.origin].field_256 = accountBalance[tx.origin].field_768
                    else:
                        stor14.length++
                        if not stor14.length <= stor14.length + 1:
                            idx = stor14.length + 1
                            while stor14.length > idx:
                                uint256(stor14[idx]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor14[stor14.length]) = tx.origin or Mask(96, 160, uint256(stor14[stor14.length]))
                        stor13[tx.origin].field_0 = 1
                        stor13[tx.origin].field_256 = accountBalance[tx.origin].field_768
    else:
        if arg2 / 100 * stor1 <= stor2:
            accountBalance[address(arg1)].field_768 = accountBalance[address(arg1)].field_768 + arg2 - (arg2 / 100 * stor1)
            mem[576] = arg1
            mem[608] = block.timestamp
            mem[640] = arg2 - (arg2 / 100 * stor1)
            emit Transaction(tx.origin, address(arg1), block.timestamp, arg2 - (arg2 / 100 * stor1));
            accountBalance[stor3].field_768 += arg2 / 100 * stor1
            mem[544] = arg2 / 100 * stor1
            emit 0xcd87d661: (arg2 / 100 * stor1)
        else:
            accountBalance[address(arg1)].field_768 = accountBalance[address(arg1)].field_768 + arg2 - stor2
            mem[576] = arg1
            mem[608] = block.timestamp
            mem[640] = arg2 - stor2
            emit Transaction(tx.origin, address(arg1), block.timestamp, arg2 - stor2);
            accountBalance[stor3].field_768 += stor2
            mem[544] = stor2
            emit 0xcd87d661: stor2
        stor15++
        if stor15 == 100001:
            stor15 = 0
            idx = 0
            while uint8(idx) < stor16.length:
                require idx < stor16.length
                mem[0] = stor16[idx].field_0
                mem[32] = 6
                if not accountBalance[stor16[idx].field_0].field_0:
                    require idx < stor16.length
                    require idx < stor16.length
                    if stor16[idx].field_512 > 0:
                        s = 0
                        while uint8(s) <= uint8(idx):
                            require s < 10
                            mem[(32 * s) + 96] = 0
                            s = s + 1
                            continue 
                        require idx < stor16.length
                        mem[0] = 16
                        require idx < 10
                        mem[(32 * idx) + 96] = stor16[idx].field_0
                    else:
                        mem[0] = 16
                        if not stor16[idx].field_512:
                            require idx < stor16.length
                            mem[0] = 16
                            require idx < 10
                            mem[(32 * idx) + 96] = stor16[idx].field_0
                idx = idx + 1
                continue 
            idx = 0
            while uint8(idx) < 10:
                require idx < 10
                mem[0] = mem[(32 * idx) + 108 len 20]
                mem[32] = 6
                accountBalance[mem[(32 * idx) + 108 len 20]].field_768 += 20
                mem[544] = mem[(32 * idx) + 108 len 20]
                mem[576] = 20
                emit 0xb71381b2: mem[544], 20
                idx = idx + 1
                continue 
        if stor15 <= 99990:
            if not stor12:
                if stor13[tx.origin].field_0:
                    if accountBalance[tx.origin].field_768 < stor13[tx.origin].field_256:
                        stor13[tx.origin].field_256 = accountBalance[tx.origin].field_768
                else:
                    stor14.length++
                    if not stor14.length <= stor14.length + 1:
                        idx = stor14.length + 1
                        while stor14.length > idx:
                            uint256(stor14[idx]) = 0
                            idx = idx + 1
                            continue 
                    uint256(stor14[stor14.length]) = tx.origin or Mask(96, 160, uint256(stor14[stor14.length]))
                    stor13[tx.origin].field_0 = 1
                    stor13[tx.origin].field_256 = accountBalance[tx.origin].field_768
        else:
            if arg2 <= 10:
                if not stor12:
                    if stor13[tx.origin].field_0:
                        if accountBalance[tx.origin].field_768 < stor13[tx.origin].field_256:
                            stor13[tx.origin].field_256 = accountBalance[tx.origin].field_768
                    else:
                        stor14.length++
                        if not stor14.length <= stor14.length + 1:
                            idx = stor14.length + 1
                            while stor14.length > idx:
                                uint256(stor14[idx]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor14[stor14.length]) = tx.origin or Mask(96, 160, uint256(stor14[stor14.length]))
                        stor13[tx.origin].field_0 = 1
                        stor13[tx.origin].field_256 = accountBalance[tx.origin].field_768
            else:
                stor16.length++
                if not stor16.length <= stor16.length + 1:
                    idx = 4 * stor16.length + 1
                    while 4 * stor16.length > idx:
                        stor16[idx].field_0 = 0
                        stor16[idx].field_256 = 0
                        stor16[idx].field_512 = 0
                        stor16[idx].field_768 = 0
                        idx = idx + 1
                        continue 
                stor16[stor16.length].field_0 = tx.origin
                stor16[stor16.length].field_256 = arg1
                stor16[stor16.length].field_512 = arg2
                stor16[stor16.length].field_768 = block.timestamp
                if not stor12:
                    if stor13[tx.origin].field_0:
                        if accountBalance[tx.origin].field_768 < stor13[tx.origin].field_256:
                            stor13[tx.origin].field_256 = accountBalance[tx.origin].field_768
                    else:
                        stor14.length++
                        if not stor14.length <= stor14.length + 1:
                            idx = stor14.length + 1
                            while stor14.length > idx:
                                uint256(stor14[idx]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor14[stor14.length]) = tx.origin or Mask(96, 160, uint256(stor14[stor14.length]))
                        stor13[tx.origin].field_0 = 1
                        stor13[tx.origin].field_256 = accountBalance[tx.origin].field_768
    return 1
}

function sub_3ed48679(?) payable {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + 160
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = 'transfer'
    mem[(32 * arg3.length) + (32 * arg4.length) + 168] = address(arg1)
    mem[(32 * arg3.length) + (32 * arg4.length) + 188] = arg2 << 224
    mem[(32 * arg3.length) + (32 * arg4.length) + 192] = address(arg5)
    mem[(32 * arg3.length) + (32 * arg4.length) + 212] = arg6
    if accountBalance[address(arg1)].field_1024 >= arg2:
        emit 0xc17f9005: tx.origin
        emit 0xc17f9005: msg.sender
        return 0
    if block.timestamp - arg2 > stor4:
        emit 0xc17f9005: tx.origin
        emit 0xc17f9005: msg.sender
        return 0
    if block.timestamp - arg2 < stor5:
        emit 0xc17f9005: tx.origin
        emit 0xc17f9005: msg.sender
        return 0
    if accountBalance[address(arg1)].field_512 <= 1:
        emit 0xc17f9005: tx.origin
        emit 0xc17f9005: msg.sender
        return 0
    if accountBalance[address(arg1)].field_0:
        emit 0xc17f9005: tx.origin
        emit 0xc17f9005: msg.sender
        return 0
    if arg3.length / 2 < accountBalance[address(arg1)].field_520:
        emit 0xc17f9005: tx.origin
        emit 0xc17f9005: msg.sender
        return 0
    if arg4.length >= accountBalance[address(arg1)].field_520:
        if arg3.length > 512:
            emit 0xc17f9005: tx.origin
            emit 0xc17f9005: msg.sender
            return 0
        s = 0
        s = 0
        idx = 0
        s = 0
        while uint8(idx) < arg3.length:
            require idx < mem[(32 * arg3.length) + 128]
            _159 = mem[(32 * idx) + (32 * arg3.length) + 160]
            require idx < mem[96]
            _165 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _169 = mem[(32 * idx + 1) + 128]
            mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg3.length) + 191 len 1]
            mem[mem[64] + 64] = _165
            mem[mem[64] + 96] = _169
            signer = erecover(sha3('transfer', arg1, arg2, arg5, arg6), _159 << 248, _165, _169) 
            mem[mem[64]] = signer
            require erecover.result
            if stor0[address(signer)]:
                emit 0xc17f9005: tx.origin
                emit 0xc17f9005: msg.sender
                return 0
            if not accountBalance[address(arg1)][1][address(signer)].field_0:
                emit 0xc17f9005: tx.origin
                emit 0xc17f9005: msg.sender
                return 0
            mem[0] = address(signer)
            mem[32] = 0
            stor0[address(signer)] = 1
            s = signer
            s = _159
            idx = idx + 2
            s = s + 1
            continue 
        if Mask(8, 1, None + 1) >> 1 < accountBalance[address(arg1)].field_520:
            emit 0xc17f9005: tx.origin
            emit 0xc17f9005: msg.sender
            return 0
        if accountBalance[address(arg1)].field_0:
            emit 0xd29821f1: arg1
            return 0
        mem[0] = arg5
        mem[32] = 6
        if accountBalance[address(arg5)].field_0:
            emit 0xd29821f1: arg1
            return 0
        _213 = mem[64]
        mem[64] = mem[64] + 320
        mem[_213] = 0
        mem[_213 + 32 len 288] = 0
        _239 = mem[64]
        mem[64] = mem[64] + 128
        mem[_239] = 0
        mem[_239 + 32] = 0
        mem[_239 + 64] = 0
        mem[_239 + 96] = 0
        if accountBalance[address(arg1)].field_768 < arg6:
            return 0
        accountBalance[address(arg1)].field_768 -= arg6
        mem[32] = 6
        if arg6 / 100 * stor1 < stor0.length:
            accountBalance[address(arg5)].field_768 = accountBalance[address(arg5)].field_768 + arg6 - stor0.length
            mem[mem[64] + 32] = arg5
            mem[mem[64] + 64] = block.timestamp
            mem[mem[64] + 96] = arg6 - stor0.length
            emit Transaction(tx.origin, address(arg5), block.timestamp, arg6 - stor0.length);
            mem[0] = stor3
            mem[32] = 6
            accountBalance[stor3].field_768 += stor0.length
            mem[mem[64]] = stor0.length
            emit 0xcd87d661: stor0.length
            stor15++
            if stor15 == 100001:
                stor15 = 0
                idx = 0
                while uint8(idx) < stor16.length:
                    require idx < stor16.length
                    mem[0] = stor16[idx].field_0
                    mem[32] = 6
                    if not accountBalance[stor16[idx].field_0].field_0:
                        require idx < stor16.length
                        require idx < stor16.length
                        if stor16[idx].field_512 > 0:
                            s = 0
                            while uint8(s) <= uint8(idx):
                                require s < 10
                                mem[(32 * s) + _213] = 0
                                s = s + 1
                                continue 
                            require idx < stor16.length
                            mem[0] = 16
                            require idx < 10
                            mem[(32 * idx) + _213] = stor16[idx].field_0
                        else:
                            mem[0] = 16
                            if not stor16[idx].field_512:
                                require idx < stor16.length
                                mem[0] = 16
                                require idx < 10
                                mem[(32 * idx) + _213] = stor16[idx].field_0
                    idx = idx + 1
                    continue 
                idx = 0
                while uint8(idx) < 10:
                    require idx < 10
                    mem[0] = mem[(32 * idx) + _213 + 12 len 20]
                    mem[32] = 6
                    accountBalance[mem[0]].field_768 += 20
                    mem[mem[64]] = mem[(32 * idx) + _213 + 12 len 20]
                    mem[mem[64] + 32] = 20
                    emit 0xb71381b2: mem[mem[64]], 20
                    idx = idx + 1
                    continue 
            if stor15 <= 99990:
                if not stor12:
                    if stor13[address(arg1)].field_0:
                        if accountBalance[address(arg1)].field_768 < stor13[address(arg1)].field_256:
                            stor13[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
                    else:
                        stor14.length++
                        if not stor14.length <= stor14.length + 1:
                            idx = stor14.length + 1
                            while stor14.length > idx:
                                uint256(stor14[idx]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor14[stor14.length]) = arg1 or Mask(96, 160, uint256(stor14[stor14.length]))
                        stor13[address(arg1)].field_0 = 1
                        stor13[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
            else:
                if arg6 <= 10:
                    if not stor12:
                        if stor13[address(arg1)].field_0:
                            if accountBalance[address(arg1)].field_768 < stor13[address(arg1)].field_256:
                                stor13[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
                        else:
                            stor14.length++
                            if not stor14.length <= stor14.length + 1:
                                idx = stor14.length + 1
                                while stor14.length > idx:
                                    uint256(stor14[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor14[stor14.length]) = arg1 or Mask(96, 160, uint256(stor14[stor14.length]))
                            stor13[address(arg1)].field_0 = 1
                            stor13[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
                else:
                    stor16.length++
                    if not stor16.length <= stor16.length + 1:
                        idx = 4 * stor16.length + 1
                        while 4 * stor16.length > idx:
                            stor16[idx].field_0 = 0
                            stor16[idx].field_256 = 0
                            stor16[idx].field_512 = 0
                            stor16[idx].field_768 = 0
                            idx = idx + 1
                            continue 
                    stor16[stor16.length].field_0 = arg1
                    stor16[stor16.length].field_256 = arg5
                    stor16[stor16.length].field_512 = arg6
                    stor16[stor16.length].field_768 = block.timestamp
                    if not stor12:
                        if stor13[address(arg1)].field_0:
                            if accountBalance[address(arg1)].field_768 < stor13[address(arg1)].field_256:
                                stor13[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
                        else:
                            stor14.length++
                            if not stor14.length <= stor14.length + 1:
                                idx = stor14.length + 1
                                while stor14.length > idx:
                                    uint256(stor14[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor14[stor14.length]) = arg1 or Mask(96, 160, uint256(stor14[stor14.length]))
                            stor13[address(arg1)].field_0 = 1
                            stor13[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
        else:
            if arg6 / 100 * stor1 <= stor2:
                accountBalance[address(arg5)].field_768 = accountBalance[address(arg5)].field_768 + arg6 - (arg6 / 100 * stor1)
                mem[mem[64] + 32] = arg5
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = arg6 - (arg6 / 100 * stor1)
                emit Transaction(tx.origin, address(arg5), block.timestamp, arg6 - (arg6 / 100 * stor1));
                mem[0] = stor3
                mem[32] = 6
                accountBalance[stor3].field_768 += arg6 / 100 * stor1
                mem[mem[64]] = arg6 / 100 * stor1
                emit 0xcd87d661: (arg6 / 100 * stor1)
            else:
                accountBalance[address(arg5)].field_768 = accountBalance[address(arg5)].field_768 + arg6 - stor2
                mem[mem[64] + 32] = arg5
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = arg6 - stor2
                emit Transaction(tx.origin, address(arg5), block.timestamp, arg6 - stor2);
                mem[0] = stor3
                mem[32] = 6
                accountBalance[stor3].field_768 += stor2
                mem[mem[64]] = stor2
                emit 0xcd87d661: stor2
            stor15++
            if stor15 == 100001:
                stor15 = 0
                idx = 0
                while uint8(idx) < stor16.length:
                    require idx < stor16.length
                    mem[0] = stor16[idx].field_0
                    mem[32] = 6
                    if not accountBalance[stor16[idx].field_0].field_0:
                        require idx < stor16.length
                        require idx < stor16.length
                        if stor16[idx].field_512 > 0:
                            s = 0
                            while uint8(s) <= uint8(idx):
                                require s < 10
                                mem[(32 * s) + _213] = 0
                                s = s + 1
                                continue 
                            require idx < stor16.length
                            mem[0] = 16
                            require idx < 10
                            mem[(32 * idx) + _213] = stor16[idx].field_0
                        else:
                            mem[0] = 16
                            if not stor16[idx].field_512:
                                require idx < stor16.length
                                mem[0] = 16
                                require idx < 10
                                mem[(32 * idx) + _213] = stor16[idx].field_0
                    idx = idx + 1
                    continue 
                idx = 0
                while uint8(idx) < 10:
                    require idx < 10
                    mem[0] = mem[(32 * idx) + _213 + 12 len 20]
                    mem[32] = 6
                    accountBalance[mem[0]].field_768 += 20
                    mem[mem[64]] = mem[(32 * idx) + _213 + 12 len 20]
                    mem[mem[64] + 32] = 20
                    emit 0xb71381b2: mem[mem[64]], 20
                    idx = idx + 1
                    continue 
            if stor15 <= 99990:
                if not stor12:
                    if stor13[address(arg1)].field_0:
                        if accountBalance[address(arg1)].field_768 < stor13[address(arg1)].field_256:
                            stor13[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
                    else:
                        stor14.length++
                        if not stor14.length <= stor14.length + 1:
                            idx = stor14.length + 1
                            while stor14.length > idx:
                                uint256(stor14[idx]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor14[stor14.length]) = arg1 or Mask(96, 160, uint256(stor14[stor14.length]))
                        stor13[address(arg1)].field_0 = 1
                        stor13[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
            else:
                if arg6 <= 10:
                    if not stor12:
                        if stor13[address(arg1)].field_0:
                            if accountBalance[address(arg1)].field_768 < stor13[address(arg1)].field_256:
                                stor13[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
                        else:
                            stor14.length++
                            if not stor14.length <= stor14.length + 1:
                                idx = stor14.length + 1
                                while stor14.length > idx:
                                    uint256(stor14[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor14[stor14.length]) = arg1 or Mask(96, 160, uint256(stor14[stor14.length]))
                            stor13[address(arg1)].field_0 = 1
                            stor13[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
                else:
                    stor16.length++
                    if not stor16.length <= stor16.length + 1:
                        idx = 4 * stor16.length + 1
                        while 4 * stor16.length > idx:
                            stor16[idx].field_0 = 0
                            stor16[idx].field_256 = 0
                            stor16[idx].field_512 = 0
                            stor16[idx].field_768 = 0
                            idx = idx + 1
                            continue 
                    stor16[stor16.length].field_0 = arg1
                    stor16[stor16.length].field_256 = arg5
                    stor16[stor16.length].field_512 = arg6
                    stor16[stor16.length].field_768 = block.timestamp
                    if not stor12:
                        if stor13[address(arg1)].field_0:
                            if accountBalance[address(arg1)].field_768 < stor13[address(arg1)].field_256:
                                stor13[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
                        else:
                            stor14.length++
                            if not stor14.length <= stor14.length + 1:
                                idx = stor14.length + 1
                                while stor14.length > idx:
                                    uint256(stor14[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor14[stor14.length]) = arg1 or Mask(96, 160, uint256(stor14[stor14.length]))
                            stor13[address(arg1)].field_0 = 1
                            stor13[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
    else:
        if arg3.length / 2 != arg4.length:
            emit 0xc17f9005: tx.origin
            emit 0xc17f9005: msg.sender
            return 0
        if arg3.length > 512:
            emit 0xc17f9005: tx.origin
            emit 0xc17f9005: msg.sender
            return 0
        s = 0
        s = 0
        idx = 0
        s = 0
        while uint8(idx) < arg3.length:
            require idx < mem[(32 * arg3.length) + 128]
            _163 = mem[(32 * idx) + (32 * arg3.length) + 160]
            require idx < mem[96]
            _167 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _172 = mem[(32 * idx + 1) + 128]
            mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg3.length) + 191 len 1]
            mem[mem[64] + 64] = _167
            mem[mem[64] + 96] = _172
            signer = erecover(sha3('transfer', arg1, arg2, arg5, arg6), _163 << 248, _167, _172) 
            mem[mem[64]] = signer
            require erecover.result
            if stor0[address(signer)]:
                emit 0xc17f9005: tx.origin
                emit 0xc17f9005: msg.sender
                return 0
            if not accountBalance[address(arg1)][1][address(signer)].field_0:
                emit 0xc17f9005: tx.origin
                emit 0xc17f9005: msg.sender
                return 0
            mem[0] = address(signer)
            mem[32] = 0
            stor0[address(signer)] = 1
            s = signer
            s = _163
            idx = idx + 2
            s = s + 1
            continue 
        if Mask(8, 1, None + 1) >> 1 < accountBalance[address(arg1)].field_520:
            emit 0xc17f9005: tx.origin
            emit 0xc17f9005: msg.sender
            return 0
        if accountBalance[address(arg1)].field_0:
            emit 0xd29821f1: arg1
            return 0
        mem[0] = arg5
        mem[32] = 6
        if accountBalance[address(arg5)].field_0:
            emit 0xd29821f1: arg1
            return 0
        _216 = mem[64]
        mem[64] = mem[64] + 320
        mem[_216] = 0
        mem[_216 + 32 len 288] = 0
        _240 = mem[64]
        mem[64] = mem[64] + 128
        mem[_240] = 0
        mem[_240 + 32] = 0
        mem[_240 + 64] = 0
        mem[_240 + 96] = 0
        if accountBalance[address(arg1)].field_768 < arg6:
            return 0
        accountBalance[address(arg1)].field_768 -= arg6
        mem[32] = 6
        if arg6 / 100 * stor1 < stor0.length:
            accountBalance[address(arg5)].field_768 = accountBalance[address(arg5)].field_768 + arg6 - stor0.length
            mem[mem[64] + 32] = arg5
            mem[mem[64] + 64] = block.timestamp
            mem[mem[64] + 96] = arg6 - stor0.length
            emit Transaction(tx.origin, address(arg5), block.timestamp, arg6 - stor0.length);
            mem[0] = stor3
            mem[32] = 6
            accountBalance[stor3].field_768 += stor0.length
            mem[mem[64]] = stor0.length
            emit 0xcd87d661: stor0.length
            stor15++
            if stor15 == 100001:
                stor15 = 0
                idx = 0
                while uint8(idx) < stor16.length:
                    require idx < stor16.length
                    mem[0] = stor16[idx].field_0
                    mem[32] = 6
                    if not accountBalance[stor16[idx].field_0].field_0:
                        require idx < stor16.length
                        require idx < stor16.length
                        if stor16[idx].field_512 > 0:
                            s = 0
                            while uint8(s) <= uint8(idx):
                                require s < 10
                                mem[(32 * s) + _216] = 0
                                s = s + 1
                                continue 
                            require idx < stor16.length
                            mem[0] = 16
                            require idx < 10
                            mem[(32 * idx) + _216] = stor16[idx].field_0
                        else:
                            mem[0] = 16
                            if not stor16[idx].field_512:
                                require idx < stor16.length
                                mem[0] = 16
                                require idx < 10
                                mem[(32 * idx) + _216] = stor16[idx].field_0
                    idx = idx + 1
                    continue 
                idx = 0
                while uint8(idx) < 10:
                    require idx < 10
                    mem[0] = mem[(32 * idx) + _216 + 12 len 20]
                    mem[32] = 6
                    accountBalance[mem[0]].field_768 += 20
                    mem[mem[64]] = mem[(32 * idx) + _216 + 12 len 20]
                    mem[mem[64] + 32] = 20
                    emit 0xb71381b2: mem[mem[64]], 20
                    idx = idx + 1
                    continue 
            if stor15 <= 99990:
                if not stor12:
                    if stor13[address(arg1)].field_0:
                        if accountBalance[address(arg1)].field_768 < stor13[address(arg1)].field_256:
                            stor13[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
                    else:
                        stor14.length++
                        if not stor14.length <= stor14.length + 1:
                            idx = stor14.length + 1
                            while stor14.length > idx:
                                uint256(stor14[idx]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor14[stor14.length]) = arg1 or Mask(96, 160, uint256(stor14[stor14.length]))
                        stor13[address(arg1)].field_0 = 1
                        stor13[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
            else:
                if arg6 <= 10:
                    if not stor12:
                        if stor13[address(arg1)].field_0:
                            if accountBalance[address(arg1)].field_768 < stor13[address(arg1)].field_256:
                                stor13[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
                        else:
                            stor14.length++
                            if not stor14.length <= stor14.length + 1:
                                idx = stor14.length + 1
                                while stor14.length > idx:
                                    uint256(stor14[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor14[stor14.length]) = arg1 or Mask(96, 160, uint256(stor14[stor14.length]))
                            stor13[address(arg1)].field_0 = 1
                            stor13[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
                else:
                    stor16.length++
                    if not stor16.length <= stor16.length + 1:
                        idx = 4 * stor16.length + 1
                        while 4 * stor16.length > idx:
                            stor16[idx].field_0 = 0
                            stor16[idx].field_256 = 0
                            stor16[idx].field_512 = 0
                            stor16[idx].field_768 = 0
                            idx = idx + 1
                            continue 
                    stor16[stor16.length].field_0 = arg1
                    stor16[stor16.length].field_256 = arg5
                    stor16[stor16.length].field_512 = arg6
                    stor16[stor16.length].field_768 = block.timestamp
                    if not stor12:
                        if stor13[address(arg1)].field_0:
                            if accountBalance[address(arg1)].field_768 < stor13[address(arg1)].field_256:
                                stor13[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
                        else:
                            stor14.length++
                            if not stor14.length <= stor14.length + 1:
                                idx = stor14.length + 1
                                while stor14.length > idx:
                                    uint256(stor14[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor14[stor14.length]) = arg1 or Mask(96, 160, uint256(stor14[stor14.length]))
                            stor13[address(arg1)].field_0 = 1
                            stor13[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
        else:
            if arg6 / 100 * stor1 <= stor2:
                accountBalance[address(arg5)].field_768 = accountBalance[address(arg5)].field_768 + arg6 - (arg6 / 100 * stor1)
                mem[mem[64] + 32] = arg5
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = arg6 - (arg6 / 100 * stor1)
                emit Transaction(tx.origin, address(arg5), block.timestamp, arg6 - (arg6 / 100 * stor1));
                mem[0] = stor3
                mem[32] = 6
                accountBalance[stor3].field_768 += arg6 / 100 * stor1
                mem[mem[64]] = arg6 / 100 * stor1
                emit 0xcd87d661: (arg6 / 100 * stor1)
            else:
                accountBalance[address(arg5)].field_768 = accountBalance[address(arg5)].field_768 + arg6 - stor2
                mem[mem[64] + 32] = arg5
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = arg6 - stor2
                emit Transaction(tx.origin, address(arg5), block.timestamp, arg6 - stor2);
                mem[0] = stor3
                mem[32] = 6
                accountBalance[stor3].field_768 += stor2
                mem[mem[64]] = stor2
                emit 0xcd87d661: stor2
            stor15++
            if stor15 == 100001:
                stor15 = 0
                idx = 0
                while uint8(idx) < stor16.length:
                    require idx < stor16.length
                    mem[0] = stor16[idx].field_0
                    mem[32] = 6
                    if not accountBalance[stor16[idx].field_0].field_0:
                        require idx < stor16.length
                        require idx < stor16.length
                        if stor16[idx].field_512 > 0:
                            s = 0
                            while uint8(s) <= uint8(idx):
                                require s < 10
                                mem[(32 * s) + _216] = 0
                                s = s + 1
                                continue 
                            require idx < stor16.length
                            mem[0] = 16
                            require idx < 10
                            mem[(32 * idx) + _216] = stor16[idx].field_0
                        else:
                            mem[0] = 16
                            if not stor16[idx].field_512:
                                require idx < stor16.length
                                mem[0] = 16
                                require idx < 10
                                mem[(32 * idx) + _216] = stor16[idx].field_0
                    idx = idx + 1
                    continue 
                idx = 0
                while uint8(idx) < 10:
                    require idx < 10
                    mem[0] = mem[(32 * idx) + _216 + 12 len 20]
                    mem[32] = 6
                    accountBalance[mem[0]].field_768 += 20
                    mem[mem[64]] = mem[(32 * idx) + _216 + 12 len 20]
                    mem[mem[64] + 32] = 20
                    emit 0xb71381b2: mem[mem[64]], 20
                    idx = idx + 1
                    continue 
            if stor15 <= 99990:
                if not stor12:
                    if stor13[address(arg1)].field_0:
                        if accountBalance[address(arg1)].field_768 < stor13[address(arg1)].field_256:
                            stor13[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
                    else:
                        stor14.length++
                        if not stor14.length <= stor14.length + 1:
                            idx = stor14.length + 1
                            while stor14.length > idx:
                                uint256(stor14[idx]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor14[stor14.length]) = arg1 or Mask(96, 160, uint256(stor14[stor14.length]))
                        stor13[address(arg1)].field_0 = 1
                        stor13[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
            else:
                if arg6 <= 10:
                    if not stor12:
                        if stor13[address(arg1)].field_0:
                            if accountBalance[address(arg1)].field_768 < stor13[address(arg1)].field_256:
                                stor13[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
                        else:
                            stor14.length++
                            if not stor14.length <= stor14.length + 1:
                                idx = stor14.length + 1
                                while stor14.length > idx:
                                    uint256(stor14[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor14[stor14.length]) = arg1 or Mask(96, 160, uint256(stor14[stor14.length]))
                            stor13[address(arg1)].field_0 = 1
                            stor13[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
                else:
                    stor16.length++
                    if not stor16.length <= stor16.length + 1:
                        idx = 4 * stor16.length + 1
                        while 4 * stor16.length > idx:
                            stor16[idx].field_0 = 0
                            stor16[idx].field_256 = 0
                            stor16[idx].field_512 = 0
                            stor16[idx].field_768 = 0
                            idx = idx + 1
                            continue 
                    stor16[stor16.length].field_0 = arg1
                    stor16[stor16.length].field_256 = arg5
                    stor16[stor16.length].field_512 = arg6
                    stor16[stor16.length].field_768 = block.timestamp
                    if not stor12:
                        if stor13[address(arg1)].field_0:
                            if accountBalance[address(arg1)].field_768 < stor13[address(arg1)].field_256:
                                stor13[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
                        else:
                            stor14.length++
                            if not stor14.length <= stor14.length + 1:
                                idx = stor14.length + 1
                                while stor14.length > idx:
                                    uint256(stor14[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor14[stor14.length]) = arg1 or Mask(96, 160, uint256(stor14[stor14.length]))
                            stor13[address(arg1)].field_0 = 1
                            stor13[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
    return 1
}



}
