contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = code.data[4147 len 32]
    return code.data[69 len 4078]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address recipientAddress;
uint256 stor1;
mapping of struct accounts;
uint8 sub_e7f41213;

function getRecipient() payable {
    return address(recipientAddress)
}

function accounts(address arg1) payable {
    return accounts[arg1].field_0, accounts[arg1].field_256, accounts[arg1].field_256, accounts[arg1].field_768
}

function getOwner() payable {
    return address(owner)
}

function sub_e7f41213(?) payable {
    return sub_e7f41213
}

function _fallback() payable {
  stop
}

function setOwner(address arg1) payable {
    if address(owner) != msg.sender:
        return 0
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    return 1
}

function setRecipient(address arg1) payable {
    if address(owner) != msg.sender:
        return 0
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
    return 1
}

function getAccountBalance(address arg1) payable {
    call address(recipientAddress).0x93423e9c with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_3ed48679(?) payable {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[64] = (32 * arg4.length) + (32 * arg3.length) + 8352
    mem[(32 * arg4.length) + (32 * arg3.length) + 160] = 0
    mem[(32 * arg4.length) + (32 * arg3.length) + 192 len 8160] = 0
    if accounts[address(arg1)].field_0 >= arg2:
        emit code.data[4046 len 32]: 1
        return 0
    if 0 == accounts[address(arg1)].field_256:
        emit code.data[4046 len 32]: 2
        return 0
    if arg3.length / 2 < accounts[address(arg1)].field_264:
        emit code.data[4046 len 32]: 4
        return 0
    if arg4.length >= accounts[address(arg1)].field_264:
        if 0 == arg3.length:
            emit code.data[4046 len 32]: 5
            return 0
        if 0 == arg4.length:
            emit code.data[4046 len 32]: 5
            return 0
        if arg3.length > 512:
            emit code.data[4046 len 32]: 6
            return 0
        s = 0
        s = 0
        idx = 0
        s = 0
        while uint8(idx) < arg3.length:
            require uint8(idx) / 2 < mem[(32 * arg3.length) + 128]
            _142 = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 160]
            require idx < mem[96]
            _146 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _150 = mem[(32 * idx + 1) + 128]
            mem[mem[64] + 32] = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 191 len 1]
            mem[mem[64] + 64] = _146
            mem[mem[64] + 96] = _150
            signer = erecover(sha3('transfer', arg1, arg2, arg5, arg6), _142 << 248, _146, _150) 
            mem[mem[64]] = signer
            require erecover.result
            t = 0
            while uint8(t) < uint8(s):
                require t < 256
                if mem[(32 * t) + (32 * arg4.length) + (32 * arg3.length) + 172 len 20] != address(signer):
                    t = t + 1
                    continue 
                s = signer
                s = _142
                idx = idx + 2
                s = s
                continue 
            mem[0] = address(signer)
            mem[32] = sha3(address(arg1), 2) + 2
            if not accounts[address(arg1)][2][address(signer)].field_0:
                emit code.data[4046 len 32]: 8
                return 0
            require s < 256
            mem[(32 * s) + (32 * arg4.length) + (32 * arg3.length) + 160] = address(signer)
            s = signer
            s = _142
            idx = idx + 2
            s = s + 1
            continue 
    else:
        if arg3.length / 2 != arg4.length:
            emit code.data[4046 len 32]: 4
            return 0
        if 0 == arg3.length:
            emit code.data[4046 len 32]: 5
            return 0
        if 0 == arg4.length:
            emit code.data[4046 len 32]: 5
            return 0
        if arg3.length > 512:
            emit code.data[4046 len 32]: 6
            return 0
        s = 0
        s = 0
        idx = 0
        s = 0
        while uint8(idx) < arg3.length:
            require uint8(idx) / 2 < mem[(32 * arg3.length) + 128]
            _144 = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 160]
            require idx < mem[96]
            _148 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _153 = mem[(32 * idx + 1) + 128]
            mem[mem[64] + 32] = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 191 len 1]
            mem[mem[64] + 64] = _148
            mem[mem[64] + 96] = _153
            signer = erecover(sha3('transfer', arg1, arg2, arg5, arg6), _144 << 248, _148, _153) 
            mem[mem[64]] = signer
            require erecover.result
            t = 0
            while uint8(t) < uint8(s):
                require t < 256
                if mem[(32 * t) + (32 * arg4.length) + (32 * arg3.length) + 172 len 20] != address(signer):
                    t = t + 1
                    continue 
                s = signer
                s = _144
                idx = idx + 2
                s = s
                continue 
            mem[0] = address(signer)
            mem[32] = sha3(address(arg1), 2) + 2
            if not accounts[address(arg1)][2][address(signer)].field_0:
                emit code.data[4046 len 32]: 8
                return 0
            require s < 256
            mem[(32 * s) + (32 * arg4.length) + (32 * arg3.length) + 160] = address(signer)
            s = signer
            s = _144
            idx = idx + 2
            s = s + 1
            continue 
    if uint8(s) < accounts[address(arg1)].field_264:
        emit code.data[4046 len 32]: 9
        return 0
    accounts[address(arg1)].field_0 = arg2
    accounts[address(arg1)].field_32 = 0
    call address(recipientAddress).0xbeabacc8 with:
         gas gas_remaining - 25050 wei
        args address(arg1), address(arg5), arg6
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_05fba8b7(?) payable {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[64] = (32 * arg4.length) + (32 * arg3.length) + 8352
    mem[(32 * arg4.length) + (32 * arg3.length) + 160] = 0
    mem[(32 * arg4.length) + (32 * arg3.length) + 192 len 8160] = 0
    if accounts[address(arg1)].field_0 >= arg2:
        emit code.data[4046 len 32]: 1
        return 0
    if 0 == accounts[address(arg1)].field_256:
        emit code.data[4046 len 32]: 2
        return 0
    if arg3.length / 2 < accounts[address(arg1)].field_264:
        emit code.data[4046 len 32]: 4
        return 0
    if arg4.length >= accounts[address(arg1)].field_264:
        if 0 == arg3.length:
            emit code.data[4046 len 32]: 5
            return 0
        if 0 == arg4.length:
            emit code.data[4046 len 32]: 5
            return 0
        if arg3.length > 512:
            emit code.data[4046 len 32]: 6
            return 0
        s = 0
        s = 0
        idx = 0
        s = 0
        while uint8(idx) < arg3.length:
            require uint8(idx) / 2 < mem[(32 * arg3.length) + 128]
            _148 = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 160]
            require idx < mem[96]
            _152 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _156 = mem[(32 * idx + 1) + 128]
            mem[mem[64] + 32] = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 191 len 1]
            mem[mem[64] + 64] = _152
            mem[mem[64] + 96] = _156
            signer = erecover(sha3('addAccountHolder', arg1, arg2, arg5), _148 << 248, _152, _156) 
            mem[mem[64]] = signer
            require erecover.result
            t = 0
            while uint8(t) < uint8(s):
                require t < 256
                if mem[(32 * t) + (32 * arg4.length) + (32 * arg3.length) + 172 len 20] != address(signer):
                    t = t + 1
                    continue 
                s = signer
                s = _148
                idx = idx + 2
                s = s
                continue 
            mem[0] = address(signer)
            mem[32] = sha3(address(arg1), 2) + 2
            if not accounts[address(arg1)][2][address(signer)].field_0:
                emit code.data[4046 len 32]: 8
                return 0
            require s < 256
            mem[(32 * s) + (32 * arg4.length) + (32 * arg3.length) + 160] = address(signer)
            s = signer
            s = _148
            idx = idx + 2
            s = s + 1
            continue 
    else:
        if arg3.length / 2 != arg4.length:
            emit code.data[4046 len 32]: 4
            return 0
        if 0 == arg3.length:
            emit code.data[4046 len 32]: 5
            return 0
        if 0 == arg4.length:
            emit code.data[4046 len 32]: 5
            return 0
        if arg3.length > 512:
            emit code.data[4046 len 32]: 6
            return 0
        s = 0
        s = 0
        idx = 0
        s = 0
        while uint8(idx) < arg3.length:
            require uint8(idx) / 2 < mem[(32 * arg3.length) + 128]
            _150 = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 160]
            require idx < mem[96]
            _154 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _159 = mem[(32 * idx + 1) + 128]
            mem[mem[64] + 32] = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 191 len 1]
            mem[mem[64] + 64] = _154
            mem[mem[64] + 96] = _159
            signer = erecover(sha3('addAccountHolder', arg1, arg2, arg5), _150 << 248, _154, _159) 
            mem[mem[64]] = signer
            require erecover.result
            t = 0
            while uint8(t) < uint8(s):
                require t < 256
                if mem[(32 * t) + (32 * arg4.length) + (32 * arg3.length) + 172 len 20] != address(signer):
                    t = t + 1
                    continue 
                s = signer
                s = _150
                idx = idx + 2
                s = s
                continue 
            mem[0] = address(signer)
            mem[32] = sha3(address(arg1), 2) + 2
            if not accounts[address(arg1)][2][address(signer)].field_0:
                emit code.data[4046 len 32]: 8
                return 0
            require s < 256
            mem[(32 * s) + (32 * arg4.length) + (32 * arg3.length) + 160] = address(signer)
            s = signer
            s = _150
            idx = idx + 2
            s = s + 1
            continue 
    if uint8(s) < accounts[address(arg1)].field_264:
        emit code.data[4046 len 32]: 9
        return 0
    accounts[address(arg1)].field_0 = arg2
    accounts[address(arg1)].field_32 = 0
    if not accounts[address(arg1)][2][address(arg5)].field_0:
        accounts[address(arg1)][2][address(arg5)].field_0 = 1
        accounts[address(arg1)].field_256 = accounts[address(arg1)].field_264
    emit 0xcc494284 
    return 1
}

function sub_ac44ebb0(?) payable {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[64] = (32 * arg4.length) + (32 * arg3.length) + 8352
    mem[(32 * arg4.length) + (32 * arg3.length) + 160] = 0
    mem[(32 * arg4.length) + (32 * arg3.length) + 192 len 8160] = 0
    if accounts[address(arg1)].field_0 >= arg2:
        emit code.data[4046 len 32]: 1
        return 0
    if 0 == accounts[address(arg1)].field_256:
        emit code.data[4046 len 32]: 2
        return 0
    if arg3.length / 2 < accounts[address(arg1)].field_264:
        emit code.data[4046 len 32]: 4
        return 0
    if arg4.length >= accounts[address(arg1)].field_264:
        if 0 == arg3.length:
            emit code.data[4046 len 32]: 5
            return 0
        if 0 == arg4.length:
            emit code.data[4046 len 32]: 5
            return 0
        if arg3.length > 512:
            emit code.data[4046 len 32]: 6
            return 0
        s = 0
        s = 0
        idx = 0
        s = 0
        while uint8(idx) < arg3.length:
            require uint8(idx) / 2 < mem[(32 * arg3.length) + 128]
            _162 = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 160]
            require idx < mem[96]
            _166 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _170 = mem[(32 * idx + 1) + 128]
            mem[mem[64] + 32] = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 191 len 1]
            mem[mem[64] + 64] = _166
            mem[mem[64] + 96] = _170
            signer = erecover(sha3('changeAccountsignaturesRequired', arg1, arg2, arg5), _162 << 248, _166, _170) 
            mem[mem[64]] = signer
            require erecover.result
            t = 0
            while uint8(t) < uint8(s):
                require t < 256
                if mem[(32 * t) + (32 * arg4.length) + (32 * arg3.length) + 172 len 20] != address(signer):
                    t = t + 1
                    continue 
                s = signer
                s = _162
                idx = idx + 2
                s = s
                continue 
            mem[0] = address(signer)
            mem[32] = sha3(address(arg1), 2) + 2
            if not accounts[address(arg1)][2][address(signer)].field_0:
                emit code.data[4046 len 32]: 8
                return 0
            require s < 256
            mem[(32 * s) + (32 * arg4.length) + (32 * arg3.length) + 160] = address(signer)
            s = signer
            s = _162
            idx = idx + 2
            s = s + 1
            continue 
    else:
        if arg3.length / 2 != arg4.length:
            emit code.data[4046 len 32]: 4
            return 0
        if 0 == arg3.length:
            emit code.data[4046 len 32]: 5
            return 0
        if 0 == arg4.length:
            emit code.data[4046 len 32]: 5
            return 0
        if arg3.length > 512:
            emit code.data[4046 len 32]: 6
            return 0
        s = 0
        s = 0
        idx = 0
        s = 0
        while uint8(idx) < arg3.length:
            require uint8(idx) / 2 < mem[(32 * arg3.length) + 128]
            _164 = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 160]
            require idx < mem[96]
            _168 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _173 = mem[(32 * idx + 1) + 128]
            mem[mem[64] + 32] = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 191 len 1]
            mem[mem[64] + 64] = _168
            mem[mem[64] + 96] = _173
            signer = erecover(sha3('changeAccountsignaturesRequired', arg1, arg2, arg5), _164 << 248, _168, _173) 
            mem[mem[64]] = signer
            require erecover.result
            t = 0
            while uint8(t) < uint8(s):
                require t < 256
                if mem[(32 * t) + (32 * arg4.length) + (32 * arg3.length) + 172 len 20] != address(signer):
                    t = t + 1
                    continue 
                s = signer
                s = _164
                idx = idx + 2
                s = s
                continue 
            mem[0] = address(signer)
            mem[32] = sha3(address(arg1), 2) + 2
            if not accounts[address(arg1)][2][address(signer)].field_0:
                emit code.data[4046 len 32]: 8
                return 0
            require s < 256
            mem[(32 * s) + (32 * arg4.length) + (32 * arg3.length) + 160] = address(signer)
            s = signer
            s = _164
            idx = idx + 2
            s = s + 1
            continue 
    if uint8(s) < accounts[address(arg1)].field_264:
        emit code.data[4046 len 32]: 9
        return 0
    accounts[address(arg1)].field_0 = arg2
    accounts[address(arg1)].field_32 = 0
    if accounts[address(arg1)].field_256 < arg5:
        emit code.data[4046 len 32]: 23
        return 0
    if 0 == arg5:
        emit code.data[4046 len 32]: 23
        return 0
    accounts[address(arg1)].field_264 = Mask(248, 0, arg5)
    emit 0xcc494284 
    return 1
}

function sub_778c634e(?) payable {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[64] = (32 * arg4.length) + (32 * arg3.length) + 8352
    mem[(32 * arg4.length) + (32 * arg3.length) + 160] = 0
    mem[(32 * arg4.length) + (32 * arg3.length) + 192 len 8160] = 0
    if accounts[address(arg1)].field_0 >= arg2:
        emit code.data[4046 len 32]: 1
        return 0
    if 0 == accounts[address(arg1)].field_256:
        emit code.data[4046 len 32]: 2
        return 0
    if arg3.length / 2 < accounts[address(arg1)].field_264:
        emit code.data[4046 len 32]: 4
        return 0
    if arg4.length >= accounts[address(arg1)].field_264:
        if 0 == arg3.length:
            emit code.data[4046 len 32]: 5
            return 0
        if 0 == arg4.length:
            emit code.data[4046 len 32]: 5
            return 0
        if arg3.length > 512:
            emit code.data[4046 len 32]: 6
            return 0
        s = 0
        s = 0
        idx = 0
        s = 0
        while uint8(idx) < arg3.length:
            require uint8(idx) / 2 < mem[(32 * arg3.length) + 128]
            _166 = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 160]
            require idx < mem[96]
            _170 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _174 = mem[(32 * idx + 1) + 128]
            mem[mem[64] + 32] = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 191 len 1]
            mem[mem[64] + 64] = _170
            mem[mem[64] + 96] = _174
            signer = erecover(sha3('removeAccountHolder', arg1, arg2, arg5), _166 << 248, _170, _174) 
            mem[mem[64]] = signer
            require erecover.result
            t = 0
            while uint8(t) < uint8(s):
                require t < 256
                if mem[(32 * t) + (32 * arg4.length) + (32 * arg3.length) + 172 len 20] != address(signer):
                    t = t + 1
                    continue 
                s = signer
                s = _166
                idx = idx + 2
                s = s
                continue 
            mem[0] = address(signer)
            mem[32] = sha3(address(arg1), 2) + 2
            if not accounts[address(arg1)][2][address(signer)].field_0:
                emit code.data[4046 len 32]: 8
                return 0
            require s < 256
            mem[(32 * s) + (32 * arg4.length) + (32 * arg3.length) + 160] = address(signer)
            s = signer
            s = _166
            idx = idx + 2
            s = s + 1
            continue 
    else:
        if arg3.length / 2 != arg4.length:
            emit code.data[4046 len 32]: 4
            return 0
        if 0 == arg3.length:
            emit code.data[4046 len 32]: 5
            return 0
        if 0 == arg4.length:
            emit code.data[4046 len 32]: 5
            return 0
        if arg3.length > 512:
            emit code.data[4046 len 32]: 6
            return 0
        s = 0
        s = 0
        idx = 0
        s = 0
        while uint8(idx) < arg3.length:
            require uint8(idx) / 2 < mem[(32 * arg3.length) + 128]
            _168 = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 160]
            require idx < mem[96]
            _172 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _177 = mem[(32 * idx + 1) + 128]
            mem[mem[64] + 32] = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 191 len 1]
            mem[mem[64] + 64] = _172
            mem[mem[64] + 96] = _177
            signer = erecover(sha3('removeAccountHolder', arg1, arg2, arg5), _168 << 248, _172, _177) 
            mem[mem[64]] = signer
            require erecover.result
            t = 0
            while uint8(t) < uint8(s):
                require t < 256
                if mem[(32 * t) + (32 * arg4.length) + (32 * arg3.length) + 172 len 20] != address(signer):
                    t = t + 1
                    continue 
                s = signer
                s = _168
                idx = idx + 2
                s = s
                continue 
            mem[0] = address(signer)
            mem[32] = sha3(address(arg1), 2) + 2
            if not accounts[address(arg1)][2][address(signer)].field_0:
                emit code.data[4046 len 32]: 8
                return 0
            require s < 256
            mem[(32 * s) + (32 * arg4.length) + (32 * arg3.length) + 160] = address(signer)
            s = signer
            s = _168
            idx = idx + 2
            s = s + 1
            continue 
    if uint8(s) < accounts[address(arg1)].field_264:
        emit code.data[4046 len 32]: 9
        return 0
    accounts[address(arg1)].field_0 = arg2
    accounts[address(arg1)].field_32 = 0
    if arg1 == arg5:
        emit code.data[4046 len 32]: 22
        return 0
    if accounts[address(arg1)][2][address(arg5)].field_0:
        if accounts[address(arg1)].field_264 != accounts[address(arg1)].field_256:
            accounts[address(arg1)][2][address(arg5)].field_0 = 0
            accounts[address(arg1)].field_256 = accounts[address(arg1)].field_264
    emit 0xcc494284 
    return 1
}

function sub_651e723c(?) payable {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + (32 * arg3.length) + 160] = arg6.length
    mem[(32 * arg4.length) + (32 * arg3.length) + 192 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    if accounts[address(arg1)].field_256 > 0:
        emit code.data[4046 len 32]: 107
        return 0
    accounts[address(arg1)].field_256 = 1
    accounts[address(arg1)].field_264 = 1
    accounts[address(arg1)].field_512 = 0
    accounts[address(arg1)][2][address(arg1)].field_0 = 1
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg6.length) + 259 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[64] = (32 * arg4.length) + (32 * arg3.length) + (32 * arg6.length) + 8384
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg6.length) + 192] = 0
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg6.length) + 224 len 8160] = 0
    if accounts[address(arg1)].field_0 >= arg2:
        emit code.data[4046 len 32]: 120
        return 0
    if 0 == accounts[address(arg1)].field_256:
        emit code.data[4046 len 32]: 120
        return 0
    if arg3.length / 2 < accounts[address(arg1)].field_264:
        emit code.data[4046 len 32]: 120
        return 0
    if arg5 > 0:
        if arg4.length >= accounts[address(arg1)].field_264:
            if 0 == arg3.length:
                emit code.data[4046 len 32]: 120
                return 0
            if 0 == arg4.length:
                emit code.data[4046 len 32]: 120
                return 0
            if arg3.length > 512:
                emit code.data[4046 len 32]: 120
                return 0
            s = 0
            s = 0
            idx = 0
            s = 0
            while uint8(idx) < arg3.length:
                require uint8(idx) / 2 < mem[(32 * arg3.length) + 128]
                _299 = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 160]
                require idx < mem[96]
                _307 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _315 = mem[(32 * idx + 1) + 128]
                mem[mem[64] + 32] = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 191 len 1]
                mem[mem[64] + 64] = _307
                mem[mem[64] + 96] = _315
                signer = erecover(sha3('initAccount', arg1, arg2, arg5, call.data[arg6 + 36 len 32 * arg6.length]), _299 << 248, _307, _315) 
                mem[mem[64]] = signer
                require erecover.result
                t = 0
                while uint8(t) < uint8(s):
                    require t < 256
                    if mem[(32 * t) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg6.length) + 204 len 20] != address(signer):
                        t = t + 1
                        continue 
                    s = signer
                    s = _299
                    idx = idx + 2
                    s = s
                    continue 
                mem[0] = address(signer)
                mem[32] = sha3(address(arg1), 2) + 2
                if not accounts[address(arg1)][2][address(signer)].field_0:
                    emit code.data[4046 len 32]: 120
                    return 0
                require s < 256
                mem[(32 * s) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg6.length) + 192] = address(signer)
                s = signer
                s = _299
                idx = idx + 2
                s = s + 1
                continue 
        else:
            if arg3.length / 2 != arg4.length:
                emit code.data[4046 len 32]: 120
                return 0
            if 0 == arg3.length:
                emit code.data[4046 len 32]: 120
                return 0
            if 0 == arg4.length:
                emit code.data[4046 len 32]: 120
                return 0
            if arg3.length > 512:
                emit code.data[4046 len 32]: 120
                return 0
            s = 0
            s = 0
            idx = 0
            s = 0
            while uint8(idx) < arg3.length:
                require uint8(idx) / 2 < mem[(32 * arg3.length) + 128]
                _301 = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 160]
                require idx < mem[96]
                _309 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _318 = mem[(32 * idx + 1) + 128]
                mem[mem[64] + 32] = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 191 len 1]
                mem[mem[64] + 64] = _309
                mem[mem[64] + 96] = _318
                signer = erecover(sha3('initAccount', arg1, arg2, arg5, call.data[arg6 + 36 len 32 * arg6.length]), _301 << 248, _309, _318) 
                mem[mem[64]] = signer
                require erecover.result
                t = 0
                while uint8(t) < uint8(s):
                    require t < 256
                    if mem[(32 * t) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg6.length) + 204 len 20] != address(signer):
                        t = t + 1
                        continue 
                    s = signer
                    s = _301
                    idx = idx + 2
                    s = s
                    continue 
                mem[0] = address(signer)
                mem[32] = sha3(address(arg1), 2) + 2
                if not accounts[address(arg1)][2][address(signer)].field_0:
                    emit code.data[4046 len 32]: 120
                    return 0
                require s < 256
                mem[(32 * s) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg6.length) + 192] = address(signer)
                s = signer
                s = _301
                idx = idx + 2
                s = s + 1
                continue 
        if uint8(s) < accounts[address(arg1)].field_264:
            emit code.data[4046 len 32]: 120
            return 0
        accounts[address(arg1)].field_0 = arg2
        accounts[address(arg1)].field_32 = 0
        idx = 0
        while uint8(idx) < mem[(32 * arg4.length) + (32 * arg3.length) + 160]:
            require idx < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
            mem[0] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * idx) + 204 len 20]
            mem[32] = sha3(address(arg1), 2) + 2
            accounts[address(arg1)][2][mem[(32 * arg4.length) + (32 * arg3.length) + (32 * idx) + 204 len 20]].field_0 = 1
            idx = idx + 1
            continue 
        accounts[address(arg1)].field_256 = mem[(32 * arg4.length) + (32 * arg3.length) + 191 len 1]
        accounts[address(arg1)].field_264 = Mask(248, 0, arg5)
    else:
        if arg4.length >= accounts[address(arg1)].field_264:
            if 0 == arg3.length:
                emit code.data[4046 len 32]: 120
                return 0
            if 0 == arg4.length:
                emit code.data[4046 len 32]: 120
                return 0
            if arg3.length > 512:
                emit code.data[4046 len 32]: 120
                return 0
            s = 0
            s = 0
            idx = 0
            s = 0
            while uint8(idx) < arg3.length:
                require uint8(idx) / 2 < mem[(32 * arg3.length) + 128]
                _303 = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 160]
                require idx < mem[96]
                _311 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _321 = mem[(32 * idx + 1) + 128]
                mem[mem[64] + 32] = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 191 len 1]
                mem[mem[64] + 64] = _311
                mem[mem[64] + 96] = _321
                signer = erecover(sha3('initAccount', arg1, arg2, 1, call.data[arg6 + 36 len 32 * arg6.length]), _303 << 248, _311, _321) 
                mem[mem[64]] = signer
                require erecover.result
                t = 0
                while uint8(t) < uint8(s):
                    require t < 256
                    if mem[(32 * t) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg6.length) + 204 len 20] != address(signer):
                        t = t + 1
                        continue 
                    s = signer
                    s = _303
                    idx = idx + 2
                    s = s
                    continue 
                mem[0] = address(signer)
                mem[32] = sha3(address(arg1), 2) + 2
                if not accounts[address(arg1)][2][address(signer)].field_0:
                    emit code.data[4046 len 32]: 120
                    return 0
                require s < 256
                mem[(32 * s) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg6.length) + 192] = address(signer)
                s = signer
                s = _303
                idx = idx + 2
                s = s + 1
                continue 
        else:
            if arg3.length / 2 != arg4.length:
                emit code.data[4046 len 32]: 120
                return 0
            if 0 == arg3.length:
                emit code.data[4046 len 32]: 120
                return 0
            if 0 == arg4.length:
                emit code.data[4046 len 32]: 120
                return 0
            if arg3.length > 512:
                emit code.data[4046 len 32]: 120
                return 0
            s = 0
            s = 0
            idx = 0
            s = 0
            while uint8(idx) < arg3.length:
                require uint8(idx) / 2 < mem[(32 * arg3.length) + 128]
                _305 = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 160]
                require idx < mem[96]
                _313 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _324 = mem[(32 * idx + 1) + 128]
                mem[mem[64] + 32] = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 191 len 1]
                mem[mem[64] + 64] = _313
                mem[mem[64] + 96] = _324
                signer = erecover(sha3('initAccount', arg1, arg2, 1, call.data[arg6 + 36 len 32 * arg6.length]), _305 << 248, _313, _324) 
                mem[mem[64]] = signer
                require erecover.result
                t = 0
                while uint8(t) < uint8(s):
                    require t < 256
                    if mem[(32 * t) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg6.length) + 204 len 20] != address(signer):
                        t = t + 1
                        continue 
                    s = signer
                    s = _305
                    idx = idx + 2
                    s = s
                    continue 
                mem[0] = address(signer)
                mem[32] = sha3(address(arg1), 2) + 2
                if not accounts[address(arg1)][2][address(signer)].field_0:
                    emit code.data[4046 len 32]: 120
                    return 0
                require s < 256
                mem[(32 * s) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg6.length) + 192] = address(signer)
                s = signer
                s = _305
                idx = idx + 2
                s = s + 1
                continue 
        if uint8(s) < accounts[address(arg1)].field_264:
            emit code.data[4046 len 32]: 120
            return 0
        accounts[address(arg1)].field_0 = arg2
        accounts[address(arg1)].field_32 = 0
        idx = 0
        while uint8(idx) < mem[(32 * arg4.length) + (32 * arg3.length) + 160]:
            require idx < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
            mem[0] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * idx) + 204 len 20]
            mem[32] = sha3(address(arg1), 2) + 2
            accounts[address(arg1)][2][mem[(32 * arg4.length) + (32 * arg3.length) + (32 * idx) + 204 len 20]].field_0 = 1
            idx = idx + 1
            continue 
        accounts[address(arg1)].field_256 = mem[(32 * arg4.length) + (32 * arg3.length) + 191 len 1]
        accounts[address(arg1)].field_264 = 1
    accounts[address(arg1)].field_272 = mem[(32 * arg4.length) + (32 * arg3.length) + 160 len 30]
    emit 0xcc494284 
    return 1
}



}
