contract main {


// =======================  Init code  ======================


mapping of struct stor0;
uint8 stor1;
uint256 stor6;
uint256 stor8;
uint256 stor9;
uint256 stor15;
uint256 stor16;
uint256 stor17;

function _fallback() payable {
    if not stor1:
        stor0[code.data[9473 len 20]].field_512 = code.data[9493 len 32]
        stor0[code.data[9473 len 20]][3][code.data[9473 len 20]].field_0 = 1
        stor0[code.data[9473 len 20]].field_256 = 1
        stor0[code.data[9473 len 20]].field_264 = 1
        stor0[code.data[9473 len 20]].field_512 = 0
        stor0[code.data[9473 len 20]].field_0 = block.timestamp
        stor1 = 1
    stor9 = block.timestamp
    stor6 = code.data[9525 len 32] or Mask(96, 160, stor6)
    stor8 = code.data[9557 len 32] or Mask(96, 160, stor8)
    stor15 = code.data[9589 len 32]
    stor16 = code.data[9621 len 32]
    stor17 = code.data[9653 len 32]
    return code.data[292 len 9169]
}



// =====================  Runtime code  =====================


mapping of struct accountBalance;
uint8 sub_e7f41213;
uint256 absMinFee;
uint256 feePercent;
uint256 absMaxFee;
address stor5;
uint256 stor5;
uint8 stor6; offset 160
uint8 stor6; offset 168
uint128 stor6; offset 160
address stor6;
uint256 stor7;
address stor8;
uint256 stor8;
uint256 createdAt;
uint256 stor10;
uint8 sub_10666547;
mapping of struct stor12;
array of address stor13;
uint256 transactionsCount;
uint256 sub_76c6a1a1;
uint256 sub_1f471849;
uint256 sub_f263123e;
array of struct stor18;
array of uint256 stor84827061063453624289975705683721713058963870421084015214609271099009937454150;

function sub_10666547(?) payable {
    return sub_10666547
}

function sub_1f471849(?) payable {
    return sub_1f471849
}

function absMaxFee() payable {
    return absMaxFee
}

function sub_76c6a1a1(?) payable {
    return sub_76c6a1a1
}

function feePercent() payable {
    return feePercent
}

function getAccountBalance(address arg1) payable {
    return accountBalance[address(arg1)].field_512
}

function absMinFee() payable {
    return absMinFee
}

function createdAt() payable {
    return createdAt
}

function sub_e7f41213(?) payable {
    return sub_e7f41213
}

function sub_f263123e(?) payable {
    return sub_f263123e
}

function transactionsCount() payable {
    return transactionsCount
}

function _fallback() payable {
  stop
}

function _calculateFee(uint256 arg1) payable {
    if feePercent * arg1 / 100 < absMinFee:
        return absMinFee
    if feePercent * arg1 / 100 <= absMaxFee:
        return (feePercent * arg1 / 100)
    return absMaxFee
}

function accounts(address arg1) payable {
    return accountBalance[arg1].field_0, 
           uint8(accountBalance[arg1].field_256),
           uint8(accountBalance[arg1].field_256),
           accountBalance[arg1].field_512,
           address(accountBalance[arg1].field_1024),
           uint8(accountBalance[arg1].field_1024)
}

function sub_ae10440e(?) payable {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + 8352
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = 0
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 8160] = 0
    if accountBalance[address(arg1)].field_0 >= arg2:
        emit code.data[9137 len 32]: 1
        return 0
    if 0 == uint8(accountBalance[address(arg1)].field_256):
        emit code.data[9137 len 32]: 2
        return 0
    if address(accountBalance[address(arg1)].field_1024) != 0:
        emit code.data[9137 len 32]: 3
        return 0
    if arg3.length / 2 < uint8(accountBalance[address(arg1)].field_264):
        emit code.data[9137 len 32]: 4
        return 0
    if arg4.length >= uint8(accountBalance[address(arg1)].field_264):
        if 0 == arg3.length:
            emit code.data[9137 len 32]: 5
            return 0
        if 0 == arg4.length:
            emit code.data[9137 len 32]: 5
            return 0
        if arg3.length > 512:
            emit code.data[9137 len 32]: 6
            return 0
        s = 0
        s = 0
        idx = 0
        s = 0
        while uint8(idx) < arg3.length:
            require uint8(idx) / 2 < mem[(32 * arg3.length) + 128]
            _176 = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 160]
            require idx < mem[96]
            _180 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _184 = mem[(32 * idx + 1) + 128]
            mem[mem[64] + 32] = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 191 len 1]
            mem[mem[64] + 64] = _180
            mem[mem[64] + 96] = _184
            signer = erecover(sha3('recoverAccount', arg1, arg2, arg5), _176 << 248, _180, _184) 
            mem[mem[64]] = signer
            require erecover.result
            t = 0
            while uint8(t) < uint8(s):
                require t < 256
                if mem[(32 * t) + (32 * arg3.length) + (32 * arg4.length) + 172 len 20] != address(signer):
                    t = t + 1
                    continue 
                s = signer
                s = _176
                idx = idx + 2
                s = s
                continue 
            mem[0] = address(signer)
            mem[32] = sha3(address(arg1), 0) + 3
            if uint8(accountBalance[address(arg1)][3][address(signer)].field_0):
                require s < 256
                mem[(32 * s) + (32 * arg3.length) + (32 * arg4.length) + 160] = address(signer)
                s = signer
                s = _176
                idx = idx + 2
                s = s + 1
                continue 
            require idx < mem[96]
            require idx + 1 < mem[96]
            emit 0x6cd677ed: sha3('recoverAccount', arg1, arg2, arg5), address(signer), idx << 248, mem[(32 * idx) + 128], mem[(32 * idx + 1) + 128], uint8(_176)
            emit code.data[9137 len 32]: 8
            return 0
    else:
        if arg3.length / 2 != arg4.length:
            emit code.data[9137 len 32]: 4
            return 0
        if 0 == arg3.length:
            emit code.data[9137 len 32]: 5
            return 0
        if 0 == arg4.length:
            emit code.data[9137 len 32]: 5
            return 0
        if arg3.length > 512:
            emit code.data[9137 len 32]: 6
            return 0
        s = 0
        s = 0
        idx = 0
        s = 0
        while uint8(idx) < arg3.length:
            require uint8(idx) / 2 < mem[(32 * arg3.length) + 128]
            _178 = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 160]
            require idx < mem[96]
            _182 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _187 = mem[(32 * idx + 1) + 128]
            mem[mem[64] + 32] = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 191 len 1]
            mem[mem[64] + 64] = _182
            mem[mem[64] + 96] = _187
            signer = erecover(sha3('recoverAccount', arg1, arg2, arg5), _178 << 248, _182, _187) 
            mem[mem[64]] = signer
            require erecover.result
            t = 0
            while uint8(t) < uint8(s):
                require t < 256
                if mem[(32 * t) + (32 * arg3.length) + (32 * arg4.length) + 172 len 20] != address(signer):
                    t = t + 1
                    continue 
                s = signer
                s = _178
                idx = idx + 2
                s = s
                continue 
            mem[0] = address(signer)
            mem[32] = sha3(address(arg1), 0) + 3
            if uint8(accountBalance[address(arg1)][3][address(signer)].field_0):
                require s < 256
                mem[(32 * s) + (32 * arg3.length) + (32 * arg4.length) + 160] = address(signer)
                s = signer
                s = _178
                idx = idx + 2
                s = s + 1
                continue 
            require idx < mem[96]
            require idx + 1 < mem[96]
            emit 0x6cd677ed: sha3('recoverAccount', arg1, arg2, arg5), address(signer), idx << 248, mem[(32 * idx) + 128], mem[(32 * idx + 1) + 128], uint8(_178)
            emit code.data[9137 len 32]: 8
            return 0
    if uint8(s) < uint8(accountBalance[address(arg1)].field_264):
        emit code.data[9137 len 32]: 9
        return 0
    uint32(accountBalance[address(arg1)].field_0) = arg2
    Mask(224, 0, accountBalance[address(arg1)].field_32) = 0
    if address(accountBalance[address(arg1)].field_1024):
        emit code.data[9137 len 32]: 20
        return 0
    accountBalance[address(arg1)].field_1024 = arg5 or Mask(96, 160, accountBalance[address(arg1)].field_1024)
    accountBalance[arg5].field_512 += accountBalance[address(arg1)].field_512
    accountBalance[address(arg1)].field_512 = 0
    emit 0x56cc4942 
    return 1
}

function sub_05fba8b7(?) payable {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + 8352
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = 0
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 8160] = 0
    if accountBalance[address(arg1)].field_0 >= arg2:
        emit code.data[9137 len 32]: 1
        return 0
    if 0 == uint8(accountBalance[address(arg1)].field_256):
        emit code.data[9137 len 32]: 2
        return 0
    if address(accountBalance[address(arg1)].field_1024) != 0:
        emit code.data[9137 len 32]: 3
        return 0
    if arg3.length / 2 < uint8(accountBalance[address(arg1)].field_264):
        emit code.data[9137 len 32]: 4
        return 0
    if arg4.length >= uint8(accountBalance[address(arg1)].field_264):
        if 0 == arg3.length:
            emit code.data[9137 len 32]: 5
            return 0
        if 0 == arg4.length:
            emit code.data[9137 len 32]: 5
            return 0
        if arg3.length > 512:
            emit code.data[9137 len 32]: 6
            return 0
        s = 0
        s = 0
        idx = 0
        s = 0
        while uint8(idx) < arg3.length:
            require uint8(idx) / 2 < mem[(32 * arg3.length) + 128]
            _188 = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 160]
            require idx < mem[96]
            _192 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _196 = mem[(32 * idx + 1) + 128]
            mem[mem[64] + 32] = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 191 len 1]
            mem[mem[64] + 64] = _192
            mem[mem[64] + 96] = _196
            signer = erecover(sha3('addAccountHolder', arg1, arg2, arg5), _188 << 248, _192, _196) 
            mem[mem[64]] = signer
            require erecover.result
            t = 0
            while uint8(t) < uint8(s):
                require t < 256
                if mem[(32 * t) + (32 * arg3.length) + (32 * arg4.length) + 172 len 20] != address(signer):
                    t = t + 1
                    continue 
                s = signer
                s = _188
                idx = idx + 2
                s = s
                continue 
            mem[0] = address(signer)
            mem[32] = sha3(address(arg1), 0) + 3
            if uint8(accountBalance[address(arg1)][3][address(signer)].field_0):
                require s < 256
                mem[(32 * s) + (32 * arg3.length) + (32 * arg4.length) + 160] = address(signer)
                s = signer
                s = _188
                idx = idx + 2
                s = s + 1
                continue 
            require idx < mem[96]
            require idx + 1 < mem[96]
            emit 0x6cd677ed: sha3('addAccountHolder', arg1, arg2, arg5), address(signer), idx << 248, mem[(32 * idx) + 128], mem[(32 * idx + 1) + 128], uint8(_188)
            emit code.data[9137 len 32]: 8
            return 0
    else:
        if arg3.length / 2 != arg4.length:
            emit code.data[9137 len 32]: 4
            return 0
        if 0 == arg3.length:
            emit code.data[9137 len 32]: 5
            return 0
        if 0 == arg4.length:
            emit code.data[9137 len 32]: 5
            return 0
        if arg3.length > 512:
            emit code.data[9137 len 32]: 6
            return 0
        s = 0
        s = 0
        idx = 0
        s = 0
        while uint8(idx) < arg3.length:
            require uint8(idx) / 2 < mem[(32 * arg3.length) + 128]
            _190 = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 160]
            require idx < mem[96]
            _194 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _199 = mem[(32 * idx + 1) + 128]
            mem[mem[64] + 32] = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 191 len 1]
            mem[mem[64] + 64] = _194
            mem[mem[64] + 96] = _199
            signer = erecover(sha3('addAccountHolder', arg1, arg2, arg5), _190 << 248, _194, _199) 
            mem[mem[64]] = signer
            require erecover.result
            t = 0
            while uint8(t) < uint8(s):
                require t < 256
                if mem[(32 * t) + (32 * arg3.length) + (32 * arg4.length) + 172 len 20] != address(signer):
                    t = t + 1
                    continue 
                s = signer
                s = _190
                idx = idx + 2
                s = s
                continue 
            mem[0] = address(signer)
            mem[32] = sha3(address(arg1), 0) + 3
            if uint8(accountBalance[address(arg1)][3][address(signer)].field_0):
                require s < 256
                mem[(32 * s) + (32 * arg3.length) + (32 * arg4.length) + 160] = address(signer)
                s = signer
                s = _190
                idx = idx + 2
                s = s + 1
                continue 
            require idx < mem[96]
            require idx + 1 < mem[96]
            emit 0x6cd677ed: sha3('addAccountHolder', arg1, arg2, arg5), address(signer), idx << 248, mem[(32 * idx) + 128], mem[(32 * idx + 1) + 128], uint8(_190)
            emit code.data[9137 len 32]: 8
            return 0
    if uint8(s) < uint8(accountBalance[address(arg1)].field_264):
        emit code.data[9137 len 32]: 9
        return 0
    uint32(accountBalance[address(arg1)].field_0) = arg2
    Mask(224, 0, accountBalance[address(arg1)].field_32) = 0
    if address(accountBalance[address(arg1)].field_1024):
        emit code.data[9137 len 32]: 20
        return 0
    if not uint8(accountBalance[address(arg1)][3][address(arg5)].field_0):
        uint8(accountBalance[address(arg1)][3][address(arg5)].field_0) = 1
        accountBalance[address(arg1)].field_256 = Mask(248, 0, accountBalance[address(arg1)].field_264)
    emit 0x56cc4942 
    return 1
}

function sub_ac44ebb0(?) payable {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + 8352
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = 0
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 8160] = 0
    if accountBalance[address(arg1)].field_0 >= arg2:
        emit code.data[9137 len 32]: 1
        return 0
    if 0 == uint8(accountBalance[address(arg1)].field_256):
        emit code.data[9137 len 32]: 2
        return 0
    if address(accountBalance[address(arg1)].field_1024) != 0:
        emit code.data[9137 len 32]: 3
        return 0
    if arg3.length / 2 < uint8(accountBalance[address(arg1)].field_264):
        emit code.data[9137 len 32]: 4
        return 0
    if arg4.length >= uint8(accountBalance[address(arg1)].field_264):
        if 0 == arg3.length:
            emit code.data[9137 len 32]: 5
            return 0
        if 0 == arg4.length:
            emit code.data[9137 len 32]: 5
            return 0
        if arg3.length > 512:
            emit code.data[9137 len 32]: 6
            return 0
        s = 0
        s = 0
        idx = 0
        s = 0
        while uint8(idx) < arg3.length:
            require uint8(idx) / 2 < mem[(32 * arg3.length) + 128]
            _198 = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 160]
            require idx < mem[96]
            _202 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _206 = mem[(32 * idx + 1) + 128]
            mem[mem[64] + 32] = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 191 len 1]
            mem[mem[64] + 64] = _202
            mem[mem[64] + 96] = _206
            signer = erecover(sha3('changeAccountsignaturesRequired', arg1, arg2, arg5), _198 << 248, _202, _206) 
            mem[mem[64]] = signer
            require erecover.result
            t = 0
            while uint8(t) < uint8(s):
                require t < 256
                if mem[(32 * t) + (32 * arg3.length) + (32 * arg4.length) + 172 len 20] != address(signer):
                    t = t + 1
                    continue 
                s = signer
                s = _198
                idx = idx + 2
                s = s
                continue 
            mem[0] = address(signer)
            mem[32] = sha3(address(arg1), 0) + 3
            if uint8(accountBalance[address(arg1)][3][address(signer)].field_0):
                require s < 256
                mem[(32 * s) + (32 * arg3.length) + (32 * arg4.length) + 160] = address(signer)
                s = signer
                s = _198
                idx = idx + 2
                s = s + 1
                continue 
            require idx < mem[96]
            require idx + 1 < mem[96]
            emit 0x6cd677ed: sha3('changeAccountsignaturesRequired', arg1, arg2, arg5), address(signer), idx << 248, mem[(32 * idx) + 128], mem[(32 * idx + 1) + 128], uint8(_198)
            emit code.data[9137 len 32]: 8
            return 0
    else:
        if arg3.length / 2 != arg4.length:
            emit code.data[9137 len 32]: 4
            return 0
        if 0 == arg3.length:
            emit code.data[9137 len 32]: 5
            return 0
        if 0 == arg4.length:
            emit code.data[9137 len 32]: 5
            return 0
        if arg3.length > 512:
            emit code.data[9137 len 32]: 6
            return 0
        s = 0
        s = 0
        idx = 0
        s = 0
        while uint8(idx) < arg3.length:
            require uint8(idx) / 2 < mem[(32 * arg3.length) + 128]
            _200 = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 160]
            require idx < mem[96]
            _204 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _209 = mem[(32 * idx + 1) + 128]
            mem[mem[64] + 32] = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 191 len 1]
            mem[mem[64] + 64] = _204
            mem[mem[64] + 96] = _209
            signer = erecover(sha3('changeAccountsignaturesRequired', arg1, arg2, arg5), _200 << 248, _204, _209) 
            mem[mem[64]] = signer
            require erecover.result
            t = 0
            while uint8(t) < uint8(s):
                require t < 256
                if mem[(32 * t) + (32 * arg3.length) + (32 * arg4.length) + 172 len 20] != address(signer):
                    t = t + 1
                    continue 
                s = signer
                s = _200
                idx = idx + 2
                s = s
                continue 
            mem[0] = address(signer)
            mem[32] = sha3(address(arg1), 0) + 3
            if uint8(accountBalance[address(arg1)][3][address(signer)].field_0):
                require s < 256
                mem[(32 * s) + (32 * arg3.length) + (32 * arg4.length) + 160] = address(signer)
                s = signer
                s = _200
                idx = idx + 2
                s = s + 1
                continue 
            require idx < mem[96]
            require idx + 1 < mem[96]
            emit 0x6cd677ed: sha3('changeAccountsignaturesRequired', arg1, arg2, arg5), address(signer), idx << 248, mem[(32 * idx) + 128], mem[(32 * idx + 1) + 128], uint8(_200)
            emit code.data[9137 len 32]: 8
            return 0
    if uint8(s) < uint8(accountBalance[address(arg1)].field_264):
        emit code.data[9137 len 32]: 9
        return 0
    uint32(accountBalance[address(arg1)].field_0) = arg2
    Mask(224, 0, accountBalance[address(arg1)].field_32) = 0
    if address(accountBalance[address(arg1)].field_1024):
        emit code.data[9137 len 32]: 20
        return 0
    if uint8(accountBalance[address(arg1)].field_256) < arg5:
        emit code.data[9137 len 32]: 23
        return 0
    if 0 == arg5:
        emit code.data[9137 len 32]: 23
        return 0
    Mask(248, 0, accountBalance[address(arg1)].field_264) = Mask(248, 0, arg5)
    emit 0x56cc4942 
    return 1
}

function sub_778c634e(?) payable {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + 8352
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = 0
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 8160] = 0
    if accountBalance[address(arg1)].field_0 >= arg2:
        emit code.data[9137 len 32]: 1
        return 0
    if 0 == uint8(accountBalance[address(arg1)].field_256):
        emit code.data[9137 len 32]: 2
        return 0
    if address(accountBalance[address(arg1)].field_1024) != 0:
        emit code.data[9137 len 32]: 3
        return 0
    if arg3.length / 2 < uint8(accountBalance[address(arg1)].field_264):
        emit code.data[9137 len 32]: 4
        return 0
    if arg4.length >= uint8(accountBalance[address(arg1)].field_264):
        if 0 == arg3.length:
            emit code.data[9137 len 32]: 5
            return 0
        if 0 == arg4.length:
            emit code.data[9137 len 32]: 5
            return 0
        if arg3.length > 512:
            emit code.data[9137 len 32]: 6
            return 0
        s = 0
        s = 0
        idx = 0
        s = 0
        while uint8(idx) < arg3.length:
            require uint8(idx) / 2 < mem[(32 * arg3.length) + 128]
            _210 = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 160]
            require idx < mem[96]
            _214 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _218 = mem[(32 * idx + 1) + 128]
            mem[mem[64] + 32] = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 191 len 1]
            mem[mem[64] + 64] = _214
            mem[mem[64] + 96] = _218
            signer = erecover(sha3('removeAccountHolder', arg1, arg2, arg5), _210 << 248, _214, _218) 
            mem[mem[64]] = signer
            require erecover.result
            t = 0
            while uint8(t) < uint8(s):
                require t < 256
                if mem[(32 * t) + (32 * arg3.length) + (32 * arg4.length) + 172 len 20] != address(signer):
                    t = t + 1
                    continue 
                s = signer
                s = _210
                idx = idx + 2
                s = s
                continue 
            mem[0] = address(signer)
            mem[32] = sha3(address(arg1), 0) + 3
            if uint8(accountBalance[address(arg1)][3][address(signer)].field_0):
                require s < 256
                mem[(32 * s) + (32 * arg3.length) + (32 * arg4.length) + 160] = address(signer)
                s = signer
                s = _210
                idx = idx + 2
                s = s + 1
                continue 
            require idx < mem[96]
            require idx + 1 < mem[96]
            emit 0x6cd677ed: sha3('removeAccountHolder', arg1, arg2, arg5), address(signer), idx << 248, mem[(32 * idx) + 128], mem[(32 * idx + 1) + 128], uint8(_210)
            emit code.data[9137 len 32]: 8
            return 0
    else:
        if arg3.length / 2 != arg4.length:
            emit code.data[9137 len 32]: 4
            return 0
        if 0 == arg3.length:
            emit code.data[9137 len 32]: 5
            return 0
        if 0 == arg4.length:
            emit code.data[9137 len 32]: 5
            return 0
        if arg3.length > 512:
            emit code.data[9137 len 32]: 6
            return 0
        s = 0
        s = 0
        idx = 0
        s = 0
        while uint8(idx) < arg3.length:
            require uint8(idx) / 2 < mem[(32 * arg3.length) + 128]
            _212 = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 160]
            require idx < mem[96]
            _216 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _221 = mem[(32 * idx + 1) + 128]
            mem[mem[64] + 32] = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 191 len 1]
            mem[mem[64] + 64] = _216
            mem[mem[64] + 96] = _221
            signer = erecover(sha3('removeAccountHolder', arg1, arg2, arg5), _212 << 248, _216, _221) 
            mem[mem[64]] = signer
            require erecover.result
            t = 0
            while uint8(t) < uint8(s):
                require t < 256
                if mem[(32 * t) + (32 * arg3.length) + (32 * arg4.length) + 172 len 20] != address(signer):
                    t = t + 1
                    continue 
                s = signer
                s = _212
                idx = idx + 2
                s = s
                continue 
            mem[0] = address(signer)
            mem[32] = sha3(address(arg1), 0) + 3
            if uint8(accountBalance[address(arg1)][3][address(signer)].field_0):
                require s < 256
                mem[(32 * s) + (32 * arg3.length) + (32 * arg4.length) + 160] = address(signer)
                s = signer
                s = _212
                idx = idx + 2
                s = s + 1
                continue 
            require idx < mem[96]
            require idx + 1 < mem[96]
            emit 0x6cd677ed: sha3('removeAccountHolder', arg1, arg2, arg5), address(signer), idx << 248, mem[(32 * idx) + 128], mem[(32 * idx + 1) + 128], uint8(_212)
            emit code.data[9137 len 32]: 8
            return 0
    if uint8(s) < uint8(accountBalance[address(arg1)].field_264):
        emit code.data[9137 len 32]: 9
        return 0
    uint32(accountBalance[address(arg1)].field_0) = arg2
    Mask(224, 0, accountBalance[address(arg1)].field_32) = 0
    if address(accountBalance[address(arg1)].field_1024):
        emit code.data[9137 len 32]: 20
        return 0
    if arg1 == arg5:
        emit code.data[9137 len 32]: 22
        return 0
    if uint8(accountBalance[address(arg1)][3][address(arg5)].field_0):
        if uint8(accountBalance[address(arg1)].field_264) != uint8(accountBalance[address(arg1)].field_256):
            uint8(accountBalance[address(arg1)][3][address(arg5)].field_0) = 0
            accountBalance[address(arg1)].field_256 = Mask(248, 0, accountBalance[address(arg1)].field_264)
    emit 0x56cc4942 
    return 1
}

function annualInterest() payable {
    mem[64] = 96
    if stor10 + sub_1f471849 > block.timestamp:
        emit code.data[9137 len 32]: 104
        return 0
    if block.timestamp - createdAt / sub_f263123e <= 90:
        s = 0
        s = 0
        idx = 0
        while idx < stor13.length:
            mem[0] = address(stor13[idx])
            mem[32] = 0
            if not address(accountBalance[address(stor13[idx])].field_1024):
                mem[32] = 12
                if stor12[address(stor13[idx])].field_256 > 0:
                    accountBalance[address(stor13[idx])].field_512 += 100 * stor12[address(stor13[idx])].field_256 / 130
                    mem[mem[64]] = 0
                    mem[mem[64] + 32] = address(stor13[idx])
                    mem[mem[64] + 64] = block.timestamp
                    mem[mem[64] + 96] = 100 * stor12[address(stor13[idx])].field_256 / 130
                    mem[mem[64] + 128] = 0
                    emit 0x9f837f1f: 0, address(stor13[idx]), block.timestamp, 100 * stor12[address(stor13[idx])].field_256 / 130, 0
                mem[0] = address(stor13[idx])
                mem[32] = 12
                uint8(stor12[address(stor13[idx])].field_0) = 0
                stor12[address(stor13[idx])].field_256 = 0
            s = sha3(address(stor13[idx]), 0)
            s = address(stor13[idx])
            idx = idx + 1
            continue 
    else:
        if block.timestamp - createdAt / sub_f263123e <= 180:
            s = 0
            s = 0
            idx = 0
            while idx < stor13.length:
                mem[0] = address(stor13[idx])
                mem[32] = 0
                if not address(accountBalance[address(stor13[idx])].field_1024):
                    mem[32] = 12
                    if stor12[address(stor13[idx])].field_256 > 0:
                        accountBalance[address(stor13[idx])].field_512 += 100 * stor12[address(stor13[idx])].field_256 / 100
                        mem[mem[64]] = 0
                        mem[mem[64] + 32] = address(stor13[idx])
                        mem[mem[64] + 64] = block.timestamp
                        mem[mem[64] + 96] = 100 * stor12[address(stor13[idx])].field_256 / 100
                        mem[mem[64] + 128] = 0
                        emit 0x9f837f1f: 0, address(stor13[idx]), block.timestamp, 100 * stor12[address(stor13[idx])].field_256 / 100, 0
                    mem[0] = address(stor13[idx])
                    mem[32] = 12
                    uint8(stor12[address(stor13[idx])].field_0) = 0
                    stor12[address(stor13[idx])].field_256 = 0
                s = sha3(address(stor13[idx]), 0)
                s = address(stor13[idx])
                idx = idx + 1
                continue 
        else:
            if block.timestamp - createdAt / sub_f263123e <= 270:
                s = 0
                s = 0
                idx = 0
                while idx < stor13.length:
                    mem[0] = address(stor13[idx])
                    mem[32] = 0
                    if not address(accountBalance[address(stor13[idx])].field_1024):
                        mem[32] = 12
                        if stor12[address(stor13[idx])].field_256 > 0:
                            accountBalance[address(stor13[idx])].field_512 += 100 * stor12[address(stor13[idx])].field_256 / 80
                            mem[mem[64]] = 0
                            mem[mem[64] + 32] = address(stor13[idx])
                            mem[mem[64] + 64] = block.timestamp
                            mem[mem[64] + 96] = 100 * stor12[address(stor13[idx])].field_256 / 80
                            mem[mem[64] + 128] = 0
                            emit 0x9f837f1f: 0, address(stor13[idx]), block.timestamp, 100 * stor12[address(stor13[idx])].field_256 / 80, 0
                        mem[0] = address(stor13[idx])
                        mem[32] = 12
                        uint8(stor12[address(stor13[idx])].field_0) = 0
                        stor12[address(stor13[idx])].field_256 = 0
                    s = sha3(address(stor13[idx]), 0)
                    s = address(stor13[idx])
                    idx = idx + 1
                    continue 
            else:
                if block.timestamp - createdAt / sub_f263123e <= 360:
                    s = 0
                    s = 0
                    idx = 0
                    while idx < stor13.length:
                        mem[0] = address(stor13[idx])
                        mem[32] = 0
                        if not address(accountBalance[address(stor13[idx])].field_1024):
                            mem[32] = 12
                            if stor12[address(stor13[idx])].field_256 > 0:
                                accountBalance[address(stor13[idx])].field_512 += 100 * stor12[address(stor13[idx])].field_256 / 50
                                mem[mem[64]] = 0
                                mem[mem[64] + 32] = address(stor13[idx])
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = 100 * stor12[address(stor13[idx])].field_256 / 50
                                mem[mem[64] + 128] = 0
                                emit 0x9f837f1f: 0, address(stor13[idx]), block.timestamp, 100 * stor12[address(stor13[idx])].field_256 / 50, 0
                            mem[0] = address(stor13[idx])
                            mem[32] = 12
                            uint8(stor12[address(stor13[idx])].field_0) = 0
                            stor12[address(stor13[idx])].field_256 = 0
                        s = sha3(address(stor13[idx]), 0)
                        s = address(stor13[idx])
                        idx = idx + 1
                        continue 
                else:
                    if block.timestamp - createdAt / sub_f263123e > 2190:
                        sub_10666547 = 1
                        emit code.data[9137 len 32]: 105
                        return 0
                    s = 0
                    s = 0
                    idx = 0
                    while idx < stor13.length:
                        mem[0] = address(stor13[idx])
                        mem[32] = 0
                        if not address(accountBalance[address(stor13[idx])].field_1024):
                            mem[32] = 12
                            if stor12[address(stor13[idx])].field_256 > 0:
                                accountBalance[address(stor13[idx])].field_512 += 100 * stor12[address(stor13[idx])].field_256 / 20
                                mem[mem[64]] = 0
                                mem[mem[64] + 32] = address(stor13[idx])
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = 100 * stor12[address(stor13[idx])].field_256 / 20
                                mem[mem[64] + 128] = 0
                                emit 0x9f837f1f: 0, address(stor13[idx]), block.timestamp, 100 * stor12[address(stor13[idx])].field_256 / 20, 0
                            mem[0] = address(stor13[idx])
                            mem[32] = 12
                            uint8(stor12[address(stor13[idx])].field_0) = 0
                            stor12[address(stor13[idx])].field_256 = 0
                        s = sha3(address(stor13[idx]), 0)
                        s = address(stor13[idx])
                        idx = idx + 1
                        continue 
    stor13.length = 0
    idx = 0xd7b6990105719101dabeb77144f2a3385c8033acd3af97e9423a695e81ad1eb5
    while stor13.length - 0x284966fefa8e6efe2541488ebb0d5cc7a37fcc532c506816bdc596a17e52e14b > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    return 1
}

function sub_f3ac48f6(?) payable {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[64] = (32 * arg3.length) + (32 * arg2.length) + 8352
    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 0
    mem[(32 * arg3.length) + (32 * arg2.length) + 192 len 8160] = 0
    if accountBalance[address(stor8)].field_0 >= arg1:
        emit code.data[9137 len 32]: 1
    else:
        if 0 == uint8(accountBalance[address(stor8)].field_256):
            emit code.data[9137 len 32]: 2
        else:
            if address(accountBalance[address(stor8)].field_1024) != 0:
                emit code.data[9137 len 32]: 3
            else:
                if arg2.length / 2 < uint8(accountBalance[address(stor8)].field_264):
                    emit code.data[9137 len 32]: 4
                else:
                    if arg3.length >= uint8(accountBalance[address(stor8)].field_264):
                        if 0 == arg2.length:
                            emit code.data[9137 len 32]: 5
                        else:
                            if 0 == arg3.length:
                                emit code.data[9137 len 32]: 5
                            else:
                                if arg2.length > 512:
                                    emit code.data[9137 len 32]: 6
                                else:
                                    s = 0
                                    s = 0
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < arg2.length:
                                        require uint8(idx) / 2 < mem[(32 * arg2.length) + 128]
                                        _172 = mem[(16 * Mask(7, 1, idx)) + (32 * arg2.length) + 160]
                                        require idx < mem[96]
                                        _176 = mem[(32 * idx) + 128]
                                        require idx + 1 < mem[96]
                                        _180 = mem[(32 * idx + 1) + 128]
                                        mem[mem[64] + 32] = mem[(16 * Mask(7, 1, idx)) + (32 * arg2.length) + 191 len 1]
                                        mem[mem[64] + 64] = _176
                                        mem[mem[64] + 96] = _180
                                        signer = erecover(sha3('changeFeeStructure', arg1, arg4, arg5, arg6), _172 << 248, _176, _180) 
                                        mem[mem[64]] = signer
                                        require erecover.result
                                        t = 0
                                        while uint8(t) < uint8(s):
                                            require t < 256
                                            if mem[(32 * t) + (32 * arg3.length) + (32 * arg2.length) + 172 len 20] != address(signer):
                                                t = t + 1
                                                continue 
                                            s = signer
                                            s = _172
                                            idx = idx + 2
                                            s = s
                                            continue 
                                        mem[0] = address(signer)
                                        mem[32] = sha3(address(stor8), 0) + 3
                                        if uint8(accountBalance[address(stor8)][3][address(signer)].field_0):
                                            require s < 256
                                            mem[(32 * s) + (32 * arg3.length) + (32 * arg2.length) + 160] = address(signer)
                                            s = signer
                                            s = _172
                                            idx = idx + 2
                                            s = s + 1
                                            continue 
                                        require idx < mem[96]
                                        require idx + 1 < mem[96]
                                        emit 0x6cd677ed: sha3('changeFeeStructure', arg1, arg4, arg5, arg6), address(signer), idx << 248, mem[(32 * idx) + 128], mem[(32 * idx + 1) + 128], uint8(_172)
                                        emit code.data[9137 len 32]: 8
                                        return 0
                                    if uint8(s) < uint8(accountBalance[address(stor8)].field_264):
                                        emit code.data[9137 len 32]: 9
                                    else:
                                        uint32(accountBalance[address(stor8)].field_0) = arg1
                                        Mask(224, 0, accountBalance[address(stor8)].field_32) = 0
                                        if arg4 >= 0:
                                            if arg5 >= 0:
                                                if arg5 <= 100:
                                                    if absMaxFee >= 0:
                                                        if absMaxFee >= arg4:
                                                            return 1
                    else:
                        if arg2.length / 2 != arg3.length:
                            emit code.data[9137 len 32]: 4
                        else:
                            if 0 == arg2.length:
                                emit code.data[9137 len 32]: 5
                            else:
                                if 0 == arg3.length:
                                    emit code.data[9137 len 32]: 5
                                else:
                                    if arg2.length > 512:
                                        emit code.data[9137 len 32]: 6
                                    else:
                                        s = 0
                                        s = 0
                                        idx = 0
                                        s = 0
                                        while uint8(idx) < arg2.length:
                                            require uint8(idx) / 2 < mem[(32 * arg2.length) + 128]
                                            _174 = mem[(16 * Mask(7, 1, idx)) + (32 * arg2.length) + 160]
                                            require idx < mem[96]
                                            _178 = mem[(32 * idx) + 128]
                                            require idx + 1 < mem[96]
                                            _183 = mem[(32 * idx + 1) + 128]
                                            mem[mem[64] + 32] = mem[(16 * Mask(7, 1, idx)) + (32 * arg2.length) + 191 len 1]
                                            mem[mem[64] + 64] = _178
                                            mem[mem[64] + 96] = _183
                                            signer = erecover(sha3('changeFeeStructure', arg1, arg4, arg5, arg6), _174 << 248, _178, _183) 
                                            mem[mem[64]] = signer
                                            require erecover.result
                                            t = 0
                                            while uint8(t) < uint8(s):
                                                require t < 256
                                                if mem[(32 * t) + (32 * arg3.length) + (32 * arg2.length) + 172 len 20] != address(signer):
                                                    t = t + 1
                                                    continue 
                                                s = signer
                                                s = _174
                                                idx = idx + 2
                                                s = s
                                                continue 
                                            mem[0] = address(signer)
                                            mem[32] = sha3(address(stor8), 0) + 3
                                            if uint8(accountBalance[address(stor8)][3][address(signer)].field_0):
                                                require s < 256
                                                mem[(32 * s) + (32 * arg3.length) + (32 * arg2.length) + 160] = address(signer)
                                                s = signer
                                                s = _174
                                                idx = idx + 2
                                                s = s + 1
                                                continue 
                                            require idx < mem[96]
                                            require idx + 1 < mem[96]
                                            emit 0x6cd677ed: sha3('changeFeeStructure', arg1, arg4, arg5, arg6), address(signer), idx << 248, mem[(32 * idx) + 128], mem[(32 * idx + 1) + 128], uint8(_174)
                                            emit code.data[9137 len 32]: 8
                                            return 0
                                        if uint8(s) < uint8(accountBalance[address(stor8)].field_264):
                                            emit code.data[9137 len 32]: 9
                                        else:
                                            uint32(accountBalance[address(stor8)].field_0) = arg1
                                            Mask(224, 0, accountBalance[address(stor8)].field_32) = 0
                                            if arg4 >= 0:
                                                if arg5 >= 0:
                                                    if arg5 <= 100:
                                                        if absMaxFee >= 0:
                                                            if absMaxFee >= arg4:
                                                                return 1
    return 0
}

function sub_ee95e8b6(?) payable {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[64] = (32 * arg3.length) + (32 * arg2.length) + 8352
    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 0
    mem[(32 * arg3.length) + (32 * arg2.length) + 192 len 8160] = 0
    if accountBalance[address(stor6.field_0)].field_0 >= arg1:
        emit code.data[9137 len 32]: 1
    else:
        if 0 == uint8(accountBalance[address(stor6.field_0)].field_256):
            emit code.data[9137 len 32]: 2
        else:
            if address(accountBalance[address(stor6.field_0)].field_1024) != 0:
                emit code.data[9137 len 32]: 3
            else:
                if arg2.length / 2 < uint8(accountBalance[address(stor6.field_0)].field_264):
                    emit code.data[9137 len 32]: 4
                else:
                    if arg3.length >= uint8(accountBalance[address(stor6.field_0)].field_264):
                        if 0 == arg2.length:
                            emit code.data[9137 len 32]: 5
                        else:
                            if 0 == arg3.length:
                                emit code.data[9137 len 32]: 5
                            else:
                                if arg2.length > 512:
                                    emit code.data[9137 len 32]: 6
                                else:
                                    s = 0
                                    s = 0
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < arg2.length:
                                        require uint8(idx) / 2 < mem[(32 * arg2.length) + 128]
                                        _126 = mem[(16 * Mask(7, 1, idx)) + (32 * arg2.length) + 160]
                                        require idx < mem[96]
                                        _130 = mem[(32 * idx) + 128]
                                        require idx + 1 < mem[96]
                                        _134 = mem[(32 * idx + 1) + 128]
                                        mem[mem[64] + 32] = mem[(16 * Mask(7, 1, idx)) + (32 * arg2.length) + 191 len 1]
                                        mem[mem[64] + 64] = _130
                                        mem[mem[64] + 96] = _134
                                        signer = erecover(sha3('changeFeeAddress', arg1, arg4), _126 << 248, _130, _134) 
                                        mem[mem[64]] = signer
                                        require erecover.result
                                        t = 0
                                        while uint8(t) < uint8(s):
                                            require t < 256
                                            if mem[(32 * t) + (32 * arg3.length) + (32 * arg2.length) + 172 len 20] != address(signer):
                                                t = t + 1
                                                continue 
                                            s = signer
                                            s = _126
                                            idx = idx + 2
                                            s = s
                                            continue 
                                        mem[0] = address(signer)
                                        mem[32] = sha3(address(stor6.field_0), 0) + 3
                                        if uint8(accountBalance[address(stor6.field_0)][3][address(signer)].field_0):
                                            require s < 256
                                            mem[(32 * s) + (32 * arg3.length) + (32 * arg2.length) + 160] = address(signer)
                                            s = signer
                                            s = _126
                                            idx = idx + 2
                                            s = s + 1
                                            continue 
                                        require idx < mem[96]
                                        require idx + 1 < mem[96]
                                        emit 0x6cd677ed: sha3('changeFeeAddress', arg1, arg4), address(signer), idx << 248, mem[(32 * idx) + 128], mem[(32 * idx + 1) + 128], uint8(_126)
                                        emit code.data[9137 len 32]: 8
                                    if uint8(s) < uint8(accountBalance[address(stor6.field_0)].field_264):
                                        emit code.data[9137 len 32]: 9
                                    else:
                                        uint32(accountBalance[address(stor6.field_0)].field_0) = arg1
                                        Mask(224, 0, accountBalance[address(stor6.field_0)].field_32) = 0
                                        if uint8(stor6.field_168) < uint8(stor6.field_160):
                                            Mask(96, 0, stor6.field_160) = Mask(96, 0, uint8(stor6.field_160) + 1)
                                            uint256(stor5) = arg4 or Mask(96, 160, uint256(stor5))
                                        else:
                                            if block.timestamp >= -(stor7 % 24 * 3600) + stor7 + (24 * 3600):
                                                uint8(stor6.field_160) = 0
                                            else:
                                                emit code.data[9137 len 32]: 106
                    else:
                        if arg2.length / 2 != arg3.length:
                            emit code.data[9137 len 32]: 4
                        else:
                            if 0 == arg2.length:
                                emit code.data[9137 len 32]: 5
                            else:
                                if 0 == arg3.length:
                                    emit code.data[9137 len 32]: 5
                                else:
                                    if arg2.length > 512:
                                        emit code.data[9137 len 32]: 6
                                    else:
                                        s = 0
                                        s = 0
                                        idx = 0
                                        s = 0
                                        while uint8(idx) < arg2.length:
                                            require uint8(idx) / 2 < mem[(32 * arg2.length) + 128]
                                            _128 = mem[(16 * Mask(7, 1, idx)) + (32 * arg2.length) + 160]
                                            require idx < mem[96]
                                            _132 = mem[(32 * idx) + 128]
                                            require idx + 1 < mem[96]
                                            _137 = mem[(32 * idx + 1) + 128]
                                            mem[mem[64] + 32] = mem[(16 * Mask(7, 1, idx)) + (32 * arg2.length) + 191 len 1]
                                            mem[mem[64] + 64] = _132
                                            mem[mem[64] + 96] = _137
                                            signer = erecover(sha3('changeFeeAddress', arg1, arg4), _128 << 248, _132, _137) 
                                            mem[mem[64]] = signer
                                            require erecover.result
                                            t = 0
                                            while uint8(t) < uint8(s):
                                                require t < 256
                                                if mem[(32 * t) + (32 * arg3.length) + (32 * arg2.length) + 172 len 20] != address(signer):
                                                    t = t + 1
                                                    continue 
                                                s = signer
                                                s = _128
                                                idx = idx + 2
                                                s = s
                                                continue 
                                            mem[0] = address(signer)
                                            mem[32] = sha3(address(stor6.field_0), 0) + 3
                                            if uint8(accountBalance[address(stor6.field_0)][3][address(signer)].field_0):
                                                require s < 256
                                                mem[(32 * s) + (32 * arg3.length) + (32 * arg2.length) + 160] = address(signer)
                                                s = signer
                                                s = _128
                                                idx = idx + 2
                                                s = s + 1
                                                continue 
                                            require idx < mem[96]
                                            require idx + 1 < mem[96]
                                            emit 0x6cd677ed: sha3('changeFeeAddress', arg1, arg4), address(signer), idx << 248, mem[(32 * idx) + 128], mem[(32 * idx + 1) + 128], uint8(_128)
                                            emit code.data[9137 len 32]: 8
                                        if uint8(s) < uint8(accountBalance[address(stor6.field_0)].field_264):
                                            emit code.data[9137 len 32]: 9
                                        else:
                                            uint32(accountBalance[address(stor6.field_0)].field_0) = arg1
                                            Mask(224, 0, accountBalance[address(stor6.field_0)].field_32) = 0
                                            if uint8(stor6.field_168) < uint8(stor6.field_160):
                                                Mask(96, 0, stor6.field_160) = Mask(96, 0, uint8(stor6.field_160) + 1)
                                                uint256(stor5) = arg4 or Mask(96, 160, uint256(stor5))
                                            else:
                                                if block.timestamp >= -(stor7 % 24 * 3600) + stor7 + (24 * 3600):
                                                    uint8(stor6.field_160) = 0
                                                else:
                                                    emit code.data[9137 len 32]: 106
}

function sub_77a6fc25(?) payable {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[64] = (32 * arg3.length) + (32 * arg2.length) + 8352
    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 0
    mem[(32 * arg3.length) + (32 * arg2.length) + 192 len 8160] = 0
    if accountBalance[address(stor6.field_0)].field_0 >= arg1:
        emit code.data[9137 len 32]: 1
    else:
        if 0 == uint8(accountBalance[address(stor6.field_0)].field_256):
            emit code.data[9137 len 32]: 2
        else:
            if address(accountBalance[address(stor6.field_0)].field_1024) != 0:
                emit code.data[9137 len 32]: 3
            else:
                if arg2.length / 2 < uint8(accountBalance[address(stor6.field_0)].field_264):
                    emit code.data[9137 len 32]: 4
                else:
                    if arg3.length >= uint8(accountBalance[address(stor6.field_0)].field_264):
                        if 0 == arg2.length:
                            emit code.data[9137 len 32]: 5
                        else:
                            if 0 == arg3.length:
                                emit code.data[9137 len 32]: 5
                            else:
                                if arg2.length > 512:
                                    emit code.data[9137 len 32]: 6
                                else:
                                    s = 0
                                    s = 0
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < arg2.length:
                                        require uint8(idx) / 2 < mem[(32 * arg2.length) + 128]
                                        _126 = mem[(16 * Mask(7, 1, idx)) + (32 * arg2.length) + 160]
                                        require idx < mem[96]
                                        _130 = mem[(32 * idx) + 128]
                                        require idx + 1 < mem[96]
                                        _134 = mem[(32 * idx + 1) + 128]
                                        mem[mem[64] + 32] = mem[(16 * Mask(7, 1, idx)) + (32 * arg2.length) + 191 len 1]
                                        mem[mem[64] + 64] = _130
                                        mem[mem[64] + 96] = _134
                                        signer = erecover(sha3('changeCronAddress', arg1, arg4), _126 << 248, _130, _134) 
                                        mem[mem[64]] = signer
                                        require erecover.result
                                        t = 0
                                        while uint8(t) < uint8(s):
                                            require t < 256
                                            if mem[(32 * t) + (32 * arg3.length) + (32 * arg2.length) + 172 len 20] != address(signer):
                                                t = t + 1
                                                continue 
                                            s = signer
                                            s = _126
                                            idx = idx + 2
                                            s = s
                                            continue 
                                        mem[0] = address(signer)
                                        mem[32] = sha3(address(stor6.field_0), 0) + 3
                                        if uint8(accountBalance[address(stor6.field_0)][3][address(signer)].field_0):
                                            require s < 256
                                            mem[(32 * s) + (32 * arg3.length) + (32 * arg2.length) + 160] = address(signer)
                                            s = signer
                                            s = _126
                                            idx = idx + 2
                                            s = s + 1
                                            continue 
                                        require idx < mem[96]
                                        require idx + 1 < mem[96]
                                        emit 0x6cd677ed: sha3('changeCronAddress', arg1, arg4), address(signer), idx << 248, mem[(32 * idx) + 128], mem[(32 * idx + 1) + 128], uint8(_126)
                                        emit code.data[9137 len 32]: 8
                                    if uint8(s) < uint8(accountBalance[address(stor6.field_0)].field_264):
                                        emit code.data[9137 len 32]: 9
                                    else:
                                        uint32(accountBalance[address(stor6.field_0)].field_0) = arg1
                                        Mask(224, 0, accountBalance[address(stor6.field_0)].field_32) = 0
                                        if uint8(stor6.field_168) < uint8(stor6.field_160):
                                            Mask(96, 0, stor6.field_160) = Mask(96, 0, uint8(stor6.field_160) + 1)
                                            uint256(stor8) = arg4 or Mask(96, 160, uint256(stor8))
                                        else:
                                            if block.timestamp >= -(stor7 % 24 * 3600) + stor7 + (24 * 3600):
                                                uint8(stor6.field_160) = 0
                                            else:
                                                emit code.data[9137 len 32]: 106
                    else:
                        if arg2.length / 2 != arg3.length:
                            emit code.data[9137 len 32]: 4
                        else:
                            if 0 == arg2.length:
                                emit code.data[9137 len 32]: 5
                            else:
                                if 0 == arg3.length:
                                    emit code.data[9137 len 32]: 5
                                else:
                                    if arg2.length > 512:
                                        emit code.data[9137 len 32]: 6
                                    else:
                                        s = 0
                                        s = 0
                                        idx = 0
                                        s = 0
                                        while uint8(idx) < arg2.length:
                                            require uint8(idx) / 2 < mem[(32 * arg2.length) + 128]
                                            _128 = mem[(16 * Mask(7, 1, idx)) + (32 * arg2.length) + 160]
                                            require idx < mem[96]
                                            _132 = mem[(32 * idx) + 128]
                                            require idx + 1 < mem[96]
                                            _137 = mem[(32 * idx + 1) + 128]
                                            mem[mem[64] + 32] = mem[(16 * Mask(7, 1, idx)) + (32 * arg2.length) + 191 len 1]
                                            mem[mem[64] + 64] = _132
                                            mem[mem[64] + 96] = _137
                                            signer = erecover(sha3('changeCronAddress', arg1, arg4), _128 << 248, _132, _137) 
                                            mem[mem[64]] = signer
                                            require erecover.result
                                            t = 0
                                            while uint8(t) < uint8(s):
                                                require t < 256
                                                if mem[(32 * t) + (32 * arg3.length) + (32 * arg2.length) + 172 len 20] != address(signer):
                                                    t = t + 1
                                                    continue 
                                                s = signer
                                                s = _128
                                                idx = idx + 2
                                                s = s
                                                continue 
                                            mem[0] = address(signer)
                                            mem[32] = sha3(address(stor6.field_0), 0) + 3
                                            if uint8(accountBalance[address(stor6.field_0)][3][address(signer)].field_0):
                                                require s < 256
                                                mem[(32 * s) + (32 * arg3.length) + (32 * arg2.length) + 160] = address(signer)
                                                s = signer
                                                s = _128
                                                idx = idx + 2
                                                s = s + 1
                                                continue 
                                            require idx < mem[96]
                                            require idx + 1 < mem[96]
                                            emit 0x6cd677ed: sha3('changeCronAddress', arg1, arg4), address(signer), idx << 248, mem[(32 * idx) + 128], mem[(32 * idx + 1) + 128], uint8(_128)
                                            emit code.data[9137 len 32]: 8
                                        if uint8(s) < uint8(accountBalance[address(stor6.field_0)].field_264):
                                            emit code.data[9137 len 32]: 9
                                        else:
                                            uint32(accountBalance[address(stor6.field_0)].field_0) = arg1
                                            Mask(224, 0, accountBalance[address(stor6.field_0)].field_32) = 0
                                            if uint8(stor6.field_168) < uint8(stor6.field_160):
                                                Mask(96, 0, stor6.field_160) = Mask(96, 0, uint8(stor6.field_160) + 1)
                                                uint256(stor8) = arg4 or Mask(96, 160, uint256(stor8))
                                            else:
                                                if block.timestamp >= -(stor7 % 24 * 3600) + stor7 + (24 * 3600):
                                                    uint8(stor6.field_160) = 0
                                                else:
                                                    emit code.data[9137 len 32]: 106
}

function sub_651e723c(?) payable {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg6.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    if uint8(accountBalance[address(arg1)].field_256) > 0:
        emit code.data[9137 len 32]: 107
        return 0
    uint8(accountBalance[address(arg1)].field_256) = 1
    uint8(accountBalance[address(arg1)].field_264) = 1
    uint8(accountBalance[address(arg1)][3][address(arg1)].field_0) = 1
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg6.length) + 259 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + (32 * arg6.length) + 8384
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg6.length) + 192] = 0
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg6.length) + 224 len 8160] = 0
    if accountBalance[address(arg1)].field_0 >= arg2:
        emit code.data[9137 len 32]: 120
        return 0
    if 0 == uint8(accountBalance[address(arg1)].field_256):
        emit code.data[9137 len 32]: 120
        return 0
    if address(accountBalance[address(arg1)].field_1024) != 0:
        emit code.data[9137 len 32]: 120
        return 0
    if arg3.length / 2 < uint8(accountBalance[address(arg1)].field_264):
        emit code.data[9137 len 32]: 120
        return 0
    if arg5 > 0:
        if arg4.length >= uint8(accountBalance[address(arg1)].field_264):
            if 0 == arg3.length:
                emit code.data[9137 len 32]: 120
                return 0
            if 0 == arg4.length:
                emit code.data[9137 len 32]: 120
                return 0
            if arg3.length > 512:
                emit code.data[9137 len 32]: 120
                return 0
            s = 0
            s = 0
            idx = 0
            s = 0
            while uint8(idx) < arg3.length:
                require uint8(idx) / 2 < mem[(32 * arg3.length) + 128]
                _343 = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 160]
                require idx < mem[96]
                _351 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _359 = mem[(32 * idx + 1) + 128]
                mem[mem[64] + 32] = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 191 len 1]
                mem[mem[64] + 64] = _351
                mem[mem[64] + 96] = _359
                signer = erecover(sha3('initAccount', arg1, arg2, arg5, call.data[arg6 + 36 len 32 * arg6.length]), _343 << 248, _351, _359) 
                mem[mem[64]] = signer
                require erecover.result
                t = 0
                while uint8(t) < uint8(s):
                    require t < 256
                    if mem[(32 * t) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg6.length) + 204 len 20] != address(signer):
                        t = t + 1
                        continue 
                    s = signer
                    s = _343
                    idx = idx + 2
                    s = s
                    continue 
                mem[0] = address(signer)
                mem[32] = sha3(address(arg1), 0) + 3
                if uint8(accountBalance[address(arg1)][3][address(signer)].field_0):
                    require s < 256
                    mem[(32 * s) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg6.length) + 192] = address(signer)
                    s = signer
                    s = _343
                    idx = idx + 2
                    s = s + 1
                    continue 
                require idx < mem[96]
                require idx + 1 < mem[96]
                emit 0x6cd677ed: sha3('initAccount', arg1, arg2, arg5, call.data[arg6 + 36 len 32 * arg6.length]), address(signer), idx << 248, mem[(32 * idx) + 128], mem[(32 * idx + 1) + 128], uint8(_343)
                emit code.data[9137 len 32]: 120
                return 0
        else:
            if arg3.length / 2 != arg4.length:
                emit code.data[9137 len 32]: 120
                return 0
            if 0 == arg3.length:
                emit code.data[9137 len 32]: 120
                return 0
            if 0 == arg4.length:
                emit code.data[9137 len 32]: 120
                return 0
            if arg3.length > 512:
                emit code.data[9137 len 32]: 120
                return 0
            s = 0
            s = 0
            idx = 0
            s = 0
            while uint8(idx) < arg3.length:
                require uint8(idx) / 2 < mem[(32 * arg3.length) + 128]
                _345 = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 160]
                require idx < mem[96]
                _353 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _362 = mem[(32 * idx + 1) + 128]
                mem[mem[64] + 32] = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 191 len 1]
                mem[mem[64] + 64] = _353
                mem[mem[64] + 96] = _362
                signer = erecover(sha3('initAccount', arg1, arg2, arg5, call.data[arg6 + 36 len 32 * arg6.length]), _345 << 248, _353, _362) 
                mem[mem[64]] = signer
                require erecover.result
                t = 0
                while uint8(t) < uint8(s):
                    require t < 256
                    if mem[(32 * t) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg6.length) + 204 len 20] != address(signer):
                        t = t + 1
                        continue 
                    s = signer
                    s = _345
                    idx = idx + 2
                    s = s
                    continue 
                mem[0] = address(signer)
                mem[32] = sha3(address(arg1), 0) + 3
                if uint8(accountBalance[address(arg1)][3][address(signer)].field_0):
                    require s < 256
                    mem[(32 * s) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg6.length) + 192] = address(signer)
                    s = signer
                    s = _345
                    idx = idx + 2
                    s = s + 1
                    continue 
                require idx < mem[96]
                require idx + 1 < mem[96]
                emit 0x6cd677ed: sha3('initAccount', arg1, arg2, arg5, call.data[arg6 + 36 len 32 * arg6.length]), address(signer), idx << 248, mem[(32 * idx) + 128], mem[(32 * idx + 1) + 128], uint8(_345)
                emit code.data[9137 len 32]: 120
                return 0
        if uint8(s) < uint8(accountBalance[address(arg1)].field_264):
            emit code.data[9137 len 32]: 120
            return 0
        uint32(accountBalance[address(arg1)].field_0) = arg2
        Mask(224, 0, accountBalance[address(arg1)].field_32) = 0
        idx = 0
        while uint8(idx) < mem[(32 * arg3.length) + (32 * arg4.length) + 160]:
            require idx < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
            mem[0] = mem[(32 * arg3.length) + (32 * arg4.length) + (32 * idx) + 204 len 20]
            mem[32] = sha3(address(arg1), 0) + 3
            uint8(accountBalance[address(arg1)][3][mem[(32 * arg3.length) + (32 * arg4.length) + (32 * idx) + 204 len 20]].field_0) = 1
            idx = idx + 1
            continue 
        uint8(accountBalance[address(arg1)].field_256) = mem[(32 * arg3.length) + (32 * arg4.length) + 191 len 1]
        Mask(248, 0, accountBalance[address(arg1)].field_264) = Mask(248, 0, arg5)
    else:
        if arg4.length >= uint8(accountBalance[address(arg1)].field_264):
            if 0 == arg3.length:
                emit code.data[9137 len 32]: 120
                return 0
            if 0 == arg4.length:
                emit code.data[9137 len 32]: 120
                return 0
            if arg3.length > 512:
                emit code.data[9137 len 32]: 120
                return 0
            s = 0
            s = 0
            idx = 0
            s = 0
            while uint8(idx) < arg3.length:
                require uint8(idx) / 2 < mem[(32 * arg3.length) + 128]
                _347 = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 160]
                require idx < mem[96]
                _355 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _365 = mem[(32 * idx + 1) + 128]
                mem[mem[64] + 32] = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 191 len 1]
                mem[mem[64] + 64] = _355
                mem[mem[64] + 96] = _365
                signer = erecover(sha3('initAccount', arg1, arg2, 1, call.data[arg6 + 36 len 32 * arg6.length]), _347 << 248, _355, _365) 
                mem[mem[64]] = signer
                require erecover.result
                t = 0
                while uint8(t) < uint8(s):
                    require t < 256
                    if mem[(32 * t) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg6.length) + 204 len 20] != address(signer):
                        t = t + 1
                        continue 
                    s = signer
                    s = _347
                    idx = idx + 2
                    s = s
                    continue 
                mem[0] = address(signer)
                mem[32] = sha3(address(arg1), 0) + 3
                if uint8(accountBalance[address(arg1)][3][address(signer)].field_0):
                    require s < 256
                    mem[(32 * s) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg6.length) + 192] = address(signer)
                    s = signer
                    s = _347
                    idx = idx + 2
                    s = s + 1
                    continue 
                require idx < mem[96]
                require idx + 1 < mem[96]
                emit 0x6cd677ed: sha3('initAccount', arg1, arg2, 1, call.data[arg6 + 36 len 32 * arg6.length]), address(signer), idx << 248, mem[(32 * idx) + 128], mem[(32 * idx + 1) + 128], uint8(_347)
                emit code.data[9137 len 32]: 120
                return 0
        else:
            if arg3.length / 2 != arg4.length:
                emit code.data[9137 len 32]: 120
                return 0
            if 0 == arg3.length:
                emit code.data[9137 len 32]: 120
                return 0
            if 0 == arg4.length:
                emit code.data[9137 len 32]: 120
                return 0
            if arg3.length > 512:
                emit code.data[9137 len 32]: 120
                return 0
            s = 0
            s = 0
            idx = 0
            s = 0
            while uint8(idx) < arg3.length:
                require uint8(idx) / 2 < mem[(32 * arg3.length) + 128]
                _349 = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 160]
                require idx < mem[96]
                _357 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _368 = mem[(32 * idx + 1) + 128]
                mem[mem[64] + 32] = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 191 len 1]
                mem[mem[64] + 64] = _357
                mem[mem[64] + 96] = _368
                signer = erecover(sha3('initAccount', arg1, arg2, 1, call.data[arg6 + 36 len 32 * arg6.length]), _349 << 248, _357, _368) 
                mem[mem[64]] = signer
                require erecover.result
                t = 0
                while uint8(t) < uint8(s):
                    require t < 256
                    if mem[(32 * t) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg6.length) + 204 len 20] != address(signer):
                        t = t + 1
                        continue 
                    s = signer
                    s = _349
                    idx = idx + 2
                    s = s
                    continue 
                mem[0] = address(signer)
                mem[32] = sha3(address(arg1), 0) + 3
                if uint8(accountBalance[address(arg1)][3][address(signer)].field_0):
                    require s < 256
                    mem[(32 * s) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg6.length) + 192] = address(signer)
                    s = signer
                    s = _349
                    idx = idx + 2
                    s = s + 1
                    continue 
                require idx < mem[96]
                require idx + 1 < mem[96]
                emit 0x6cd677ed: sha3('initAccount', arg1, arg2, 1, call.data[arg6 + 36 len 32 * arg6.length]), address(signer), idx << 248, mem[(32 * idx) + 128], mem[(32 * idx + 1) + 128], uint8(_349)
                emit code.data[9137 len 32]: 120
                return 0
        if uint8(s) < uint8(accountBalance[address(arg1)].field_264):
            emit code.data[9137 len 32]: 120
            return 0
        uint32(accountBalance[address(arg1)].field_0) = arg2
        Mask(224, 0, accountBalance[address(arg1)].field_32) = 0
        idx = 0
        while uint8(idx) < mem[(32 * arg3.length) + (32 * arg4.length) + 160]:
            require idx < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
            mem[0] = mem[(32 * arg3.length) + (32 * arg4.length) + (32 * idx) + 204 len 20]
            mem[32] = sha3(address(arg1), 0) + 3
            uint8(accountBalance[address(arg1)][3][mem[(32 * arg3.length) + (32 * arg4.length) + (32 * idx) + 204 len 20]].field_0) = 1
            idx = idx + 1
            continue 
        uint8(accountBalance[address(arg1)].field_256) = mem[(32 * arg3.length) + (32 * arg4.length) + 191 len 1]
        uint8(accountBalance[address(arg1)].field_264) = 1
    Mask(240, 0, accountBalance[address(arg1)].field_272) = mem[(32 * arg3.length) + (32 * arg4.length) + 160 len 30]
    emit 0x56cc4942 
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    if address(accountBalance[tx.origin].field_1024) != 0:
        emit code.data[9137 len 32]: 20
        return 0
    if address(accountBalance[arg1].field_1024) != 0:
        emit code.data[9137 len 32]: 20
        return 0
    if uint8(accountBalance[tx.origin].field_256) != 0:
        if uint8(accountBalance[tx.origin].field_256) != 1:
            emit code.data[9137 len 32]: 21
            return 0
        if not uint8(accountBalance[tx.origin][3][tx.origin].field_0):
            emit code.data[9137 len 32]: 21
            return 0
        mem[96] = 0
        mem[128 len 288] = 0
        mem[64] = 544
        mem[416] = 0
        mem[448] = 0
        mem[480] = 0
        mem[512] = 0
        if accountBalance[tx.origin].field_512 < arg2:
            emit code.data[9137 len 32]: 101
            return 0
        accountBalance[tx.origin].field_512 -= arg2
        if feePercent * arg2 / 100 < absMinFee:
            accountBalance[address(arg1)].field_512 = accountBalance[address(arg1)].field_512 + arg2 - absMinFee
            mem[544] = tx.origin
            mem[576] = arg1
            mem[608] = block.timestamp
            mem[640] = arg2 - absMinFee
            mem[672] = absMinFee
            emit 0x9f837f1f: tx.origin, address(arg1), block.timestamp, arg2 - absMinFee, absMinFee
            accountBalance[address(stor5)].field_512 += absMinFee
            transactionsCount++
            if transactionsCount + 1 >= sub_76c6a1a1:
                transactionsCount = 0
                idx = 0
                while uint8(idx) < stor18.length:
                    require idx < stor18.length
                    mem[0] = address(stor18[idx].field_0)
                    mem[32] = 0
                    if 0 == address(accountBalance[address(stor18[idx].field_0)].field_1024):
                        require idx < stor18.length
                        require idx < stor18.length
                        if storBB8A[idx] <= 0:
                            mem[0] = 18
                            if not storBB8A[idx]:
                                require idx < stor18.length
                                require idx < 10
                                mem[(32 * idx) + 96] = address(stor18[idx].field_0)
                        else:
                            s = 0
                            while uint8(s) <= uint8(idx):
                                require s < 10
                                mem[(32 * s) + 96] = 0
                                s = s + 1
                                continue 
                            require idx < stor18.length
                            mem[0] = 18
                            require idx < 10
                            mem[(32 * idx) + 96] = address(stor18[idx].field_0)
                    idx = idx + 1
                    continue 
                idx = 0
                while uint8(idx) < 10:
                    require idx < 10
                    mem[0] = mem[(32 * idx) + 108 len 20]
                    mem[32] = 0
                    accountBalance[mem[(32 * idx) + 108 len 20]].field_512 += 20
                    _1057 = mem[(32 * idx) + 96]
                    mem[mem[64]] = 0
                    mem[mem[64] + 32] = address(_1057)
                    mem[mem[64] + 64] = block.timestamp
                    mem[mem[64] + 96] = 20
                    mem[mem[64] + 128] = 0
                    emit 0x9f837f1f: 0, address(_1057), block.timestamp, 20, 0
                    idx = idx + 1
                    continue 
            if transactionsCount <= 99990:
                if not sub_10666547:
                    if uint8(stor12[tx.origin].field_0):
                        if accountBalance[tx.origin].field_512 < stor12[tx.origin].field_256:
                            stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
                    else:
                        stor13.length++
                        if not stor13.length <= stor13.length + 1:
                            idx = stor13.length + 1
                            while stor13.length > idx:
                                uint256(stor13[idx]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor13[stor13.length]) = tx.origin or Mask(96, 160, uint256(stor13[stor13.length]))
                        uint8(stor12[tx.origin].field_0) = 1
                        stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
            else:
                if arg2 <= 10:
                    if not sub_10666547:
                        if uint8(stor12[tx.origin].field_0):
                            if accountBalance[tx.origin].field_512 < stor12[tx.origin].field_256:
                                stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
                        else:
                            stor13.length++
                            if not stor13.length <= stor13.length + 1:
                                idx = stor13.length + 1
                                while stor13.length > idx:
                                    uint256(stor13[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor13[stor13.length]) = tx.origin or Mask(96, 160, uint256(stor13[stor13.length]))
                            uint8(stor12[tx.origin].field_0) = 1
                            stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
                else:
                    stor18.length++
                    if not stor18.length <= stor18.length + 1:
                        idx = 4 * stor18.length + 1
                        while 4 * stor18.length > idx:
                            address(stor18[idx].field_0) = 0
                            address(stor18[idx].field_256) = 0
                            stor18[idx].field_512 = 0
                            stor18[idx].field_768 = 0
                            idx = idx + 1
                            continue 
                    address(stor18[stor18.length].field_0) = tx.origin
                    address(stor18[stor18.length].field_256) = arg1
                    stor18[stor18.length].field_512 = arg2
                    stor18[stor18.length].field_768 = block.timestamp
                    if not sub_10666547:
                        if uint8(stor12[tx.origin].field_0):
                            if accountBalance[tx.origin].field_512 < stor12[tx.origin].field_256:
                                stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
                        else:
                            stor13.length++
                            if not stor13.length <= stor13.length + 1:
                                idx = stor13.length + 1
                                while stor13.length > idx:
                                    uint256(stor13[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor13[stor13.length]) = tx.origin or Mask(96, 160, uint256(stor13[stor13.length]))
                            uint8(stor12[tx.origin].field_0) = 1
                            stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
        else:
            if feePercent * arg2 / 100 <= absMaxFee:
                accountBalance[address(arg1)].field_512 = accountBalance[address(arg1)].field_512 + arg2 - (feePercent * arg2 / 100)
                mem[544] = tx.origin
                mem[576] = arg1
                mem[608] = block.timestamp
                mem[640] = arg2 - (feePercent * arg2 / 100)
                mem[672] = feePercent * arg2 / 100
                emit 0x9f837f1f: tx.origin, address(arg1), block.timestamp, arg2 - (feePercent * arg2 / 100), feePercent * arg2 / 100
                accountBalance[address(stor5)].field_512 += feePercent * arg2 / 100
                transactionsCount++
                if transactionsCount + 1 >= sub_76c6a1a1:
                    transactionsCount = 0
                    idx = 0
                    while uint8(idx) < stor18.length:
                        require idx < stor18.length
                        mem[0] = address(stor18[idx].field_0)
                        mem[32] = 0
                        if 0 == address(accountBalance[address(stor18[idx].field_0)].field_1024):
                            require idx < stor18.length
                            require idx < stor18.length
                            if storBB8A[idx] <= 0:
                                mem[0] = 18
                                if not storBB8A[idx]:
                                    require idx < stor18.length
                                    require idx < 10
                                    mem[(32 * idx) + 96] = address(stor18[idx].field_0)
                            else:
                                s = 0
                                while uint8(s) <= uint8(idx):
                                    require s < 10
                                    mem[(32 * s) + 96] = 0
                                    s = s + 1
                                    continue 
                                require idx < stor18.length
                                mem[0] = 18
                                require idx < 10
                                mem[(32 * idx) + 96] = address(stor18[idx].field_0)
                        idx = idx + 1
                        continue 
                    idx = 0
                    while uint8(idx) < 10:
                        require idx < 10
                        mem[0] = mem[(32 * idx) + 108 len 20]
                        mem[32] = 0
                        accountBalance[mem[(32 * idx) + 108 len 20]].field_512 += 20
                        _1049 = mem[(32 * idx) + 96]
                        mem[mem[64]] = 0
                        mem[mem[64] + 32] = address(_1049)
                        mem[mem[64] + 64] = block.timestamp
                        mem[mem[64] + 96] = 20
                        mem[mem[64] + 128] = 0
                        emit 0x9f837f1f: 0, address(_1049), block.timestamp, 20, 0
                        idx = idx + 1
                        continue 
                if transactionsCount <= 99990:
                    if not sub_10666547:
                        if uint8(stor12[tx.origin].field_0):
                            if accountBalance[tx.origin].field_512 < stor12[tx.origin].field_256:
                                stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
                        else:
                            stor13.length++
                            if not stor13.length <= stor13.length + 1:
                                idx = stor13.length + 1
                                while stor13.length > idx:
                                    uint256(stor13[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor13[stor13.length]) = tx.origin or Mask(96, 160, uint256(stor13[stor13.length]))
                            uint8(stor12[tx.origin].field_0) = 1
                            stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
                else:
                    if arg2 <= 10:
                        if not sub_10666547:
                            if uint8(stor12[tx.origin].field_0):
                                if accountBalance[tx.origin].field_512 < stor12[tx.origin].field_256:
                                    stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
                            else:
                                stor13.length++
                                if not stor13.length <= stor13.length + 1:
                                    idx = stor13.length + 1
                                    while stor13.length > idx:
                                        uint256(stor13[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                uint256(stor13[stor13.length]) = tx.origin or Mask(96, 160, uint256(stor13[stor13.length]))
                                uint8(stor12[tx.origin].field_0) = 1
                                stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
                    else:
                        stor18.length++
                        if not stor18.length <= stor18.length + 1:
                            idx = 4 * stor18.length + 1
                            while 4 * stor18.length > idx:
                                address(stor18[idx].field_0) = 0
                                address(stor18[idx].field_256) = 0
                                stor18[idx].field_512 = 0
                                stor18[idx].field_768 = 0
                                idx = idx + 1
                                continue 
                        address(stor18[stor18.length].field_0) = tx.origin
                        address(stor18[stor18.length].field_256) = arg1
                        stor18[stor18.length].field_512 = arg2
                        stor18[stor18.length].field_768 = block.timestamp
                        if not sub_10666547:
                            if uint8(stor12[tx.origin].field_0):
                                if accountBalance[tx.origin].field_512 < stor12[tx.origin].field_256:
                                    stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
                            else:
                                stor13.length++
                                if not stor13.length <= stor13.length + 1:
                                    idx = stor13.length + 1
                                    while stor13.length > idx:
                                        uint256(stor13[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                uint256(stor13[stor13.length]) = tx.origin or Mask(96, 160, uint256(stor13[stor13.length]))
                                uint8(stor12[tx.origin].field_0) = 1
                                stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
            else:
                accountBalance[address(arg1)].field_512 = accountBalance[address(arg1)].field_512 + arg2 - absMaxFee
                mem[544] = tx.origin
                mem[576] = arg1
                mem[608] = block.timestamp
                mem[640] = arg2 - absMaxFee
                mem[672] = absMaxFee
                emit 0x9f837f1f: tx.origin, address(arg1), block.timestamp, arg2 - absMaxFee, absMaxFee
                accountBalance[address(stor5)].field_512 += absMaxFee
                transactionsCount++
                if transactionsCount + 1 >= sub_76c6a1a1:
                    transactionsCount = 0
                    idx = 0
                    while uint8(idx) < stor18.length:
                        require idx < stor18.length
                        mem[0] = address(stor18[idx].field_0)
                        mem[32] = 0
                        if 0 == address(accountBalance[address(stor18[idx].field_0)].field_1024):
                            require idx < stor18.length
                            require idx < stor18.length
                            if storBB8A[idx] <= 0:
                                mem[0] = 18
                                if not storBB8A[idx]:
                                    require idx < stor18.length
                                    require idx < 10
                                    mem[(32 * idx) + 96] = address(stor18[idx].field_0)
                            else:
                                s = 0
                                while uint8(s) <= uint8(idx):
                                    require s < 10
                                    mem[(32 * s) + 96] = 0
                                    s = s + 1
                                    continue 
                                require idx < stor18.length
                                mem[0] = 18
                                require idx < 10
                                mem[(32 * idx) + 96] = address(stor18[idx].field_0)
                        idx = idx + 1
                        continue 
                    idx = 0
                    while uint8(idx) < 10:
                        require idx < 10
                        mem[0] = mem[(32 * idx) + 108 len 20]
                        mem[32] = 0
                        accountBalance[mem[(32 * idx) + 108 len 20]].field_512 += 20
                        _1053 = mem[(32 * idx) + 96]
                        mem[mem[64]] = 0
                        mem[mem[64] + 32] = address(_1053)
                        mem[mem[64] + 64] = block.timestamp
                        mem[mem[64] + 96] = 20
                        mem[mem[64] + 128] = 0
                        emit 0x9f837f1f: 0, address(_1053), block.timestamp, 20, 0
                        idx = idx + 1
                        continue 
                if transactionsCount <= 99990:
                    if not sub_10666547:
                        if uint8(stor12[tx.origin].field_0):
                            if accountBalance[tx.origin].field_512 < stor12[tx.origin].field_256:
                                stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
                        else:
                            stor13.length++
                            if not stor13.length <= stor13.length + 1:
                                idx = stor13.length + 1
                                while stor13.length > idx:
                                    uint256(stor13[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor13[stor13.length]) = tx.origin or Mask(96, 160, uint256(stor13[stor13.length]))
                            uint8(stor12[tx.origin].field_0) = 1
                            stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
                else:
                    if arg2 <= 10:
                        if not sub_10666547:
                            if uint8(stor12[tx.origin].field_0):
                                if accountBalance[tx.origin].field_512 < stor12[tx.origin].field_256:
                                    stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
                            else:
                                stor13.length++
                                if not stor13.length <= stor13.length + 1:
                                    idx = stor13.length + 1
                                    while stor13.length > idx:
                                        uint256(stor13[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                uint256(stor13[stor13.length]) = tx.origin or Mask(96, 160, uint256(stor13[stor13.length]))
                                uint8(stor12[tx.origin].field_0) = 1
                                stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
                    else:
                        stor18.length++
                        if not stor18.length <= stor18.length + 1:
                            idx = 4 * stor18.length + 1
                            while 4 * stor18.length > idx:
                                address(stor18[idx].field_0) = 0
                                address(stor18[idx].field_256) = 0
                                stor18[idx].field_512 = 0
                                stor18[idx].field_768 = 0
                                idx = idx + 1
                                continue 
                        address(stor18[stor18.length].field_0) = tx.origin
                        address(stor18[stor18.length].field_256) = arg1
                        stor18[stor18.length].field_512 = arg2
                        stor18[stor18.length].field_768 = block.timestamp
                        if not sub_10666547:
                            if uint8(stor12[tx.origin].field_0):
                                if accountBalance[tx.origin].field_512 < stor12[tx.origin].field_256:
                                    stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
                            else:
                                stor13.length++
                                if not stor13.length <= stor13.length + 1:
                                    idx = stor13.length + 1
                                    while stor13.length > idx:
                                        uint256(stor13[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                uint256(stor13[stor13.length]) = tx.origin or Mask(96, 160, uint256(stor13[stor13.length]))
                                uint8(stor12[tx.origin].field_0) = 1
                                stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
    else:
        uint8(accountBalance[tx.origin].field_256) = 1
        uint8(accountBalance[tx.origin][3][tx.origin].field_0) = 1
        if uint8(accountBalance[tx.origin].field_256) != 1:
            emit code.data[9137 len 32]: 21
            return 0
        if not uint8(accountBalance[tx.origin][3][tx.origin].field_0):
            emit code.data[9137 len 32]: 21
            return 0
        mem[96] = 0
        mem[128 len 288] = 0
        mem[64] = 544
        mem[416] = 0
        mem[448] = 0
        mem[480] = 0
        mem[512] = 0
        if accountBalance[tx.origin].field_512 < arg2:
            emit code.data[9137 len 32]: 101
            return 0
        accountBalance[tx.origin].field_512 -= arg2
        if feePercent * arg2 / 100 < absMinFee:
            accountBalance[address(arg1)].field_512 = accountBalance[address(arg1)].field_512 + arg2 - absMinFee
            mem[544] = tx.origin
            mem[576] = arg1
            mem[608] = block.timestamp
            mem[640] = arg2 - absMinFee
            mem[672] = absMinFee
            emit 0x9f837f1f: tx.origin, address(arg1), block.timestamp, arg2 - absMinFee, absMinFee
            accountBalance[address(stor5)].field_512 += absMinFee
            transactionsCount++
            if transactionsCount + 1 >= sub_76c6a1a1:
                transactionsCount = 0
                idx = 0
                while uint8(idx) < stor18.length:
                    require idx < stor18.length
                    mem[0] = address(stor18[idx].field_0)
                    mem[32] = 0
                    if 0 == address(accountBalance[address(stor18[idx].field_0)].field_1024):
                        require idx < stor18.length
                        require idx < stor18.length
                        if storBB8A[idx] <= 0:
                            mem[0] = 18
                            if not storBB8A[idx]:
                                require idx < stor18.length
                                require idx < 10
                                mem[(32 * idx) + 96] = address(stor18[idx].field_0)
                        else:
                            s = 0
                            while uint8(s) <= uint8(idx):
                                require s < 10
                                mem[(32 * s) + 96] = 0
                                s = s + 1
                                continue 
                            require idx < stor18.length
                            mem[0] = 18
                            require idx < 10
                            mem[(32 * idx) + 96] = address(stor18[idx].field_0)
                    idx = idx + 1
                    continue 
                idx = 0
                while uint8(idx) < 10:
                    require idx < 10
                    mem[0] = mem[(32 * idx) + 108 len 20]
                    mem[32] = 0
                    accountBalance[mem[(32 * idx) + 108 len 20]].field_512 += 20
                    _1069 = mem[(32 * idx) + 96]
                    mem[mem[64]] = 0
                    mem[mem[64] + 32] = address(_1069)
                    mem[mem[64] + 64] = block.timestamp
                    mem[mem[64] + 96] = 20
                    mem[mem[64] + 128] = 0
                    emit 0x9f837f1f: 0, address(_1069), block.timestamp, 20, 0
                    idx = idx + 1
                    continue 
            if transactionsCount <= 99990:
                if not sub_10666547:
                    if uint8(stor12[tx.origin].field_0):
                        if accountBalance[tx.origin].field_512 < stor12[tx.origin].field_256:
                            stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
                    else:
                        stor13.length++
                        if not stor13.length <= stor13.length + 1:
                            idx = stor13.length + 1
                            while stor13.length > idx:
                                uint256(stor13[idx]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor13[stor13.length]) = tx.origin or Mask(96, 160, uint256(stor13[stor13.length]))
                        uint8(stor12[tx.origin].field_0) = 1
                        stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
            else:
                if arg2 <= 10:
                    if not sub_10666547:
                        if uint8(stor12[tx.origin].field_0):
                            if accountBalance[tx.origin].field_512 < stor12[tx.origin].field_256:
                                stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
                        else:
                            stor13.length++
                            if not stor13.length <= stor13.length + 1:
                                idx = stor13.length + 1
                                while stor13.length > idx:
                                    uint256(stor13[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor13[stor13.length]) = tx.origin or Mask(96, 160, uint256(stor13[stor13.length]))
                            uint8(stor12[tx.origin].field_0) = 1
                            stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
                else:
                    stor18.length++
                    if not stor18.length <= stor18.length + 1:
                        idx = 4 * stor18.length + 1
                        while 4 * stor18.length > idx:
                            address(stor18[idx].field_0) = 0
                            address(stor18[idx].field_256) = 0
                            stor18[idx].field_512 = 0
                            stor18[idx].field_768 = 0
                            idx = idx + 1
                            continue 
                    address(stor18[stor18.length].field_0) = tx.origin
                    address(stor18[stor18.length].field_256) = arg1
                    stor18[stor18.length].field_512 = arg2
                    stor18[stor18.length].field_768 = block.timestamp
                    if not sub_10666547:
                        if uint8(stor12[tx.origin].field_0):
                            if accountBalance[tx.origin].field_512 < stor12[tx.origin].field_256:
                                stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
                        else:
                            stor13.length++
                            if not stor13.length <= stor13.length + 1:
                                idx = stor13.length + 1
                                while stor13.length > idx:
                                    uint256(stor13[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor13[stor13.length]) = tx.origin or Mask(96, 160, uint256(stor13[stor13.length]))
                            uint8(stor12[tx.origin].field_0) = 1
                            stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
        else:
            if feePercent * arg2 / 100 <= absMaxFee:
                accountBalance[address(arg1)].field_512 = accountBalance[address(arg1)].field_512 + arg2 - (feePercent * arg2 / 100)
                mem[544] = tx.origin
                mem[576] = arg1
                mem[608] = block.timestamp
                mem[640] = arg2 - (feePercent * arg2 / 100)
                mem[672] = feePercent * arg2 / 100
                emit 0x9f837f1f: tx.origin, address(arg1), block.timestamp, arg2 - (feePercent * arg2 / 100), feePercent * arg2 / 100
                accountBalance[address(stor5)].field_512 += feePercent * arg2 / 100
                transactionsCount++
                if transactionsCount + 1 >= sub_76c6a1a1:
                    transactionsCount = 0
                    idx = 0
                    while uint8(idx) < stor18.length:
                        require idx < stor18.length
                        mem[0] = address(stor18[idx].field_0)
                        mem[32] = 0
                        if 0 == address(accountBalance[address(stor18[idx].field_0)].field_1024):
                            require idx < stor18.length
                            require idx < stor18.length
                            if storBB8A[idx] <= 0:
                                mem[0] = 18
                                if not storBB8A[idx]:
                                    require idx < stor18.length
                                    require idx < 10
                                    mem[(32 * idx) + 96] = address(stor18[idx].field_0)
                            else:
                                s = 0
                                while uint8(s) <= uint8(idx):
                                    require s < 10
                                    mem[(32 * s) + 96] = 0
                                    s = s + 1
                                    continue 
                                require idx < stor18.length
                                mem[0] = 18
                                require idx < 10
                                mem[(32 * idx) + 96] = address(stor18[idx].field_0)
                        idx = idx + 1
                        continue 
                    idx = 0
                    while uint8(idx) < 10:
                        require idx < 10
                        mem[0] = mem[(32 * idx) + 108 len 20]
                        mem[32] = 0
                        accountBalance[mem[(32 * idx) + 108 len 20]].field_512 += 20
                        _1061 = mem[(32 * idx) + 96]
                        mem[mem[64]] = 0
                        mem[mem[64] + 32] = address(_1061)
                        mem[mem[64] + 64] = block.timestamp
                        mem[mem[64] + 96] = 20
                        mem[mem[64] + 128] = 0
                        emit 0x9f837f1f: 0, address(_1061), block.timestamp, 20, 0
                        idx = idx + 1
                        continue 
                if transactionsCount <= 99990:
                    if not sub_10666547:
                        if uint8(stor12[tx.origin].field_0):
                            if accountBalance[tx.origin].field_512 < stor12[tx.origin].field_256:
                                stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
                        else:
                            stor13.length++
                            if not stor13.length <= stor13.length + 1:
                                idx = stor13.length + 1
                                while stor13.length > idx:
                                    uint256(stor13[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor13[stor13.length]) = tx.origin or Mask(96, 160, uint256(stor13[stor13.length]))
                            uint8(stor12[tx.origin].field_0) = 1
                            stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
                else:
                    if arg2 <= 10:
                        if not sub_10666547:
                            if uint8(stor12[tx.origin].field_0):
                                if accountBalance[tx.origin].field_512 < stor12[tx.origin].field_256:
                                    stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
                            else:
                                stor13.length++
                                if not stor13.length <= stor13.length + 1:
                                    idx = stor13.length + 1
                                    while stor13.length > idx:
                                        uint256(stor13[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                uint256(stor13[stor13.length]) = tx.origin or Mask(96, 160, uint256(stor13[stor13.length]))
                                uint8(stor12[tx.origin].field_0) = 1
                                stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
                    else:
                        stor18.length++
                        if not stor18.length <= stor18.length + 1:
                            idx = 4 * stor18.length + 1
                            while 4 * stor18.length > idx:
                                address(stor18[idx].field_0) = 0
                                address(stor18[idx].field_256) = 0
                                stor18[idx].field_512 = 0
                                stor18[idx].field_768 = 0
                                idx = idx + 1
                                continue 
                        address(stor18[stor18.length].field_0) = tx.origin
                        address(stor18[stor18.length].field_256) = arg1
                        stor18[stor18.length].field_512 = arg2
                        stor18[stor18.length].field_768 = block.timestamp
                        if not sub_10666547:
                            if uint8(stor12[tx.origin].field_0):
                                if accountBalance[tx.origin].field_512 < stor12[tx.origin].field_256:
                                    stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
                            else:
                                stor13.length++
                                if not stor13.length <= stor13.length + 1:
                                    idx = stor13.length + 1
                                    while stor13.length > idx:
                                        uint256(stor13[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                uint256(stor13[stor13.length]) = tx.origin or Mask(96, 160, uint256(stor13[stor13.length]))
                                uint8(stor12[tx.origin].field_0) = 1
                                stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
            else:
                accountBalance[address(arg1)].field_512 = accountBalance[address(arg1)].field_512 + arg2 - absMaxFee
                mem[544] = tx.origin
                mem[576] = arg1
                mem[608] = block.timestamp
                mem[640] = arg2 - absMaxFee
                mem[672] = absMaxFee
                emit 0x9f837f1f: tx.origin, address(arg1), block.timestamp, arg2 - absMaxFee, absMaxFee
                accountBalance[address(stor5)].field_512 += absMaxFee
                transactionsCount++
                if transactionsCount + 1 >= sub_76c6a1a1:
                    transactionsCount = 0
                    idx = 0
                    while uint8(idx) < stor18.length:
                        require idx < stor18.length
                        mem[0] = address(stor18[idx].field_0)
                        mem[32] = 0
                        if 0 == address(accountBalance[address(stor18[idx].field_0)].field_1024):
                            require idx < stor18.length
                            require idx < stor18.length
                            if storBB8A[idx] <= 0:
                                mem[0] = 18
                                if not storBB8A[idx]:
                                    require idx < stor18.length
                                    require idx < 10
                                    mem[(32 * idx) + 96] = address(stor18[idx].field_0)
                            else:
                                s = 0
                                while uint8(s) <= uint8(idx):
                                    require s < 10
                                    mem[(32 * s) + 96] = 0
                                    s = s + 1
                                    continue 
                                require idx < stor18.length
                                mem[0] = 18
                                require idx < 10
                                mem[(32 * idx) + 96] = address(stor18[idx].field_0)
                        idx = idx + 1
                        continue 
                    idx = 0
                    while uint8(idx) < 10:
                        require idx < 10
                        mem[0] = mem[(32 * idx) + 108 len 20]
                        mem[32] = 0
                        accountBalance[mem[(32 * idx) + 108 len 20]].field_512 += 20
                        _1065 = mem[(32 * idx) + 96]
                        mem[mem[64]] = 0
                        mem[mem[64] + 32] = address(_1065)
                        mem[mem[64] + 64] = block.timestamp
                        mem[mem[64] + 96] = 20
                        mem[mem[64] + 128] = 0
                        emit 0x9f837f1f: 0, address(_1065), block.timestamp, 20, 0
                        idx = idx + 1
                        continue 
                if transactionsCount <= 99990:
                    if not sub_10666547:
                        if uint8(stor12[tx.origin].field_0):
                            if accountBalance[tx.origin].field_512 < stor12[tx.origin].field_256:
                                stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
                        else:
                            stor13.length++
                            if not stor13.length <= stor13.length + 1:
                                idx = stor13.length + 1
                                while stor13.length > idx:
                                    uint256(stor13[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor13[stor13.length]) = tx.origin or Mask(96, 160, uint256(stor13[stor13.length]))
                            uint8(stor12[tx.origin].field_0) = 1
                            stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
                else:
                    if arg2 <= 10:
                        if not sub_10666547:
                            if uint8(stor12[tx.origin].field_0):
                                if accountBalance[tx.origin].field_512 < stor12[tx.origin].field_256:
                                    stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
                            else:
                                stor13.length++
                                if not stor13.length <= stor13.length + 1:
                                    idx = stor13.length + 1
                                    while stor13.length > idx:
                                        uint256(stor13[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                uint256(stor13[stor13.length]) = tx.origin or Mask(96, 160, uint256(stor13[stor13.length]))
                                uint8(stor12[tx.origin].field_0) = 1
                                stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
                    else:
                        stor18.length++
                        if not stor18.length <= stor18.length + 1:
                            idx = 4 * stor18.length + 1
                            while 4 * stor18.length > idx:
                                address(stor18[idx].field_0) = 0
                                address(stor18[idx].field_256) = 0
                                stor18[idx].field_512 = 0
                                stor18[idx].field_768 = 0
                                idx = idx + 1
                                continue 
                        address(stor18[stor18.length].field_0) = tx.origin
                        address(stor18[stor18.length].field_256) = arg1
                        stor18[stor18.length].field_512 = arg2
                        stor18[stor18.length].field_768 = block.timestamp
                        if not sub_10666547:
                            if uint8(stor12[tx.origin].field_0):
                                if accountBalance[tx.origin].field_512 < stor12[tx.origin].field_256:
                                    stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
                            else:
                                stor13.length++
                                if not stor13.length <= stor13.length + 1:
                                    idx = stor13.length + 1
                                    while stor13.length > idx:
                                        uint256(stor13[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                uint256(stor13[stor13.length]) = tx.origin or Mask(96, 160, uint256(stor13[stor13.length]))
                                uint8(stor12[tx.origin].field_0) = 1
                                stor12[tx.origin].field_256 = accountBalance[tx.origin].field_512
    return 1
}

function sub_3ed48679(?) payable {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + 8352
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = 0
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 8160] = 0
    if accountBalance[address(arg1)].field_0 >= arg2:
        emit code.data[9137 len 32]: 1
        return 0
    if 0 == uint8(accountBalance[address(arg1)].field_256):
        emit code.data[9137 len 32]: 2
        return 0
    if address(accountBalance[address(arg1)].field_1024) != 0:
        emit code.data[9137 len 32]: 3
        return 0
    if arg3.length / 2 < uint8(accountBalance[address(arg1)].field_264):
        emit code.data[9137 len 32]: 4
        return 0
    if arg4.length >= uint8(accountBalance[address(arg1)].field_264):
        if 0 == arg3.length:
            emit code.data[9137 len 32]: 5
            return 0
        if 0 == arg4.length:
            emit code.data[9137 len 32]: 5
            return 0
        if arg3.length > 512:
            emit code.data[9137 len 32]: 6
            return 0
        s = 0
        s = 0
        idx = 0
        s = 0
        while uint8(idx) < arg3.length:
            require uint8(idx) / 2 < mem[(32 * arg3.length) + 128]
            _178 = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 160]
            require idx < mem[96]
            _182 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _186 = mem[(32 * idx + 1) + 128]
            mem[mem[64] + 32] = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 191 len 1]
            mem[mem[64] + 64] = _182
            mem[mem[64] + 96] = _186
            signer = erecover(sha3('transfer', arg1, arg2, arg5, arg6), _178 << 248, _182, _186) 
            mem[mem[64]] = signer
            require erecover.result
            t = 0
            while uint8(t) < uint8(s):
                require t < 256
                if mem[(32 * t) + (32 * arg3.length) + (32 * arg4.length) + 172 len 20] != address(signer):
                    t = t + 1
                    continue 
                s = signer
                s = _178
                idx = idx + 2
                s = s
                continue 
            mem[0] = address(signer)
            mem[32] = sha3(address(arg1), 0) + 3
            if uint8(accountBalance[address(arg1)][3][address(signer)].field_0):
                require s < 256
                mem[(32 * s) + (32 * arg3.length) + (32 * arg4.length) + 160] = address(signer)
                s = signer
                s = _178
                idx = idx + 2
                s = s + 1
                continue 
            require idx < mem[96]
            require idx + 1 < mem[96]
            emit 0x6cd677ed: sha3('transfer', arg1, arg2, arg5, arg6), address(signer), idx << 248, mem[(32 * idx) + 128], mem[(32 * idx + 1) + 128], uint8(_178)
            emit code.data[9137 len 32]: 8
            return 0
        if uint8(s) < uint8(accountBalance[address(arg1)].field_264):
            emit code.data[9137 len 32]: 9
            return 0
        uint32(accountBalance[address(arg1)].field_0) = arg2
        Mask(224, 0, accountBalance[address(arg1)].field_32) = 0
        if address(accountBalance[address(arg1)].field_1024):
            emit code.data[9137 len 32]: 24
            return 0
        mem[0] = arg5
        mem[32] = 0
        if address(accountBalance[address(arg5)].field_1024):
            emit code.data[9137 len 32]: 25
            return 0
        _228 = mem[64]
        mem[64] = mem[64] + 320
        mem[_228] = 0
        mem[_228 + 32 len 288] = 0
        _266 = mem[64]
        mem[64] = mem[64] + 128
        mem[_266] = 0
        mem[_266 + 32] = 0
        mem[_266 + 64] = 0
        mem[_266 + 96] = 0
        if accountBalance[address(arg1)].field_512 < arg6:
            emit code.data[9137 len 32]: 101
            return 0
        accountBalance[address(arg1)].field_512 -= arg6
        mem[32] = 0
        if feePercent * arg6 / 100 < absMinFee:
            accountBalance[address(arg5)].field_512 = accountBalance[address(arg5)].field_512 + arg6 - absMinFee
            mem[mem[64]] = arg1
            mem[mem[64] + 32] = arg5
            mem[mem[64] + 64] = block.timestamp
            mem[mem[64] + 96] = arg6 - absMinFee
            mem[mem[64] + 128] = absMinFee
            emit 0x9f837f1f: address(arg1), address(arg5), block.timestamp, arg6 - absMinFee, absMinFee
            mem[0] = address(stor5)
            mem[32] = 0
            accountBalance[address(stor5)].field_512 += absMinFee
            transactionsCount++
            if transactionsCount + 1 >= sub_76c6a1a1:
                transactionsCount = 0
                idx = 0
                while uint8(idx) < stor18.length:
                    require idx < stor18.length
                    mem[0] = address(stor18[idx].field_0)
                    mem[32] = 0
                    if 0 == address(accountBalance[address(stor18[idx].field_0)].field_1024):
                        require idx < stor18.length
                        require idx < stor18.length
                        if storBB8A[idx] <= 0:
                            mem[0] = 18
                            if not storBB8A[idx]:
                                require idx < stor18.length
                                require idx < 10
                                mem[_228 + (32 * idx)] = address(stor18[idx].field_0)
                        else:
                            s = 0
                            while uint8(s) <= uint8(idx):
                                require s < 10
                                mem[(32 * s) + _228] = 0
                                s = s + 1
                                continue 
                            require idx < stor18.length
                            mem[0] = 18
                            require idx < 10
                            mem[(32 * idx) + _228] = address(stor18[idx].field_0)
                    idx = idx + 1
                    continue 
                idx = 0
                while uint8(idx) < 10:
                    require idx < 10
                    mem[0] = mem[_228 + (32 * idx) + 12 len 20]
                    mem[32] = 0
                    accountBalance[mem[0]].field_512 += 20
                    _1300 = mem[_228 + (32 * idx)]
                    mem[mem[64]] = 0
                    mem[mem[64] + 32] = address(_1300)
                    mem[mem[64] + 64] = block.timestamp
                    mem[mem[64] + 96] = 20
                    mem[mem[64] + 128] = 0
                    emit 0x9f837f1f: 0, address(_1300), block.timestamp, 20, 0
                    idx = idx + 1
                    continue 
            if transactionsCount <= 99990:
                if not sub_10666547:
                    if uint8(stor12[address(arg1)].field_0):
                        if accountBalance[address(arg1)].field_512 < stor12[address(arg1)].field_256:
                            stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
                    else:
                        stor13.length++
                        if not stor13.length <= stor13.length + 1:
                            idx = stor13.length + 1
                            while stor13.length > idx:
                                uint256(stor13[idx]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor13[stor13.length]) = arg1 or Mask(96, 160, uint256(stor13[stor13.length]))
                        uint8(stor12[address(arg1)].field_0) = 1
                        stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
            else:
                if arg6 <= 10:
                    if not sub_10666547:
                        if uint8(stor12[address(arg1)].field_0):
                            if accountBalance[address(arg1)].field_512 < stor12[address(arg1)].field_256:
                                stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
                        else:
                            stor13.length++
                            if not stor13.length <= stor13.length + 1:
                                idx = stor13.length + 1
                                while stor13.length > idx:
                                    uint256(stor13[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor13[stor13.length]) = arg1 or Mask(96, 160, uint256(stor13[stor13.length]))
                            uint8(stor12[address(arg1)].field_0) = 1
                            stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
                else:
                    stor18.length++
                    if not stor18.length <= stor18.length + 1:
                        idx = 4 * stor18.length + 1
                        while 4 * stor18.length > idx:
                            address(stor18[idx].field_0) = 0
                            address(stor18[idx].field_256) = 0
                            stor18[idx].field_512 = 0
                            stor18[idx].field_768 = 0
                            idx = idx + 1
                            continue 
                    address(stor18[stor18.length].field_0) = arg1
                    address(stor18[stor18.length].field_256) = arg5
                    stor18[stor18.length].field_512 = arg6
                    stor18[stor18.length].field_768 = block.timestamp
                    if not sub_10666547:
                        if uint8(stor12[address(arg1)].field_0):
                            if accountBalance[address(arg1)].field_512 < stor12[address(arg1)].field_256:
                                stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
                        else:
                            stor13.length++
                            if not stor13.length <= stor13.length + 1:
                                idx = stor13.length + 1
                                while stor13.length > idx:
                                    uint256(stor13[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor13[stor13.length]) = arg1 or Mask(96, 160, uint256(stor13[stor13.length]))
                            uint8(stor12[address(arg1)].field_0) = 1
                            stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
        else:
            if feePercent * arg6 / 100 <= absMaxFee:
                accountBalance[address(arg5)].field_512 = accountBalance[address(arg5)].field_512 + arg6 - (feePercent * arg6 / 100)
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg5
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = arg6 - (feePercent * arg6 / 100)
                mem[mem[64] + 128] = feePercent * arg6 / 100
                emit 0x9f837f1f: address(arg1), address(arg5), block.timestamp, arg6 - (feePercent * arg6 / 100), feePercent * arg6 / 100
                mem[0] = address(stor5)
                mem[32] = 0
                accountBalance[address(stor5)].field_512 += feePercent * arg6 / 100
                transactionsCount++
                if transactionsCount + 1 >= sub_76c6a1a1:
                    transactionsCount = 0
                    idx = 0
                    while uint8(idx) < stor18.length:
                        require idx < stor18.length
                        mem[0] = address(stor18[idx].field_0)
                        mem[32] = 0
                        if 0 == address(accountBalance[address(stor18[idx].field_0)].field_1024):
                            require idx < stor18.length
                            require idx < stor18.length
                            if storBB8A[idx] <= 0:
                                mem[0] = 18
                                if not storBB8A[idx]:
                                    require idx < stor18.length
                                    require idx < 10
                                    mem[_228 + (32 * idx)] = address(stor18[idx].field_0)
                            else:
                                s = 0
                                while uint8(s) <= uint8(idx):
                                    require s < 10
                                    mem[(32 * s) + _228] = 0
                                    s = s + 1
                                    continue 
                                require idx < stor18.length
                                mem[0] = 18
                                require idx < 10
                                mem[(32 * idx) + _228] = address(stor18[idx].field_0)
                        idx = idx + 1
                        continue 
                    idx = 0
                    while uint8(idx) < 10:
                        require idx < 10
                        mem[0] = mem[_228 + (32 * idx) + 12 len 20]
                        mem[32] = 0
                        accountBalance[mem[0]].field_512 += 20
                        _1292 = mem[_228 + (32 * idx)]
                        mem[mem[64]] = 0
                        mem[mem[64] + 32] = address(_1292)
                        mem[mem[64] + 64] = block.timestamp
                        mem[mem[64] + 96] = 20
                        mem[mem[64] + 128] = 0
                        emit 0x9f837f1f: 0, address(_1292), block.timestamp, 20, 0
                        idx = idx + 1
                        continue 
                if transactionsCount <= 99990:
                    if not sub_10666547:
                        if uint8(stor12[address(arg1)].field_0):
                            if accountBalance[address(arg1)].field_512 < stor12[address(arg1)].field_256:
                                stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
                        else:
                            stor13.length++
                            if not stor13.length <= stor13.length + 1:
                                idx = stor13.length + 1
                                while stor13.length > idx:
                                    uint256(stor13[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor13[stor13.length]) = arg1 or Mask(96, 160, uint256(stor13[stor13.length]))
                            uint8(stor12[address(arg1)].field_0) = 1
                            stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
                else:
                    if arg6 <= 10:
                        if not sub_10666547:
                            if uint8(stor12[address(arg1)].field_0):
                                if accountBalance[address(arg1)].field_512 < stor12[address(arg1)].field_256:
                                    stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
                            else:
                                stor13.length++
                                if not stor13.length <= stor13.length + 1:
                                    idx = stor13.length + 1
                                    while stor13.length > idx:
                                        uint256(stor13[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                uint256(stor13[stor13.length]) = arg1 or Mask(96, 160, uint256(stor13[stor13.length]))
                                uint8(stor12[address(arg1)].field_0) = 1
                                stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
                    else:
                        stor18.length++
                        if not stor18.length <= stor18.length + 1:
                            idx = 4 * stor18.length + 1
                            while 4 * stor18.length > idx:
                                address(stor18[idx].field_0) = 0
                                address(stor18[idx].field_256) = 0
                                stor18[idx].field_512 = 0
                                stor18[idx].field_768 = 0
                                idx = idx + 1
                                continue 
                        address(stor18[stor18.length].field_0) = arg1
                        address(stor18[stor18.length].field_256) = arg5
                        stor18[stor18.length].field_512 = arg6
                        stor18[stor18.length].field_768 = block.timestamp
                        if not sub_10666547:
                            if uint8(stor12[address(arg1)].field_0):
                                if accountBalance[address(arg1)].field_512 < stor12[address(arg1)].field_256:
                                    stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
                            else:
                                stor13.length++
                                if not stor13.length <= stor13.length + 1:
                                    idx = stor13.length + 1
                                    while stor13.length > idx:
                                        uint256(stor13[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                uint256(stor13[stor13.length]) = arg1 or Mask(96, 160, uint256(stor13[stor13.length]))
                                uint8(stor12[address(arg1)].field_0) = 1
                                stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
            else:
                accountBalance[address(arg5)].field_512 = accountBalance[address(arg5)].field_512 + arg6 - absMaxFee
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg5
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = arg6 - absMaxFee
                mem[mem[64] + 128] = absMaxFee
                emit 0x9f837f1f: address(arg1), address(arg5), block.timestamp, arg6 - absMaxFee, absMaxFee
                mem[0] = address(stor5)
                mem[32] = 0
                accountBalance[address(stor5)].field_512 += absMaxFee
                transactionsCount++
                if transactionsCount + 1 >= sub_76c6a1a1:
                    transactionsCount = 0
                    idx = 0
                    while uint8(idx) < stor18.length:
                        require idx < stor18.length
                        mem[0] = address(stor18[idx].field_0)
                        mem[32] = 0
                        if 0 == address(accountBalance[address(stor18[idx].field_0)].field_1024):
                            require idx < stor18.length
                            require idx < stor18.length
                            if storBB8A[idx] <= 0:
                                mem[0] = 18
                                if not storBB8A[idx]:
                                    require idx < stor18.length
                                    require idx < 10
                                    mem[_228 + (32 * idx)] = address(stor18[idx].field_0)
                            else:
                                s = 0
                                while uint8(s) <= uint8(idx):
                                    require s < 10
                                    mem[(32 * s) + _228] = 0
                                    s = s + 1
                                    continue 
                                require idx < stor18.length
                                mem[0] = 18
                                require idx < 10
                                mem[(32 * idx) + _228] = address(stor18[idx].field_0)
                        idx = idx + 1
                        continue 
                    idx = 0
                    while uint8(idx) < 10:
                        require idx < 10
                        mem[0] = mem[_228 + (32 * idx) + 12 len 20]
                        mem[32] = 0
                        accountBalance[mem[0]].field_512 += 20
                        _1296 = mem[_228 + (32 * idx)]
                        mem[mem[64]] = 0
                        mem[mem[64] + 32] = address(_1296)
                        mem[mem[64] + 64] = block.timestamp
                        mem[mem[64] + 96] = 20
                        mem[mem[64] + 128] = 0
                        emit 0x9f837f1f: 0, address(_1296), block.timestamp, 20, 0
                        idx = idx + 1
                        continue 
                if transactionsCount <= 99990:
                    if not sub_10666547:
                        if uint8(stor12[address(arg1)].field_0):
                            if accountBalance[address(arg1)].field_512 < stor12[address(arg1)].field_256:
                                stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
                        else:
                            stor13.length++
                            if not stor13.length <= stor13.length + 1:
                                idx = stor13.length + 1
                                while stor13.length > idx:
                                    uint256(stor13[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor13[stor13.length]) = arg1 or Mask(96, 160, uint256(stor13[stor13.length]))
                            uint8(stor12[address(arg1)].field_0) = 1
                            stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
                else:
                    if arg6 <= 10:
                        if not sub_10666547:
                            if uint8(stor12[address(arg1)].field_0):
                                if accountBalance[address(arg1)].field_512 < stor12[address(arg1)].field_256:
                                    stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
                            else:
                                stor13.length++
                                if not stor13.length <= stor13.length + 1:
                                    idx = stor13.length + 1
                                    while stor13.length > idx:
                                        uint256(stor13[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                uint256(stor13[stor13.length]) = arg1 or Mask(96, 160, uint256(stor13[stor13.length]))
                                uint8(stor12[address(arg1)].field_0) = 1
                                stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
                    else:
                        stor18.length++
                        if not stor18.length <= stor18.length + 1:
                            idx = 4 * stor18.length + 1
                            while 4 * stor18.length > idx:
                                address(stor18[idx].field_0) = 0
                                address(stor18[idx].field_256) = 0
                                stor18[idx].field_512 = 0
                                stor18[idx].field_768 = 0
                                idx = idx + 1
                                continue 
                        address(stor18[stor18.length].field_0) = arg1
                        address(stor18[stor18.length].field_256) = arg5
                        stor18[stor18.length].field_512 = arg6
                        stor18[stor18.length].field_768 = block.timestamp
                        if not sub_10666547:
                            if uint8(stor12[address(arg1)].field_0):
                                if accountBalance[address(arg1)].field_512 < stor12[address(arg1)].field_256:
                                    stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
                            else:
                                stor13.length++
                                if not stor13.length <= stor13.length + 1:
                                    idx = stor13.length + 1
                                    while stor13.length > idx:
                                        uint256(stor13[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                uint256(stor13[stor13.length]) = arg1 or Mask(96, 160, uint256(stor13[stor13.length]))
                                uint8(stor12[address(arg1)].field_0) = 1
                                stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
    else:
        if arg3.length / 2 != arg4.length:
            emit code.data[9137 len 32]: 4
            return 0
        if 0 == arg3.length:
            emit code.data[9137 len 32]: 5
            return 0
        if 0 == arg4.length:
            emit code.data[9137 len 32]: 5
            return 0
        if arg3.length > 512:
            emit code.data[9137 len 32]: 6
            return 0
        s = 0
        s = 0
        idx = 0
        s = 0
        while uint8(idx) < arg3.length:
            require uint8(idx) / 2 < mem[(32 * arg3.length) + 128]
            _180 = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 160]
            require idx < mem[96]
            _184 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _189 = mem[(32 * idx + 1) + 128]
            mem[mem[64] + 32] = mem[(16 * Mask(7, 1, idx)) + (32 * arg3.length) + 191 len 1]
            mem[mem[64] + 64] = _184
            mem[mem[64] + 96] = _189
            signer = erecover(sha3('transfer', arg1, arg2, arg5, arg6), _180 << 248, _184, _189) 
            mem[mem[64]] = signer
            require erecover.result
            t = 0
            while uint8(t) < uint8(s):
                require t < 256
                if mem[(32 * t) + (32 * arg3.length) + (32 * arg4.length) + 172 len 20] != address(signer):
                    t = t + 1
                    continue 
                s = signer
                s = _180
                idx = idx + 2
                s = s
                continue 
            mem[0] = address(signer)
            mem[32] = sha3(address(arg1), 0) + 3
            if uint8(accountBalance[address(arg1)][3][address(signer)].field_0):
                require s < 256
                mem[(32 * s) + (32 * arg3.length) + (32 * arg4.length) + 160] = address(signer)
                s = signer
                s = _180
                idx = idx + 2
                s = s + 1
                continue 
            require idx < mem[96]
            require idx + 1 < mem[96]
            emit 0x6cd677ed: sha3('transfer', arg1, arg2, arg5, arg6), address(signer), idx << 248, mem[(32 * idx) + 128], mem[(32 * idx + 1) + 128], uint8(_180)
            emit code.data[9137 len 32]: 8
            return 0
        if uint8(s) < uint8(accountBalance[address(arg1)].field_264):
            emit code.data[9137 len 32]: 9
            return 0
        uint32(accountBalance[address(arg1)].field_0) = arg2
        Mask(224, 0, accountBalance[address(arg1)].field_32) = 0
        if address(accountBalance[address(arg1)].field_1024):
            emit code.data[9137 len 32]: 24
            return 0
        mem[0] = arg5
        mem[32] = 0
        if address(accountBalance[address(arg5)].field_1024):
            emit code.data[9137 len 32]: 25
            return 0
        _233 = mem[64]
        mem[64] = mem[64] + 320
        mem[_233] = 0
        mem[_233 + 32 len 288] = 0
        _268 = mem[64]
        mem[64] = mem[64] + 128
        mem[_268] = 0
        mem[_268 + 32] = 0
        mem[_268 + 64] = 0
        mem[_268 + 96] = 0
        if accountBalance[address(arg1)].field_512 < arg6:
            emit code.data[9137 len 32]: 101
            return 0
        accountBalance[address(arg1)].field_512 -= arg6
        mem[32] = 0
        if feePercent * arg6 / 100 < absMinFee:
            accountBalance[address(arg5)].field_512 = accountBalance[address(arg5)].field_512 + arg6 - absMinFee
            mem[mem[64]] = arg1
            mem[mem[64] + 32] = arg5
            mem[mem[64] + 64] = block.timestamp
            mem[mem[64] + 96] = arg6 - absMinFee
            mem[mem[64] + 128] = absMinFee
            emit 0x9f837f1f: address(arg1), address(arg5), block.timestamp, arg6 - absMinFee, absMinFee
            mem[0] = address(stor5)
            mem[32] = 0
            accountBalance[address(stor5)].field_512 += absMinFee
            transactionsCount++
            if transactionsCount + 1 >= sub_76c6a1a1:
                transactionsCount = 0
                idx = 0
                while uint8(idx) < stor18.length:
                    require idx < stor18.length
                    mem[0] = address(stor18[idx].field_0)
                    mem[32] = 0
                    if 0 == address(accountBalance[address(stor18[idx].field_0)].field_1024):
                        require idx < stor18.length
                        require idx < stor18.length
                        if storBB8A[idx] <= 0:
                            mem[0] = 18
                            if not storBB8A[idx]:
                                require idx < stor18.length
                                require idx < 10
                                mem[_233 + (32 * idx)] = address(stor18[idx].field_0)
                        else:
                            s = 0
                            while uint8(s) <= uint8(idx):
                                require s < 10
                                mem[(32 * s) + _233] = 0
                                s = s + 1
                                continue 
                            require idx < stor18.length
                            mem[0] = 18
                            require idx < 10
                            mem[(32 * idx) + _233] = address(stor18[idx].field_0)
                    idx = idx + 1
                    continue 
                idx = 0
                while uint8(idx) < 10:
                    require idx < 10
                    mem[0] = mem[_233 + (32 * idx) + 12 len 20]
                    mem[32] = 0
                    accountBalance[mem[0]].field_512 += 20
                    _1312 = mem[_233 + (32 * idx)]
                    mem[mem[64]] = 0
                    mem[mem[64] + 32] = address(_1312)
                    mem[mem[64] + 64] = block.timestamp
                    mem[mem[64] + 96] = 20
                    mem[mem[64] + 128] = 0
                    emit 0x9f837f1f: 0, address(_1312), block.timestamp, 20, 0
                    idx = idx + 1
                    continue 
            if transactionsCount <= 99990:
                if not sub_10666547:
                    if uint8(stor12[address(arg1)].field_0):
                        if accountBalance[address(arg1)].field_512 < stor12[address(arg1)].field_256:
                            stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
                    else:
                        stor13.length++
                        if not stor13.length <= stor13.length + 1:
                            idx = stor13.length + 1
                            while stor13.length > idx:
                                uint256(stor13[idx]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor13[stor13.length]) = arg1 or Mask(96, 160, uint256(stor13[stor13.length]))
                        uint8(stor12[address(arg1)].field_0) = 1
                        stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
            else:
                if arg6 <= 10:
                    if not sub_10666547:
                        if uint8(stor12[address(arg1)].field_0):
                            if accountBalance[address(arg1)].field_512 < stor12[address(arg1)].field_256:
                                stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
                        else:
                            stor13.length++
                            if not stor13.length <= stor13.length + 1:
                                idx = stor13.length + 1
                                while stor13.length > idx:
                                    uint256(stor13[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor13[stor13.length]) = arg1 or Mask(96, 160, uint256(stor13[stor13.length]))
                            uint8(stor12[address(arg1)].field_0) = 1
                            stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
                else:
                    stor18.length++
                    if not stor18.length <= stor18.length + 1:
                        idx = 4 * stor18.length + 1
                        while 4 * stor18.length > idx:
                            address(stor18[idx].field_0) = 0
                            address(stor18[idx].field_256) = 0
                            stor18[idx].field_512 = 0
                            stor18[idx].field_768 = 0
                            idx = idx + 1
                            continue 
                    address(stor18[stor18.length].field_0) = arg1
                    address(stor18[stor18.length].field_256) = arg5
                    stor18[stor18.length].field_512 = arg6
                    stor18[stor18.length].field_768 = block.timestamp
                    if not sub_10666547:
                        if uint8(stor12[address(arg1)].field_0):
                            if accountBalance[address(arg1)].field_512 < stor12[address(arg1)].field_256:
                                stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
                        else:
                            stor13.length++
                            if not stor13.length <= stor13.length + 1:
                                idx = stor13.length + 1
                                while stor13.length > idx:
                                    uint256(stor13[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor13[stor13.length]) = arg1 or Mask(96, 160, uint256(stor13[stor13.length]))
                            uint8(stor12[address(arg1)].field_0) = 1
                            stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
        else:
            if feePercent * arg6 / 100 <= absMaxFee:
                accountBalance[address(arg5)].field_512 = accountBalance[address(arg5)].field_512 + arg6 - (feePercent * arg6 / 100)
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg5
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = arg6 - (feePercent * arg6 / 100)
                mem[mem[64] + 128] = feePercent * arg6 / 100
                emit 0x9f837f1f: address(arg1), address(arg5), block.timestamp, arg6 - (feePercent * arg6 / 100), feePercent * arg6 / 100
                mem[0] = address(stor5)
                mem[32] = 0
                accountBalance[address(stor5)].field_512 += feePercent * arg6 / 100
                transactionsCount++
                if transactionsCount + 1 >= sub_76c6a1a1:
                    transactionsCount = 0
                    idx = 0
                    while uint8(idx) < stor18.length:
                        require idx < stor18.length
                        mem[0] = address(stor18[idx].field_0)
                        mem[32] = 0
                        if 0 == address(accountBalance[address(stor18[idx].field_0)].field_1024):
                            require idx < stor18.length
                            require idx < stor18.length
                            if storBB8A[idx] <= 0:
                                mem[0] = 18
                                if not storBB8A[idx]:
                                    require idx < stor18.length
                                    require idx < 10
                                    mem[_233 + (32 * idx)] = address(stor18[idx].field_0)
                            else:
                                s = 0
                                while uint8(s) <= uint8(idx):
                                    require s < 10
                                    mem[(32 * s) + _233] = 0
                                    s = s + 1
                                    continue 
                                require idx < stor18.length
                                mem[0] = 18
                                require idx < 10
                                mem[(32 * idx) + _233] = address(stor18[idx].field_0)
                        idx = idx + 1
                        continue 
                    idx = 0
                    while uint8(idx) < 10:
                        require idx < 10
                        mem[0] = mem[_233 + (32 * idx) + 12 len 20]
                        mem[32] = 0
                        accountBalance[mem[0]].field_512 += 20
                        _1304 = mem[_233 + (32 * idx)]
                        mem[mem[64]] = 0
                        mem[mem[64] + 32] = address(_1304)
                        mem[mem[64] + 64] = block.timestamp
                        mem[mem[64] + 96] = 20
                        mem[mem[64] + 128] = 0
                        emit 0x9f837f1f: 0, address(_1304), block.timestamp, 20, 0
                        idx = idx + 1
                        continue 
                if transactionsCount <= 99990:
                    if not sub_10666547:
                        if uint8(stor12[address(arg1)].field_0):
                            if accountBalance[address(arg1)].field_512 < stor12[address(arg1)].field_256:
                                stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
                        else:
                            stor13.length++
                            if not stor13.length <= stor13.length + 1:
                                idx = stor13.length + 1
                                while stor13.length > idx:
                                    uint256(stor13[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor13[stor13.length]) = arg1 or Mask(96, 160, uint256(stor13[stor13.length]))
                            uint8(stor12[address(arg1)].field_0) = 1
                            stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
                else:
                    if arg6 <= 10:
                        if not sub_10666547:
                            if uint8(stor12[address(arg1)].field_0):
                                if accountBalance[address(arg1)].field_512 < stor12[address(arg1)].field_256:
                                    stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
                            else:
                                stor13.length++
                                if not stor13.length <= stor13.length + 1:
                                    idx = stor13.length + 1
                                    while stor13.length > idx:
                                        uint256(stor13[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                uint256(stor13[stor13.length]) = arg1 or Mask(96, 160, uint256(stor13[stor13.length]))
                                uint8(stor12[address(arg1)].field_0) = 1
                                stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
                    else:
                        stor18.length++
                        if not stor18.length <= stor18.length + 1:
                            idx = 4 * stor18.length + 1
                            while 4 * stor18.length > idx:
                                address(stor18[idx].field_0) = 0
                                address(stor18[idx].field_256) = 0
                                stor18[idx].field_512 = 0
                                stor18[idx].field_768 = 0
                                idx = idx + 1
                                continue 
                        address(stor18[stor18.length].field_0) = arg1
                        address(stor18[stor18.length].field_256) = arg5
                        stor18[stor18.length].field_512 = arg6
                        stor18[stor18.length].field_768 = block.timestamp
                        if not sub_10666547:
                            if uint8(stor12[address(arg1)].field_0):
                                if accountBalance[address(arg1)].field_512 < stor12[address(arg1)].field_256:
                                    stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
                            else:
                                stor13.length++
                                if not stor13.length <= stor13.length + 1:
                                    idx = stor13.length + 1
                                    while stor13.length > idx:
                                        uint256(stor13[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                uint256(stor13[stor13.length]) = arg1 or Mask(96, 160, uint256(stor13[stor13.length]))
                                uint8(stor12[address(arg1)].field_0) = 1
                                stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
            else:
                accountBalance[address(arg5)].field_512 = accountBalance[address(arg5)].field_512 + arg6 - absMaxFee
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg5
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = arg6 - absMaxFee
                mem[mem[64] + 128] = absMaxFee
                emit 0x9f837f1f: address(arg1), address(arg5), block.timestamp, arg6 - absMaxFee, absMaxFee
                mem[0] = address(stor5)
                mem[32] = 0
                accountBalance[address(stor5)].field_512 += absMaxFee
                transactionsCount++
                if transactionsCount + 1 >= sub_76c6a1a1:
                    transactionsCount = 0
                    idx = 0
                    while uint8(idx) < stor18.length:
                        require idx < stor18.length
                        mem[0] = address(stor18[idx].field_0)
                        mem[32] = 0
                        if 0 == address(accountBalance[address(stor18[idx].field_0)].field_1024):
                            require idx < stor18.length
                            require idx < stor18.length
                            if storBB8A[idx] <= 0:
                                mem[0] = 18
                                if not storBB8A[idx]:
                                    require idx < stor18.length
                                    require idx < 10
                                    mem[_233 + (32 * idx)] = address(stor18[idx].field_0)
                            else:
                                s = 0
                                while uint8(s) <= uint8(idx):
                                    require s < 10
                                    mem[(32 * s) + _233] = 0
                                    s = s + 1
                                    continue 
                                require idx < stor18.length
                                mem[0] = 18
                                require idx < 10
                                mem[(32 * idx) + _233] = address(stor18[idx].field_0)
                        idx = idx + 1
                        continue 
                    idx = 0
                    while uint8(idx) < 10:
                        require idx < 10
                        mem[0] = mem[_233 + (32 * idx) + 12 len 20]
                        mem[32] = 0
                        accountBalance[mem[0]].field_512 += 20
                        _1308 = mem[_233 + (32 * idx)]
                        mem[mem[64]] = 0
                        mem[mem[64] + 32] = address(_1308)
                        mem[mem[64] + 64] = block.timestamp
                        mem[mem[64] + 96] = 20
                        mem[mem[64] + 128] = 0
                        emit 0x9f837f1f: 0, address(_1308), block.timestamp, 20, 0
                        idx = idx + 1
                        continue 
                if transactionsCount <= 99990:
                    if not sub_10666547:
                        if uint8(stor12[address(arg1)].field_0):
                            if accountBalance[address(arg1)].field_512 < stor12[address(arg1)].field_256:
                                stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
                        else:
                            stor13.length++
                            if not stor13.length <= stor13.length + 1:
                                idx = stor13.length + 1
                                while stor13.length > idx:
                                    uint256(stor13[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor13[stor13.length]) = arg1 or Mask(96, 160, uint256(stor13[stor13.length]))
                            uint8(stor12[address(arg1)].field_0) = 1
                            stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
                else:
                    if arg6 <= 10:
                        if not sub_10666547:
                            if uint8(stor12[address(arg1)].field_0):
                                if accountBalance[address(arg1)].field_512 < stor12[address(arg1)].field_256:
                                    stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
                            else:
                                stor13.length++
                                if not stor13.length <= stor13.length + 1:
                                    idx = stor13.length + 1
                                    while stor13.length > idx:
                                        uint256(stor13[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                uint256(stor13[stor13.length]) = arg1 or Mask(96, 160, uint256(stor13[stor13.length]))
                                uint8(stor12[address(arg1)].field_0) = 1
                                stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
                    else:
                        stor18.length++
                        if not stor18.length <= stor18.length + 1:
                            idx = 4 * stor18.length + 1
                            while 4 * stor18.length > idx:
                                address(stor18[idx].field_0) = 0
                                address(stor18[idx].field_256) = 0
                                stor18[idx].field_512 = 0
                                stor18[idx].field_768 = 0
                                idx = idx + 1
                                continue 
                        address(stor18[stor18.length].field_0) = arg1
                        address(stor18[stor18.length].field_256) = arg5
                        stor18[stor18.length].field_512 = arg6
                        stor18[stor18.length].field_768 = block.timestamp
                        if not sub_10666547:
                            if uint8(stor12[address(arg1)].field_0):
                                if accountBalance[address(arg1)].field_512 < stor12[address(arg1)].field_256:
                                    stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
                            else:
                                stor13.length++
                                if not stor13.length <= stor13.length + 1:
                                    idx = stor13.length + 1
                                    while stor13.length > idx:
                                        uint256(stor13[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                uint256(stor13[stor13.length]) = arg1 or Mask(96, 160, uint256(stor13[stor13.length]))
                                uint8(stor12[address(arg1)].field_0) = 1
                                stor12[address(arg1)].field_256 = accountBalance[address(arg1)].field_512
    return 1
}



}
