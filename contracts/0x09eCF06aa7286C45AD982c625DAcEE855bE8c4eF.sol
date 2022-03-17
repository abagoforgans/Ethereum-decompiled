contract main {


// =======================  Init code  ======================


mapping of struct stor0;
uint8 stor1;
uint8 stor1; offset 8
uint256 stor6;
uint256 stor7;
uint256 stor12;
uint256 stor13;
uint256 stor14;

function _fallback() payable {
    if not uint8(stor1.field_8):
        uint8(stor1.field_8) = 1
    if not uint8(stor1.field_0):
        stor0[code.data[9538 len 20]].field_768 = code.data[9558 len 32]
        stor0[address(code.data[9526 len 32])][1][address(code.data[9526 len 32])].field_0 = 1
        stor0[address(code.data[9526 len 32])].field_512 = 1
        stor0[address(code.data[9526 len 32])].field_520 = 1
        stor0[address(code.data[9526 len 32])].field_1024 = block.timestamp
        uint8(stor1.field_0) = 1
    stor6 = block.timestamp
    stor7 = block.timestamp + (240 * 24 * 3600)
    stor12 = code.data[9590 len 32]
    stor13 = code.data[9622 len 32]
    stor14 = code.data[9654 len 32]
    return code.data[519 len 9007]
}



// =====================  Runtime code  =====================


mapping of struct accountBalance;
uint8 sub_e7f41213;
uint8 sub_658f4abe; offset 8
uint256 sub_5d8960c8;
uint256 sub_2d3f945f;
uint256 sub_3bffbb6f;
address stor5;
uint256 createdAt;
uint256 stor7;
uint8 sub_10666547;
mapping of struct stor9;
array of address stor10;
uint256 transactionsCount;
uint256 sub_76c6a1a1;
uint256 sub_1f471849;
uint256 sub_f263123e;
array of struct stor15;
array of uint256 stor63806209331542711802848847270949280092855778197726125910674179583545433573380;

function sub_10666547(?) payable {
    return sub_10666547
}

function sub_1f471849(?) payable {
    return sub_1f471849
}

function sub_2d3f945f(?) payable {
    return sub_2d3f945f
}

function sub_3bffbb6f(?) payable {
    return sub_3bffbb6f
}

function sub_5d8960c8(?) payable {
    return sub_5d8960c8
}

function sub_658f4abe(?) payable {
    return sub_658f4abe
}

function sub_76c6a1a1(?) payable {
    return sub_76c6a1a1
}

function getAccountBalance(address arg1) payable {
    return accountBalance[address(arg1)].field_768
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

function accounts(address arg1) payable {
    return address(accountBalance[arg1].field_0), 
           uint8(accountBalance[arg1].field_512),
           uint8(accountBalance[arg1].field_512),
           accountBalance[arg1].field_768,
           accountBalance[arg1].field_1024
}

function sub_a6df510a(?) payable {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[64] = (32 * arg4.length) + (32 * arg3.length) + 160
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    if uint8(accountBalance[address(arg1)].field_512) > 0:
        emit 0x5063c7bc: address(arg1), Array(len=19, data='holders more than 0')
        return 0
    uint8(accountBalance[address(arg1)].field_512) = 1
    uint8(accountBalance[address(arg1)].field_520) = 1
    accountBalance[address(arg1)].field_768 % 1 = 0
    uint8(accountBalance[address(arg1)][1][address(arg1)].field_0) = 1
    mem[(32 * arg4.length) + (32 * arg3.length) + 160] = 'initWallet4MultiSig'
    mem[(32 * arg4.length) + (32 * arg3.length) + 179] = address(arg1)
    mem[(32 * arg4.length) + (32 * arg3.length) + 199] = arg2 << 224
    mem[(32 * arg4.length) + (32 * arg3.length) + 203] = address(arg5)
    mem[(32 * arg4.length) + (32 * arg3.length) + 223] = address(arg6)
    mem[(32 * arg4.length) + (32 * arg3.length) + 243] = address(arg7)
    if accountBalance[address(arg1)].field_1024 >= arg2:
        emit 0x5647a61b: 0, 64, 23, 'nonce is more than time'
        emit 0x5063c7bc: address(arg1), Array(len=22, data='hash sign is incorrect')
        return 0
    if 0 == uint8(accountBalance[address(arg1)].field_512):
        emit 0x5647a61b: 2, Array(len=26, data='holders is less or equal 1')
        emit 0x5063c7bc: address(arg1), Array(len=22, data='hash sign is incorrect')
        return 0
    if address(accountBalance[address(arg1)].field_0) != 0:
        emit 0x5647a61b: 3, Array(len=14, data='recovered != 0')
        emit 0x5063c7bc: address(arg1), Array(len=22, data='hash sign is incorrect')
        return 0
    if arg3.length / 2 < uint8(accountBalance[address(arg1)].field_520):
        emit 0x5647a61b: 4, Array(len=24, data='signRSs / 2 < signatures')
        emit 0x5063c7bc: address(arg1), Array(len=22, data='hash sign is incorrect')
        return 0
    if arg4.length >= uint8(accountBalance[address(arg1)].field_520):
        if 0 == arg3.length:
            emit 0x5647a61b: 4, Array(len=27, data='signRSs == 0 || signVs == 0')
            emit 0x5063c7bc: address(arg1), Array(len=22, data='hash sign is incorrect')
            return 0
        if 0 == arg4.length:
            emit 0x5647a61b: 4, Array(len=27, data='signRSs == 0 || signVs == 0')
            emit 0x5063c7bc: address(arg1), Array(len=22, data='hash sign is incorrect')
            return 0
        if arg3.length > 512:
            emit 0x5647a61b: 5, Array(len=21, data='signRSs more than 512')
            emit 0x5063c7bc: address(arg1), Array(len=22, data='hash sign is incorrect')
            return 0
        s = 0
        s = 0
        idx = 0
        s = 0
        while uint8(idx) < arg3.length:
            require idx < mem[(32 * arg3.length) + 128]
            _223 = mem[(32 * idx) + (32 * arg3.length) + 160]
            require idx < mem[96]
            _236 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _240 = mem[(32 * idx + 1) + 128]
            mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg3.length) + 191 len 1]
            mem[mem[64] + 64] = _236
            mem[mem[64] + 96] = _240
            signer = erecover(sha3('initWallet4MultiSig', arg1, arg2, arg5, arg6, arg7), _223 << 248, _236, _240) 
            mem[mem[64]] = signer
            require erecover.result
            if uint8(accountBalance[address(signer)].field_0):
                emit 0x5647a61b: 6, Array(len=14, data='already signed')
                emit 0x5063c7bc: address(arg1), Array(len=22, data='hash sign is incorrect')
                return 0
            if not uint8(accountBalance[address(arg1)][1][address(signer)].field_0):
                emit 0x4ae8f2ba: 7, Array(len=14, data='unknown holder'), address(signer)
                emit 0x13589cd6: 7, Array(len=14, data='unknown holder'), sha3('initWallet4MultiSig', arg1, arg2, arg5, arg6, arg7)
                emit 0x5063c7bc: address(arg1), Array(len=22, data='hash sign is incorrect')
                return 0
            mem[0] = address(signer)
            mem[32] = 0
            uint8(accountBalance[address(signer)].field_0) = 1
            s = signer
            s = _223
            idx = idx + 2
            s = s + 1
            continue 
    else:
        if arg3.length / 2 != arg4.length:
            emit 0x5647a61b: 4, Array(len=24, data='signRSs / 2 < signatures')
            emit 0x5063c7bc: address(arg1), Array(len=22, data='hash sign is incorrect')
            return 0
        if 0 == arg3.length:
            emit 0x5647a61b: 4, Array(len=27, data='signRSs == 0 || signVs == 0')
            emit 0x5063c7bc: address(arg1), Array(len=22, data='hash sign is incorrect')
            return 0
        if 0 == arg4.length:
            emit 0x5647a61b: 4, Array(len=27, data='signRSs == 0 || signVs == 0')
            emit 0x5063c7bc: address(arg1), Array(len=22, data='hash sign is incorrect')
            return 0
        if arg3.length > 512:
            emit 0x5647a61b: 5, Array(len=21, data='signRSs more than 512')
            emit 0x5063c7bc: address(arg1), Array(len=22, data='hash sign is incorrect')
            return 0
        s = 0
        s = 0
        idx = 0
        s = 0
        while uint8(idx) < arg3.length:
            require idx < mem[(32 * arg3.length) + 128]
            _234 = mem[(32 * idx) + (32 * arg3.length) + 160]
            require idx < mem[96]
            _238 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _243 = mem[(32 * idx + 1) + 128]
            mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg3.length) + 191 len 1]
            mem[mem[64] + 64] = _238
            mem[mem[64] + 96] = _243
            signer = erecover(sha3('initWallet4MultiSig', arg1, arg2, arg5, arg6, arg7), _234 << 248, _238, _243) 
            mem[mem[64]] = signer
            require erecover.result
            if uint8(accountBalance[address(signer)].field_0):
                emit 0x5647a61b: 6, Array(len=14, data='already signed')
                emit 0x5063c7bc: address(arg1), Array(len=22, data='hash sign is incorrect')
                return 0
            if not uint8(accountBalance[address(arg1)][1][address(signer)].field_0):
                emit 0x4ae8f2ba: 7, Array(len=14, data='unknown holder'), address(signer)
                emit 0x13589cd6: 7, Array(len=14, data='unknown holder'), sha3('initWallet4MultiSig', arg1, arg2, arg5, arg6, arg7)
                emit 0x5063c7bc: address(arg1), Array(len=22, data='hash sign is incorrect')
                return 0
            mem[0] = address(signer)
            mem[32] = 0
            uint8(accountBalance[address(signer)].field_0) = 1
            s = signer
            s = _234
            idx = idx + 2
            s = s + 1
            continue 
    if Mask(8, 1, None + 1) >> 1 < uint8(accountBalance[address(arg1)].field_520):
        emit 0x3bc17f90: tx.origin
        emit 0x5647a61b: 8, Array(len=24, data='signs less than required')
        emit 0x5063c7bc: address(arg1), Array(len=22, data='hash sign is incorrect')
        return 0
    emit 0x43fe456d 
    uint32(accountBalance[address(arg1)].field_1024) = arg2
    Mask(224, 0, accountBalance[address(arg1)].field_1056) = 0
    uint8(accountBalance[address(arg1)][1][address(arg5)].field_0) = 1
    uint8(accountBalance[address(arg1)][1][arg6].field_0) = 1
    uint8(accountBalance[address(arg1)][1][arg7].field_0) = 1
    uint8(accountBalance[address(arg1)].field_512) = 4
    uint8(accountBalance[address(arg1)].field_520) = 3
    accountBalance[address(arg1)].field_768 % 1 = 0
    emit 0x60782706: arg1
    return 1
}

function annualInterest() payable {
    if stor7 + sub_1f471849 > block.timestamp:
        emit 0xf69a3561: msg.sender
    else:
        if block.timestamp - createdAt / sub_f263123e <= 90:
            s = 0
            s = 0
            idx = 0
            while idx < stor10.length:
                mem[0] = address(stor10[idx])
                mem[32] = 0
                if not address(accountBalance[address(stor10[idx])].field_0):
                    if stor9[address(stor10[idx])].field_256 > 0:
                        accountBalance[address(stor10[idx])].field_768 += 100 * stor9[address(stor10[idx])].field_256 / 130
                        mem[96] = address(stor10[idx])
                        mem[128] = 100 * stor9[address(stor10[idx])].field_256 / 130
                        emit 0x1bd25a83: address(stor10[idx]), 100 * stor9[address(stor10[idx])].field_256 / 130
                    mem[0] = address(stor10[idx])
                    mem[32] = 9
                    uint8(stor9[address(stor10[idx])].field_0) = 0
                    stor9[address(stor10[idx])].field_256 = 0
                s = sha3(address(stor10[idx]), 0)
                s = address(stor10[idx])
                idx = idx + 1
                continue 
            stor10.length = 0
            idx = 0xc65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2a8
            while stor10.length - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d58 > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        else:
            if block.timestamp - createdAt / sub_f263123e <= 180:
                s = 0
                s = 0
                idx = 0
                while idx < stor10.length:
                    mem[0] = address(stor10[idx])
                    mem[32] = 0
                    if not address(accountBalance[address(stor10[idx])].field_0):
                        if stor9[address(stor10[idx])].field_256 > 0:
                            accountBalance[address(stor10[idx])].field_768 += 100 * stor9[address(stor10[idx])].field_256 / 100
                            mem[96] = address(stor10[idx])
                            mem[128] = 100 * stor9[address(stor10[idx])].field_256 / 100
                            emit 0x1bd25a83: address(stor10[idx]), 100 * stor9[address(stor10[idx])].field_256 / 100
                        mem[0] = address(stor10[idx])
                        mem[32] = 9
                        uint8(stor9[address(stor10[idx])].field_0) = 0
                        stor9[address(stor10[idx])].field_256 = 0
                    s = sha3(address(stor10[idx]), 0)
                    s = address(stor10[idx])
                    idx = idx + 1
                    continue 
                stor10.length = 0
                idx = 0xc65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2a8
                while stor10.length - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d58 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            else:
                if block.timestamp - createdAt / sub_f263123e <= 270:
                    s = 0
                    s = 0
                    idx = 0
                    while idx < stor10.length:
                        mem[0] = address(stor10[idx])
                        mem[32] = 0
                        if not address(accountBalance[address(stor10[idx])].field_0):
                            if stor9[address(stor10[idx])].field_256 > 0:
                                accountBalance[address(stor10[idx])].field_768 += 100 * stor9[address(stor10[idx])].field_256 / 80
                                mem[96] = address(stor10[idx])
                                mem[128] = 100 * stor9[address(stor10[idx])].field_256 / 80
                                emit 0x1bd25a83: address(stor10[idx]), 100 * stor9[address(stor10[idx])].field_256 / 80
                            mem[0] = address(stor10[idx])
                            mem[32] = 9
                            uint8(stor9[address(stor10[idx])].field_0) = 0
                            stor9[address(stor10[idx])].field_256 = 0
                        s = sha3(address(stor10[idx]), 0)
                        s = address(stor10[idx])
                        idx = idx + 1
                        continue 
                    stor10.length = 0
                    idx = 0xc65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2a8
                    while stor10.length - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d58 > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                else:
                    if block.timestamp - createdAt / sub_f263123e <= 360:
                        s = 0
                        s = 0
                        idx = 0
                        while idx < stor10.length:
                            mem[0] = address(stor10[idx])
                            mem[32] = 0
                            if not address(accountBalance[address(stor10[idx])].field_0):
                                if stor9[address(stor10[idx])].field_256 > 0:
                                    accountBalance[address(stor10[idx])].field_768 += 100 * stor9[address(stor10[idx])].field_256 / 50
                                    mem[96] = address(stor10[idx])
                                    mem[128] = 100 * stor9[address(stor10[idx])].field_256 / 50
                                    emit 0x1bd25a83: address(stor10[idx]), 100 * stor9[address(stor10[idx])].field_256 / 50
                                mem[0] = address(stor10[idx])
                                mem[32] = 9
                                uint8(stor9[address(stor10[idx])].field_0) = 0
                                stor9[address(stor10[idx])].field_256 = 0
                            s = sha3(address(stor10[idx]), 0)
                            s = address(stor10[idx])
                            idx = idx + 1
                            continue 
                        stor10.length = 0
                        idx = 0xc65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2a8
                        while stor10.length - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d58 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        if block.timestamp - createdAt / sub_f263123e > 2190:
                            sub_10666547 = 1
                        else:
                            s = 0
                            s = 0
                            idx = 0
                            while idx < stor10.length:
                                mem[0] = address(stor10[idx])
                                mem[32] = 0
                                if not address(accountBalance[address(stor10[idx])].field_0):
                                    if stor9[address(stor10[idx])].field_256 > 0:
                                        accountBalance[address(stor10[idx])].field_768 += 100 * stor9[address(stor10[idx])].field_256 / 20
                                        mem[96] = address(stor10[idx])
                                        mem[128] = 100 * stor9[address(stor10[idx])].field_256 / 20
                                        emit 0x1bd25a83: address(stor10[idx]), 100 * stor9[address(stor10[idx])].field_256 / 20
                                    mem[0] = address(stor10[idx])
                                    mem[32] = 9
                                    uint8(stor9[address(stor10[idx])].field_0) = 0
                                    stor9[address(stor10[idx])].field_256 = 0
                                s = sha3(address(stor10[idx]), 0)
                                s = address(stor10[idx])
                                idx = idx + 1
                                continue 
                            stor10.length = 0
                            idx = 0xc65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2a8
                            while stor10.length - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d58 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
    return 0
}

function sub_ae10440e(?) payable {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[64] = (32 * arg4.length) + (32 * arg3.length) + 160
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + (32 * arg3.length) + 160] = 'recoverAccount'
    mem[(32 * arg4.length) + (32 * arg3.length) + 174] = address(arg1)
    mem[(32 * arg4.length) + (32 * arg3.length) + 194] = arg2 << 224
    mem[(32 * arg4.length) + (32 * arg3.length) + 198] = address(arg5)
    if accountBalance[address(arg1)].field_1024 >= arg2:
        emit 0x5647a61b: 0, 64, 23, 'nonce is more than time'
        emit 0x3bc17f90: msg.sender
    else:
        if 0 == uint8(accountBalance[address(arg1)].field_512):
            emit 0x5647a61b: 2, Array(len=26, data='holders is less or equal 1')
            emit 0x3bc17f90: msg.sender
        else:
            if address(accountBalance[address(arg1)].field_0) != 0:
                emit 0x5647a61b: 3, Array(len=14, data='recovered != 0')
                emit 0x3bc17f90: msg.sender
            else:
                if arg3.length / 2 < uint8(accountBalance[address(arg1)].field_520):
                    emit 0x5647a61b: 4, Array(len=24, data='signRSs / 2 < signatures')
                    emit 0x3bc17f90: msg.sender
                else:
                    if arg4.length >= uint8(accountBalance[address(arg1)].field_520):
                        if 0 == arg3.length:
                            emit 0x5647a61b: 4, Array(len=27, data='signRSs == 0 || signVs == 0')
                            emit 0x3bc17f90: msg.sender
                        else:
                            if 0 == arg4.length:
                                emit 0x5647a61b: 4, Array(len=27, data='signRSs == 0 || signVs == 0')
                                emit 0x3bc17f90: msg.sender
                            else:
                                if arg3.length > 512:
                                    emit 0x5647a61b: 5, Array(len=21, data='signRSs more than 512')
                                    emit 0x3bc17f90: msg.sender
                                else:
                                    s = 0
                                    s = 0
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < arg3.length:
                                        require idx < mem[(32 * arg3.length) + 128]
                                        _224 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        require idx < mem[96]
                                        _237 = mem[(32 * idx) + 128]
                                        require idx + 1 < mem[96]
                                        _241 = mem[(32 * idx + 1) + 128]
                                        mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg3.length) + 191 len 1]
                                        mem[mem[64] + 64] = _237
                                        mem[mem[64] + 96] = _241
                                        signer = erecover(sha3('recoverAccount', arg1, arg2, arg5), _224 << 248, _237, _241) 
                                        mem[mem[64]] = signer
                                        require erecover.result
                                        if uint8(accountBalance[address(signer)].field_0):
                                            emit 0x5647a61b: 6, Array(len=14, data='already signed')
                                            emit 0x3bc17f90: msg.sender
                                        if not uint8(accountBalance[address(arg1)][1][address(signer)].field_0):
                                            emit 0x4ae8f2ba: 7, Array(len=14, data='unknown holder'), address(signer)
                                            emit 0x13589cd6: 7, Array(len=14, data='unknown holder'), sha3('recoverAccount', arg1, arg2, arg5)
                                            emit 0x3bc17f90: msg.sender
                                        mem[0] = address(signer)
                                        mem[32] = 0
                                        uint8(accountBalance[address(signer)].field_0) = 1
                                        s = signer
                                        s = _224
                                        idx = idx + 2
                                        s = s + 1
                                        continue 
                                    if Mask(8, 1, None + 1) >> 1 < uint8(accountBalance[address(arg1)].field_520):
                                        emit 0x3bc17f90: tx.origin
                                        emit 0x5647a61b: 8, Array(len=24, data='signs less than required')
                                        emit 0x3bc17f90: msg.sender
                                    else:
                                        emit 0x43fe456d 
                                        uint32(accountBalance[address(arg1)].field_1024) = arg2
                                        Mask(224, 0, accountBalance[address(arg1)].field_1056) = 0
                                        if address(accountBalance[address(arg1)].field_0):
                                            emit 0xd3d29821: arg1
                                        else:
                                            accountBalance[address(arg5)].field_768 += accountBalance[address(arg1)].field_768
                                            accountBalance[address(arg1)].field_768 = 0
                                            emit 0x824f1227: address(arg1), address(arg5), accountBalance[address(arg1)].field_768
                    else:
                        if arg3.length / 2 != arg4.length:
                            emit 0x5647a61b: 4, Array(len=24, data='signRSs / 2 < signatures')
                            emit 0x3bc17f90: msg.sender
                        else:
                            if 0 == arg3.length:
                                emit 0x5647a61b: 4, Array(len=27, data='signRSs == 0 || signVs == 0')
                                emit 0x3bc17f90: msg.sender
                            else:
                                if 0 == arg4.length:
                                    emit 0x5647a61b: 4, Array(len=27, data='signRSs == 0 || signVs == 0')
                                    emit 0x3bc17f90: msg.sender
                                else:
                                    if arg3.length > 512:
                                        emit 0x5647a61b: 5, Array(len=21, data='signRSs more than 512')
                                        emit 0x3bc17f90: msg.sender
                                    else:
                                        s = 0
                                        s = 0
                                        idx = 0
                                        s = 0
                                        while uint8(idx) < arg3.length:
                                            require idx < mem[(32 * arg3.length) + 128]
                                            _235 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                            require idx < mem[96]
                                            _239 = mem[(32 * idx) + 128]
                                            require idx + 1 < mem[96]
                                            _244 = mem[(32 * idx + 1) + 128]
                                            mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg3.length) + 191 len 1]
                                            mem[mem[64] + 64] = _239
                                            mem[mem[64] + 96] = _244
                                            signer = erecover(sha3('recoverAccount', arg1, arg2, arg5), _235 << 248, _239, _244) 
                                            mem[mem[64]] = signer
                                            require erecover.result
                                            if uint8(accountBalance[address(signer)].field_0):
                                                emit 0x5647a61b: 6, Array(len=14, data='already signed')
                                                emit 0x3bc17f90: msg.sender
                                            if not uint8(accountBalance[address(arg1)][1][address(signer)].field_0):
                                                emit 0x4ae8f2ba: 7, Array(len=14, data='unknown holder'), address(signer)
                                                emit 0x13589cd6: 7, Array(len=14, data='unknown holder'), sha3('recoverAccount', arg1, arg2, arg5)
                                                emit 0x3bc17f90: msg.sender
                                            mem[0] = address(signer)
                                            mem[32] = 0
                                            uint8(accountBalance[address(signer)].field_0) = 1
                                            s = signer
                                            s = _235
                                            idx = idx + 2
                                            s = s + 1
                                            continue 
                                        if Mask(8, 1, None + 1) >> 1 < uint8(accountBalance[address(arg1)].field_520):
                                            emit 0x3bc17f90: tx.origin
                                            emit 0x5647a61b: 8, Array(len=24, data='signs less than required')
                                            emit 0x3bc17f90: msg.sender
                                        else:
                                            emit 0x43fe456d 
                                            uint32(accountBalance[address(arg1)].field_1024) = arg2
                                            Mask(224, 0, accountBalance[address(arg1)].field_1056) = 0
                                            if address(accountBalance[address(arg1)].field_0):
                                                emit 0xd3d29821: arg1
                                            else:
                                                accountBalance[address(arg5)].field_768 += accountBalance[address(arg1)].field_768
                                                accountBalance[address(arg1)].field_768 = 0
                                                emit 0x824f1227: address(arg1), address(arg5), accountBalance[address(arg1)].field_768
}

function sub_ac44ebb0(?) payable {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[64] = (32 * arg4.length) + (32 * arg3.length) + 160
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + (32 * arg3.length) + 160] = 'changeAccountsignaturesRequired'
    mem[(32 * arg4.length) + (32 * arg3.length) + 191] = address(arg1)
    mem[(32 * arg4.length) + (32 * arg3.length) + 211] = arg2 << 224
    mem[(32 * arg4.length) + (32 * arg3.length) + 215] = arg5 << 248
    if accountBalance[address(arg1)].field_1024 >= arg2:
        emit 0x5647a61b: 0, 64, 23, 'nonce is more than time'
        emit 0x3bc17f90: msg.sender
    else:
        if 0 == uint8(accountBalance[address(arg1)].field_512):
            emit 0x5647a61b: 2, Array(len=26, data='holders is less or equal 1')
            emit 0x3bc17f90: msg.sender
        else:
            if address(accountBalance[address(arg1)].field_0) != 0:
                emit 0x5647a61b: 3, Array(len=14, data='recovered != 0')
                emit 0x3bc17f90: msg.sender
            else:
                if arg3.length / 2 < uint8(accountBalance[address(arg1)].field_520):
                    emit 0x5647a61b: 4, Array(len=24, data='signRSs / 2 < signatures')
                    emit 0x3bc17f90: msg.sender
                else:
                    if arg4.length >= uint8(accountBalance[address(arg1)].field_520):
                        if 0 == arg3.length:
                            emit 0x5647a61b: 4, Array(len=27, data='signRSs == 0 || signVs == 0')
                            emit 0x3bc17f90: msg.sender
                        else:
                            if 0 == arg4.length:
                                emit 0x5647a61b: 4, Array(len=27, data='signRSs == 0 || signVs == 0')
                                emit 0x3bc17f90: msg.sender
                            else:
                                if arg3.length > 512:
                                    emit 0x5647a61b: 5, Array(len=21, data='signRSs more than 512')
                                    emit 0x3bc17f90: msg.sender
                                else:
                                    s = 0
                                    s = 0
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < arg3.length:
                                        require idx < mem[(32 * arg3.length) + 128]
                                        _228 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        require idx < mem[96]
                                        _241 = mem[(32 * idx) + 128]
                                        require idx + 1 < mem[96]
                                        _245 = mem[(32 * idx + 1) + 128]
                                        mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg3.length) + 191 len 1]
                                        mem[mem[64] + 64] = _241
                                        mem[mem[64] + 96] = _245
                                        signer = erecover(sha3('changeAccountsignaturesRequired', arg1, arg2, arg5), _228 << 248, _241, _245) 
                                        mem[mem[64]] = signer
                                        require erecover.result
                                        if uint8(accountBalance[address(signer)].field_0):
                                            emit 0x5647a61b: 6, Array(len=14, data='already signed')
                                            emit 0x3bc17f90: msg.sender
                                        if not uint8(accountBalance[address(arg1)][1][address(signer)].field_0):
                                            emit 0x4ae8f2ba: 7, Array(len=14, data='unknown holder'), address(signer)
                                            emit 0x13589cd6: 7, Array(len=14, data='unknown holder'), sha3('changeAccountsignaturesRequired', arg1, arg2, arg5)
                                            emit 0x3bc17f90: msg.sender
                                        mem[0] = address(signer)
                                        mem[32] = 0
                                        uint8(accountBalance[address(signer)].field_0) = 1
                                        s = signer
                                        s = _228
                                        idx = idx + 2
                                        s = s + 1
                                        continue 
                                    if Mask(8, 1, None + 1) >> 1 < uint8(accountBalance[address(arg1)].field_520):
                                        emit 0x3bc17f90: tx.origin
                                        emit 0x5647a61b: 8, Array(len=24, data='signs less than required')
                                        emit 0x3bc17f90: msg.sender
                                    else:
                                        emit 0x43fe456d 
                                        uint32(accountBalance[address(arg1)].field_1024) = arg2
                                        Mask(224, 0, accountBalance[address(arg1)].field_1056) = 0
                                        if address(accountBalance[address(arg1)].field_0):
                                            emit 0xd3d29821: arg1
                                        else:
                                            if uint8(accountBalance[address(arg1)].field_512) >= arg5:
                                                if arg5 != 0:
                                                    Mask(248, 0, accountBalance[address(arg1)].field_520) = Mask(248, 0, arg5)
                                            emit 0x87ae6347: address(arg1), arg5
                    else:
                        if arg3.length / 2 != arg4.length:
                            emit 0x5647a61b: 4, Array(len=24, data='signRSs / 2 < signatures')
                            emit 0x3bc17f90: msg.sender
                        else:
                            if 0 == arg3.length:
                                emit 0x5647a61b: 4, Array(len=27, data='signRSs == 0 || signVs == 0')
                                emit 0x3bc17f90: msg.sender
                            else:
                                if 0 == arg4.length:
                                    emit 0x5647a61b: 4, Array(len=27, data='signRSs == 0 || signVs == 0')
                                    emit 0x3bc17f90: msg.sender
                                else:
                                    if arg3.length > 512:
                                        emit 0x5647a61b: 5, Array(len=21, data='signRSs more than 512')
                                        emit 0x3bc17f90: msg.sender
                                    else:
                                        s = 0
                                        s = 0
                                        idx = 0
                                        s = 0
                                        while uint8(idx) < arg3.length:
                                            require idx < mem[(32 * arg3.length) + 128]
                                            _239 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                            require idx < mem[96]
                                            _243 = mem[(32 * idx) + 128]
                                            require idx + 1 < mem[96]
                                            _248 = mem[(32 * idx + 1) + 128]
                                            mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg3.length) + 191 len 1]
                                            mem[mem[64] + 64] = _243
                                            mem[mem[64] + 96] = _248
                                            signer = erecover(sha3('changeAccountsignaturesRequired', arg1, arg2, arg5), _239 << 248, _243, _248) 
                                            mem[mem[64]] = signer
                                            require erecover.result
                                            if uint8(accountBalance[address(signer)].field_0):
                                                emit 0x5647a61b: 6, Array(len=14, data='already signed')
                                                emit 0x3bc17f90: msg.sender
                                            if not uint8(accountBalance[address(arg1)][1][address(signer)].field_0):
                                                emit 0x4ae8f2ba: 7, Array(len=14, data='unknown holder'), address(signer)
                                                emit 0x13589cd6: 7, Array(len=14, data='unknown holder'), sha3('changeAccountsignaturesRequired', arg1, arg2, arg5)
                                                emit 0x3bc17f90: msg.sender
                                            mem[0] = address(signer)
                                            mem[32] = 0
                                            uint8(accountBalance[address(signer)].field_0) = 1
                                            s = signer
                                            s = _239
                                            idx = idx + 2
                                            s = s + 1
                                            continue 
                                        if Mask(8, 1, None + 1) >> 1 < uint8(accountBalance[address(arg1)].field_520):
                                            emit 0x3bc17f90: tx.origin
                                            emit 0x5647a61b: 8, Array(len=24, data='signs less than required')
                                            emit 0x3bc17f90: msg.sender
                                        else:
                                            emit 0x43fe456d 
                                            uint32(accountBalance[address(arg1)].field_1024) = arg2
                                            Mask(224, 0, accountBalance[address(arg1)].field_1056) = 0
                                            if address(accountBalance[address(arg1)].field_0):
                                                emit 0xd3d29821: arg1
                                            else:
                                                if uint8(accountBalance[address(arg1)].field_512) >= arg5:
                                                    if arg5 != 0:
                                                        Mask(248, 0, accountBalance[address(arg1)].field_520) = Mask(248, 0, arg5)
                                                emit 0x87ae6347: address(arg1), arg5
}

function sub_05fba8b7(?) payable {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[64] = (32 * arg4.length) + (32 * arg3.length) + 160
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + (32 * arg3.length) + 160] = 'addAccountHolder'
    mem[(32 * arg4.length) + (32 * arg3.length) + 176] = address(arg1)
    mem[(32 * arg4.length) + (32 * arg3.length) + 196] = arg2 << 224
    mem[(32 * arg4.length) + (32 * arg3.length) + 200] = address(arg5)
    if accountBalance[address(arg1)].field_1024 >= arg2:
        emit 0x5647a61b: 0, 64, 23, 'nonce is more than time'
        emit 0x3bc17f90: msg.sender
    else:
        if 0 == uint8(accountBalance[address(arg1)].field_512):
            emit 0x5647a61b: 2, Array(len=26, data='holders is less or equal 1')
            emit 0x3bc17f90: msg.sender
        else:
            if address(accountBalance[address(arg1)].field_0) != 0:
                emit 0x5647a61b: 3, Array(len=14, data='recovered != 0')
                emit 0x3bc17f90: msg.sender
            else:
                if arg3.length / 2 < uint8(accountBalance[address(arg1)].field_520):
                    emit 0x5647a61b: 4, Array(len=24, data='signRSs / 2 < signatures')
                    emit 0x3bc17f90: msg.sender
                else:
                    if arg4.length >= uint8(accountBalance[address(arg1)].field_520):
                        if 0 == arg3.length:
                            emit 0x5647a61b: 4, Array(len=27, data='signRSs == 0 || signVs == 0')
                            emit 0x3bc17f90: msg.sender
                        else:
                            if 0 == arg4.length:
                                emit 0x5647a61b: 4, Array(len=27, data='signRSs == 0 || signVs == 0')
                                emit 0x3bc17f90: msg.sender
                            else:
                                if arg3.length > 512:
                                    emit 0x5647a61b: 5, Array(len=21, data='signRSs more than 512')
                                    emit 0x3bc17f90: msg.sender
                                else:
                                    s = 0
                                    s = 0
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < arg3.length:
                                        require idx < mem[(32 * arg3.length) + 128]
                                        _228 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        require idx < mem[96]
                                        _241 = mem[(32 * idx) + 128]
                                        require idx + 1 < mem[96]
                                        _245 = mem[(32 * idx + 1) + 128]
                                        mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg3.length) + 191 len 1]
                                        mem[mem[64] + 64] = _241
                                        mem[mem[64] + 96] = _245
                                        signer = erecover(sha3('addAccountHolder', arg1, arg2, arg5), _228 << 248, _241, _245) 
                                        mem[mem[64]] = signer
                                        require erecover.result
                                        if uint8(accountBalance[address(signer)].field_0):
                                            emit 0x5647a61b: 6, Array(len=14, data='already signed')
                                            emit 0x3bc17f90: msg.sender
                                        if not uint8(accountBalance[address(arg1)][1][address(signer)].field_0):
                                            emit 0x4ae8f2ba: 7, Array(len=14, data='unknown holder'), address(signer)
                                            emit 0x13589cd6: 7, Array(len=14, data='unknown holder'), sha3('addAccountHolder', arg1, arg2, arg5)
                                            emit 0x3bc17f90: msg.sender
                                        mem[0] = address(signer)
                                        mem[32] = 0
                                        uint8(accountBalance[address(signer)].field_0) = 1
                                        s = signer
                                        s = _228
                                        idx = idx + 2
                                        s = s + 1
                                        continue 
                                    if Mask(8, 1, None + 1) >> 1 < uint8(accountBalance[address(arg1)].field_520):
                                        emit 0x3bc17f90: tx.origin
                                        emit 0x5647a61b: 8, Array(len=24, data='signs less than required')
                                        emit 0x3bc17f90: msg.sender
                                    else:
                                        emit 0x43fe456d 
                                        uint32(accountBalance[address(arg1)].field_1024) = arg2
                                        Mask(224, 0, accountBalance[address(arg1)].field_1056) = 0
                                        if address(accountBalance[address(arg1)].field_0):
                                            emit 0xd3d29821: arg1
                                        else:
                                            if not uint8(accountBalance[address(arg1)][1][address(arg5)].field_0):
                                                uint8(accountBalance[address(arg1)][1][address(arg5)].field_0) = 1
                                                accountBalance[address(arg1)].field_512 = Mask(248, 0, accountBalance[address(arg1)].field_520)
                                            emit 0xbff23936: address(arg1), arg5
                    else:
                        if arg3.length / 2 != arg4.length:
                            emit 0x5647a61b: 4, Array(len=24, data='signRSs / 2 < signatures')
                            emit 0x3bc17f90: msg.sender
                        else:
                            if 0 == arg3.length:
                                emit 0x5647a61b: 4, Array(len=27, data='signRSs == 0 || signVs == 0')
                                emit 0x3bc17f90: msg.sender
                            else:
                                if 0 == arg4.length:
                                    emit 0x5647a61b: 4, Array(len=27, data='signRSs == 0 || signVs == 0')
                                    emit 0x3bc17f90: msg.sender
                                else:
                                    if arg3.length > 512:
                                        emit 0x5647a61b: 5, Array(len=21, data='signRSs more than 512')
                                        emit 0x3bc17f90: msg.sender
                                    else:
                                        s = 0
                                        s = 0
                                        idx = 0
                                        s = 0
                                        while uint8(idx) < arg3.length:
                                            require idx < mem[(32 * arg3.length) + 128]
                                            _239 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                            require idx < mem[96]
                                            _243 = mem[(32 * idx) + 128]
                                            require idx + 1 < mem[96]
                                            _248 = mem[(32 * idx + 1) + 128]
                                            mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg3.length) + 191 len 1]
                                            mem[mem[64] + 64] = _243
                                            mem[mem[64] + 96] = _248
                                            signer = erecover(sha3('addAccountHolder', arg1, arg2, arg5), _239 << 248, _243, _248) 
                                            mem[mem[64]] = signer
                                            require erecover.result
                                            if uint8(accountBalance[address(signer)].field_0):
                                                emit 0x5647a61b: 6, Array(len=14, data='already signed')
                                                emit 0x3bc17f90: msg.sender
                                            if not uint8(accountBalance[address(arg1)][1][address(signer)].field_0):
                                                emit 0x4ae8f2ba: 7, Array(len=14, data='unknown holder'), address(signer)
                                                emit 0x13589cd6: 7, Array(len=14, data='unknown holder'), sha3('addAccountHolder', arg1, arg2, arg5)
                                                emit 0x3bc17f90: msg.sender
                                            mem[0] = address(signer)
                                            mem[32] = 0
                                            uint8(accountBalance[address(signer)].field_0) = 1
                                            s = signer
                                            s = _239
                                            idx = idx + 2
                                            s = s + 1
                                            continue 
                                        if Mask(8, 1, None + 1) >> 1 < uint8(accountBalance[address(arg1)].field_520):
                                            emit 0x3bc17f90: tx.origin
                                            emit 0x5647a61b: 8, Array(len=24, data='signs less than required')
                                            emit 0x3bc17f90: msg.sender
                                        else:
                                            emit 0x43fe456d 
                                            uint32(accountBalance[address(arg1)].field_1024) = arg2
                                            Mask(224, 0, accountBalance[address(arg1)].field_1056) = 0
                                            if address(accountBalance[address(arg1)].field_0):
                                                emit 0xd3d29821: arg1
                                            else:
                                                if not uint8(accountBalance[address(arg1)][1][address(arg5)].field_0):
                                                    uint8(accountBalance[address(arg1)][1][address(arg5)].field_0) = 1
                                                    accountBalance[address(arg1)].field_512 = Mask(248, 0, accountBalance[address(arg1)].field_520)
                                                emit 0xbff23936: address(arg1), arg5
}

function sub_778c634e(?) payable {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[64] = (32 * arg4.length) + (32 * arg3.length) + 160
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + (32 * arg3.length) + 160] = 'removeAccountHolder'
    mem[(32 * arg4.length) + (32 * arg3.length) + 179] = address(arg1)
    mem[(32 * arg4.length) + (32 * arg3.length) + 199] = arg2 << 224
    mem[(32 * arg4.length) + (32 * arg3.length) + 203] = address(arg5)
    if accountBalance[address(arg1)].field_1024 >= arg2:
        emit 0x5647a61b: 0, 64, 23, 'nonce is more than time'
        emit 0x3bc17f90: msg.sender
    else:
        if 0 == uint8(accountBalance[address(arg1)].field_512):
            emit 0x5647a61b: 2, Array(len=26, data='holders is less or equal 1')
            emit 0x3bc17f90: msg.sender
        else:
            if address(accountBalance[address(arg1)].field_0) != 0:
                emit 0x5647a61b: 3, Array(len=14, data='recovered != 0')
                emit 0x3bc17f90: msg.sender
            else:
                if arg3.length / 2 < uint8(accountBalance[address(arg1)].field_520):
                    emit 0x5647a61b: 4, Array(len=24, data='signRSs / 2 < signatures')
                    emit 0x3bc17f90: msg.sender
                else:
                    if arg4.length >= uint8(accountBalance[address(arg1)].field_520):
                        if 0 == arg3.length:
                            emit 0x5647a61b: 4, Array(len=27, data='signRSs == 0 || signVs == 0')
                            emit 0x3bc17f90: msg.sender
                        else:
                            if 0 == arg4.length:
                                emit 0x5647a61b: 4, Array(len=27, data='signRSs == 0 || signVs == 0')
                                emit 0x3bc17f90: msg.sender
                            else:
                                if arg3.length > 512:
                                    emit 0x5647a61b: 5, Array(len=21, data='signRSs more than 512')
                                    emit 0x3bc17f90: msg.sender
                                else:
                                    s = 0
                                    s = 0
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < arg3.length:
                                        require idx < mem[(32 * arg3.length) + 128]
                                        _286 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        require idx < mem[96]
                                        _299 = mem[(32 * idx) + 128]
                                        require idx + 1 < mem[96]
                                        _303 = mem[(32 * idx + 1) + 128]
                                        mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg3.length) + 191 len 1]
                                        mem[mem[64] + 64] = _299
                                        mem[mem[64] + 96] = _303
                                        signer = erecover(sha3('removeAccountHolder', arg1, arg2, arg5), _286 << 248, _299, _303) 
                                        mem[mem[64]] = signer
                                        require erecover.result
                                        if uint8(accountBalance[address(signer)].field_0):
                                            emit 0x5647a61b: 6, Array(len=14, data='already signed')
                                            emit 0x3bc17f90: msg.sender
                                            return 0
                                        if not uint8(accountBalance[address(arg1)][1][address(signer)].field_0):
                                            emit 0x4ae8f2ba: 7, Array(len=14, data='unknown holder'), address(signer)
                                            emit 0x13589cd6: 7, Array(len=14, data='unknown holder'), sha3('removeAccountHolder', arg1, arg2, arg5)
                                            emit 0x3bc17f90: msg.sender
                                            return 0
                                        mem[0] = address(signer)
                                        mem[32] = 0
                                        uint8(accountBalance[address(signer)].field_0) = 1
                                        s = signer
                                        s = _286
                                        idx = idx + 2
                                        s = s + 1
                                        continue 
                                    if Mask(8, 1, None + 1) >> 1 < uint8(accountBalance[address(arg1)].field_520):
                                        emit 0x3bc17f90: tx.origin
                                        emit 0x5647a61b: 8, Array(len=24, data='signs less than required')
                                        emit 0x3bc17f90: msg.sender
                                    else:
                                        emit 0x43fe456d 
                                        uint32(accountBalance[address(arg1)].field_1024) = arg2
                                        Mask(224, 0, accountBalance[address(arg1)].field_1056) = 0
                                        if address(accountBalance[address(arg1)].field_0):
                                            emit 0xd3d29821: arg1
                                        else:
                                            if arg1 != arg5:
                                                if uint8(accountBalance[address(arg1)][1][address(arg5)].field_0):
                                                    if uint8(accountBalance[address(arg1)].field_520) != uint8(accountBalance[address(arg1)].field_512):
                                                        uint8(accountBalance[address(arg1)][1][address(arg5)].field_0) = 0
                                                        accountBalance[address(arg1)].field_512 = Mask(248, 0, accountBalance[address(arg1)].field_520)
                                                emit 0x22af6052: address(arg1), arg5
                    else:
                        if arg3.length / 2 != arg4.length:
                            emit 0x5647a61b: 4, Array(len=24, data='signRSs / 2 < signatures')
                            emit 0x3bc17f90: msg.sender
                        else:
                            if 0 == arg3.length:
                                emit 0x5647a61b: 4, Array(len=27, data='signRSs == 0 || signVs == 0')
                                emit 0x3bc17f90: msg.sender
                            else:
                                if 0 == arg4.length:
                                    emit 0x5647a61b: 4, Array(len=27, data='signRSs == 0 || signVs == 0')
                                    emit 0x3bc17f90: msg.sender
                                else:
                                    if arg3.length > 512:
                                        emit 0x5647a61b: 5, Array(len=21, data='signRSs more than 512')
                                        emit 0x3bc17f90: msg.sender
                                    else:
                                        s = 0
                                        s = 0
                                        idx = 0
                                        s = 0
                                        while uint8(idx) < arg3.length:
                                            require idx < mem[(32 * arg3.length) + 128]
                                            _297 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                            require idx < mem[96]
                                            _301 = mem[(32 * idx) + 128]
                                            require idx + 1 < mem[96]
                                            _306 = mem[(32 * idx + 1) + 128]
                                            mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg3.length) + 191 len 1]
                                            mem[mem[64] + 64] = _301
                                            mem[mem[64] + 96] = _306
                                            signer = erecover(sha3('removeAccountHolder', arg1, arg2, arg5), _297 << 248, _301, _306) 
                                            mem[mem[64]] = signer
                                            require erecover.result
                                            if uint8(accountBalance[address(signer)].field_0):
                                                emit 0x5647a61b: 6, Array(len=14, data='already signed')
                                                emit 0x3bc17f90: msg.sender
                                                return 0
                                            if not uint8(accountBalance[address(arg1)][1][address(signer)].field_0):
                                                emit 0x4ae8f2ba: 7, Array(len=14, data='unknown holder'), address(signer)
                                                emit 0x13589cd6: 7, Array(len=14, data='unknown holder'), sha3('removeAccountHolder', arg1, arg2, arg5)
                                                emit 0x3bc17f90: msg.sender
                                                return 0
                                            mem[0] = address(signer)
                                            mem[32] = 0
                                            uint8(accountBalance[address(signer)].field_0) = 1
                                            s = signer
                                            s = _297
                                            idx = idx + 2
                                            s = s + 1
                                            continue 
                                        if Mask(8, 1, None + 1) >> 1 < uint8(accountBalance[address(arg1)].field_520):
                                            emit 0x3bc17f90: tx.origin
                                            emit 0x5647a61b: 8, Array(len=24, data='signs less than required')
                                            emit 0x3bc17f90: msg.sender
                                        else:
                                            emit 0x43fe456d 
                                            uint32(accountBalance[address(arg1)].field_1024) = arg2
                                            Mask(224, 0, accountBalance[address(arg1)].field_1056) = 0
                                            if address(accountBalance[address(arg1)].field_0):
                                                emit 0xd3d29821: arg1
                                            else:
                                                if arg1 != arg5:
                                                    if uint8(accountBalance[address(arg1)][1][address(arg5)].field_0):
                                                        if uint8(accountBalance[address(arg1)].field_520) != uint8(accountBalance[address(arg1)].field_512):
                                                            uint8(accountBalance[address(arg1)][1][address(arg5)].field_0) = 0
                                                            accountBalance[address(arg1)].field_512 = Mask(248, 0, accountBalance[address(arg1)].field_520)
                                                    emit 0x22af6052: address(arg1), arg5
    return 0
}

function transfer(address arg1, uint256 arg2) payable {
    if address(accountBalance[tx.origin].field_0) != 0:
        emit 0xd3d29821: 0xe9da3cc4c9b70ea04af27fe61de8a4ca9e71c0ab
        return 0
    if address(accountBalance[arg1].field_0) != 0:
        emit 0xd3d29821: arg1
        return 0
    if 0 == uint8(accountBalance[tx.origin].field_512):
        uint8(accountBalance[tx.origin].field_512) = 1
        uint8(accountBalance[tx.origin][1][tx.origin].field_0) = 1
    if uint8(accountBalance[tx.origin].field_512) != 1:
        emit 0xcb6c1445: msg.sender
        return 0
    if not uint8(accountBalance[tx.origin][1][tx.origin].field_0):
        emit 0xcb6c1445: msg.sender
        return 0
    mem[96] = 0
    mem[128 len 288] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    if accountBalance[tx.origin].field_768 < arg2:
        emit 0x3ae6e1c0: tx.origin, accountBalance[tx.origin].field_768, arg2
        return 0
    accountBalance[tx.origin].field_768 -= arg2
    if arg2 / 100 * sub_2d3f945f < sub_5d8960c8:
        accountBalance[address(arg1)].field_768 = arg2 - sub_5d8960c8 + accountBalance[address(arg1)].field_768
        mem[576] = arg1
        mem[608] = block.timestamp
        mem[640] = arg2 - sub_5d8960c8
        mem[672] = sub_5d8960c8
        emit 0x613660dd: tx.origin, address(arg1), block.timestamp, arg2 - sub_5d8960c8, sub_5d8960c8
        accountBalance[stor5].field_768 += sub_5d8960c8
        mem[544] = sub_5d8960c8
        emit 0xcd87d661: sub_5d8960c8
        transactionsCount++
        if transactionsCount + 1 >= sub_76c6a1a1:
            transactionsCount = 0
            idx = 0
            while uint8(idx) < stor15.length:
                require idx < stor15.length
                mem[0] = address(stor15[idx].field_0)
                mem[32] = 0
                if not address(accountBalance[address(stor15[idx].field_0)].field_0):
                    require idx < stor15.length
                    require idx < stor15.length
                    if stor8D11[idx] <= 0:
                        mem[0] = 15
                        if not stor8D11[idx]:
                            require idx < stor15.length
                            require idx < 10
                            mem[(32 * idx) + 96] = address(stor15[idx].field_0)
                    else:
                        s = 0
                        while uint8(s) <= uint8(idx):
                            require s < 10
                            mem[(32 * s) + 96] = 0
                            s = s + 1
                            continue 
                        require idx < stor15.length
                        mem[0] = 15
                        require idx < 10
                        mem[(32 * idx) + 96] = address(stor15[idx].field_0)
                idx = idx + 1
                continue 
            idx = 0
            while uint8(idx) < 10:
                require idx < 10
                mem[0] = mem[(32 * idx) + 108 len 20]
                mem[32] = 0
                accountBalance[mem[(32 * idx) + 108 len 20]].field_768 += 20
                mem[544] = mem[(32 * idx) + 108 len 20]
                mem[576] = 20
                emit 0xb71381b2: mem[544], 20
                idx = idx + 1
                continue 
        if transactionsCount <= 99990:
            if not sub_10666547:
                if uint8(stor9[tx.origin].field_0):
                    if accountBalance[tx.origin].field_768 < stor9[tx.origin].field_256:
                        stor9[tx.origin].field_256 = accountBalance[tx.origin].field_768
                else:
                    stor10.length++
                    if not stor10.length <= stor10.length + 1:
                        idx = stor10.length + 1
                        while stor10.length > idx:
                            uint256(stor10[idx]) = 0
                            idx = idx + 1
                            continue 
                    uint256(stor10[stor10.length]) = tx.origin or Mask(96, 160, uint256(stor10[stor10.length]))
                    uint8(stor9[tx.origin].field_0) = 1
                    stor9[tx.origin].field_256 = accountBalance[tx.origin].field_768
        else:
            if arg2 <= 10:
                if not sub_10666547:
                    if uint8(stor9[tx.origin].field_0):
                        if accountBalance[tx.origin].field_768 < stor9[tx.origin].field_256:
                            stor9[tx.origin].field_256 = accountBalance[tx.origin].field_768
                    else:
                        stor10.length++
                        if not stor10.length <= stor10.length + 1:
                            idx = stor10.length + 1
                            while stor10.length > idx:
                                uint256(stor10[idx]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor10[stor10.length]) = tx.origin or Mask(96, 160, uint256(stor10[stor10.length]))
                        uint8(stor9[tx.origin].field_0) = 1
                        stor9[tx.origin].field_256 = accountBalance[tx.origin].field_768
            else:
                stor15.length++
                if not stor15.length <= stor15.length + 1:
                    idx = 4 * stor15.length + 1
                    while 4 * stor15.length > idx:
                        address(stor15[idx].field_0) = 0
                        address(stor15[idx].field_256) = 0
                        stor15[idx].field_512 = 0
                        stor15[idx].field_768 = 0
                        idx = idx + 1
                        continue 
                address(stor15[stor15.length].field_0) = tx.origin
                address(stor15[stor15.length].field_256) = arg1
                stor15[stor15.length].field_512 = arg2
                stor15[stor15.length].field_768 = block.timestamp
                if not sub_10666547:
                    if uint8(stor9[tx.origin].field_0):
                        if accountBalance[tx.origin].field_768 < stor9[tx.origin].field_256:
                            stor9[tx.origin].field_256 = accountBalance[tx.origin].field_768
                    else:
                        stor10.length++
                        if not stor10.length <= stor10.length + 1:
                            idx = stor10.length + 1
                            while stor10.length > idx:
                                uint256(stor10[idx]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor10[stor10.length]) = tx.origin or Mask(96, 160, uint256(stor10[stor10.length]))
                        uint8(stor9[tx.origin].field_0) = 1
                        stor9[tx.origin].field_256 = accountBalance[tx.origin].field_768
    else:
        if arg2 / 100 * sub_2d3f945f <= sub_3bffbb6f:
            accountBalance[address(arg1)].field_768 = arg2 - (arg2 / 100 * sub_2d3f945f) + accountBalance[address(arg1)].field_768
            mem[576] = arg1
            mem[608] = block.timestamp
            mem[640] = arg2 - (arg2 / 100 * sub_2d3f945f)
            mem[672] = arg2 / 100 * sub_2d3f945f
            emit 0x613660dd: tx.origin, address(arg1), block.timestamp, arg2 - (arg2 / 100 * sub_2d3f945f), arg2 / 100 * sub_2d3f945f
            accountBalance[stor5].field_768 += arg2 / 100 * sub_2d3f945f
            mem[544] = arg2 / 100 * sub_2d3f945f
            emit 0xcd87d661: (arg2 / 100 * sub_2d3f945f)
        else:
            accountBalance[address(arg1)].field_768 = arg2 - sub_3bffbb6f + accountBalance[address(arg1)].field_768
            mem[576] = arg1
            mem[608] = block.timestamp
            mem[640] = arg2 - sub_3bffbb6f
            mem[672] = sub_3bffbb6f
            emit 0x613660dd: tx.origin, address(arg1), block.timestamp, arg2 - sub_3bffbb6f, sub_3bffbb6f
            accountBalance[stor5].field_768 += sub_3bffbb6f
            mem[544] = sub_3bffbb6f
            emit 0xcd87d661: sub_3bffbb6f
        transactionsCount++
        if transactionsCount + 1 >= sub_76c6a1a1:
            transactionsCount = 0
            idx = 0
            while uint8(idx) < stor15.length:
                require idx < stor15.length
                mem[0] = address(stor15[idx].field_0)
                mem[32] = 0
                if not address(accountBalance[address(stor15[idx].field_0)].field_0):
                    require idx < stor15.length
                    require idx < stor15.length
                    if stor8D11[idx] <= 0:
                        mem[0] = 15
                        if not stor8D11[idx]:
                            require idx < stor15.length
                            require idx < 10
                            mem[(32 * idx) + 96] = address(stor15[idx].field_0)
                    else:
                        s = 0
                        while uint8(s) <= uint8(idx):
                            require s < 10
                            mem[(32 * s) + 96] = 0
                            s = s + 1
                            continue 
                        require idx < stor15.length
                        mem[0] = 15
                        require idx < 10
                        mem[(32 * idx) + 96] = address(stor15[idx].field_0)
                idx = idx + 1
                continue 
            idx = 0
            while uint8(idx) < 10:
                require idx < 10
                mem[0] = mem[(32 * idx) + 108 len 20]
                mem[32] = 0
                accountBalance[mem[(32 * idx) + 108 len 20]].field_768 += 20
                mem[544] = mem[(32 * idx) + 108 len 20]
                mem[576] = 20
                emit 0xb71381b2: mem[544], 20
                idx = idx + 1
                continue 
        if transactionsCount <= 99990:
            if not sub_10666547:
                if uint8(stor9[tx.origin].field_0):
                    if accountBalance[tx.origin].field_768 < stor9[tx.origin].field_256:
                        stor9[tx.origin].field_256 = accountBalance[tx.origin].field_768
                else:
                    stor10.length++
                    if not stor10.length <= stor10.length + 1:
                        idx = stor10.length + 1
                        while stor10.length > idx:
                            uint256(stor10[idx]) = 0
                            idx = idx + 1
                            continue 
                    uint256(stor10[stor10.length]) = tx.origin or Mask(96, 160, uint256(stor10[stor10.length]))
                    uint8(stor9[tx.origin].field_0) = 1
                    stor9[tx.origin].field_256 = accountBalance[tx.origin].field_768
        else:
            if arg2 <= 10:
                if not sub_10666547:
                    if uint8(stor9[tx.origin].field_0):
                        if accountBalance[tx.origin].field_768 < stor9[tx.origin].field_256:
                            stor9[tx.origin].field_256 = accountBalance[tx.origin].field_768
                    else:
                        stor10.length++
                        if not stor10.length <= stor10.length + 1:
                            idx = stor10.length + 1
                            while stor10.length > idx:
                                uint256(stor10[idx]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor10[stor10.length]) = tx.origin or Mask(96, 160, uint256(stor10[stor10.length]))
                        uint8(stor9[tx.origin].field_0) = 1
                        stor9[tx.origin].field_256 = accountBalance[tx.origin].field_768
            else:
                stor15.length++
                if not stor15.length <= stor15.length + 1:
                    idx = 4 * stor15.length + 1
                    while 4 * stor15.length > idx:
                        address(stor15[idx].field_0) = 0
                        address(stor15[idx].field_256) = 0
                        stor15[idx].field_512 = 0
                        stor15[idx].field_768 = 0
                        idx = idx + 1
                        continue 
                address(stor15[stor15.length].field_0) = tx.origin
                address(stor15[stor15.length].field_256) = arg1
                stor15[stor15.length].field_512 = arg2
                stor15[stor15.length].field_768 = block.timestamp
                if not sub_10666547:
                    if uint8(stor9[tx.origin].field_0):
                        if accountBalance[tx.origin].field_768 < stor9[tx.origin].field_256:
                            stor9[tx.origin].field_256 = accountBalance[tx.origin].field_768
                    else:
                        stor10.length++
                        if not stor10.length <= stor10.length + 1:
                            idx = stor10.length + 1
                            while stor10.length > idx:
                                uint256(stor10[idx]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor10[stor10.length]) = tx.origin or Mask(96, 160, uint256(stor10[stor10.length]))
                        uint8(stor9[tx.origin].field_0) = 1
                        stor9[tx.origin].field_256 = accountBalance[tx.origin].field_768
    return 1
}

function sub_3ed48679(?) payable {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[64] = (32 * arg4.length) + (32 * arg3.length) + 160
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + (32 * arg3.length) + 160] = 'transfer'
    mem[(32 * arg4.length) + (32 * arg3.length) + 168] = address(arg1)
    mem[(32 * arg4.length) + (32 * arg3.length) + 188] = arg2 << 224
    mem[(32 * arg4.length) + (32 * arg3.length) + 192] = address(arg5)
    mem[(32 * arg4.length) + (32 * arg3.length) + 212] = arg6
    if accountBalance[address(arg1)].field_1024 >= arg2:
        emit 0x5647a61b: 0, 64, 23, 'nonce is more than time'
        emit 0x3bc17f90: msg.sender
        return 0
    if 0 == uint8(accountBalance[address(arg1)].field_512):
        emit 0x5647a61b: 2, Array(len=26, data='holders is less or equal 1')
        emit 0x3bc17f90: msg.sender
        return 0
    if address(accountBalance[address(arg1)].field_0) != 0:
        emit 0x5647a61b: 3, Array(len=14, data='recovered != 0')
        emit 0x3bc17f90: msg.sender
        return 0
    if arg3.length / 2 < uint8(accountBalance[address(arg1)].field_520):
        emit 0x5647a61b: 4, Array(len=24, data='signRSs / 2 < signatures')
        emit 0x3bc17f90: msg.sender
        return 0
    if arg4.length >= uint8(accountBalance[address(arg1)].field_520):
        if 0 == arg3.length:
            emit 0x5647a61b: 4, Array(len=27, data='signRSs == 0 || signVs == 0')
            emit 0x3bc17f90: msg.sender
            return 0
        if 0 == arg4.length:
            emit 0x5647a61b: 4, Array(len=27, data='signRSs == 0 || signVs == 0')
            emit 0x3bc17f90: msg.sender
            return 0
        if arg3.length > 512:
            emit 0x5647a61b: 5, Array(len=21, data='signRSs more than 512')
            emit 0x3bc17f90: msg.sender
            return 0
        s = 0
        s = 0
        idx = 0
        s = 0
        while uint8(idx) < arg3.length:
            require idx < mem[(32 * arg3.length) + 128]
            _268 = mem[(32 * idx) + (32 * arg3.length) + 160]
            require idx < mem[96]
            _281 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _285 = mem[(32 * idx + 1) + 128]
            mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg3.length) + 191 len 1]
            mem[mem[64] + 64] = _281
            mem[mem[64] + 96] = _285
            signer = erecover(sha3('transfer', arg1, arg2, arg5, arg6), _268 << 248, _281, _285) 
            mem[mem[64]] = signer
            require erecover.result
            if uint8(accountBalance[address(signer)].field_0):
                emit 0x5647a61b: 6, Array(len=14, data='already signed')
                emit 0x3bc17f90: msg.sender
                return 0
            if not uint8(accountBalance[address(arg1)][1][address(signer)].field_0):
                emit 0x4ae8f2ba: 7, Array(len=14, data='unknown holder'), address(signer)
                emit 0x13589cd6: 7, Array(len=14, data='unknown holder'), sha3('transfer', arg1, arg2, arg5, arg6)
                emit 0x3bc17f90: msg.sender
                return 0
            mem[0] = address(signer)
            mem[32] = 0
            uint8(accountBalance[address(signer)].field_0) = 1
            s = signer
            s = _268
            idx = idx + 2
            s = s + 1
            continue 
        if Mask(8, 1, None + 1) >> 1 < uint8(accountBalance[address(arg1)].field_520):
            emit 0x3bc17f90: tx.origin
            emit 0x5647a61b: 8, Array(len=24, data='signs less than required')
            emit 0x3bc17f90: msg.sender
            return 0
        emit 0x43fe456d 
        uint32(accountBalance[address(arg1)].field_1024) = arg2
        Mask(224, 0, accountBalance[address(arg1)].field_1056) = 0
        if address(accountBalance[address(arg1)].field_0):
            emit 0xd3d29821: arg1
            return 0
        mem[0] = arg5
        mem[32] = 0
        if address(accountBalance[address(arg5)].field_0):
            emit 0xd3d29821: arg1
            return 0
        _349 = mem[64]
        mem[64] = mem[64] + 320
        mem[_349] = 0
        mem[_349 + 32 len 288] = 0
        _383 = mem[64]
        mem[64] = mem[64] + 128
        mem[_383] = 0
        mem[_383 + 32] = 0
        mem[_383 + 64] = 0
        mem[_383 + 96] = 0
        if accountBalance[address(arg1)].field_768 < arg6:
            emit 0x3ae6e1c0: address(arg1), accountBalance[address(arg1)].field_768, arg6
            return 0
        accountBalance[address(arg1)].field_768 -= arg6
        mem[32] = 0
        if arg6 / 100 * sub_2d3f945f < sub_5d8960c8:
            accountBalance[address(arg5)].field_768 = arg6 - sub_5d8960c8 + accountBalance[address(arg5)].field_768
            mem[mem[64] + 32] = arg5
            mem[mem[64] + 64] = block.timestamp
            mem[mem[64] + 96] = arg6 - sub_5d8960c8
            mem[mem[64] + 128] = sub_5d8960c8
            emit 0x613660dd: tx.origin, address(arg5), block.timestamp, arg6 - sub_5d8960c8, sub_5d8960c8
            mem[0] = stor5
            mem[32] = 0
            accountBalance[stor5].field_768 += sub_5d8960c8
            mem[mem[64]] = sub_5d8960c8
            emit 0xcd87d661: sub_5d8960c8
            transactionsCount++
            if transactionsCount + 1 >= sub_76c6a1a1:
                transactionsCount = 0
                idx = 0
                while uint8(idx) < stor15.length:
                    require idx < stor15.length
                    mem[0] = address(stor15[idx].field_0)
                    mem[32] = 0
                    if not address(accountBalance[address(stor15[idx].field_0)].field_0):
                        require idx < stor15.length
                        require idx < stor15.length
                        if stor8D11[idx] <= 0:
                            mem[0] = 15
                            if not stor8D11[idx]:
                                require idx < stor15.length
                                require idx < 10
                                mem[_349 + (32 * idx)] = address(stor15[idx].field_0)
                        else:
                            s = 0
                            while uint8(s) <= uint8(idx):
                                require s < 10
                                mem[(32 * s) + _349] = 0
                                s = s + 1
                                continue 
                            require idx < stor15.length
                            mem[0] = 15
                            require idx < 10
                            mem[(32 * idx) + _349] = address(stor15[idx].field_0)
                    idx = idx + 1
                    continue 
                idx = 0
                while uint8(idx) < 10:
                    require idx < 10
                    mem[0] = mem[_349 + (32 * idx) + 12 len 20]
                    mem[32] = 0
                    accountBalance[mem[0]].field_768 += 20
                    mem[mem[64]] = mem[_349 + (32 * idx) + 12 len 20]
                    mem[mem[64] + 32] = 20
                    emit 0xb71381b2: mem[mem[64]], 20
                    idx = idx + 1
                    continue 
            if transactionsCount <= 99990:
                if not sub_10666547:
                    if uint8(stor9[address(arg1)].field_0):
                        if accountBalance[address(arg1)].field_768 < stor9[address(arg1)].field_256:
                            stor9[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
                    else:
                        stor10.length++
                        if not stor10.length <= stor10.length + 1:
                            idx = stor10.length + 1
                            while stor10.length > idx:
                                uint256(stor10[idx]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor10[stor10.length]) = arg1 or Mask(96, 160, uint256(stor10[stor10.length]))
                        uint8(stor9[address(arg1)].field_0) = 1
                        stor9[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
            else:
                if arg6 <= 10:
                    if not sub_10666547:
                        if uint8(stor9[address(arg1)].field_0):
                            if accountBalance[address(arg1)].field_768 < stor9[address(arg1)].field_256:
                                stor9[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
                        else:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    uint256(stor10[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor10[stor10.length]) = arg1 or Mask(96, 160, uint256(stor10[stor10.length]))
                            uint8(stor9[address(arg1)].field_0) = 1
                            stor9[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
                else:
                    stor15.length++
                    if not stor15.length <= stor15.length + 1:
                        idx = 4 * stor15.length + 1
                        while 4 * stor15.length > idx:
                            address(stor15[idx].field_0) = 0
                            address(stor15[idx].field_256) = 0
                            stor15[idx].field_512 = 0
                            stor15[idx].field_768 = 0
                            idx = idx + 1
                            continue 
                    address(stor15[stor15.length].field_0) = arg1
                    address(stor15[stor15.length].field_256) = arg5
                    stor15[stor15.length].field_512 = arg6
                    stor15[stor15.length].field_768 = block.timestamp
                    if not sub_10666547:
                        if uint8(stor9[address(arg1)].field_0):
                            if accountBalance[address(arg1)].field_768 < stor9[address(arg1)].field_256:
                                stor9[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
                        else:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    uint256(stor10[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor10[stor10.length]) = arg1 or Mask(96, 160, uint256(stor10[stor10.length]))
                            uint8(stor9[address(arg1)].field_0) = 1
                            stor9[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
        else:
            if arg6 / 100 * sub_2d3f945f <= sub_3bffbb6f:
                accountBalance[address(arg5)].field_768 = arg6 - (arg6 / 100 * sub_2d3f945f) + accountBalance[address(arg5)].field_768
                mem[mem[64] + 32] = arg5
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = arg6 - (arg6 / 100 * sub_2d3f945f)
                mem[mem[64] + 128] = arg6 / 100 * sub_2d3f945f
                emit 0x613660dd: tx.origin, address(arg5), block.timestamp, arg6 - (arg6 / 100 * sub_2d3f945f), arg6 / 100 * sub_2d3f945f
                mem[0] = stor5
                mem[32] = 0
                accountBalance[stor5].field_768 += arg6 / 100 * sub_2d3f945f
                mem[mem[64]] = arg6 / 100 * sub_2d3f945f
                emit 0xcd87d661: (arg6 / 100 * sub_2d3f945f)
            else:
                accountBalance[address(arg5)].field_768 = arg6 - sub_3bffbb6f + accountBalance[address(arg5)].field_768
                mem[mem[64] + 32] = arg5
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = arg6 - sub_3bffbb6f
                mem[mem[64] + 128] = sub_3bffbb6f
                emit 0x613660dd: tx.origin, address(arg5), block.timestamp, arg6 - sub_3bffbb6f, sub_3bffbb6f
                mem[0] = stor5
                mem[32] = 0
                accountBalance[stor5].field_768 += sub_3bffbb6f
                mem[mem[64]] = sub_3bffbb6f
                emit 0xcd87d661: sub_3bffbb6f
            transactionsCount++
            if transactionsCount + 1 >= sub_76c6a1a1:
                transactionsCount = 0
                idx = 0
                while uint8(idx) < stor15.length:
                    require idx < stor15.length
                    mem[0] = address(stor15[idx].field_0)
                    mem[32] = 0
                    if not address(accountBalance[address(stor15[idx].field_0)].field_0):
                        require idx < stor15.length
                        require idx < stor15.length
                        if stor8D11[idx] <= 0:
                            mem[0] = 15
                            if not stor8D11[idx]:
                                require idx < stor15.length
                                require idx < 10
                                mem[_349 + (32 * idx)] = address(stor15[idx].field_0)
                        else:
                            s = 0
                            while uint8(s) <= uint8(idx):
                                require s < 10
                                mem[(32 * s) + _349] = 0
                                s = s + 1
                                continue 
                            require idx < stor15.length
                            mem[0] = 15
                            require idx < 10
                            mem[(32 * idx) + _349] = address(stor15[idx].field_0)
                    idx = idx + 1
                    continue 
                idx = 0
                while uint8(idx) < 10:
                    require idx < 10
                    mem[0] = mem[_349 + (32 * idx) + 12 len 20]
                    mem[32] = 0
                    accountBalance[mem[0]].field_768 += 20
                    mem[mem[64]] = mem[_349 + (32 * idx) + 12 len 20]
                    mem[mem[64] + 32] = 20
                    emit 0xb71381b2: mem[mem[64]], 20
                    idx = idx + 1
                    continue 
            if transactionsCount <= 99990:
                if not sub_10666547:
                    if uint8(stor9[address(arg1)].field_0):
                        if accountBalance[address(arg1)].field_768 < stor9[address(arg1)].field_256:
                            stor9[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
                    else:
                        stor10.length++
                        if not stor10.length <= stor10.length + 1:
                            idx = stor10.length + 1
                            while stor10.length > idx:
                                uint256(stor10[idx]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor10[stor10.length]) = arg1 or Mask(96, 160, uint256(stor10[stor10.length]))
                        uint8(stor9[address(arg1)].field_0) = 1
                        stor9[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
            else:
                if arg6 <= 10:
                    if not sub_10666547:
                        if uint8(stor9[address(arg1)].field_0):
                            if accountBalance[address(arg1)].field_768 < stor9[address(arg1)].field_256:
                                stor9[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
                        else:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    uint256(stor10[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor10[stor10.length]) = arg1 or Mask(96, 160, uint256(stor10[stor10.length]))
                            uint8(stor9[address(arg1)].field_0) = 1
                            stor9[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
                else:
                    stor15.length++
                    if not stor15.length <= stor15.length + 1:
                        idx = 4 * stor15.length + 1
                        while 4 * stor15.length > idx:
                            address(stor15[idx].field_0) = 0
                            address(stor15[idx].field_256) = 0
                            stor15[idx].field_512 = 0
                            stor15[idx].field_768 = 0
                            idx = idx + 1
                            continue 
                    address(stor15[stor15.length].field_0) = arg1
                    address(stor15[stor15.length].field_256) = arg5
                    stor15[stor15.length].field_512 = arg6
                    stor15[stor15.length].field_768 = block.timestamp
                    if not sub_10666547:
                        if uint8(stor9[address(arg1)].field_0):
                            if accountBalance[address(arg1)].field_768 < stor9[address(arg1)].field_256:
                                stor9[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
                        else:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    uint256(stor10[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor10[stor10.length]) = arg1 or Mask(96, 160, uint256(stor10[stor10.length]))
                            uint8(stor9[address(arg1)].field_0) = 1
                            stor9[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
    else:
        if arg3.length / 2 != arg4.length:
            emit 0x5647a61b: 4, Array(len=24, data='signRSs / 2 < signatures')
            emit 0x3bc17f90: msg.sender
            return 0
        if 0 == arg3.length:
            emit 0x5647a61b: 4, Array(len=27, data='signRSs == 0 || signVs == 0')
            emit 0x3bc17f90: msg.sender
            return 0
        if 0 == arg4.length:
            emit 0x5647a61b: 4, Array(len=27, data='signRSs == 0 || signVs == 0')
            emit 0x3bc17f90: msg.sender
            return 0
        if arg3.length > 512:
            emit 0x5647a61b: 5, Array(len=21, data='signRSs more than 512')
            emit 0x3bc17f90: msg.sender
            return 0
        s = 0
        s = 0
        idx = 0
        s = 0
        while uint8(idx) < arg3.length:
            require idx < mem[(32 * arg3.length) + 128]
            _279 = mem[(32 * idx) + (32 * arg3.length) + 160]
            require idx < mem[96]
            _283 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _288 = mem[(32 * idx + 1) + 128]
            mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg3.length) + 191 len 1]
            mem[mem[64] + 64] = _283
            mem[mem[64] + 96] = _288
            signer = erecover(sha3('transfer', arg1, arg2, arg5, arg6), _279 << 248, _283, _288) 
            mem[mem[64]] = signer
            require erecover.result
            if uint8(accountBalance[address(signer)].field_0):
                emit 0x5647a61b: 6, Array(len=14, data='already signed')
                emit 0x3bc17f90: msg.sender
                return 0
            if not uint8(accountBalance[address(arg1)][1][address(signer)].field_0):
                emit 0x4ae8f2ba: 7, Array(len=14, data='unknown holder'), address(signer)
                emit 0x13589cd6: 7, Array(len=14, data='unknown holder'), sha3('transfer', arg1, arg2, arg5, arg6)
                emit 0x3bc17f90: msg.sender
                return 0
            mem[0] = address(signer)
            mem[32] = 0
            uint8(accountBalance[address(signer)].field_0) = 1
            s = signer
            s = _279
            idx = idx + 2
            s = s + 1
            continue 
        if Mask(8, 1, None + 1) >> 1 < uint8(accountBalance[address(arg1)].field_520):
            emit 0x3bc17f90: tx.origin
            emit 0x5647a61b: 8, Array(len=24, data='signs less than required')
            emit 0x3bc17f90: msg.sender
            return 0
        emit 0x43fe456d 
        uint32(accountBalance[address(arg1)].field_1024) = arg2
        Mask(224, 0, accountBalance[address(arg1)].field_1056) = 0
        if address(accountBalance[address(arg1)].field_0):
            emit 0xd3d29821: arg1
            return 0
        mem[0] = arg5
        mem[32] = 0
        if address(accountBalance[address(arg5)].field_0):
            emit 0xd3d29821: arg1
            return 0
        _352 = mem[64]
        mem[64] = mem[64] + 320
        mem[_352] = 0
        mem[_352 + 32 len 288] = 0
        _385 = mem[64]
        mem[64] = mem[64] + 128
        mem[_385] = 0
        mem[_385 + 32] = 0
        mem[_385 + 64] = 0
        mem[_385 + 96] = 0
        if accountBalance[address(arg1)].field_768 < arg6:
            emit 0x3ae6e1c0: address(arg1), accountBalance[address(arg1)].field_768, arg6
            return 0
        accountBalance[address(arg1)].field_768 -= arg6
        mem[32] = 0
        if arg6 / 100 * sub_2d3f945f < sub_5d8960c8:
            accountBalance[address(arg5)].field_768 = arg6 - sub_5d8960c8 + accountBalance[address(arg5)].field_768
            mem[mem[64] + 32] = arg5
            mem[mem[64] + 64] = block.timestamp
            mem[mem[64] + 96] = arg6 - sub_5d8960c8
            mem[mem[64] + 128] = sub_5d8960c8
            emit 0x613660dd: tx.origin, address(arg5), block.timestamp, arg6 - sub_5d8960c8, sub_5d8960c8
            mem[0] = stor5
            mem[32] = 0
            accountBalance[stor5].field_768 += sub_5d8960c8
            mem[mem[64]] = sub_5d8960c8
            emit 0xcd87d661: sub_5d8960c8
            transactionsCount++
            if transactionsCount + 1 >= sub_76c6a1a1:
                transactionsCount = 0
                idx = 0
                while uint8(idx) < stor15.length:
                    require idx < stor15.length
                    mem[0] = address(stor15[idx].field_0)
                    mem[32] = 0
                    if not address(accountBalance[address(stor15[idx].field_0)].field_0):
                        require idx < stor15.length
                        require idx < stor15.length
                        if stor8D11[idx] <= 0:
                            mem[0] = 15
                            if not stor8D11[idx]:
                                require idx < stor15.length
                                require idx < 10
                                mem[_352 + (32 * idx)] = address(stor15[idx].field_0)
                        else:
                            s = 0
                            while uint8(s) <= uint8(idx):
                                require s < 10
                                mem[(32 * s) + _352] = 0
                                s = s + 1
                                continue 
                            require idx < stor15.length
                            mem[0] = 15
                            require idx < 10
                            mem[(32 * idx) + _352] = address(stor15[idx].field_0)
                    idx = idx + 1
                    continue 
                idx = 0
                while uint8(idx) < 10:
                    require idx < 10
                    mem[0] = mem[_352 + (32 * idx) + 12 len 20]
                    mem[32] = 0
                    accountBalance[mem[0]].field_768 += 20
                    mem[mem[64]] = mem[_352 + (32 * idx) + 12 len 20]
                    mem[mem[64] + 32] = 20
                    emit 0xb71381b2: mem[mem[64]], 20
                    idx = idx + 1
                    continue 
            if transactionsCount <= 99990:
                if not sub_10666547:
                    if uint8(stor9[address(arg1)].field_0):
                        if accountBalance[address(arg1)].field_768 < stor9[address(arg1)].field_256:
                            stor9[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
                    else:
                        stor10.length++
                        if not stor10.length <= stor10.length + 1:
                            idx = stor10.length + 1
                            while stor10.length > idx:
                                uint256(stor10[idx]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor10[stor10.length]) = arg1 or Mask(96, 160, uint256(stor10[stor10.length]))
                        uint8(stor9[address(arg1)].field_0) = 1
                        stor9[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
            else:
                if arg6 <= 10:
                    if not sub_10666547:
                        if uint8(stor9[address(arg1)].field_0):
                            if accountBalance[address(arg1)].field_768 < stor9[address(arg1)].field_256:
                                stor9[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
                        else:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    uint256(stor10[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor10[stor10.length]) = arg1 or Mask(96, 160, uint256(stor10[stor10.length]))
                            uint8(stor9[address(arg1)].field_0) = 1
                            stor9[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
                else:
                    stor15.length++
                    if not stor15.length <= stor15.length + 1:
                        idx = 4 * stor15.length + 1
                        while 4 * stor15.length > idx:
                            address(stor15[idx].field_0) = 0
                            address(stor15[idx].field_256) = 0
                            stor15[idx].field_512 = 0
                            stor15[idx].field_768 = 0
                            idx = idx + 1
                            continue 
                    address(stor15[stor15.length].field_0) = arg1
                    address(stor15[stor15.length].field_256) = arg5
                    stor15[stor15.length].field_512 = arg6
                    stor15[stor15.length].field_768 = block.timestamp
                    if not sub_10666547:
                        if uint8(stor9[address(arg1)].field_0):
                            if accountBalance[address(arg1)].field_768 < stor9[address(arg1)].field_256:
                                stor9[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
                        else:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    uint256(stor10[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor10[stor10.length]) = arg1 or Mask(96, 160, uint256(stor10[stor10.length]))
                            uint8(stor9[address(arg1)].field_0) = 1
                            stor9[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
        else:
            if arg6 / 100 * sub_2d3f945f <= sub_3bffbb6f:
                accountBalance[address(arg5)].field_768 = arg6 - (arg6 / 100 * sub_2d3f945f) + accountBalance[address(arg5)].field_768
                mem[mem[64] + 32] = arg5
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = arg6 - (arg6 / 100 * sub_2d3f945f)
                mem[mem[64] + 128] = arg6 / 100 * sub_2d3f945f
                emit 0x613660dd: tx.origin, address(arg5), block.timestamp, arg6 - (arg6 / 100 * sub_2d3f945f), arg6 / 100 * sub_2d3f945f
                mem[0] = stor5
                mem[32] = 0
                accountBalance[stor5].field_768 += arg6 / 100 * sub_2d3f945f
                mem[mem[64]] = arg6 / 100 * sub_2d3f945f
                emit 0xcd87d661: (arg6 / 100 * sub_2d3f945f)
            else:
                accountBalance[address(arg5)].field_768 = arg6 - sub_3bffbb6f + accountBalance[address(arg5)].field_768
                mem[mem[64] + 32] = arg5
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = arg6 - sub_3bffbb6f
                mem[mem[64] + 128] = sub_3bffbb6f
                emit 0x613660dd: tx.origin, address(arg5), block.timestamp, arg6 - sub_3bffbb6f, sub_3bffbb6f
                mem[0] = stor5
                mem[32] = 0
                accountBalance[stor5].field_768 += sub_3bffbb6f
                mem[mem[64]] = sub_3bffbb6f
                emit 0xcd87d661: sub_3bffbb6f
            transactionsCount++
            if transactionsCount + 1 >= sub_76c6a1a1:
                transactionsCount = 0
                idx = 0
                while uint8(idx) < stor15.length:
                    require idx < stor15.length
                    mem[0] = address(stor15[idx].field_0)
                    mem[32] = 0
                    if not address(accountBalance[address(stor15[idx].field_0)].field_0):
                        require idx < stor15.length
                        require idx < stor15.length
                        if stor8D11[idx] <= 0:
                            mem[0] = 15
                            if not stor8D11[idx]:
                                require idx < stor15.length
                                require idx < 10
                                mem[_352 + (32 * idx)] = address(stor15[idx].field_0)
                        else:
                            s = 0
                            while uint8(s) <= uint8(idx):
                                require s < 10
                                mem[(32 * s) + _352] = 0
                                s = s + 1
                                continue 
                            require idx < stor15.length
                            mem[0] = 15
                            require idx < 10
                            mem[(32 * idx) + _352] = address(stor15[idx].field_0)
                    idx = idx + 1
                    continue 
                idx = 0
                while uint8(idx) < 10:
                    require idx < 10
                    mem[0] = mem[_352 + (32 * idx) + 12 len 20]
                    mem[32] = 0
                    accountBalance[mem[0]].field_768 += 20
                    mem[mem[64]] = mem[_352 + (32 * idx) + 12 len 20]
                    mem[mem[64] + 32] = 20
                    emit 0xb71381b2: mem[mem[64]], 20
                    idx = idx + 1
                    continue 
            if transactionsCount <= 99990:
                if not sub_10666547:
                    if uint8(stor9[address(arg1)].field_0):
                        if accountBalance[address(arg1)].field_768 < stor9[address(arg1)].field_256:
                            stor9[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
                    else:
                        stor10.length++
                        if not stor10.length <= stor10.length + 1:
                            idx = stor10.length + 1
                            while stor10.length > idx:
                                uint256(stor10[idx]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor10[stor10.length]) = arg1 or Mask(96, 160, uint256(stor10[stor10.length]))
                        uint8(stor9[address(arg1)].field_0) = 1
                        stor9[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
            else:
                if arg6 <= 10:
                    if not sub_10666547:
                        if uint8(stor9[address(arg1)].field_0):
                            if accountBalance[address(arg1)].field_768 < stor9[address(arg1)].field_256:
                                stor9[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
                        else:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    uint256(stor10[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor10[stor10.length]) = arg1 or Mask(96, 160, uint256(stor10[stor10.length]))
                            uint8(stor9[address(arg1)].field_0) = 1
                            stor9[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
                else:
                    stor15.length++
                    if not stor15.length <= stor15.length + 1:
                        idx = 4 * stor15.length + 1
                        while 4 * stor15.length > idx:
                            address(stor15[idx].field_0) = 0
                            address(stor15[idx].field_256) = 0
                            stor15[idx].field_512 = 0
                            stor15[idx].field_768 = 0
                            idx = idx + 1
                            continue 
                    address(stor15[stor15.length].field_0) = arg1
                    address(stor15[stor15.length].field_256) = arg5
                    stor15[stor15.length].field_512 = arg6
                    stor15[stor15.length].field_768 = block.timestamp
                    if not sub_10666547:
                        if uint8(stor9[address(arg1)].field_0):
                            if accountBalance[address(arg1)].field_768 < stor9[address(arg1)].field_256:
                                stor9[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
                        else:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    uint256(stor10[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor10[stor10.length]) = arg1 or Mask(96, 160, uint256(stor10[stor10.length]))
                            uint8(stor9[address(arg1)].field_0) = 1
                            stor9[address(arg1)].field_256 = accountBalance[address(arg1)].field_768
    return 1
}



}
