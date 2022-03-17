contract main {


// =======================  Init code  ======================


mapping of struct stor6;
mapping of uint8 stor13;
uint8 stor14;
uint8 stor14; offset 8
uint256 stor16;
uint256 stor19;
uint256 stor20;

function _fallback() payable {
    stor6[0xeca970333a6396713ba42da0535f53d0e9c380ed].field_768 = 20 * 10^6
    stor6[0xeca970333a6396713ba42da0535f53d0e9c380ed][1][0xeca970333a6396713ba42da0535f53d0e9c380ed].field_0 = 1
    stor6[0xeca970333a6396713ba42da0535f53d0e9c380ed].field_512 = 1
    stor6[0xeca970333a6396713ba42da0535f53d0e9c380ed].field_520 = 1
    stor6[0xeca970333a6396713ba42da0535f53d0e9c380ed].field_1024 = block.timestamp
    stor13[0xeca970333a6396713ba42da0535f53d0e9c380ed] = 1
    uint8(stor14.field_0) = 1
    uint8(stor14.field_8) = 1
    stor16 = block.timestamp
    stor19 = block.timestamp
    stor20 = block.timestamp + (240 * 24 * 3600)
    stor6[0xeca970333a6396713ba42da0535f53d0e9c380ed].field_768 = 20 * 10^6
    stor6[0xeca970333a6396713ba42da0535f53d0e9c380ed][1][0xeca970333a6396713ba42da0535f53d0e9c380ed].field_0 = 1
    stor6[0xeca970333a6396713ba42da0535f53d0e9c380ed].field_512 = 1
    stor6[0xeca970333a6396713ba42da0535f53d0e9c380ed].field_520 = 1
    stor6[0xeca970333a6396713ba42da0535f53d0e9c380ed].field_1024 = block.timestamp
    stor13[0xeca970333a6396713ba42da0535f53d0e9c380ed] = 1
    uint8(stor14.field_0) = 1
    uint8(stor14.field_8) = 1
    stor16 = block.timestamp
    return code.data[1151 len 17984]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor5;
mapping of struct accounts;
address stor7;
mapping of uint8 stor8;
uint8 stor9;
uint8 stor9; offset 8
uint256 stor9; offset 8
uint256 stor9;
uint256 stor11;
address stor12;
mapping of uint8 stor13;
uint8 stor14;
uint8 stor14; offset 8
uint256 stor14; offset 8
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint8 stor17;
uint8 stor17; offset 8
uint256 stor17; offset 8
uint256 stor17;
uint256 stor18;
uint256 createdAt;
uint256 stor20;
uint8 sub_10666547;
mapping of struct stor22;
array of address stor23;
uint256 stor24;
array of struct stor25;

function sub_10666547(?) payable {
    return sub_10666547
}

function accounts(address arg1) payable {
    return accounts[arg1].field_0, 
           accounts[arg1].field_512,
           accounts[arg1].field_512,
           accounts[arg1].field_768,
           accounts[arg1].field_1024
}

function getAccountBalance(address arg1) payable {
    return accounts[address(arg1)].field_768
}

function createdAt() payable {
    return createdAt
}

function _fallback() payable {
  stop
}

function sub_fd688c99(?) payable {
    return stor12, uint8(stor14.field_0), uint8(stor14.field_0), stor15, stor16
}

function annualInterest() payable {
    if stor20 + (240 * 24 * 3600) > block.timestamp:
        emit 0xf69a3561: msg.sender
    else:
        if block.timestamp - createdAt / 24 * 3600 <= 90:
            s = 0
            s = 0
            idx = 0
            while idx < stor23.length:
                mem[0] = address(stor23[idx])
                mem[32] = 6
                if not accounts[address(stor23[idx])].field_0:
                    if stor22[address(stor23[idx])].field_256 > 0:
                        accounts[address(stor23[idx])].field_768 += 100 * stor22[address(stor23[idx])].field_256 / 130
                        mem[96] = address(stor23[idx])
                        mem[128] = 100 * stor22[address(stor23[idx])].field_256 / 130
                        emit 0x1bd25a83: address(stor23[idx]), 100 * stor22[address(stor23[idx])].field_256 / 130
                    mem[0] = address(stor23[idx])
                    mem[32] = 22
                    stor22[address(stor23[idx])].field_0 = 0
                    stor22[address(stor23[idx])].field_256 = 0
                s = sha3(address(stor23[idx]), 6)
                s = address(stor23[idx])
                idx = idx + 1
                continue 
            stor23.length = 0
            idx = 0
            while stor23.length > idx:
                uint256(stor23[idx]) = 0
                idx = idx + 1
                continue 
        else:
            if block.timestamp - createdAt / 24 * 3600 <= 180:
                s = 0
                s = 0
                idx = 0
                while idx < stor23.length:
                    mem[0] = address(stor23[idx])
                    mem[32] = 6
                    if not accounts[address(stor23[idx])].field_0:
                        if stor22[address(stor23[idx])].field_256 > 0:
                            accounts[address(stor23[idx])].field_768 += 100 * stor22[address(stor23[idx])].field_256 / 100
                            mem[96] = address(stor23[idx])
                            mem[128] = 100 * stor22[address(stor23[idx])].field_256 / 100
                            emit 0x1bd25a83: address(stor23[idx]), 100 * stor22[address(stor23[idx])].field_256 / 100
                        mem[0] = address(stor23[idx])
                        mem[32] = 22
                        stor22[address(stor23[idx])].field_0 = 0
                        stor22[address(stor23[idx])].field_256 = 0
                    s = sha3(address(stor23[idx]), 6)
                    s = address(stor23[idx])
                    idx = idx + 1
                    continue 
                stor23.length = 0
                idx = 0
                while stor23.length > idx:
                    uint256(stor23[idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                if block.timestamp - createdAt / 24 * 3600 <= 270:
                    s = 0
                    s = 0
                    idx = 0
                    while idx < stor23.length:
                        mem[0] = address(stor23[idx])
                        mem[32] = 6
                        if not accounts[address(stor23[idx])].field_0:
                            if stor22[address(stor23[idx])].field_256 > 0:
                                accounts[address(stor23[idx])].field_768 += 100 * stor22[address(stor23[idx])].field_256 / 80
                                mem[96] = address(stor23[idx])
                                mem[128] = 100 * stor22[address(stor23[idx])].field_256 / 80
                                emit 0x1bd25a83: address(stor23[idx]), 100 * stor22[address(stor23[idx])].field_256 / 80
                            mem[0] = address(stor23[idx])
                            mem[32] = 22
                            stor22[address(stor23[idx])].field_0 = 0
                            stor22[address(stor23[idx])].field_256 = 0
                        s = sha3(address(stor23[idx]), 6)
                        s = address(stor23[idx])
                        idx = idx + 1
                        continue 
                    stor23.length = 0
                    idx = 0
                    while stor23.length > idx:
                        uint256(stor23[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    if block.timestamp - createdAt / 24 * 3600 <= 360:
                        s = 0
                        s = 0
                        idx = 0
                        while idx < stor23.length:
                            mem[0] = address(stor23[idx])
                            mem[32] = 6
                            if not accounts[address(stor23[idx])].field_0:
                                if stor22[address(stor23[idx])].field_256 > 0:
                                    accounts[address(stor23[idx])].field_768 += 100 * stor22[address(stor23[idx])].field_256 / 50
                                    mem[96] = address(stor23[idx])
                                    mem[128] = 100 * stor22[address(stor23[idx])].field_256 / 50
                                    emit 0x1bd25a83: address(stor23[idx]), 100 * stor22[address(stor23[idx])].field_256 / 50
                                mem[0] = address(stor23[idx])
                                mem[32] = 22
                                stor22[address(stor23[idx])].field_0 = 0
                                stor22[address(stor23[idx])].field_256 = 0
                            s = sha3(address(stor23[idx]), 6)
                            s = address(stor23[idx])
                            idx = idx + 1
                            continue 
                        stor23.length = 0
                        idx = 0
                        while stor23.length > idx:
                            uint256(stor23[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        if block.timestamp - createdAt / 24 * 3600 > 2190:
                            sub_10666547 = 1
                        else:
                            s = 0
                            s = 0
                            idx = 0
                            while idx < stor23.length:
                                mem[0] = address(stor23[idx])
                                mem[32] = 6
                                if not accounts[address(stor23[idx])].field_0:
                                    if stor22[address(stor23[idx])].field_256 > 0:
                                        accounts[address(stor23[idx])].field_768 += 100 * stor22[address(stor23[idx])].field_256 / 20
                                        mem[96] = address(stor23[idx])
                                        mem[128] = 100 * stor22[address(stor23[idx])].field_256 / 20
                                        emit 0x1bd25a83: address(stor23[idx]), 100 * stor22[address(stor23[idx])].field_256 / 20
                                    mem[0] = address(stor23[idx])
                                    mem[32] = 22
                                    stor22[address(stor23[idx])].field_0 = 0
                                    stor22[address(stor23[idx])].field_256 = 0
                                s = sha3(address(stor23[idx]), 6)
                                s = address(stor23[idx])
                                idx = idx + 1
                                continue 
                            stor23.length = 0
                            idx = 0
                            while stor23.length > idx:
                                uint256(stor23[idx]) = 0
                                idx = idx + 1
                                continue 
    return 0
}

function sub_ddb0a7a4(?) payable {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + 160
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'changeCommissionStructure'
    mem[(32 * arg2.length) + (32 * arg3.length) + 185] = arg1 << 224
    mem[(32 * arg2.length) + (32 * arg3.length) + 189] = arg4
    mem[(32 * arg2.length) + (32 * arg3.length) + 221] = arg5
    mem[(32 * arg2.length) + (32 * arg3.length) + 253] = arg6
    if stor11 >= arg1:
        emit 0xc17f9005: tx.origin
        emit 0xba4271c4: msg.sender
    else:
        if block.timestamp - arg1 > stor4:
            emit 0xc17f9005: tx.origin
            emit 0xba4271c4: msg.sender
        else:
            if block.timestamp - arg1 < stor5:
                emit 0xc17f9005: tx.origin
                emit 0xba4271c4: msg.sender
            else:
                if uint8(stor9.field_0) <= 1:
                    emit 0xc17f9005: tx.origin
                    emit 0xba4271c4: msg.sender
                else:
                    if stor7:
                        emit 0xc17f9005: tx.origin
                        emit 0xba4271c4: msg.sender
                    else:
                        if arg2.length / 2 < uint8(stor9.field_8):
                            emit 0xc17f9005: tx.origin
                            emit 0xba4271c4: msg.sender
                        else:
                            if arg3.length >= uint8(stor9.field_8):
                                if arg2.length > 512:
                                    emit 0xc17f9005: tx.origin
                                    emit 0xba4271c4: msg.sender
                                else:
                                    s = 0
                                    s = 0
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < arg2.length:
                                        require idx < mem[(32 * arg2.length) + 128]
                                        _110 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx < mem[96]
                                        _116 = mem[(32 * idx) + 128]
                                        require idx + 1 < mem[96]
                                        _120 = mem[(32 * idx + 1) + 128]
                                        mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg2.length) + 191 len 1]
                                        mem[mem[64] + 64] = _116
                                        mem[mem[64] + 96] = _120
                                        signer = erecover(sha3('changeCommissionStructure', arg1, arg4, arg5, arg6), _110 << 248, _116, _120) 
                                        mem[mem[64]] = signer
                                        require erecover.result
                                        if stor0[address(signer)]:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xba4271c4: msg.sender
                                        if not stor8[address(signer)]:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xba4271c4: msg.sender
                                        mem[0] = address(signer)
                                        mem[32] = 0
                                        stor0[address(signer)] = 1
                                        s = signer
                                        s = _110
                                        idx = idx + 2
                                        s = s + 1
                                        continue 
                                    if Mask(8, 1, None + 1) >> 1 < uint8(stor9.field_8):
                                        emit 0xc17f9005: tx.origin
                                        emit 0xba4271c4: msg.sender
                                    else:
                                        require arg4 >= 0
                                        require arg5 >= 0
                                        require arg5 <= 100
                                        require arg6 >= 0
                                        require arg6 >= arg4
                                        stor0.length = arg4
                                        stor1 = arg5
                                        stor2 = arg6
                                        emit 0x87d6c410: stor0.length, stor1, stor2
                            else:
                                if arg2.length / 2 != arg3.length:
                                    emit 0xc17f9005: tx.origin
                                    emit 0xba4271c4: msg.sender
                                else:
                                    if arg2.length > 512:
                                        emit 0xc17f9005: tx.origin
                                        emit 0xba4271c4: msg.sender
                                    else:
                                        s = 0
                                        s = 0
                                        idx = 0
                                        s = 0
                                        while uint8(idx) < arg2.length:
                                            require idx < mem[(32 * arg2.length) + 128]
                                            _114 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx < mem[96]
                                            _118 = mem[(32 * idx) + 128]
                                            require idx + 1 < mem[96]
                                            _123 = mem[(32 * idx + 1) + 128]
                                            mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg2.length) + 191 len 1]
                                            mem[mem[64] + 64] = _118
                                            mem[mem[64] + 96] = _123
                                            signer = erecover(sha3('changeCommissionStructure', arg1, arg4, arg5, arg6), _114 << 248, _118, _123) 
                                            mem[mem[64]] = signer
                                            require erecover.result
                                            if stor0[address(signer)]:
                                                emit 0xc17f9005: tx.origin
                                                emit 0xba4271c4: msg.sender
                                            if not stor8[address(signer)]:
                                                emit 0xc17f9005: tx.origin
                                                emit 0xba4271c4: msg.sender
                                            mem[0] = address(signer)
                                            mem[32] = 0
                                            stor0[address(signer)] = 1
                                            s = signer
                                            s = _114
                                            idx = idx + 2
                                            s = s + 1
                                            continue 
                                        if Mask(8, 1, None + 1) >> 1 < uint8(stor9.field_8):
                                            emit 0xc17f9005: tx.origin
                                            emit 0xba4271c4: msg.sender
                                        else:
                                            require arg4 >= 0
                                            require arg5 >= 0
                                            require arg5 <= 100
                                            require arg6 >= 0
                                            require arg6 >= arg4
                                            stor0.length = arg4
                                            stor1 = arg5
                                            stor2 = arg6
                                            emit 0x87d6c410: stor0.length, stor1, stor2
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
    if accounts[address(arg1)].field_1024 >= arg2:
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
                if accounts[address(arg1)].field_512 <= 1:
                    emit 0xc17f9005: tx.origin
                    emit 0xc17f9005: msg.sender
                else:
                    if accounts[address(arg1)].field_0:
                        emit 0xc17f9005: tx.origin
                        emit 0xc17f9005: msg.sender
                    else:
                        if arg3.length / 2 < accounts[address(arg1)].field_520:
                            emit 0xc17f9005: tx.origin
                            emit 0xc17f9005: msg.sender
                        else:
                            if arg4.length >= accounts[address(arg1)].field_520:
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
                                        if not accounts[address(arg1)][1][address(signer)].field_0:
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
                                    if Mask(8, 1, None + 1) >> 1 < accounts[address(arg1)].field_520:
                                        emit 0xc17f9005: tx.origin
                                        emit 0xc17f9005: msg.sender
                                    else:
                                        if accounts[address(arg1)].field_0:
                                            emit 0xd29821f1: arg1
                                        else:
                                            accounts[address(arg5)].field_768 += accounts[address(arg1)].field_768
                                            accounts[address(arg1)].field_768 = 0
                                            emit 0x824f1227: address(arg1), address(arg5), accounts[address(arg1)].field_768
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
                                            if not accounts[address(arg1)][1][address(signer)].field_0:
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
                                        if Mask(8, 1, None + 1) >> 1 < accounts[address(arg1)].field_520:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: msg.sender
                                        else:
                                            if accounts[address(arg1)].field_0:
                                                emit 0xd29821f1: arg1
                                            else:
                                                accounts[address(arg5)].field_768 += accounts[address(arg1)].field_768
                                                accounts[address(arg1)].field_768 = 0
                                                emit 0x824f1227: address(arg1), address(arg5), accounts[address(arg1)].field_768
}

function sub_ac44ebb0(?) payable {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + 160
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = 'changeAccountsignaturesRequired'
    mem[(32 * arg3.length) + (32 * arg4.length) + 191] = address(arg1)
    mem[(32 * arg3.length) + (32 * arg4.length) + 211] = arg2 << 224
    mem[(32 * arg3.length) + (32 * arg4.length) + 215] = arg5 << 248
    if accounts[address(arg1)].field_1024 >= arg2:
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
                if accounts[address(arg1)].field_512 <= 1:
                    emit 0xc17f9005: tx.origin
                    emit 0xc17f9005: msg.sender
                else:
                    if accounts[address(arg1)].field_0:
                        emit 0xc17f9005: tx.origin
                        emit 0xc17f9005: msg.sender
                    else:
                        if arg3.length / 2 < accounts[address(arg1)].field_520:
                            emit 0xc17f9005: tx.origin
                            emit 0xc17f9005: msg.sender
                        else:
                            if arg4.length >= accounts[address(arg1)].field_520:
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
                                        if not accounts[address(arg1)][1][address(signer)].field_0:
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
                                    if Mask(8, 1, None + 1) >> 1 < accounts[address(arg1)].field_520:
                                        emit 0xc17f9005: tx.origin
                                        emit 0xc17f9005: msg.sender
                                    else:
                                        if accounts[address(arg1)].field_0:
                                            emit 0xd29821f1: arg1
                                        else:
                                            if accounts[address(arg1)].field_512 >= arg5:
                                                if arg5:
                                                    accounts[address(arg1)].field_520 = Mask(248, 0, arg5)
                                            emit 0x87ae6347: address(arg1), arg5
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
                                            if not accounts[address(arg1)][1][address(signer)].field_0:
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
                                        if Mask(8, 1, None + 1) >> 1 < accounts[address(arg1)].field_520:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: msg.sender
                                        else:
                                            if accounts[address(arg1)].field_0:
                                                emit 0xd29821f1: arg1
                                            else:
                                                if accounts[address(arg1)].field_512 >= arg5:
                                                    if arg5:
                                                        accounts[address(arg1)].field_520 = Mask(248, 0, arg5)
                                                emit 0x87ae6347: address(arg1), arg5
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
    if accounts[address(arg1)].field_1024 >= arg2:
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
                if accounts[address(arg1)].field_512 <= 1:
                    emit 0xc17f9005: tx.origin
                    emit 0xc17f9005: msg.sender
                else:
                    if accounts[address(arg1)].field_0:
                        emit 0xc17f9005: tx.origin
                        emit 0xc17f9005: msg.sender
                    else:
                        if arg3.length / 2 < accounts[address(arg1)].field_520:
                            emit 0xc17f9005: tx.origin
                            emit 0xc17f9005: msg.sender
                        else:
                            if arg4.length >= accounts[address(arg1)].field_520:
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
                                        if not accounts[address(arg1)][1][address(signer)].field_0:
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
                                    if Mask(8, 1, None + 1) >> 1 < accounts[address(arg1)].field_520:
                                        emit 0xc17f9005: tx.origin
                                        emit 0xc17f9005: msg.sender
                                    else:
                                        if accounts[address(arg1)].field_0:
                                            emit 0xd29821f1: arg1
                                        else:
                                            if not accounts[address(arg1)][1][address(arg5)].field_0:
                                                accounts[address(arg1)][1][address(arg5)].field_0 = 1
                                                accounts[address(arg1)].field_512 = accounts[address(arg1)].field_512 + 1 or Mask(248, 8, accounts[address(arg1)].field_512)
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
                                            if not accounts[address(arg1)][1][address(signer)].field_0:
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
                                        if Mask(8, 1, None + 1) >> 1 < accounts[address(arg1)].field_520:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: msg.sender
                                        else:
                                            if accounts[address(arg1)].field_0:
                                                emit 0xd29821f1: arg1
                                            else:
                                                if not accounts[address(arg1)][1][address(arg5)].field_0:
                                                    accounts[address(arg1)][1][address(arg5)].field_0 = 1
                                                    accounts[address(arg1)].field_512 = accounts[address(arg1)].field_512 + 1 or Mask(248, 8, accounts[address(arg1)].field_512)
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
    if accounts[address(arg1)].field_1024 >= arg2:
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
                if accounts[address(arg1)].field_512 <= 1:
                    emit 0xc17f9005: tx.origin
                    emit 0xc17f9005: msg.sender
                else:
                    if accounts[address(arg1)].field_0:
                        emit 0xc17f9005: tx.origin
                        emit 0xc17f9005: msg.sender
                    else:
                        if arg3.length / 2 < accounts[address(arg1)].field_520:
                            emit 0xc17f9005: tx.origin
                            emit 0xc17f9005: msg.sender
                        else:
                            if arg4.length >= accounts[address(arg1)].field_520:
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
                                        if not accounts[address(arg1)][1][address(signer)].field_0:
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
                                    if Mask(8, 1, None + 1) >> 1 < accounts[address(arg1)].field_520:
                                        emit 0xc17f9005: tx.origin
                                        emit 0xc17f9005: msg.sender
                                    else:
                                        if accounts[address(arg1)].field_0:
                                            emit 0xd29821f1: arg1
                                        else:
                                            if accounts[address(arg1)][1][address(arg5)].field_0:
                                                if accounts[address(arg1)].field_512 != accounts[address(arg1)].field_520:
                                                    accounts[address(arg1)][1][address(arg5)].field_0 = 0
                                                    accounts[address(arg1)].field_512 = accounts[address(arg1)].field_512 - 1 or Mask(248, 8, accounts[address(arg1)].field_512)
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
                                            if not accounts[address(arg1)][1][address(signer)].field_0:
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
                                        if Mask(8, 1, None + 1) >> 1 < accounts[address(arg1)].field_520:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: msg.sender
                                        else:
                                            if accounts[address(arg1)].field_0:
                                                emit 0xd29821f1: arg1
                                            else:
                                                if accounts[address(arg1)][1][address(arg5)].field_0:
                                                    if accounts[address(arg1)].field_512 != accounts[address(arg1)].field_520:
                                                        accounts[address(arg1)][1][address(arg5)].field_0 = 0
                                                        accounts[address(arg1)].field_512 = accounts[address(arg1)].field_512 - 1 or Mask(248, 8, accounts[address(arg1)].field_512)
                                                emit 0x22af6052: address(arg1), arg5
}

function sub_2066a4fb(?) payable {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + 160
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'addCurrencyOwnerHolder'
    mem[(32 * arg2.length) + (32 * arg3.length) + 182] = arg1 << 224
    mem[(32 * arg2.length) + (32 * arg3.length) + 186] = address(arg4)
    if stor16 >= arg1:
        emit 0xc17f9005: tx.origin
        emit 0xc17f9005: msg.sender
    else:
        if block.timestamp - arg1 > stor4:
            emit 0xc17f9005: tx.origin
            emit 0xc17f9005: msg.sender
        else:
            if block.timestamp - arg1 < stor5:
                emit 0xc17f9005: tx.origin
                emit 0xc17f9005: msg.sender
            else:
                if uint8(stor14.field_0) <= 1:
                    emit 0xc17f9005: tx.origin
                    emit 0xc17f9005: msg.sender
                else:
                    if stor12:
                        emit 0xc17f9005: tx.origin
                        emit 0xc17f9005: msg.sender
                    else:
                        if arg2.length / 2 < uint8(stor14.field_8):
                            emit 0xc17f9005: tx.origin
                            emit 0xc17f9005: msg.sender
                        else:
                            if arg3.length >= uint8(stor14.field_8):
                                if arg2.length > 512:
                                    emit 0xc17f9005: tx.origin
                                    emit 0xc17f9005: msg.sender
                                else:
                                    s = 0
                                    s = 0
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < arg2.length:
                                        require idx < mem[(32 * arg2.length) + 128]
                                        _122 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx < mem[96]
                                        _128 = mem[(32 * idx) + 128]
                                        require idx + 1 < mem[96]
                                        _132 = mem[(32 * idx + 1) + 128]
                                        mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg2.length) + 191 len 1]
                                        mem[mem[64] + 64] = _128
                                        mem[mem[64] + 96] = _132
                                        signer = erecover(sha3('addCurrencyOwnerHolder', arg1, arg4), _122 << 248, _128, _132) 
                                        mem[mem[64]] = signer
                                        require erecover.result
                                        if stor0[address(signer)]:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: msg.sender
                                        if not stor13[address(signer)]:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: msg.sender
                                        mem[0] = address(signer)
                                        mem[32] = 0
                                        stor0[address(signer)] = 1
                                        s = signer
                                        s = _122
                                        idx = idx + 2
                                        s = s + 1
                                        continue 
                                    if Mask(8, 1, None + 1) >> 1 < uint8(stor14.field_8):
                                        emit 0xc17f9005: tx.origin
                                        emit 0xc17f9005: msg.sender
                                    else:
                                        if uint8(stor17.field_8) >= uint8(stor17.field_0):
                                            if block.timestamp >= stor18 + -(stor18 % 24 * 3600) + (24 * 3600):
                                                uint8(stor17.field_0) = 0
                                            else:
                                                emit 0xee7469a7 
                                        else:
                                            uint256(stor17.field_0) = uint8(stor17.field_0) + 1 or Mask(248, 8, uint256(stor17.field_0))
                                            if not stor13[address(arg4)]:
                                                stor13[address(arg4)] = 1
                                                uint256(stor14.field_0) = uint8(stor14.field_0) + 1 or Mask(248, 8, uint256(stor14.field_0))
                                            emit 0xbbd4bfbf: arg4
                            else:
                                if arg2.length / 2 != arg3.length:
                                    emit 0xc17f9005: tx.origin
                                    emit 0xc17f9005: msg.sender
                                else:
                                    if arg2.length > 512:
                                        emit 0xc17f9005: tx.origin
                                        emit 0xc17f9005: msg.sender
                                    else:
                                        s = 0
                                        s = 0
                                        idx = 0
                                        s = 0
                                        while uint8(idx) < arg2.length:
                                            require idx < mem[(32 * arg2.length) + 128]
                                            _126 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx < mem[96]
                                            _130 = mem[(32 * idx) + 128]
                                            require idx + 1 < mem[96]
                                            _135 = mem[(32 * idx + 1) + 128]
                                            mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg2.length) + 191 len 1]
                                            mem[mem[64] + 64] = _130
                                            mem[mem[64] + 96] = _135
                                            signer = erecover(sha3('addCurrencyOwnerHolder', arg1, arg4), _126 << 248, _130, _135) 
                                            mem[mem[64]] = signer
                                            require erecover.result
                                            if stor0[address(signer)]:
                                                emit 0xc17f9005: tx.origin
                                                emit 0xc17f9005: msg.sender
                                            if not stor13[address(signer)]:
                                                emit 0xc17f9005: tx.origin
                                                emit 0xc17f9005: msg.sender
                                            mem[0] = address(signer)
                                            mem[32] = 0
                                            stor0[address(signer)] = 1
                                            s = signer
                                            s = _126
                                            idx = idx + 2
                                            s = s + 1
                                            continue 
                                        if Mask(8, 1, None + 1) >> 1 < uint8(stor14.field_8):
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: msg.sender
                                        else:
                                            if uint8(stor17.field_8) >= uint8(stor17.field_0):
                                                if block.timestamp >= stor18 + -(stor18 % 24 * 3600) + (24 * 3600):
                                                    uint8(stor17.field_0) = 0
                                                else:
                                                    emit 0xee7469a7 
                                            else:
                                                uint256(stor17.field_0) = uint8(stor17.field_0) + 1 or Mask(248, 8, uint256(stor17.field_0))
                                                if not stor13[address(arg4)]:
                                                    stor13[address(arg4)] = 1
                                                    uint256(stor14.field_0) = uint8(stor14.field_0) + 1 or Mask(248, 8, uint256(stor14.field_0))
                                                emit 0xbbd4bfbf: arg4
}

function sub_c4d40829(?) payable {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + 160
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'changeCurrencyOwnerSignaturesReq'
    mem[(32 * arg2.length) + (32 * arg3.length) + 192] = 'uired'
    mem[(32 * arg2.length) + (32 * arg3.length) + 197] = arg1 << 224
    mem[(32 * arg2.length) + (32 * arg3.length) + 201] = arg4 << 248
    if stor16 >= arg1:
        emit 0xc17f9005: tx.origin
        emit 0xc17f9005: msg.sender
    else:
        if block.timestamp - arg1 > stor4:
            emit 0xc17f9005: tx.origin
            emit 0xc17f9005: msg.sender
        else:
            if block.timestamp - arg1 < stor5:
                emit 0xc17f9005: tx.origin
                emit 0xc17f9005: msg.sender
            else:
                if uint8(stor14.field_0) <= 1:
                    emit 0xc17f9005: tx.origin
                    emit 0xc17f9005: msg.sender
                else:
                    if stor12:
                        emit 0xc17f9005: tx.origin
                        emit 0xc17f9005: msg.sender
                    else:
                        if arg2.length / 2 < uint8(stor14.field_8):
                            emit 0xc17f9005: tx.origin
                            emit 0xc17f9005: msg.sender
                        else:
                            if arg3.length >= uint8(stor14.field_8):
                                if arg2.length > 512:
                                    emit 0xc17f9005: tx.origin
                                    emit 0xc17f9005: msg.sender
                                else:
                                    s = 0
                                    s = 0
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < arg2.length:
                                        require idx < mem[(32 * arg2.length) + 128]
                                        _122 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx < mem[96]
                                        _128 = mem[(32 * idx) + 128]
                                        require idx + 1 < mem[96]
                                        _132 = mem[(32 * idx + 1) + 128]
                                        mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg2.length) + 191 len 1]
                                        mem[mem[64] + 64] = _128
                                        mem[mem[64] + 96] = _132
                                        signer = erecover(sha3('changeCurrencyOwnerSignaturesReq', 'uired', arg1, arg4), _122 << 248, _128, _132) 
                                        mem[mem[64]] = signer
                                        require erecover.result
                                        if stor0[address(signer)]:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: msg.sender
                                        if not stor13[address(signer)]:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: msg.sender
                                        mem[0] = address(signer)
                                        mem[32] = 0
                                        stor0[address(signer)] = 1
                                        s = signer
                                        s = _122
                                        idx = idx + 2
                                        s = s + 1
                                        continue 
                                    if Mask(8, 1, None + 1) >> 1 < uint8(stor14.field_8):
                                        emit 0xc17f9005: tx.origin
                                        emit 0xc17f9005: msg.sender
                                    else:
                                        if uint8(stor17.field_8) >= uint8(stor17.field_0):
                                            if block.timestamp >= stor18 + -(stor18 % 24 * 3600) + (24 * 3600):
                                                uint8(stor17.field_0) = 0
                                            else:
                                                emit 0xee7469a7 
                                        else:
                                            uint256(stor17.field_0) = uint8(stor17.field_0) + 1 or Mask(248, 8, uint256(stor17.field_0))
                                            if uint8(stor14.field_0) >= arg4:
                                                if arg4:
                                                    Mask(248, 0, stor14.field_8) = Mask(248, 0, arg4)
                                            emit 0x650eb206: arg4
                            else:
                                if arg2.length / 2 != arg3.length:
                                    emit 0xc17f9005: tx.origin
                                    emit 0xc17f9005: msg.sender
                                else:
                                    if arg2.length > 512:
                                        emit 0xc17f9005: tx.origin
                                        emit 0xc17f9005: msg.sender
                                    else:
                                        s = 0
                                        s = 0
                                        idx = 0
                                        s = 0
                                        while uint8(idx) < arg2.length:
                                            require idx < mem[(32 * arg2.length) + 128]
                                            _126 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx < mem[96]
                                            _130 = mem[(32 * idx) + 128]
                                            require idx + 1 < mem[96]
                                            _135 = mem[(32 * idx + 1) + 128]
                                            mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg2.length) + 191 len 1]
                                            mem[mem[64] + 64] = _130
                                            mem[mem[64] + 96] = _135
                                            signer = erecover(sha3('changeCurrencyOwnerSignaturesReq', 'uired', arg1, arg4), _126 << 248, _130, _135) 
                                            mem[mem[64]] = signer
                                            require erecover.result
                                            if stor0[address(signer)]:
                                                emit 0xc17f9005: tx.origin
                                                emit 0xc17f9005: msg.sender
                                            if not stor13[address(signer)]:
                                                emit 0xc17f9005: tx.origin
                                                emit 0xc17f9005: msg.sender
                                            mem[0] = address(signer)
                                            mem[32] = 0
                                            stor0[address(signer)] = 1
                                            s = signer
                                            s = _126
                                            idx = idx + 2
                                            s = s + 1
                                            continue 
                                        if Mask(8, 1, None + 1) >> 1 < uint8(stor14.field_8):
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: msg.sender
                                        else:
                                            if uint8(stor17.field_8) >= uint8(stor17.field_0):
                                                if block.timestamp >= stor18 + -(stor18 % 24 * 3600) + (24 * 3600):
                                                    uint8(stor17.field_0) = 0
                                                else:
                                                    emit 0xee7469a7 
                                            else:
                                                uint256(stor17.field_0) = uint8(stor17.field_0) + 1 or Mask(248, 8, uint256(stor17.field_0))
                                                if uint8(stor14.field_0) >= arg4:
                                                    if arg4:
                                                        Mask(248, 0, stor14.field_8) = Mask(248, 0, arg4)
                                                emit 0x650eb206: arg4
}

function sub_5a1f9f48(?) payable {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + 160
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'removeCurrencyOwnerHolder'
    mem[(32 * arg2.length) + (32 * arg3.length) + 185] = arg1 << 224
    mem[(32 * arg2.length) + (32 * arg3.length) + 189] = address(arg4)
    if stor16 >= arg1:
        emit 0xc17f9005: tx.origin
        emit 0xc17f9005: msg.sender
    else:
        if block.timestamp - arg1 > stor4:
            emit 0xc17f9005: tx.origin
            emit 0xc17f9005: msg.sender
        else:
            if block.timestamp - arg1 < stor5:
                emit 0xc17f9005: tx.origin
                emit 0xc17f9005: msg.sender
            else:
                if uint8(stor14.field_0) <= 1:
                    emit 0xc17f9005: tx.origin
                    emit 0xc17f9005: msg.sender
                else:
                    if stor12:
                        emit 0xc17f9005: tx.origin
                        emit 0xc17f9005: msg.sender
                    else:
                        if arg2.length / 2 < uint8(stor14.field_8):
                            emit 0xc17f9005: tx.origin
                            emit 0xc17f9005: msg.sender
                        else:
                            if arg3.length >= uint8(stor14.field_8):
                                if arg2.length > 512:
                                    emit 0xc17f9005: tx.origin
                                    emit 0xc17f9005: msg.sender
                                else:
                                    s = 0
                                    s = 0
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < arg2.length:
                                        require idx < mem[(32 * arg2.length) + 128]
                                        _126 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx < mem[96]
                                        _132 = mem[(32 * idx) + 128]
                                        require idx + 1 < mem[96]
                                        _136 = mem[(32 * idx + 1) + 128]
                                        mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg2.length) + 191 len 1]
                                        mem[mem[64] + 64] = _132
                                        mem[mem[64] + 96] = _136
                                        signer = erecover(sha3('removeCurrencyOwnerHolder', arg1, arg4), _126 << 248, _132, _136) 
                                        mem[mem[64]] = signer
                                        require erecover.result
                                        if stor0[address(signer)]:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: msg.sender
                                        if not stor13[address(signer)]:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: msg.sender
                                        mem[0] = address(signer)
                                        mem[32] = 0
                                        stor0[address(signer)] = 1
                                        s = signer
                                        s = _126
                                        idx = idx + 2
                                        s = s + 1
                                        continue 
                                    if Mask(8, 1, None + 1) >> 1 < uint8(stor14.field_8):
                                        emit 0xc17f9005: tx.origin
                                        emit 0xc17f9005: msg.sender
                                    else:
                                        if uint8(stor17.field_8) >= uint8(stor17.field_0):
                                            if block.timestamp >= stor18 + -(stor18 % 24 * 3600) + (24 * 3600):
                                                uint8(stor17.field_0) = 0
                                            else:
                                                emit 0xee7469a7 
                                        else:
                                            uint256(stor17.field_0) = uint8(stor17.field_0) + 1 or Mask(248, 8, uint256(stor17.field_0))
                                            if stor13[address(arg4)]:
                                                if uint8(stor14.field_0) != uint8(stor14.field_8):
                                                    stor13[address(arg4)] = 0
                                                    uint256(stor14.field_0) = uint8(stor14.field_0) - 1 or Mask(248, 8, uint256(stor14.field_0))
                                            emit 0xbc703cb3: arg4
                            else:
                                if arg2.length / 2 != arg3.length:
                                    emit 0xc17f9005: tx.origin
                                    emit 0xc17f9005: msg.sender
                                else:
                                    if arg2.length > 512:
                                        emit 0xc17f9005: tx.origin
                                        emit 0xc17f9005: msg.sender
                                    else:
                                        s = 0
                                        s = 0
                                        idx = 0
                                        s = 0
                                        while uint8(idx) < arg2.length:
                                            require idx < mem[(32 * arg2.length) + 128]
                                            _130 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx < mem[96]
                                            _134 = mem[(32 * idx) + 128]
                                            require idx + 1 < mem[96]
                                            _139 = mem[(32 * idx + 1) + 128]
                                            mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg2.length) + 191 len 1]
                                            mem[mem[64] + 64] = _134
                                            mem[mem[64] + 96] = _139
                                            signer = erecover(sha3('removeCurrencyOwnerHolder', arg1, arg4), _130 << 248, _134, _139) 
                                            mem[mem[64]] = signer
                                            require erecover.result
                                            if stor0[address(signer)]:
                                                emit 0xc17f9005: tx.origin
                                                emit 0xc17f9005: msg.sender
                                            if not stor13[address(signer)]:
                                                emit 0xc17f9005: tx.origin
                                                emit 0xc17f9005: msg.sender
                                            mem[0] = address(signer)
                                            mem[32] = 0
                                            stor0[address(signer)] = 1
                                            s = signer
                                            s = _130
                                            idx = idx + 2
                                            s = s + 1
                                            continue 
                                        if Mask(8, 1, None + 1) >> 1 < uint8(stor14.field_8):
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: msg.sender
                                        else:
                                            if uint8(stor17.field_8) >= uint8(stor17.field_0):
                                                if block.timestamp >= stor18 + -(stor18 % 24 * 3600) + (24 * 3600):
                                                    uint8(stor17.field_0) = 0
                                                else:
                                                    emit 0xee7469a7 
                                            else:
                                                uint256(stor17.field_0) = uint8(stor17.field_0) + 1 or Mask(248, 8, uint256(stor17.field_0))
                                                if stor13[address(arg4)]:
                                                    if uint8(stor14.field_0) != uint8(stor14.field_8):
                                                        stor13[address(arg4)] = 0
                                                        uint256(stor14.field_0) = uint8(stor14.field_0) - 1 or Mask(248, 8, uint256(stor14.field_0))
                                                emit 0xbc703cb3: arg4
}

function sub_78832d06(?) payable {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + 160
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'cronSigns'
    mem[(32 * arg2.length) + (32 * arg3.length) + 169] = arg1 << 224
    mem[(32 * arg2.length) + (32 * arg3.length) + 173] = arg4 << 248
    if stor16 >= arg1:
        emit 0xc17f9005: tx.origin
        emit 0xc17f9005: msg.sender
    else:
        if block.timestamp - arg1 > stor4:
            emit 0xc17f9005: tx.origin
            emit 0xc17f9005: msg.sender
        else:
            if block.timestamp - arg1 < stor5:
                emit 0xc17f9005: tx.origin
                emit 0xc17f9005: msg.sender
            else:
                if uint8(stor14.field_0) <= 1:
                    emit 0xc17f9005: tx.origin
                    emit 0xc17f9005: msg.sender
                else:
                    if stor12:
                        emit 0xc17f9005: tx.origin
                        emit 0xc17f9005: msg.sender
                    else:
                        if arg2.length / 2 < uint8(stor14.field_8):
                            emit 0xc17f9005: tx.origin
                            emit 0xc17f9005: msg.sender
                        else:
                            if arg3.length >= uint8(stor14.field_8):
                                if arg2.length > 512:
                                    emit 0xc17f9005: tx.origin
                                    emit 0xc17f9005: msg.sender
                                else:
                                    s = 0
                                    s = 0
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < arg2.length:
                                        require idx < mem[(32 * arg2.length) + 128]
                                        _122 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx < mem[96]
                                        _128 = mem[(32 * idx) + 128]
                                        require idx + 1 < mem[96]
                                        _132 = mem[(32 * idx + 1) + 128]
                                        mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg2.length) + 191 len 1]
                                        mem[mem[64] + 64] = _128
                                        mem[mem[64] + 96] = _132
                                        signer = erecover(sha3('cronSigns', arg1, arg4), _122 << 248, _128, _132) 
                                        mem[mem[64]] = signer
                                        require erecover.result
                                        if stor0[address(signer)]:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: msg.sender
                                        if not stor13[address(signer)]:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: msg.sender
                                        mem[0] = address(signer)
                                        mem[32] = 0
                                        stor0[address(signer)] = 1
                                        s = signer
                                        s = _122
                                        idx = idx + 2
                                        s = s + 1
                                        continue 
                                    if Mask(8, 1, None + 1) >> 1 < uint8(stor14.field_8):
                                        emit 0xc17f9005: tx.origin
                                        emit 0xc17f9005: msg.sender
                                    else:
                                        if uint8(stor17.field_8) >= uint8(stor17.field_0):
                                            if block.timestamp >= stor18 + -(stor18 % 24 * 3600) + (24 * 3600):
                                                uint8(stor17.field_0) = 0
                                            else:
                                                emit 0xee7469a7 
                                        else:
                                            uint256(stor17.field_0) = uint8(stor17.field_0) + 1 or Mask(248, 8, uint256(stor17.field_0))
                                            if uint8(stor9.field_0) >= arg4:
                                                if arg4:
                                                    Mask(248, 0, stor9.field_8) = Mask(248, 0, arg4)
                                            Mask(248, 0, stor17.field_8) = Mask(248, 0, uint8(stor17.field_8) + 1)
                                            stor18 = block.timestamp
                                            emit 0x2790ca74: arg4
                            else:
                                if arg2.length / 2 != arg3.length:
                                    emit 0xc17f9005: tx.origin
                                    emit 0xc17f9005: msg.sender
                                else:
                                    if arg2.length > 512:
                                        emit 0xc17f9005: tx.origin
                                        emit 0xc17f9005: msg.sender
                                    else:
                                        s = 0
                                        s = 0
                                        idx = 0
                                        s = 0
                                        while uint8(idx) < arg2.length:
                                            require idx < mem[(32 * arg2.length) + 128]
                                            _126 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx < mem[96]
                                            _130 = mem[(32 * idx) + 128]
                                            require idx + 1 < mem[96]
                                            _135 = mem[(32 * idx + 1) + 128]
                                            mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg2.length) + 191 len 1]
                                            mem[mem[64] + 64] = _130
                                            mem[mem[64] + 96] = _135
                                            signer = erecover(sha3('cronSigns', arg1, arg4), _126 << 248, _130, _135) 
                                            mem[mem[64]] = signer
                                            require erecover.result
                                            if stor0[address(signer)]:
                                                emit 0xc17f9005: tx.origin
                                                emit 0xc17f9005: msg.sender
                                            if not stor13[address(signer)]:
                                                emit 0xc17f9005: tx.origin
                                                emit 0xc17f9005: msg.sender
                                            mem[0] = address(signer)
                                            mem[32] = 0
                                            stor0[address(signer)] = 1
                                            s = signer
                                            s = _126
                                            idx = idx + 2
                                            s = s + 1
                                            continue 
                                        if Mask(8, 1, None + 1) >> 1 < uint8(stor14.field_8):
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: msg.sender
                                        else:
                                            if uint8(stor17.field_8) >= uint8(stor17.field_0):
                                                if block.timestamp >= stor18 + -(stor18 % 24 * 3600) + (24 * 3600):
                                                    uint8(stor17.field_0) = 0
                                                else:
                                                    emit 0xee7469a7 
                                            else:
                                                uint256(stor17.field_0) = uint8(stor17.field_0) + 1 or Mask(248, 8, uint256(stor17.field_0))
                                                if uint8(stor9.field_0) >= arg4:
                                                    if arg4:
                                                        Mask(248, 0, stor9.field_8) = Mask(248, 0, arg4)
                                                Mask(248, 0, stor17.field_8) = Mask(248, 0, uint8(stor17.field_8) + 1)
                                                stor18 = block.timestamp
                                                emit 0x2790ca74: arg4
}

function sub_dfb268ff(?) payable {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + 160
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'addCron'
    mem[(32 * arg2.length) + (32 * arg3.length) + 167] = arg1 << 224
    mem[(32 * arg2.length) + (32 * arg3.length) + 171] = address(arg4)
    if stor16 >= arg1:
        emit 0xc17f9005: tx.origin
        emit 0xc17f9005: msg.sender
    else:
        if block.timestamp - arg1 > stor4:
            emit 0xc17f9005: tx.origin
            emit 0xc17f9005: msg.sender
        else:
            if block.timestamp - arg1 < stor5:
                emit 0xc17f9005: tx.origin
                emit 0xc17f9005: msg.sender
            else:
                if uint8(stor14.field_0) <= 1:
                    emit 0xc17f9005: tx.origin
                    emit 0xc17f9005: msg.sender
                else:
                    if stor12:
                        emit 0xc17f9005: tx.origin
                        emit 0xc17f9005: msg.sender
                    else:
                        if arg2.length / 2 < uint8(stor14.field_8):
                            emit 0xc17f9005: tx.origin
                            emit 0xc17f9005: msg.sender
                        else:
                            if arg3.length >= uint8(stor14.field_8):
                                if arg2.length > 512:
                                    emit 0xc17f9005: tx.origin
                                    emit 0xc17f9005: msg.sender
                                else:
                                    s = 0
                                    s = 0
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < arg2.length:
                                        require idx < mem[(32 * arg2.length) + 128]
                                        _122 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx < mem[96]
                                        _128 = mem[(32 * idx) + 128]
                                        require idx + 1 < mem[96]
                                        _132 = mem[(32 * idx + 1) + 128]
                                        mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg2.length) + 191 len 1]
                                        mem[mem[64] + 64] = _128
                                        mem[mem[64] + 96] = _132
                                        signer = erecover(sha3('addCron', arg1, arg4), _122 << 248, _128, _132) 
                                        mem[mem[64]] = signer
                                        require erecover.result
                                        if stor0[address(signer)]:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: msg.sender
                                        if not stor13[address(signer)]:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: msg.sender
                                        mem[0] = address(signer)
                                        mem[32] = 0
                                        stor0[address(signer)] = 1
                                        s = signer
                                        s = _122
                                        idx = idx + 2
                                        s = s + 1
                                        continue 
                                    if Mask(8, 1, None + 1) >> 1 < uint8(stor14.field_8):
                                        emit 0xc17f9005: tx.origin
                                        emit 0xc17f9005: msg.sender
                                    else:
                                        if uint8(stor17.field_8) >= uint8(stor17.field_0):
                                            if block.timestamp >= stor18 + -(stor18 % 24 * 3600) + (24 * 3600):
                                                uint8(stor17.field_0) = 0
                                            else:
                                                emit 0xee7469a7 
                                        else:
                                            uint256(stor17.field_0) = uint8(stor17.field_0) + 1 or Mask(248, 8, uint256(stor17.field_0))
                                            if not stor8[address(arg4)]:
                                                stor8[address(arg4)] = 1
                                                uint256(stor9.field_0) = uint8(stor9.field_0) + 1 or Mask(248, 8, uint256(stor9.field_0))
                                            Mask(248, 0, stor17.field_8) = Mask(248, 0, uint8(stor17.field_8) + 1)
                                            stor18 = block.timestamp
                                            emit 0x597f5d00: arg4
                            else:
                                if arg2.length / 2 != arg3.length:
                                    emit 0xc17f9005: tx.origin
                                    emit 0xc17f9005: msg.sender
                                else:
                                    if arg2.length > 512:
                                        emit 0xc17f9005: tx.origin
                                        emit 0xc17f9005: msg.sender
                                    else:
                                        s = 0
                                        s = 0
                                        idx = 0
                                        s = 0
                                        while uint8(idx) < arg2.length:
                                            require idx < mem[(32 * arg2.length) + 128]
                                            _126 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx < mem[96]
                                            _130 = mem[(32 * idx) + 128]
                                            require idx + 1 < mem[96]
                                            _135 = mem[(32 * idx + 1) + 128]
                                            mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg2.length) + 191 len 1]
                                            mem[mem[64] + 64] = _130
                                            mem[mem[64] + 96] = _135
                                            signer = erecover(sha3('addCron', arg1, arg4), _126 << 248, _130, _135) 
                                            mem[mem[64]] = signer
                                            require erecover.result
                                            if stor0[address(signer)]:
                                                emit 0xc17f9005: tx.origin
                                                emit 0xc17f9005: msg.sender
                                            if not stor13[address(signer)]:
                                                emit 0xc17f9005: tx.origin
                                                emit 0xc17f9005: msg.sender
                                            mem[0] = address(signer)
                                            mem[32] = 0
                                            stor0[address(signer)] = 1
                                            s = signer
                                            s = _126
                                            idx = idx + 2
                                            s = s + 1
                                            continue 
                                        if Mask(8, 1, None + 1) >> 1 < uint8(stor14.field_8):
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: msg.sender
                                        else:
                                            if uint8(stor17.field_8) >= uint8(stor17.field_0):
                                                if block.timestamp >= stor18 + -(stor18 % 24 * 3600) + (24 * 3600):
                                                    uint8(stor17.field_0) = 0
                                                else:
                                                    emit 0xee7469a7 
                                            else:
                                                uint256(stor17.field_0) = uint8(stor17.field_0) + 1 or Mask(248, 8, uint256(stor17.field_0))
                                                if not stor8[address(arg4)]:
                                                    stor8[address(arg4)] = 1
                                                    uint256(stor9.field_0) = uint8(stor9.field_0) + 1 or Mask(248, 8, uint256(stor9.field_0))
                                                Mask(248, 0, stor17.field_8) = Mask(248, 0, uint8(stor17.field_8) + 1)
                                                stor18 = block.timestamp
                                                emit 0x597f5d00: arg4
}

function sub_5098650a(?) payable {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + 160
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'addCron'
    mem[(32 * arg2.length) + (32 * arg3.length) + 167] = arg1 << 224
    mem[(32 * arg2.length) + (32 * arg3.length) + 171] = address(arg4)
    if stor16 >= arg1:
        emit 0xc17f9005: tx.origin
        emit 0xc17f9005: msg.sender
    else:
        if block.timestamp - arg1 > stor4:
            emit 0xc17f9005: tx.origin
            emit 0xc17f9005: msg.sender
        else:
            if block.timestamp - arg1 < stor5:
                emit 0xc17f9005: tx.origin
                emit 0xc17f9005: msg.sender
            else:
                if uint8(stor14.field_0) <= 1:
                    emit 0xc17f9005: tx.origin
                    emit 0xc17f9005: msg.sender
                else:
                    if stor12:
                        emit 0xc17f9005: tx.origin
                        emit 0xc17f9005: msg.sender
                    else:
                        if arg2.length / 2 < uint8(stor14.field_8):
                            emit 0xc17f9005: tx.origin
                            emit 0xc17f9005: msg.sender
                        else:
                            if arg3.length >= uint8(stor14.field_8):
                                if arg2.length > 512:
                                    emit 0xc17f9005: tx.origin
                                    emit 0xc17f9005: msg.sender
                                else:
                                    s = 0
                                    s = 0
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < arg2.length:
                                        require idx < mem[(32 * arg2.length) + 128]
                                        _126 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx < mem[96]
                                        _132 = mem[(32 * idx) + 128]
                                        require idx + 1 < mem[96]
                                        _136 = mem[(32 * idx + 1) + 128]
                                        mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg2.length) + 191 len 1]
                                        mem[mem[64] + 64] = _132
                                        mem[mem[64] + 96] = _136
                                        signer = erecover(sha3('addCron', arg1, arg4), _126 << 248, _132, _136) 
                                        mem[mem[64]] = signer
                                        require erecover.result
                                        if stor0[address(signer)]:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: msg.sender
                                        if not stor13[address(signer)]:
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: msg.sender
                                        mem[0] = address(signer)
                                        mem[32] = 0
                                        stor0[address(signer)] = 1
                                        s = signer
                                        s = _126
                                        idx = idx + 2
                                        s = s + 1
                                        continue 
                                    if Mask(8, 1, None + 1) >> 1 < uint8(stor14.field_8):
                                        emit 0xc17f9005: tx.origin
                                        emit 0xc17f9005: msg.sender
                                    else:
                                        if uint8(stor17.field_8) >= uint8(stor17.field_0):
                                            if block.timestamp >= stor18 + -(stor18 % 24 * 3600) + (24 * 3600):
                                                uint8(stor17.field_0) = 0
                                            else:
                                                emit 0xee7469a7 
                                        else:
                                            uint256(stor17.field_0) = uint8(stor17.field_0) + 1 or Mask(248, 8, uint256(stor17.field_0))
                                            if stor8[address(arg4)]:
                                                if uint8(stor9.field_0) != uint8(stor9.field_8):
                                                    stor8[address(arg4)] = 0
                                                    uint256(stor9.field_0) = uint8(stor9.field_0) - 1 or Mask(248, 8, uint256(stor9.field_0))
                                            Mask(248, 0, stor17.field_8) = Mask(248, 0, uint8(stor17.field_8) + 1)
                                            stor18 = block.timestamp
                                            emit 0xf0a6a448: arg4
                            else:
                                if arg2.length / 2 != arg3.length:
                                    emit 0xc17f9005: tx.origin
                                    emit 0xc17f9005: msg.sender
                                else:
                                    if arg2.length > 512:
                                        emit 0xc17f9005: tx.origin
                                        emit 0xc17f9005: msg.sender
                                    else:
                                        s = 0
                                        s = 0
                                        idx = 0
                                        s = 0
                                        while uint8(idx) < arg2.length:
                                            require idx < mem[(32 * arg2.length) + 128]
                                            _130 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx < mem[96]
                                            _134 = mem[(32 * idx) + 128]
                                            require idx + 1 < mem[96]
                                            _139 = mem[(32 * idx + 1) + 128]
                                            mem[mem[64] + 32] = mem[(32 * idx) + (32 * arg2.length) + 191 len 1]
                                            mem[mem[64] + 64] = _134
                                            mem[mem[64] + 96] = _139
                                            signer = erecover(sha3('addCron', arg1, arg4), _130 << 248, _134, _139) 
                                            mem[mem[64]] = signer
                                            require erecover.result
                                            if stor0[address(signer)]:
                                                emit 0xc17f9005: tx.origin
                                                emit 0xc17f9005: msg.sender
                                            if not stor13[address(signer)]:
                                                emit 0xc17f9005: tx.origin
                                                emit 0xc17f9005: msg.sender
                                            mem[0] = address(signer)
                                            mem[32] = 0
                                            stor0[address(signer)] = 1
                                            s = signer
                                            s = _130
                                            idx = idx + 2
                                            s = s + 1
                                            continue 
                                        if Mask(8, 1, None + 1) >> 1 < uint8(stor14.field_8):
                                            emit 0xc17f9005: tx.origin
                                            emit 0xc17f9005: msg.sender
                                        else:
                                            if uint8(stor17.field_8) >= uint8(stor17.field_0):
                                                if block.timestamp >= stor18 + -(stor18 % 24 * 3600) + (24 * 3600):
                                                    uint8(stor17.field_0) = 0
                                                else:
                                                    emit 0xee7469a7 
                                            else:
                                                uint256(stor17.field_0) = uint8(stor17.field_0) + 1 or Mask(248, 8, uint256(stor17.field_0))
                                                if stor8[address(arg4)]:
                                                    if uint8(stor9.field_0) != uint8(stor9.field_8):
                                                        stor8[address(arg4)] = 0
                                                        uint256(stor9.field_0) = uint8(stor9.field_0) - 1 or Mask(248, 8, uint256(stor9.field_0))
                                                Mask(248, 0, stor17.field_8) = Mask(248, 0, uint8(stor17.field_8) + 1)
                                                stor18 = block.timestamp
                                                emit 0xf0a6a448: arg4
}

function transfer(address arg1, uint256 arg2) payable {
    if accounts[tx.origin].field_0:
        emit 0xd29821f1: tx.origin
        return 0
    if accounts[address(arg1)].field_0:
        emit 0xd29821f1: arg1
        return 0
    if not accounts[tx.origin].field_512:
        accounts[tx.origin].field_512 = 1
        accounts[tx.origin][1][tx.origin].field_0 = 1
        return 0
    if accounts[tx.origin].field_512 != 1:
        emit 0xcb6c1445: msg.sender
        return 0
    if not accounts[tx.origin][1][tx.origin].field_0:
        emit 0xcb6c1445: msg.sender
        return 0
    mem[96] = 0
    mem[128 len 288] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    if accounts[tx.origin].field_768 < arg2:
        return 0
    accounts[tx.origin].field_768 -= arg2
    if arg2 / 100 * stor1 < stor0.length:
        accounts[address(arg1)].field_768 = accounts[address(arg1)].field_768 + arg2 - stor0.length
        mem[576] = arg1
        mem[608] = block.timestamp
        mem[640] = arg2 - stor0.length
        mem[672] = stor0.length
        emit 0x613660dd: tx.origin, address(arg1), block.timestamp, arg2 - stor0.length, stor0.length
        accounts[stor3].field_768 += stor0.length
        mem[544] = stor0.length
        emit 0xcd87d661: stor0.length
        stor24++
        if stor24 == 100001:
            stor24 = 0
            idx = 0
            while uint8(idx) < stor25.length:
                require idx < stor25.length
                mem[0] = stor25[idx].field_0
                mem[32] = 6
                if not accounts[stor25[idx].field_0].field_0:
                    require idx < stor25.length
                    require idx < stor25.length
                    if stor25[idx].field_512 > 0:
                        s = 0
                        while uint8(s) <= uint8(idx):
                            require s < 10
                            mem[(32 * s) + 96] = 0
                            s = s + 1
                            continue 
                        require idx < stor25.length
                        mem[0] = 25
                        require idx < 10
                        mem[(32 * idx) + 96] = stor25[idx].field_0
                    else:
                        mem[0] = 25
                        if not stor25[idx].field_512:
                            require idx < stor25.length
                            mem[0] = 25
                            require idx < 10
                            mem[(32 * idx) + 96] = stor25[idx].field_0
                idx = idx + 1
                continue 
            idx = 0
            while uint8(idx) < 10:
                require idx < 10
                mem[0] = mem[(32 * idx) + 108 len 20]
                mem[32] = 6
                accounts[mem[(32 * idx) + 108 len 20]].field_768 += 20
                mem[544] = mem[(32 * idx) + 108 len 20]
                mem[576] = 20
                emit 0xb71381b2: mem[544], 20
                idx = idx + 1
                continue 
        if stor24 <= 99990:
            if not sub_10666547:
                if stor22[tx.origin].field_0:
                    if accounts[tx.origin].field_768 < stor22[tx.origin].field_256:
                        stor22[tx.origin].field_256 = accounts[tx.origin].field_768
                else:
                    stor23.length++
                    if not stor23.length <= stor23.length + 1:
                        idx = stor23.length + 1
                        while stor23.length > idx:
                            uint256(stor23[idx]) = 0
                            idx = idx + 1
                            continue 
                    uint256(stor23[stor23.length]) = tx.origin or Mask(96, 160, uint256(stor23[stor23.length]))
                    stor22[tx.origin].field_0 = 1
                    stor22[tx.origin].field_256 = accounts[tx.origin].field_768
        else:
            if arg2 <= 10:
                if not sub_10666547:
                    if stor22[tx.origin].field_0:
                        if accounts[tx.origin].field_768 < stor22[tx.origin].field_256:
                            stor22[tx.origin].field_256 = accounts[tx.origin].field_768
                    else:
                        stor23.length++
                        if not stor23.length <= stor23.length + 1:
                            idx = stor23.length + 1
                            while stor23.length > idx:
                                uint256(stor23[idx]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor23[stor23.length]) = tx.origin or Mask(96, 160, uint256(stor23[stor23.length]))
                        stor22[tx.origin].field_0 = 1
                        stor22[tx.origin].field_256 = accounts[tx.origin].field_768
            else:
                stor25.length++
                if not stor25.length <= stor25.length + 1:
                    idx = 4 * stor25.length + 1
                    while 4 * stor25.length > idx:
                        stor25[idx].field_0 = 0
                        stor25[idx].field_256 = 0
                        stor25[idx].field_512 = 0
                        stor25[idx].field_768 = 0
                        idx = idx + 1
                        continue 
                stor25[stor25.length].field_0 = tx.origin
                stor25[stor25.length].field_256 = arg1
                stor25[stor25.length].field_512 = arg2
                stor25[stor25.length].field_768 = block.timestamp
                if not sub_10666547:
                    if stor22[tx.origin].field_0:
                        if accounts[tx.origin].field_768 < stor22[tx.origin].field_256:
                            stor22[tx.origin].field_256 = accounts[tx.origin].field_768
                    else:
                        stor23.length++
                        if not stor23.length <= stor23.length + 1:
                            idx = stor23.length + 1
                            while stor23.length > idx:
                                uint256(stor23[idx]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor23[stor23.length]) = tx.origin or Mask(96, 160, uint256(stor23[stor23.length]))
                        stor22[tx.origin].field_0 = 1
                        stor22[tx.origin].field_256 = accounts[tx.origin].field_768
    else:
        if arg2 / 100 * stor1 <= stor2:
            accounts[address(arg1)].field_768 = accounts[address(arg1)].field_768 + arg2 - (arg2 / 100 * stor1)
            mem[576] = arg1
            mem[608] = block.timestamp
            mem[640] = arg2 - (arg2 / 100 * stor1)
            mem[672] = arg2 / 100 * stor1
            emit 0x613660dd: tx.origin, address(arg1), block.timestamp, arg2 - (arg2 / 100 * stor1), arg2 / 100 * stor1
            accounts[stor3].field_768 += arg2 / 100 * stor1
            mem[544] = arg2 / 100 * stor1
            emit 0xcd87d661: (arg2 / 100 * stor1)
        else:
            accounts[address(arg1)].field_768 = accounts[address(arg1)].field_768 + arg2 - stor2
            mem[576] = arg1
            mem[608] = block.timestamp
            mem[640] = arg2 - stor2
            mem[672] = stor2
            emit 0x613660dd: tx.origin, address(arg1), block.timestamp, arg2 - stor2, stor2
            accounts[stor3].field_768 += stor2
            mem[544] = stor2
            emit 0xcd87d661: stor2
        stor24++
        if stor24 == 100001:
            stor24 = 0
            idx = 0
            while uint8(idx) < stor25.length:
                require idx < stor25.length
                mem[0] = stor25[idx].field_0
                mem[32] = 6
                if not accounts[stor25[idx].field_0].field_0:
                    require idx < stor25.length
                    require idx < stor25.length
                    if stor25[idx].field_512 > 0:
                        s = 0
                        while uint8(s) <= uint8(idx):
                            require s < 10
                            mem[(32 * s) + 96] = 0
                            s = s + 1
                            continue 
                        require idx < stor25.length
                        mem[0] = 25
                        require idx < 10
                        mem[(32 * idx) + 96] = stor25[idx].field_0
                    else:
                        mem[0] = 25
                        if not stor25[idx].field_512:
                            require idx < stor25.length
                            mem[0] = 25
                            require idx < 10
                            mem[(32 * idx) + 96] = stor25[idx].field_0
                idx = idx + 1
                continue 
            idx = 0
            while uint8(idx) < 10:
                require idx < 10
                mem[0] = mem[(32 * idx) + 108 len 20]
                mem[32] = 6
                accounts[mem[(32 * idx) + 108 len 20]].field_768 += 20
                mem[544] = mem[(32 * idx) + 108 len 20]
                mem[576] = 20
                emit 0xb71381b2: mem[544], 20
                idx = idx + 1
                continue 
        if stor24 <= 99990:
            if not sub_10666547:
                if stor22[tx.origin].field_0:
                    if accounts[tx.origin].field_768 < stor22[tx.origin].field_256:
                        stor22[tx.origin].field_256 = accounts[tx.origin].field_768
                else:
                    stor23.length++
                    if not stor23.length <= stor23.length + 1:
                        idx = stor23.length + 1
                        while stor23.length > idx:
                            uint256(stor23[idx]) = 0
                            idx = idx + 1
                            continue 
                    uint256(stor23[stor23.length]) = tx.origin or Mask(96, 160, uint256(stor23[stor23.length]))
                    stor22[tx.origin].field_0 = 1
                    stor22[tx.origin].field_256 = accounts[tx.origin].field_768
        else:
            if arg2 <= 10:
                if not sub_10666547:
                    if stor22[tx.origin].field_0:
                        if accounts[tx.origin].field_768 < stor22[tx.origin].field_256:
                            stor22[tx.origin].field_256 = accounts[tx.origin].field_768
                    else:
                        stor23.length++
                        if not stor23.length <= stor23.length + 1:
                            idx = stor23.length + 1
                            while stor23.length > idx:
                                uint256(stor23[idx]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor23[stor23.length]) = tx.origin or Mask(96, 160, uint256(stor23[stor23.length]))
                        stor22[tx.origin].field_0 = 1
                        stor22[tx.origin].field_256 = accounts[tx.origin].field_768
            else:
                stor25.length++
                if not stor25.length <= stor25.length + 1:
                    idx = 4 * stor25.length + 1
                    while 4 * stor25.length > idx:
                        stor25[idx].field_0 = 0
                        stor25[idx].field_256 = 0
                        stor25[idx].field_512 = 0
                        stor25[idx].field_768 = 0
                        idx = idx + 1
                        continue 
                stor25[stor25.length].field_0 = tx.origin
                stor25[stor25.length].field_256 = arg1
                stor25[stor25.length].field_512 = arg2
                stor25[stor25.length].field_768 = block.timestamp
                if not sub_10666547:
                    if stor22[tx.origin].field_0:
                        if accounts[tx.origin].field_768 < stor22[tx.origin].field_256:
                            stor22[tx.origin].field_256 = accounts[tx.origin].field_768
                    else:
                        stor23.length++
                        if not stor23.length <= stor23.length + 1:
                            idx = stor23.length + 1
                            while stor23.length > idx:
                                uint256(stor23[idx]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor23[stor23.length]) = tx.origin or Mask(96, 160, uint256(stor23[stor23.length]))
                        stor22[tx.origin].field_0 = 1
                        stor22[tx.origin].field_256 = accounts[tx.origin].field_768
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
    if accounts[address(arg1)].field_1024 >= arg2:
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
    if accounts[address(arg1)].field_512 <= 1:
        emit 0xc17f9005: tx.origin
        emit 0xc17f9005: msg.sender
        return 0
    if accounts[address(arg1)].field_0:
        emit 0xc17f9005: tx.origin
        emit 0xc17f9005: msg.sender
        return 0
    if arg3.length / 2 < accounts[address(arg1)].field_520:
        emit 0xc17f9005: tx.origin
        emit 0xc17f9005: msg.sender
        return 0
    if arg4.length >= accounts[address(arg1)].field_520:
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
            if not accounts[address(arg1)][1][address(signer)].field_0:
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
        if Mask(8, 1, None + 1) >> 1 < accounts[address(arg1)].field_520:
            emit 0xc17f9005: tx.origin
            emit 0xc17f9005: msg.sender
            return 0
        if accounts[address(arg1)].field_0:
            emit 0xd29821f1: arg1
            return 0
        mem[0] = arg5
        mem[32] = 6
        if accounts[address(arg5)].field_0:
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
        if accounts[address(arg1)].field_768 < arg6:
            return 0
        accounts[address(arg1)].field_768 -= arg6
        mem[32] = 6
        if arg6 / 100 * stor1 < stor0.length:
            accounts[address(arg5)].field_768 = accounts[address(arg5)].field_768 + arg6 - stor0.length
            mem[mem[64] + 32] = arg5
            mem[mem[64] + 64] = block.timestamp
            mem[mem[64] + 96] = arg6 - stor0.length
            mem[mem[64] + 128] = stor0.length
            emit 0x613660dd: tx.origin, address(arg5), block.timestamp, arg6 - stor0.length, stor0.length
            mem[0] = stor3
            mem[32] = 6
            accounts[stor3].field_768 += stor0.length
            mem[mem[64]] = stor0.length
            emit 0xcd87d661: stor0.length
            stor24++
            if stor24 == 100001:
                stor24 = 0
                idx = 0
                while uint8(idx) < stor25.length:
                    require idx < stor25.length
                    mem[0] = stor25[idx].field_0
                    mem[32] = 6
                    if not accounts[stor25[idx].field_0].field_0:
                        require idx < stor25.length
                        require idx < stor25.length
                        if stor25[idx].field_512 > 0:
                            s = 0
                            while uint8(s) <= uint8(idx):
                                require s < 10
                                mem[(32 * s) + _213] = 0
                                s = s + 1
                                continue 
                            require idx < stor25.length
                            mem[0] = 25
                            require idx < 10
                            mem[(32 * idx) + _213] = stor25[idx].field_0
                        else:
                            mem[0] = 25
                            if not stor25[idx].field_512:
                                require idx < stor25.length
                                mem[0] = 25
                                require idx < 10
                                mem[(32 * idx) + _213] = stor25[idx].field_0
                    idx = idx + 1
                    continue 
                idx = 0
                while uint8(idx) < 10:
                    require idx < 10
                    mem[0] = mem[(32 * idx) + _213 + 12 len 20]
                    mem[32] = 6
                    accounts[mem[0]].field_768 += 20
                    mem[mem[64]] = mem[(32 * idx) + _213 + 12 len 20]
                    mem[mem[64] + 32] = 20
                    emit 0xb71381b2: mem[mem[64]], 20
                    idx = idx + 1
                    continue 
            if stor24 <= 99990:
                if not sub_10666547:
                    if stor22[address(arg1)].field_0:
                        if accounts[address(arg1)].field_768 < stor22[address(arg1)].field_256:
                            stor22[address(arg1)].field_256 = accounts[address(arg1)].field_768
                    else:
                        stor23.length++
                        if not stor23.length <= stor23.length + 1:
                            idx = stor23.length + 1
                            while stor23.length > idx:
                                uint256(stor23[idx]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor23[stor23.length]) = arg1 or Mask(96, 160, uint256(stor23[stor23.length]))
                        stor22[address(arg1)].field_0 = 1
                        stor22[address(arg1)].field_256 = accounts[address(arg1)].field_768
            else:
                if arg6 <= 10:
                    if not sub_10666547:
                        if stor22[address(arg1)].field_0:
                            if accounts[address(arg1)].field_768 < stor22[address(arg1)].field_256:
                                stor22[address(arg1)].field_256 = accounts[address(arg1)].field_768
                        else:
                            stor23.length++
                            if not stor23.length <= stor23.length + 1:
                                idx = stor23.length + 1
                                while stor23.length > idx:
                                    uint256(stor23[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor23[stor23.length]) = arg1 or Mask(96, 160, uint256(stor23[stor23.length]))
                            stor22[address(arg1)].field_0 = 1
                            stor22[address(arg1)].field_256 = accounts[address(arg1)].field_768
                else:
                    stor25.length++
                    if not stor25.length <= stor25.length + 1:
                        idx = 4 * stor25.length + 1
                        while 4 * stor25.length > idx:
                            stor25[idx].field_0 = 0
                            stor25[idx].field_256 = 0
                            stor25[idx].field_512 = 0
                            stor25[idx].field_768 = 0
                            idx = idx + 1
                            continue 
                    stor25[stor25.length].field_0 = arg1
                    stor25[stor25.length].field_256 = arg5
                    stor25[stor25.length].field_512 = arg6
                    stor25[stor25.length].field_768 = block.timestamp
                    if not sub_10666547:
                        if stor22[address(arg1)].field_0:
                            if accounts[address(arg1)].field_768 < stor22[address(arg1)].field_256:
                                stor22[address(arg1)].field_256 = accounts[address(arg1)].field_768
                        else:
                            stor23.length++
                            if not stor23.length <= stor23.length + 1:
                                idx = stor23.length + 1
                                while stor23.length > idx:
                                    uint256(stor23[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor23[stor23.length]) = arg1 or Mask(96, 160, uint256(stor23[stor23.length]))
                            stor22[address(arg1)].field_0 = 1
                            stor22[address(arg1)].field_256 = accounts[address(arg1)].field_768
        else:
            if arg6 / 100 * stor1 <= stor2:
                accounts[address(arg5)].field_768 = accounts[address(arg5)].field_768 + arg6 - (arg6 / 100 * stor1)
                mem[mem[64] + 32] = arg5
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = arg6 - (arg6 / 100 * stor1)
                mem[mem[64] + 128] = arg6 / 100 * stor1
                emit 0x613660dd: tx.origin, address(arg5), block.timestamp, arg6 - (arg6 / 100 * stor1), arg6 / 100 * stor1
                mem[0] = stor3
                mem[32] = 6
                accounts[stor3].field_768 += arg6 / 100 * stor1
                mem[mem[64]] = arg6 / 100 * stor1
                emit 0xcd87d661: (arg6 / 100 * stor1)
            else:
                accounts[address(arg5)].field_768 = accounts[address(arg5)].field_768 + arg6 - stor2
                mem[mem[64] + 32] = arg5
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = arg6 - stor2
                mem[mem[64] + 128] = stor2
                emit 0x613660dd: tx.origin, address(arg5), block.timestamp, arg6 - stor2, stor2
                mem[0] = stor3
                mem[32] = 6
                accounts[stor3].field_768 += stor2
                mem[mem[64]] = stor2
                emit 0xcd87d661: stor2
            stor24++
            if stor24 == 100001:
                stor24 = 0
                idx = 0
                while uint8(idx) < stor25.length:
                    require idx < stor25.length
                    mem[0] = stor25[idx].field_0
                    mem[32] = 6
                    if not accounts[stor25[idx].field_0].field_0:
                        require idx < stor25.length
                        require idx < stor25.length
                        if stor25[idx].field_512 > 0:
                            s = 0
                            while uint8(s) <= uint8(idx):
                                require s < 10
                                mem[(32 * s) + _213] = 0
                                s = s + 1
                                continue 
                            require idx < stor25.length
                            mem[0] = 25
                            require idx < 10
                            mem[(32 * idx) + _213] = stor25[idx].field_0
                        else:
                            mem[0] = 25
                            if not stor25[idx].field_512:
                                require idx < stor25.length
                                mem[0] = 25
                                require idx < 10
                                mem[(32 * idx) + _213] = stor25[idx].field_0
                    idx = idx + 1
                    continue 
                idx = 0
                while uint8(idx) < 10:
                    require idx < 10
                    mem[0] = mem[(32 * idx) + _213 + 12 len 20]
                    mem[32] = 6
                    accounts[mem[0]].field_768 += 20
                    mem[mem[64]] = mem[(32 * idx) + _213 + 12 len 20]
                    mem[mem[64] + 32] = 20
                    emit 0xb71381b2: mem[mem[64]], 20
                    idx = idx + 1
                    continue 
            if stor24 <= 99990:
                if not sub_10666547:
                    if stor22[address(arg1)].field_0:
                        if accounts[address(arg1)].field_768 < stor22[address(arg1)].field_256:
                            stor22[address(arg1)].field_256 = accounts[address(arg1)].field_768
                    else:
                        stor23.length++
                        if not stor23.length <= stor23.length + 1:
                            idx = stor23.length + 1
                            while stor23.length > idx:
                                uint256(stor23[idx]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor23[stor23.length]) = arg1 or Mask(96, 160, uint256(stor23[stor23.length]))
                        stor22[address(arg1)].field_0 = 1
                        stor22[address(arg1)].field_256 = accounts[address(arg1)].field_768
            else:
                if arg6 <= 10:
                    if not sub_10666547:
                        if stor22[address(arg1)].field_0:
                            if accounts[address(arg1)].field_768 < stor22[address(arg1)].field_256:
                                stor22[address(arg1)].field_256 = accounts[address(arg1)].field_768
                        else:
                            stor23.length++
                            if not stor23.length <= stor23.length + 1:
                                idx = stor23.length + 1
                                while stor23.length > idx:
                                    uint256(stor23[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor23[stor23.length]) = arg1 or Mask(96, 160, uint256(stor23[stor23.length]))
                            stor22[address(arg1)].field_0 = 1
                            stor22[address(arg1)].field_256 = accounts[address(arg1)].field_768
                else:
                    stor25.length++
                    if not stor25.length <= stor25.length + 1:
                        idx = 4 * stor25.length + 1
                        while 4 * stor25.length > idx:
                            stor25[idx].field_0 = 0
                            stor25[idx].field_256 = 0
                            stor25[idx].field_512 = 0
                            stor25[idx].field_768 = 0
                            idx = idx + 1
                            continue 
                    stor25[stor25.length].field_0 = arg1
                    stor25[stor25.length].field_256 = arg5
                    stor25[stor25.length].field_512 = arg6
                    stor25[stor25.length].field_768 = block.timestamp
                    if not sub_10666547:
                        if stor22[address(arg1)].field_0:
                            if accounts[address(arg1)].field_768 < stor22[address(arg1)].field_256:
                                stor22[address(arg1)].field_256 = accounts[address(arg1)].field_768
                        else:
                            stor23.length++
                            if not stor23.length <= stor23.length + 1:
                                idx = stor23.length + 1
                                while stor23.length > idx:
                                    uint256(stor23[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor23[stor23.length]) = arg1 or Mask(96, 160, uint256(stor23[stor23.length]))
                            stor22[address(arg1)].field_0 = 1
                            stor22[address(arg1)].field_256 = accounts[address(arg1)].field_768
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
            if not accounts[address(arg1)][1][address(signer)].field_0:
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
        if Mask(8, 1, None + 1) >> 1 < accounts[address(arg1)].field_520:
            emit 0xc17f9005: tx.origin
            emit 0xc17f9005: msg.sender
            return 0
        if accounts[address(arg1)].field_0:
            emit 0xd29821f1: arg1
            return 0
        mem[0] = arg5
        mem[32] = 6
        if accounts[address(arg5)].field_0:
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
        if accounts[address(arg1)].field_768 < arg6:
            return 0
        accounts[address(arg1)].field_768 -= arg6
        mem[32] = 6
        if arg6 / 100 * stor1 < stor0.length:
            accounts[address(arg5)].field_768 = accounts[address(arg5)].field_768 + arg6 - stor0.length
            mem[mem[64] + 32] = arg5
            mem[mem[64] + 64] = block.timestamp
            mem[mem[64] + 96] = arg6 - stor0.length
            mem[mem[64] + 128] = stor0.length
            emit 0x613660dd: tx.origin, address(arg5), block.timestamp, arg6 - stor0.length, stor0.length
            mem[0] = stor3
            mem[32] = 6
            accounts[stor3].field_768 += stor0.length
            mem[mem[64]] = stor0.length
            emit 0xcd87d661: stor0.length
            stor24++
            if stor24 == 100001:
                stor24 = 0
                idx = 0
                while uint8(idx) < stor25.length:
                    require idx < stor25.length
                    mem[0] = stor25[idx].field_0
                    mem[32] = 6
                    if not accounts[stor25[idx].field_0].field_0:
                        require idx < stor25.length
                        require idx < stor25.length
                        if stor25[idx].field_512 > 0:
                            s = 0
                            while uint8(s) <= uint8(idx):
                                require s < 10
                                mem[(32 * s) + _216] = 0
                                s = s + 1
                                continue 
                            require idx < stor25.length
                            mem[0] = 25
                            require idx < 10
                            mem[(32 * idx) + _216] = stor25[idx].field_0
                        else:
                            mem[0] = 25
                            if not stor25[idx].field_512:
                                require idx < stor25.length
                                mem[0] = 25
                                require idx < 10
                                mem[(32 * idx) + _216] = stor25[idx].field_0
                    idx = idx + 1
                    continue 
                idx = 0
                while uint8(idx) < 10:
                    require idx < 10
                    mem[0] = mem[(32 * idx) + _216 + 12 len 20]
                    mem[32] = 6
                    accounts[mem[0]].field_768 += 20
                    mem[mem[64]] = mem[(32 * idx) + _216 + 12 len 20]
                    mem[mem[64] + 32] = 20
                    emit 0xb71381b2: mem[mem[64]], 20
                    idx = idx + 1
                    continue 
            if stor24 <= 99990:
                if not sub_10666547:
                    if stor22[address(arg1)].field_0:
                        if accounts[address(arg1)].field_768 < stor22[address(arg1)].field_256:
                            stor22[address(arg1)].field_256 = accounts[address(arg1)].field_768
                    else:
                        stor23.length++
                        if not stor23.length <= stor23.length + 1:
                            idx = stor23.length + 1
                            while stor23.length > idx:
                                uint256(stor23[idx]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor23[stor23.length]) = arg1 or Mask(96, 160, uint256(stor23[stor23.length]))
                        stor22[address(arg1)].field_0 = 1
                        stor22[address(arg1)].field_256 = accounts[address(arg1)].field_768
            else:
                if arg6 <= 10:
                    if not sub_10666547:
                        if stor22[address(arg1)].field_0:
                            if accounts[address(arg1)].field_768 < stor22[address(arg1)].field_256:
                                stor22[address(arg1)].field_256 = accounts[address(arg1)].field_768
                        else:
                            stor23.length++
                            if not stor23.length <= stor23.length + 1:
                                idx = stor23.length + 1
                                while stor23.length > idx:
                                    uint256(stor23[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor23[stor23.length]) = arg1 or Mask(96, 160, uint256(stor23[stor23.length]))
                            stor22[address(arg1)].field_0 = 1
                            stor22[address(arg1)].field_256 = accounts[address(arg1)].field_768
                else:
                    stor25.length++
                    if not stor25.length <= stor25.length + 1:
                        idx = 4 * stor25.length + 1
                        while 4 * stor25.length > idx:
                            stor25[idx].field_0 = 0
                            stor25[idx].field_256 = 0
                            stor25[idx].field_512 = 0
                            stor25[idx].field_768 = 0
                            idx = idx + 1
                            continue 
                    stor25[stor25.length].field_0 = arg1
                    stor25[stor25.length].field_256 = arg5
                    stor25[stor25.length].field_512 = arg6
                    stor25[stor25.length].field_768 = block.timestamp
                    if not sub_10666547:
                        if stor22[address(arg1)].field_0:
                            if accounts[address(arg1)].field_768 < stor22[address(arg1)].field_256:
                                stor22[address(arg1)].field_256 = accounts[address(arg1)].field_768
                        else:
                            stor23.length++
                            if not stor23.length <= stor23.length + 1:
                                idx = stor23.length + 1
                                while stor23.length > idx:
                                    uint256(stor23[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor23[stor23.length]) = arg1 or Mask(96, 160, uint256(stor23[stor23.length]))
                            stor22[address(arg1)].field_0 = 1
                            stor22[address(arg1)].field_256 = accounts[address(arg1)].field_768
        else:
            if arg6 / 100 * stor1 <= stor2:
                accounts[address(arg5)].field_768 = accounts[address(arg5)].field_768 + arg6 - (arg6 / 100 * stor1)
                mem[mem[64] + 32] = arg5
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = arg6 - (arg6 / 100 * stor1)
                mem[mem[64] + 128] = arg6 / 100 * stor1
                emit 0x613660dd: tx.origin, address(arg5), block.timestamp, arg6 - (arg6 / 100 * stor1), arg6 / 100 * stor1
                mem[0] = stor3
                mem[32] = 6
                accounts[stor3].field_768 += arg6 / 100 * stor1
                mem[mem[64]] = arg6 / 100 * stor1
                emit 0xcd87d661: (arg6 / 100 * stor1)
            else:
                accounts[address(arg5)].field_768 = accounts[address(arg5)].field_768 + arg6 - stor2
                mem[mem[64] + 32] = arg5
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = arg6 - stor2
                mem[mem[64] + 128] = stor2
                emit 0x613660dd: tx.origin, address(arg5), block.timestamp, arg6 - stor2, stor2
                mem[0] = stor3
                mem[32] = 6
                accounts[stor3].field_768 += stor2
                mem[mem[64]] = stor2
                emit 0xcd87d661: stor2
            stor24++
            if stor24 == 100001:
                stor24 = 0
                idx = 0
                while uint8(idx) < stor25.length:
                    require idx < stor25.length
                    mem[0] = stor25[idx].field_0
                    mem[32] = 6
                    if not accounts[stor25[idx].field_0].field_0:
                        require idx < stor25.length
                        require idx < stor25.length
                        if stor25[idx].field_512 > 0:
                            s = 0
                            while uint8(s) <= uint8(idx):
                                require s < 10
                                mem[(32 * s) + _216] = 0
                                s = s + 1
                                continue 
                            require idx < stor25.length
                            mem[0] = 25
                            require idx < 10
                            mem[(32 * idx) + _216] = stor25[idx].field_0
                        else:
                            mem[0] = 25
                            if not stor25[idx].field_512:
                                require idx < stor25.length
                                mem[0] = 25
                                require idx < 10
                                mem[(32 * idx) + _216] = stor25[idx].field_0
                    idx = idx + 1
                    continue 
                idx = 0
                while uint8(idx) < 10:
                    require idx < 10
                    mem[0] = mem[(32 * idx) + _216 + 12 len 20]
                    mem[32] = 6
                    accounts[mem[0]].field_768 += 20
                    mem[mem[64]] = mem[(32 * idx) + _216 + 12 len 20]
                    mem[mem[64] + 32] = 20
                    emit 0xb71381b2: mem[mem[64]], 20
                    idx = idx + 1
                    continue 
            if stor24 <= 99990:
                if not sub_10666547:
                    if stor22[address(arg1)].field_0:
                        if accounts[address(arg1)].field_768 < stor22[address(arg1)].field_256:
                            stor22[address(arg1)].field_256 = accounts[address(arg1)].field_768
                    else:
                        stor23.length++
                        if not stor23.length <= stor23.length + 1:
                            idx = stor23.length + 1
                            while stor23.length > idx:
                                uint256(stor23[idx]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor23[stor23.length]) = arg1 or Mask(96, 160, uint256(stor23[stor23.length]))
                        stor22[address(arg1)].field_0 = 1
                        stor22[address(arg1)].field_256 = accounts[address(arg1)].field_768
            else:
                if arg6 <= 10:
                    if not sub_10666547:
                        if stor22[address(arg1)].field_0:
                            if accounts[address(arg1)].field_768 < stor22[address(arg1)].field_256:
                                stor22[address(arg1)].field_256 = accounts[address(arg1)].field_768
                        else:
                            stor23.length++
                            if not stor23.length <= stor23.length + 1:
                                idx = stor23.length + 1
                                while stor23.length > idx:
                                    uint256(stor23[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor23[stor23.length]) = arg1 or Mask(96, 160, uint256(stor23[stor23.length]))
                            stor22[address(arg1)].field_0 = 1
                            stor22[address(arg1)].field_256 = accounts[address(arg1)].field_768
                else:
                    stor25.length++
                    if not stor25.length <= stor25.length + 1:
                        idx = 4 * stor25.length + 1
                        while 4 * stor25.length > idx:
                            stor25[idx].field_0 = 0
                            stor25[idx].field_256 = 0
                            stor25[idx].field_512 = 0
                            stor25[idx].field_768 = 0
                            idx = idx + 1
                            continue 
                    stor25[stor25.length].field_0 = arg1
                    stor25[stor25.length].field_256 = arg5
                    stor25[stor25.length].field_512 = arg6
                    stor25[stor25.length].field_768 = block.timestamp
                    if not sub_10666547:
                        if stor22[address(arg1)].field_0:
                            if accounts[address(arg1)].field_768 < stor22[address(arg1)].field_256:
                                stor22[address(arg1)].field_256 = accounts[address(arg1)].field_768
                        else:
                            stor23.length++
                            if not stor23.length <= stor23.length + 1:
                                idx = stor23.length + 1
                                while stor23.length > idx:
                                    uint256(stor23[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor23[stor23.length]) = arg1 or Mask(96, 160, uint256(stor23[stor23.length]))
                            stor22[address(arg1)].field_0 = 1
                            stor22[address(arg1)].field_256 = accounts[address(arg1)].field_768
    return 1
}



}
