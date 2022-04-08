contract main {


// =======================  Init code  ======================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 16
uint256 stor0; offset 8
uint256 stor0; offset 9
uint256 stor0; offset 8
mapping of uint256 stor1;

function _fallback() payable {
    uint8(stor0.field_8) = 1
    Mask(240, 0, stor0.field_16) = 0
    require not msg.value
    mem[96 len -4291] = code.data[4935 len -4291]
    mem[64] = -4195
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        if not Mask(248, 0, stor0.field_8):
            mem[-4195] = 'Oracles limit reached'
            emit code.data[4903 len 32]: 'Oracles limit reached'
        else:
            mem[0] = mem[(32 * idx) + mem[96] + 140 len 20]
            mem[32] = 1
            if stor1[mem[(32 * idx) + mem[96] + 140 len 20]]:
                mem[-4195] = 'Already added'
                mem[0] = mem[(32 * idx) + mem[96] + 140 len 20]
                emit code.data[4903 len 32]: 'Already added'
            else:
                if mem[(32 * idx) + mem[96] + 140 len 20]:
                    mem[0] = mem[(32 * idx) + mem[96] + 140 len 20]
                    mem[32] = 1
                    stor1[address(mem[(32 * idx) + mem[96] + 128])] = Mask(248, 0, stor0.field_8)
                    uint8(stor0.field_0) = uint8(uint8(stor0.field_0) + 1)
                    Mask(248, 0, stor0.field_8) = 0
                    Mask(247, 0, stor0.field_9) = Mask(247, 0, stor0.field_8)
                    mem[-4195] = mem[(32 * idx) + mem[96] + 140 len 20]
                    emit OracleAdded(mem[(32 * idx) + mem[96] + 140 len 20]);
        idx = idx + 1
        continue 
    require uint8(stor0.field_0) >= 3
    return code.data[644 len 4259]
}



// =====================  Runtime code  =====================


uint8 oraclesCount;
uint256 stor0; offset 8
uint256 stor0; offset 9
uint256 sub_9c6caa70; offset 8
mapping of uint256 sub_71533a45;
mapping of uint256 sub_92fc9251;
mapping of struct operation;

function sub_71533a45(?) {
    return Mask(248, 0, sub_71533a45[arg1])
}

function oraclesCount() {
    return oraclesCount
}

function sub_92fc9251(?) {
    return sub_92fc9251[arg1][arg2]
}

function sub_9c6caa70(?) {
    return sub_9c6caa70
}

function isOracle(address arg1) {
    return bool(Mask(248, 0, sub_71533a45[address(arg1)]))
}

function getOperation(address arg1) {
    return operation[address(arg1)].field_0, operation[address(arg1)].field_256
}

function _fallback() payable {
    revert
}

function getConfirmations(bytes32 arg1, address arg2) {
    if arg1 == operation[address(arg2)].field_0:
        return operation[address(arg2)].field_256
    else:
        return 0
}

function isConfirmed(bytes32 arg1, address arg2, address arg3) {
    if arg1 != operation[address(arg2)].field_0:
        return (arg1 == operation[address(arg2)].field_0)
    return (Mask(248, 0, uint256(sub_71533a45[address(arg3)]) and operation[address(arg2)].field_264) > 0)
}

function consumeOperation(bytes32 arg1, uint256 arg2) {
    if arg1 == operation[address(msg.sender)].field_0:
        if operation[address(msg.sender)].field_256 < arg2:
            emit 0xe4c0feee: ('Not enough confirmations' << 64)
            return 0
    else:
        if 0 < arg2:
            emit 0xe4c0feee: ('Not enough confirmations' << 64)
            return 0
    operation[address(msg.sender)].field_0 = 1
    emit 0x9d6352b0: arg1, msg.sender
    return 1
}

function sub_dc9fbea2(?) {
    if not Mask(248, 0, sub_71533a45[address(msg.sender)]):
        emit 0xe4c0feee: ('Signature by non-oracle' << 72)
        return 0
    if arg1 == operation[address(arg2)].field_0:
        if Mask(248, 0, uint256(sub_71533a45[address(msg.sender)]) and operation[address(arg2)].field_264) > 0:
            emit 0xe4c0feee: 0x416c726561647920636f6e6669726d6564000000000000000000000000000000
            return 0
    if arg1 == operation[address(arg2)].field_0:
        operation[address(arg2)].field_256 = Mask(248, 0, sub_71533a45[address(msg.sender)])
        operation[address(arg2)].field_256 = uint8(operation[address(arg2)].field_256 + 1)
    else:
        operation[address(arg2)].field_0 = arg1
        operation[address(arg2)].field_256 = Mask(248, 0, sub_71533a45[address(msg.sender)])
        operation[address(arg2)].field_256 = 1
        operation[address(arg2)].field_264 = 0
    emit 0xbece3b94: operation[address(arg2)].field_256, arg1, arg2, msg.sender
    return 1
}

function confirm(bytes32 arg1, address arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) {
    signer = erecover(sha3(arg1, arg2, this.address, arg3), arg4 << 248, arg5, arg6) 
    require erecover.result
    if not address(signer):
        emit 0xe4c0feee: ('Invalid signature' << 120)
        return 0
    if sub_92fc9251[Mask(248, 0, stor1[address(signer)])][address(arg2)] >= arg3:
        emit 0xe4c0feee: 0x4e6f6e636520616c726561647920757365640000000000000000000000000000
        return 0
    sub_92fc9251[Mask(248, 0, stor1[address(signer)])][address(arg2)] = arg3
    if not address(signer):
        return 0
    if not Mask(248, 0, sub_71533a45[address(signer)]):
        emit 0xe4c0feee: ('Signature by non-oracle' << 72)
        return 0
    if arg1 == operation[address(arg2)].field_0:
        if Mask(248, 0, uint256(sub_71533a45[address(signer)]) and operation[address(arg2)].field_264) > 0:
            emit 0xe4c0feee: 0x416c726561647920636f6e6669726d6564000000000000000000000000000000
            return 0
    if arg1 == operation[address(arg2)].field_0:
        operation[address(arg2)].field_256 = Mask(248, 0, sub_71533a45[address(signer)])
        operation[address(arg2)].field_256 = uint8(operation[address(arg2)].field_256 + 1)
    else:
        operation[address(arg2)].field_0 = arg1
        operation[address(arg2)].field_256 = Mask(248, 0, sub_71533a45[address(signer)])
        operation[address(arg2)].field_256 = 1
        operation[address(arg2)].field_264 = 0
    emit 0xbece3b94: operation[address(arg2)].field_256, arg1, arg2, address(signer)
    return 1
}

function sub_51a64cff(?) {
    signer = erecover(sha3(this.address, arg1), arg2 << 248, arg3, arg4) 
    require erecover.result
    if not address(signer):
        emit 0xe4c0feee: ('Invalid signature' << 120)
        if not Mask(248, 0, sub_71533a45[address(msg.sender)]):
            emit 0xe4c0feee: ('Not an oracle' << 152)
            return 0
        if Mask(248, 0, sub_71533a45[0]):
            emit 0xe4c0feee: ('Already an oracle' << 120)
            return 0
        Mask(248, 0, sub_71533a45[0]) = Mask(248, 0, sub_71533a45[address(msg.sender)])
        Mask(248, 0, sub_71533a45[address(msg.sender)]) = 0
        emit OracleRemoved(msg.sender);
        emit 0x47706786: 0
    else:
        if sub_92fc9251[Mask(248, 0, stor1[address(signer)])][address(this.address)] < arg1:
            sub_92fc9251[Mask(248, 0, stor1[address(signer)])][address(this.address)] = arg1
            if not Mask(248, 0, sub_71533a45[address(msg.sender)]):
                emit 0xe4c0feee: ('Not an oracle' << 152)
                return 0
            if Mask(248, 0, sub_71533a45[address(signer)]):
                emit 0xe4c0feee: ('Already an oracle' << 120)
                return 0
            Mask(248, 0, sub_71533a45[address(signer)]) = Mask(248, 0, sub_71533a45[address(msg.sender)])
            Mask(248, 0, sub_71533a45[address(msg.sender)]) = 0
            emit OracleRemoved(msg.sender);
            emit 0x47706786: address(signer)
        else:
            emit 0xe4c0feee: 0x4e6f6e636520616c726561647920757365640000000000000000000000000000
            if not Mask(248, 0, sub_71533a45[address(msg.sender)]):
                emit 0xe4c0feee: ('Not an oracle' << 152)
                return 0
            if Mask(248, 0, sub_71533a45[0]):
                emit 0xe4c0feee: ('Already an oracle' << 120)
                return 0
            Mask(248, 0, sub_71533a45[0]) = Mask(248, 0, sub_71533a45[address(msg.sender)])
            Mask(248, 0, sub_71533a45[address(msg.sender)]) = 0
            emit OracleRemoved(msg.sender);
            emit 0x47706786: 0
    return 1
}

function sub_4d414a3f(?) {
    if sha3(call.data[0 len calldata.size]) == operation[address(this.address)].field_0:
        if operation[address(this.address)].field_256 < oraclesCount:
            emit 0xe4c0feee: ('Not enough confirmations' << 64)
            return 0
    else:
        if 0 < oraclesCount:
            emit 0xe4c0feee: ('Not enough confirmations' << 64)
            return 0
    operation[address(this.address)].field_0 = 1
    emit 0x9d6352b0: sha3(call.data[0 len calldata.size]), this.address
    signer = erecover(sha3(this.address, arg1), arg2 << 248, arg3, arg4) 
    require erecover.result
    if not address(signer):
        emit 0xe4c0feee: ('Invalid signature' << 120)
        if not sub_9c6caa70:
            emit 0xe4c0feee: 0x4f7261636c6573206c696d697420726561636865640000000000000000000000
        else:
            if Mask(248, 0, sub_71533a45[0]):
                emit 0xe4c0feee: 0x416c726561647920616464656400000000000000000000000000000000000000
        return 0
    if sub_92fc9251[Mask(248, 0, stor1[address(signer)])][address(this.address)] >= arg1:
        emit 0xe4c0feee: 0x4e6f6e636520616c726561647920757365640000000000000000000000000000
        if not sub_9c6caa70:
            emit 0xe4c0feee: 0x4f7261636c6573206c696d697420726561636865640000000000000000000000
        else:
            if Mask(248, 0, sub_71533a45[0]):
                emit 0xe4c0feee: 0x416c726561647920616464656400000000000000000000000000000000000000
        return 0
    sub_92fc9251[Mask(248, 0, stor1[address(signer)])][address(this.address)] = arg1
    if not sub_9c6caa70:
        emit 0xe4c0feee: 0x4f7261636c6573206c696d697420726561636865640000000000000000000000
        return 0
    if Mask(248, 0, sub_71533a45[address(signer)]):
        emit 0xe4c0feee: 0x416c726561647920616464656400000000000000000000000000000000000000
        return 0
    if not address(signer):
        return 0
    Mask(248, 0, sub_71533a45[address(signer)]) = sub_9c6caa70
    oraclesCount = uint8(oraclesCount + 1)
    sub_9c6caa70 = 0
    Mask(247, 0, stor0.field_9) = Mask(247, 0, stor0.field_8)
    emit 0x47706786: address(signer)
    return 1
}

function sub_a7ff39bd(?) {
    if sha3(call.data[0 len calldata.size]) == operation[address(this.address)].field_0:
        if operation[address(this.address)].field_256 < uint8(oraclesCount - 1):
            emit 0xe4c0feee: ('Not enough confirmations' << 64)
            return 0
    else:
        if 0 < uint8(oraclesCount - 1):
            emit 0xe4c0feee: ('Not enough confirmations' << 64)
            return 0
    operation[address(this.address)].field_0 = 1
    emit 0x9d6352b0: sha3(call.data[0 len calldata.size]), this.address
    signer = erecover(sha3(this.address, arg2), arg3 << 248, arg4, arg5) 
    require erecover.result
    if not address(signer):
        emit 0xe4c0feee: ('Invalid signature' << 120)
        if not Mask(248, 0, sub_71533a45[address(arg1)]):
            emit 0xe4c0feee: ('Not an oracle' << 152)
            return 0
        if Mask(248, 0, sub_71533a45[0]):
            emit 0xe4c0feee: ('Already an oracle' << 120)
            return 0
        Mask(248, 0, sub_71533a45[0]) = Mask(248, 0, sub_71533a45[address(arg1)])
        Mask(248, 0, sub_71533a45[address(arg1)]) = 0
        emit OracleRemoved(arg1);
        emit 0x47706786: 0
    else:
        if sub_92fc9251[Mask(248, 0, stor1[address(signer)])][address(this.address)] < arg2:
            sub_92fc9251[Mask(248, 0, stor1[address(signer)])][address(this.address)] = arg2
            if not Mask(248, 0, sub_71533a45[address(arg1)]):
                emit 0xe4c0feee: ('Not an oracle' << 152)
                return 0
            if Mask(248, 0, sub_71533a45[address(signer)]):
                emit 0xe4c0feee: ('Already an oracle' << 120)
                return 0
            Mask(248, 0, sub_71533a45[address(signer)]) = Mask(248, 0, sub_71533a45[address(arg1)])
            Mask(248, 0, sub_71533a45[address(arg1)]) = 0
            emit OracleRemoved(arg1);
            emit 0x47706786: address(signer)
        else:
            emit 0xe4c0feee: 0x4e6f6e636520616c726561647920757365640000000000000000000000000000
            if not Mask(248, 0, sub_71533a45[address(arg1)]):
                emit 0xe4c0feee: ('Not an oracle' << 152)
                return 0
            if Mask(248, 0, sub_71533a45[0]):
                emit 0xe4c0feee: ('Already an oracle' << 120)
                return 0
            Mask(248, 0, sub_71533a45[0]) = Mask(248, 0, sub_71533a45[address(arg1)])
            Mask(248, 0, sub_71533a45[address(arg1)]) = 0
            emit OracleRemoved(arg1);
            emit 0x47706786: 0
    return 1
}

function confirmMany(bytes32[] arg1, address[] arg2, uint256[] arg3, uint8[] arg4, bytes32[] arg5, bytes32[] arg6) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192] = arg4.length
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224] = arg5.length
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[64] = (32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 288
    mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256] = arg6.length
    mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 288 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _90 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _94 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
        _96 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
        require idx < mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192]
        _98 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]
        require idx < mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]
        _100 = mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256]
        require idx < mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256]
        _102 = mem[(32 * idx) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 288]
        mem[mem[64]] = mem[(32 * idx) + 128]
        mem[mem[64] + 32] = address(_94)
        _105 = sha3(mem[mem[64]], address(_94), this.address, _96)
        _106 = mem[64]
        mem[0] = mem[64]
        mem[64] = mem[64] + 32
        mem[_106 + 64] = 0
        mem[mem[64] + 32] = uint8(_98)
        mem[mem[64] + 64] = _100
        mem[mem[64] + 96] = _102
        signer = erecover(_105, _98 << 248, _100, _102) 
        mem[mem[64] - 32] = signer
        require erecover.result
        if not address(signer):
            emit 0xe4c0feee: ('Invalid signature' << 120)
            return 0
        if sub_92fc9251[Mask(248, 0, stor1[address(signer)])][address(_94)] >= _96:
            emit 0xe4c0feee: 0x4e6f6e636520616c726561647920757365640000000000000000000000000000
            return 0
        sub_92fc9251[Mask(248, 0, stor1[address(signer)])][address(_94)] = _96
        if not address(signer):
            return 0
        if not Mask(248, 0, sub_71533a45[address(signer)]):
            emit 0xe4c0feee: ('Signature by non-oracle' << 72)
            return 0
        if _90 != operation[address(_94)].field_0:
            mem[0] = address(_94)
            if _90 == operation[address(_94)].field_0:
                _140 = mem[64]
                mem[64] = mem[64] + 64
                mem[_140] = uint8(operation[address(_94)].field_256 + 1)
                mem[0] = address(signer)
                mem[32] = 1
                mem[_140 + 32] = operation[address(_94)].field_264 or Mask(248, 0, sub_71533a45[address(signer)])
                operation[address(_94)].field_256 = Mask(248, 0, sub_71533a45[address(signer)])
                operation[address(_94)].field_256 = uint8(operation[address(_94)].field_256 + 1)
            else:
                operation[address(_94)].field_0 = _90
                _143 = mem[64]
                mem[64] = mem[64] + 64
                mem[_143] = 1
                mem[0] = address(signer)
                mem[32] = 1
                mem[_143 + 32] = Mask(248, 0, sub_71533a45[address(signer)])
                operation[address(_94)].field_256 = Mask(248, 0, sub_71533a45[address(signer)])
                operation[address(_94)].field_256 = 1
                operation[address(_94)].field_264 = 0
        else:
            if Mask(248, 0, uint256(sub_71533a45[address(signer)]) and operation[address(_94)].field_264) > 0:
                emit 0xe4c0feee: 0x416c726561647920636f6e6669726d6564000000000000000000000000000000
                return 0
            mem[0] = address(_94)
            if _90 == operation[address(_94)].field_0:
                _155 = mem[64]
                mem[64] = mem[64] + 64
                mem[_155] = uint8(operation[address(_94)].field_256 + 1)
                mem[0] = address(signer)
                mem[32] = 1
                mem[_155 + 32] = operation[address(_94)].field_264 or Mask(248, 0, sub_71533a45[address(signer)])
                operation[address(_94)].field_256 = Mask(248, 0, sub_71533a45[address(signer)])
                operation[address(_94)].field_256 = uint8(operation[address(_94)].field_256 + 1)
            else:
                operation[address(_94)].field_0 = _90
                _158 = mem[64]
                mem[64] = mem[64] + 64
                mem[_158] = 1
                mem[0] = address(signer)
                mem[32] = 1
                mem[_158 + 32] = Mask(248, 0, sub_71533a45[address(signer)])
                operation[address(_94)].field_256 = Mask(248, 0, sub_71533a45[address(signer)])
                operation[address(_94)].field_256 = 1
                operation[address(_94)].field_264 = 0
        mem[mem[64]] = operation[address(_94)].field_256
        emit 0xbece3b94: operation[address(_94)].field_256, _90, address(_94), address(signer)
        idx = idx + 1
        continue 
    return 1
}



}
