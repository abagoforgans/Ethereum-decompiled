contract main {




// =====================  Runtime code  =====================


const MAX_OWNER_COUNT = 10


uint256 threshold;
uint256 ownersCount;
mapping of uint8 stor3;

function isOwner(address arg1) {
    return bool(stor3[arg1])
}

function threshold() {
    return threshold
}

function nonce() {
    return uint256(nonce)
}

function ownersCount() {
    return ownersCount
}

function _fallback() payable {
    emit Received(msg.value, msg.sender);
}

function changeThreshold(uint256 arg1) {
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MSW: Calling account is not wallet'
    if arg1 <= 0:
        revert with 0, 'MSW: Invalid new threshold'
    if arg1 > ownersCount:
        revert with 0, 'MSW: Invalid new threshold'
    threshold = arg1
    emit ThresholdChanged(arg1);
}

function addOwner(address arg1) {
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MSW: Calling account is not wallet'
    if 10 <= ownersCount:
        revert with 0, 'MSW: MAX_OWNER_COUNT reached'
    if stor3[address(arg1)]:
        revert with 0, 'MSW: Already owner'
    ownersCount++
    stor3[address(arg1)] = 1
    emit OwnerAdded(arg1);
}

function removeOwner(address arg1) {
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MSW: Calling account is not wallet'
    if ownersCount <= threshold:
        revert with 0, 'MSW: Too few owners left'
    if bool(stor3[address(arg1)]) != 1:
        revert with 0, 'MSW: Not an owner'
    ownersCount--
    stor3[address(arg1)] = 0
    emit OwnerRemoved(arg1);
}

function sub_da0980c7(?) {
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    if arg4.length / 65 < threshold:
        revert with 0, 'MSW: Not enough signatures'
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = 0x1900000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 193] = 0
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 194] = address(this.address)
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 214] = address(arg1)
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 234] = arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 266 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 266] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 266] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[arg3.length + 128 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
    mem[ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 266] = uint256(nonce)
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg3.length + 106
    mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 298
    mem[ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 298 len floor32(arg3.length + 106)] = 0, 0, this.address, arg1, arg2, call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 266 len floor32(arg3.length + 106) + -floor32(arg3.length) - 74]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + floor32(arg3.length + 106) + 298] = mem[ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + floor32(arg3.length + 106) + 298] and 256^(-(arg3.length + 106 % 32) + 32) - 1 or Mask(8 * -floor32(arg3.length + 106) + arg3.length + 106, 0, stor0), 0, 0, this.address, mem[ceil32(arg3.length) + ceil32(arg4.length) + 214 len floor32(arg3.length + 106) + -arg3.length - 96] and !(256^(-(arg3.length + 106 % 32) + 32) - 1)
    _205 = sha3(0, 0, this.address, arg1, arg2, call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 266 len floor32(arg3.length + 106) + -floor32(arg3.length) - 74], mem[ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + floor32(arg3.length + 106) + 298 len arg3.length + -floor32(arg3.length + 106) + 106])
    uint256(nonce)++
    s = 0
    idx = 0
    s = 0
    t = 0
    u = 0
    u = 0
    u = 0
    while idx < arg4.length / 65:
        _296 = mem[ceil32(arg3.length) + (65 * idx) + 160]
        _297 = mem[ceil32(arg3.length) + (65 * idx) + 192]
        _298 = mem[ceil32(arg3.length) + (65 * idx) + 193]
        if mem[ceil32(arg3.length) + (65 * idx) + 224 len 1] == 27:
            _299 = mem[64]
            mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
            mem[mem[64] + 60] = _205
            _300 = mem[64]
            mem[mem[64]] = 60
            mem[64] = mem[64] + 92
            _301 = mem[_300]
            v = _300 + 32
            w = _299 + 92
            u = mem[_300]
            while u >= 32:
                mem[w] = mem[v]
                v = v + 32
                w = w + 32
                u = u - 32
                continue 
            mem[_299 + floor32(mem[_300]) + 92] = mem[_300 + floor32(mem[_300]) + -(mem[_300] % 32) + 64 len mem[_300] % 32] or Mask(8 * -(mem[_300] % 32) + 32, -(8 * -(mem[_300] % 32) + 32) + 256, mem[_299 + floor32(mem[_300]) + 92])
            _384 = sha3(mem[mem[64] len _301 + _299 + -mem[64] + 92])
            _385 = mem[64]
            mem[64] = mem[64] + 32
            mem[_385 + 32] = _384
            mem[_385 + 64] = uint8(_298)
            mem[_385 + 96] = _296
            mem[_385 + 128] = _297
            signer = erecover(_384, _298 << 248, _296, _297) 
            mem[_385] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if address(signer) <= address(s):
                revert with 0, 'MSW: Badly ordered signatures'
            mem[0] = address(signer)
            mem[32] = 3
            if not stor3[address(signer)]:
                s = signer
                idx = idx + 1
                s = signer
                t = t
                u = _297
                u = _296
                u = uint8(_298)
                continue 
            if t + 1 < threshold:
                s = signer
                idx = idx + 1
                s = signer
                t = t + 1
                u = _297
                u = _296
                u = uint8(_298)
                continue 
            _408 = mem[96]
            idx = 0
            while idx < _408:
                mem[idx + _385 + 32] = mem[idx + 128]
                idx = idx + 32
                continue 
            if not _408 % 32:
                call arg1.mem[mem[64] len 4] with:
                   value arg2 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _408 + _385 + -mem[64] + 28]
                if not ext_call.success:
                    revert with 0, 'MSW: External call failed'
                _461 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[96]
                _463 = mem[96]
                idx = 0
                while idx < _463:
                    mem[idx + _461 + 64] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                if not _463 % 32:
                    emit Executed(mem[mem[64] len _463 + _461 + -mem[64] + 64], arg1, arg2);
                else:
                    mem[floor32(_463) + _461 + 64] = mem[floor32(_463) + _461 + -(_463 % 32) + 96 len _463 % 32]
                    emit Executed(mem[mem[64] len floor32(_463) + _461 + -mem[64] + 96], arg1, arg2);
            else:
                mem[floor32(_408) + _385 + 32] = mem[floor32(_408) + _385 + -(_408 % 32) + 64 len _408 % 32]
                call arg1.mem[mem[64] len 4] with:
                   value arg2 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len floor32(_408) + _385 + -mem[64] + 60]
                if not ext_call.success:
                    revert with 0, 'MSW: External call failed'
                _473 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[96]
                _475 = mem[96]
                idx = 0
                while idx < _475:
                    mem[idx + _473 + 64] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                if not _475 % 32:
                    emit Executed(mem[mem[64] len _475 + _473 + -mem[64] + 64], arg1, arg2);
                else:
                    mem[floor32(_475) + _473 + 64] = mem[floor32(_475) + _473 + -(_475 % 32) + 96 len _475 % 32]
                    emit Executed(mem[mem[64] len floor32(_475) + _473 + -mem[64] + 96], arg1, arg2);
        else:
            if mem[ceil32(arg3.length) + (65 * idx) + 224 len 1] != 28:
                revert with 0, 'MSW: Invalid v'
            _304 = mem[64]
            mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
            mem[mem[64] + 60] = _205
            _305 = mem[64]
            mem[mem[64]] = 60
            mem[64] = mem[64] + 92
            _306 = mem[_305]
            v = _305 + 32
            w = _304 + 92
            u = mem[_305]
            while u >= 32:
                mem[w] = mem[v]
                v = v + 32
                w = w + 32
                u = u - 32
                continue 
            mem[_304 + floor32(mem[_305]) + 92] = mem[_305 + floor32(mem[_305]) + -(mem[_305] % 32) + 64 len mem[_305] % 32] or Mask(8 * -(mem[_305] % 32) + 32, -(8 * -(mem[_305] % 32) + 32) + 256, mem[_304 + floor32(mem[_305]) + 92])
            _392 = sha3(mem[mem[64] len _306 + _304 + -mem[64] + 92])
            _393 = mem[64]
            mem[64] = mem[64] + 32
            mem[_393 + 32] = _392
            mem[_393 + 64] = uint8(_298)
            mem[_393 + 96] = _296
            mem[_393 + 128] = _297
            signer = erecover(_392, _298 << 248, _296, _297) 
            mem[_393] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if address(signer) <= address(s):
                revert with 0, 'MSW: Badly ordered signatures'
            mem[0] = address(signer)
            mem[32] = 3
            if not stor3[address(signer)]:
                s = signer
                idx = idx + 1
                s = signer
                t = t
                u = _297
                u = _296
                u = uint8(_298)
                continue 
            if t + 1 < threshold:
                s = signer
                idx = idx + 1
                s = signer
                t = t + 1
                u = _297
                u = _296
                u = uint8(_298)
                continue 
            _410 = mem[96]
            idx = 0
            while idx < _410:
                mem[idx + _393 + 32] = mem[idx + 128]
                idx = idx + 32
                continue 
            if not _410 % 32:
                call arg1.mem[mem[64] len 4] with:
                   value arg2 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _410 + _393 + -mem[64] + 28]
                if not ext_call.success:
                    revert with 0, 'MSW: External call failed'
                _467 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[96]
                _469 = mem[96]
                idx = 0
                while idx < _469:
                    mem[idx + _467 + 64] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                if not _469 % 32:
                    emit Executed(mem[mem[64] len _469 + _467 + -mem[64] + 64], arg1, arg2);
                else:
                    mem[floor32(_469) + _467 + 64] = mem[floor32(_469) + _467 + -(_469 % 32) + 96 len _469 % 32]
                    emit Executed(mem[mem[64] len floor32(_469) + _467 + -mem[64] + 96], arg1, arg2);
            else:
                mem[floor32(_410) + _393 + 32] = mem[floor32(_410) + _393 + -(_410 % 32) + 64 len _410 % 32]
                call arg1.mem[mem[64] len 4] with:
                   value arg2 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len floor32(_410) + _393 + -mem[64] + 60]
                if not ext_call.success:
                    revert with 0, 'MSW: External call failed'
                _478 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[96]
                _480 = mem[96]
                idx = 0
                while idx < _480:
                    mem[idx + _478 + 64] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                if not _480 % 32:
                    emit Executed(mem[mem[64] len _480 + _478 + -mem[64] + 64], arg1, arg2);
                else:
                    mem[floor32(_480) + _478 + 64] = mem[floor32(_480) + _478 + -(_480 % 32) + 96 len _480 % 32]
                    emit Executed(mem[mem[64] len floor32(_480) + _478 + -mem[64] + 96], arg1, arg2);
    revert with 0, 'MSW: Not enough valid signatures'
}



}
