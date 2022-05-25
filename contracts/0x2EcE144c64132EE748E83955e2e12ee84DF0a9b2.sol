contract main {




// =====================  Runtime code  =====================


#
#  - initializeMokensContract(address arg1)
#
mapping of address stor0;
array of uint256 stor1;
array of bool stor2;
array of uint256 stor99;

function _fallback() payable {
    revert
}

function executeDelegate(address arg1, bytes arg2) {
    if address(stor1.length) != msg.sender:
        revert with 0, 'Must own Mokens contract.'
    delegate arg1 with:
         gas gas_remaining wei
        args arg2[all]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function addFunctions(address arg1, string arg2) {
    mem[64] = ceil32(arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    if address(stor1.length) != msg.sender:
        revert with 0, 'Must own Mokens contract.'
    if not arg1:
        revert with 0, 'delegate can't be zero address.'
    idx = 2
    while idx < arg2.length:
        require idx < mem[96]
        if 0x2900000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
            _15 = mem[64]
            mem[mem[64]] = idx + 1
            mem[64] = mem[64] + floor32(idx + 32) + 32
            if not idx + 1:
                s = 0
                while s < idx + 1:
                    require s < mem[96]
                    require s < mem[_15]
                    mem[_15 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
                    s = s + 1
                    continue 
                _156 = mem[64]
                _157 = mem[_15]
                t = _15 + 32
                u = mem[64]
                s = mem[_15]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_15])] = mem[_15 + floor32(mem[_15]) + -(mem[_15] % 32) + 64 len mem[_15] % 32] or Mask(8 * -(mem[_15] % 32) + 32, -(8 * -(mem[_15] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_15])])
                _299 = sha3(mem[mem[64] len _157 + _156 - mem[64]])
                _306 = mem[64]
                _307 = mem[_15]
                t = _15 + 32
                u = mem[64]
                s = mem[_15]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_15])] = 256^(-(mem[_15] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_15])] or mem[_15 + floor32(mem[_15]) + 32] and !(256^(-(mem[_15] % 32) + 32) - 1)
                mem[_306 + _307] = 3
                if stor[sha3(mem[mem[64] len _306 + _307 + -mem[64] + 32])]:
                    revert with 0, 'Function already exists.'
                if stor0[Mask(32, 224, _299)]:
                    revert with 0, 'FuncId clash.'
                mem[32] = 0
                stor0[Mask(32, 224, _299)] = arg1
                stor2.length++
                mem[0] = 2
                _444 = mem[_15]
                mem[0] = sha3(2) + stor2.length
                uint256(stor2[stor2.length]) = (2 * _444) + 1
                t = sha3(sha3(2) + stor2.length)
                s = _15 + 32
                while _15 + _444 + 32 > s:
                    stor[t] = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(sha3(2) + stor2.length) + (Mask(251, 0, _444 + 31) >> 5)
                while sha3(sha3(2) + stor2.length) + (stor2[stor2.length].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                _666 = mem[64]
                _667 = mem[_15]
                t = _15 + 32
                u = mem[64]
                s = mem[_15]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_15])] = mem[_15 + floor32(mem[_15]) + -(mem[_15] % 32) + 64 len mem[_15] % 32] or Mask(8 * -(mem[_15] % 32) + 32, -(8 * -(mem[_15] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_15])])
                mem[_667 + _666] = 3
                stor[sha3(mem[mem[64] len _667 + _666 + -mem[64] + 32])] = stor2.length
                _709 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[_15]
                _711 = mem[_15]
                s = 0
                while s < _711:
                    mem[s + _709 + 64] = mem[s + _15 + 32]
                    s = s + 32
                    continue 
                if not _711 % 32:
                    emit ContractUpdated(mem[mem[64] len _711 + _709 + -mem[64] + 64], _299, arg1, 'new');
                else:
                    mem[floor32(_711) + _709 + 64] = mem[floor32(_711) + _709 + -(_711 % 32) + 96 len _711 % 32]
                    emit ContractUpdated(mem[mem[64] len floor32(_711) + _709 + -mem[64] + 96], _299, arg1, 'new');
            else:
                mem[_15 + 32 len 32 * idx + 1] = code.data[5655 len 32 * idx + 1]
                s = 0
                while s < idx + 1:
                    require s < mem[96]
                    require s < mem[_15]
                    mem[_15 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
                    s = s + 1
                    continue 
                _159 = mem[64]
                _160 = mem[_15]
                t = _15 + 32
                u = mem[64]
                s = mem[_15]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_15])] = mem[_15 + floor32(mem[_15]) + -(mem[_15] % 32) + 64 len mem[_15] % 32] or Mask(8 * -(mem[_15] % 32) + 32, -(8 * -(mem[_15] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_15])])
                _304 = sha3(mem[mem[64] len _160 + _159 - mem[64]])
                _308 = mem[64]
                _309 = mem[_15]
                t = _15 + 32
                u = mem[64]
                s = mem[_15]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_15])] = 256^(-(mem[_15] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_15])] or mem[_15 + floor32(mem[_15]) + 32] and !(256^(-(mem[_15] % 32) + 32) - 1)
                mem[_308 + _309] = 3
                if stor[sha3(mem[mem[64] len _308 + _309 + -mem[64] + 32])]:
                    revert with 0, 'Function already exists.'
                if stor0[Mask(32, 224, _304)]:
                    revert with 0, 'FuncId clash.'
                mem[32] = 0
                stor0[Mask(32, 224, _304)] = arg1
                stor2.length++
                mem[0] = 2
                _449 = mem[_15]
                mem[0] = sha3(2) + stor2.length
                uint256(stor2[stor2.length]) = (2 * _449) + 1
                t = sha3(sha3(2) + stor2.length)
                s = _15 + 32
                while _15 + _449 + 32 > s:
                    stor[t] = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(sha3(2) + stor2.length) + (Mask(251, 0, _449 + 31) >> 5)
                while sha3(sha3(2) + stor2.length) + (stor2[stor2.length].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                _672 = mem[64]
                _673 = mem[_15]
                t = _15 + 32
                u = mem[64]
                s = mem[_15]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_15])] = mem[_15 + floor32(mem[_15]) + -(mem[_15] % 32) + 64 len mem[_15] % 32] or Mask(8 * -(mem[_15] % 32) + 32, -(8 * -(mem[_15] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_15])])
                mem[_673 + _672] = 3
                stor[sha3(mem[mem[64] len _673 + _672 + -mem[64] + 32])] = stor2.length
                _719 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[_15]
                _721 = mem[_15]
                s = 0
                while s < _721:
                    mem[s + _719 + 64] = mem[s + _15 + 32]
                    s = s + 32
                    continue 
                if not _721 % 32:
                    emit ContractUpdated(mem[mem[64] len _721 + _719 + -mem[64] + 64], _304, arg1, 'new');
                else:
                    mem[floor32(_721) + _719 + 64] = mem[floor32(_721) + _719 + -(_721 % 32) + 96 len _721 % 32]
                    emit ContractUpdated(mem[mem[64] len floor32(_721) + _719 + -mem[64] + 96], _304, arg1, 'new');
        idx = idx + 1
        continue 
}

function updateFunctions(address arg1, string arg2) {
    mem[64] = ceil32(arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    if address(stor1.length) != msg.sender:
        revert with 0, 'Must own Mokens contract.'
    if not arg1:
        revert with 0, 'delegate can't be zero address.'
    idx = 2
    while idx < arg2.length:
        require idx < mem[96]
        if 0x2900000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
            _15 = mem[64]
            mem[mem[64]] = idx + 1
            mem[64] = mem[64] + floor32(idx + 32) + 32
            if not idx + 1:
                s = 0
                while s < idx + 1:
                    require s < mem[96]
                    require s < mem[_15]
                    mem[_15 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
                    s = s + 1
                    continue 
                _98 = mem[64]
                _99 = mem[_15]
                t = _15 + 32
                u = mem[64]
                s = mem[_15]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_15])] = mem[_15 + floor32(mem[_15]) + -(mem[_15] % 32) + 64 len mem[_15] % 32] or Mask(8 * -(mem[_15] % 32) + 32, -(8 * -(mem[_15] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_15])])
                _183 = sha3(mem[mem[64] len _99 + _98 - mem[64]])
                _190 = mem[64]
                _191 = mem[_15]
                t = _15 + 32
                u = mem[64]
                s = mem[_15]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_15])] = 256^(-(mem[_15] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_15])] or mem[_15 + floor32(mem[_15]) + 32] and !(256^(-(mem[_15] % 32) + 32) - 1)
                mem[_190 + _191] = 3
                if not stor[sha3(mem[mem[64] len _190 + _191 + -mem[64] + 32])]:
                    if stor0[Mask(32, 224, _183)]:
                        revert with 0, 'FuncId clash.'
                    mem[0] = Mask(32, 224, _183)
                    mem[32] = 0
                    stor0[Mask(32, 224, _183)] = arg1
                    _271 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[_15]
                    _273 = mem[_15]
                    s = 0
                    while s < _273:
                        mem[s + _271 + 64] = mem[s + _15 + 32]
                        s = s + 32
                        continue 
                    if not _273 % 32:
                        emit ContractUpdated(mem[mem[64] len _273 + _271 + -mem[64] + 64], _183, arg1, 'new');
                    else:
                        mem[floor32(_273) + _271 + 64] = mem[floor32(_273) + _271 + -(_273 % 32) + 96 len _273 % 32]
                        emit ContractUpdated(mem[mem[64] len floor32(_273) + _271 + -mem[64] + 96], _183, arg1, 'new');
                else:
                    mem[0] = Mask(32, 224, _183)
                    mem[32] = 0
                    if stor0[Mask(32, 224, _183)] != arg1:
                        mem[0] = Mask(32, 224, _183)
                        mem[32] = 0
                        stor0[Mask(32, 224, _183)] = arg1
                        _267 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = mem[_15]
                        _269 = mem[_15]
                        if 0 >= mem[_15]:
                            if not mem[_15] % 32:
                                emit ContractUpdated(bytes32 arg1, address arg2, bytes32 arg3, string arg4):
                                                     32,
                                                     mem[mem[64] + 32 len mem[_15] + 32],
                                                     _183,
                                                     arg1,
                                                     'updated',
                            else:
                                mem[floor32(mem[_15]) + mem[64] + 64] = mem[floor32(mem[_15]) + mem[64] + -(mem[_15] % 32) + 96 len mem[_15] % 32]
                                emit ContractUpdated(mem[mem[64] len floor32(_269) + _267 + -mem[64] + 96], _183, arg1, 'updated');
                        else:
                            mem[mem[64] + 64] = mem[_15 + 32]
                            s = 32
                            while s < _269:
                                mem[s + mem[64] + 64] = mem[s + _15 + 32]
                                s = s + 32
                                continue 
                            if not _269 % 32:
                                emit ContractUpdated(mem[mem[64] len _269 + _267 + -mem[64] + 64], _183, arg1, 'updated');
                            else:
                                mem[floor32(_269) + _267 + 64] = mem[floor32(_269) + _267 + -(_269 % 32) + 96 len _269 % 32]
                                emit ContractUpdated(mem[mem[64] len floor32(_269) + _267 + -mem[64] + 96], _183, arg1, 'updated');
            else:
                mem[_15 + 32 len 32 * idx + 1] = code.data[5655 len 32 * idx + 1]
                s = 0
                while s < idx + 1:
                    require s < mem[96]
                    require s < mem[_15]
                    mem[_15 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
                    s = s + 1
                    continue 
                _101 = mem[64]
                _102 = mem[_15]
                t = _15 + 32
                u = mem[64]
                s = mem[_15]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_15])] = mem[_15 + floor32(mem[_15]) + -(mem[_15] % 32) + 64 len mem[_15] % 32] or Mask(8 * -(mem[_15] % 32) + 32, -(8 * -(mem[_15] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_15])])
                _188 = sha3(mem[mem[64] len _102 + _101 - mem[64]])
                _192 = mem[64]
                _193 = mem[_15]
                t = _15 + 32
                u = mem[64]
                s = mem[_15]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_15])] = 256^(-(mem[_15] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_15])] or mem[_15 + floor32(mem[_15]) + 32] and !(256^(-(mem[_15] % 32) + 32) - 1)
                mem[_192 + _193] = 3
                if not stor[sha3(mem[mem[64] len _192 + _193 + -mem[64] + 32])]:
                    if stor0[Mask(32, 224, _188)]:
                        revert with 0, 'FuncId clash.'
                    mem[0] = Mask(32, 224, _188)
                    mem[32] = 0
                    stor0[Mask(32, 224, _188)] = arg1
                    _281 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[_15]
                    _283 = mem[_15]
                    s = 0
                    while s < _283:
                        mem[s + _281 + 64] = mem[s + _15 + 32]
                        s = s + 32
                        continue 
                    if not _283 % 32:
                        emit ContractUpdated(mem[mem[64] len _283 + _281 + -mem[64] + 64], _188, arg1, 'new');
                    else:
                        mem[floor32(_283) + _281 + 64] = mem[floor32(_283) + _281 + -(_283 % 32) + 96 len _283 % 32]
                        emit ContractUpdated(mem[mem[64] len floor32(_283) + _281 + -mem[64] + 96], _188, arg1, 'new');
                else:
                    mem[0] = Mask(32, 224, _188)
                    mem[32] = 0
                    if stor0[Mask(32, 224, _188)] != arg1:
                        mem[0] = Mask(32, 224, _188)
                        mem[32] = 0
                        stor0[Mask(32, 224, _188)] = arg1
                        _277 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = mem[_15]
                        _279 = mem[_15]
                        if 0 >= mem[_15]:
                            if not mem[_15] % 32:
                                emit ContractUpdated(bytes32 arg1, address arg2, bytes32 arg3, string arg4):
                                                     32,
                                                     mem[mem[64] + 32 len mem[_15] + 32],
                                                     _188,
                                                     arg1,
                                                     'updated',
                            else:
                                mem[floor32(mem[_15]) + mem[64] + 64] = mem[floor32(mem[_15]) + mem[64] + -(mem[_15] % 32) + 96 len mem[_15] % 32]
                                emit ContractUpdated(mem[mem[64] len floor32(_279) + _277 + -mem[64] + 96], _188, arg1, 'updated');
                        else:
                            mem[mem[64] + 64] = mem[_15 + 32]
                            s = 32
                            while s < _279:
                                mem[s + mem[64] + 64] = mem[s + _15 + 32]
                                s = s + 32
                                continue 
                            if not _279 % 32:
                                emit ContractUpdated(mem[mem[64] len _279 + _277 + -mem[64] + 64], _188, arg1, 'updated');
                            else:
                                mem[floor32(_279) + _277 + 64] = mem[floor32(_279) + _277 + -(_279 % 32) + 96 len _279 % 32]
                                emit ContractUpdated(mem[mem[64] len floor32(_279) + _277 + -mem[64] + 96], _188, arg1, 'updated');
        idx = idx + 1
        continue 
}

function removeFunctions(string arg1) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if address(stor1.length) != msg.sender:
        revert with 0, 'Must own Mokens contract.'
    idx = 2
    while idx < arg1.length:
        require idx < mem[96]
        if 0x2900000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
            _13 = mem[64]
            mem[mem[64]] = idx + 1
            mem[64] = mem[64] + floor32(idx + 32) + 32
            if idx + 1:
                mem[_13 + 32 len 32 * idx + 1] = code.data[5655 len 32 * idx + 1]
                s = 0
                while s < idx + 1:
                    require s < mem[96]
                    require s < mem[_13]
                    mem[_13 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
                    s = s + 1
                    continue 
                _582 = mem[_13]
                t = _13 + 32
                u = mem[64]
                s = mem[_13]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_13])] = mem[_13 + floor32(mem[_13]) + -(mem[_13] % 32) + 64 len mem[_13] % 32] or Mask(8 * -(mem[_13] % 32) + 32, -(8 * -(mem[_13] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_13])])
                _1150 = sha3(mem[mem[64] len _582])
                _1155 = mem[_13]
                t = _13 + 32
                u = mem[64]
                s = mem[_13]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_13])] = 256^(-(mem[_13] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_13])] or mem[_13 + floor32(mem[_13]) + 32] and !(256^(-(mem[_13] % 32) + 32) - 1)
                mem[mem[64] + _1155] = 3
                _1704 = sha3(mem[mem[64] len _1155 + 32])
                if not stor[sha3(mem[mem[64] len _1155 + 32])]:
                    revert with 0, 'Function does not exist.'
                if stor[sha3(mem[mem[64] len _1155 + 32])] - 1 == stor2.length - 1:
                    stor2.length--
                    if stor2.length <= stor2.length - 1:
                        _1720 = mem[_13]
                        t = _13 + 32
                        u = mem[64]
                        s = mem[_13]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_13])] = mem[_13 + floor32(mem[_13]) + -(mem[_13] % 32) + 64 len mem[_13] % 32] or Mask(8 * -(mem[_13] % 32) + 32, -(8 * -(mem[_13] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_13])])
                        mem[_1720 + mem[64]] = 3
                        stor[sha3(mem[mem[64] len _1720 + 32])] = 0
                        mem[0] = Mask(32, 224, _1150)
                        mem[32] = 0
                        stor0[Mask(32, 224, _1150)] = 0
                        _2252 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = mem[_13]
                        _2254 = mem[_13]
                        s = 0
                        while s < _2254:
                            mem[s + _2252 + 64] = mem[s + _13 + 32]
                            s = s + 32
                            continue 
                        if not _2254 % 32:
                            emit ContractUpdated(mem[mem[64] len _2254 + _2252 + -mem[64] + 64], _1150, stor0[Mask(32, 224, _1150)], 'removed');
                        else:
                            mem[floor32(_2254) + _2252 + 64] = mem[floor32(_2254) + _2252 + -(_2254 % 32) + 96 len _2254 % 32]
                            emit ContractUpdated(mem[mem[64] len floor32(_2254) + _2252 + -mem[64] + 96], _1150, stor0[Mask(32, 224, _1150)], 'removed');
                    else:
                        mem[0] = 2
                        s = stor2.length + sha3(mem[0]) - 1
                        while sha3(2) + stor2.length > s:
                            stor[s] = 0
                            if 31 < stor[s].length:
                                mem[0] = s
                                t = sha3(s)
                                while sha3(s) + (stor[s].length + 31 / 32) > t:
                                    stor[t] = 0
                                    t = t + 1
                                    continue 
                            s = s + 1
                            continue 
                        _2266 = mem[64]
                        _2267 = mem[_13]
                        t = _13 + 32
                        u = mem[64]
                        s = mem[_13]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_13])] = mem[_13 + floor32(mem[_13]) + -(mem[_13] % 32) + 64 len mem[_13] % 32] or Mask(8 * -(mem[_13] % 32) + 32, -(8 * -(mem[_13] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_13])])
                        mem[_2267 + mem[64]] = 3
                        stor[sha3(mem[mem[64] len _2267 + _2266 + -mem[64] + 32])] = 0
                        mem[0] = Mask(32, 224, _1150)
                        mem[32] = 0
                        stor0[Mask(32, 224, _1150)] = 0
                        _2806 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = mem[_13]
                        _2808 = mem[_13]
                        s = 0
                        while s < _2808:
                            mem[s + _2806 + 64] = mem[s + _13 + 32]
                            s = s + 32
                            continue 
                        if not _2808 % 32:
                            emit ContractUpdated(mem[mem[64] len _2808 + _2806 + -mem[64] + 64], _1150, stor0[Mask(32, 224, _1150)], 'removed');
                        else:
                            mem[floor32(_2808) + _2806 + 64] = mem[floor32(_2808) + _2806 + -(_2808 % 32) + 96 len _2808 % 32]
                            emit ContractUpdated(mem[mem[64] len floor32(_2808) + _2806 + -mem[64] + 96], _1150, stor0[Mask(32, 224, _1150)], 'removed');
                else:
                    require stor2.length - 1 < stor2.length
                    require stor[sha3(mem[mem[64] len _1155 + 32])] - 1 < stor2.length
                    if 31 >= stor[('name', 'stor2', 2) + stor2.length - 1].length:
                        uint256(stor2[stor[sha3(mem[mem[64] len _1155 + 32])]]) = uint256(stor2[stor2.length])
                        s = sha3(sha3(2) + stor[sha3(mem[mem[64] len _1155 + 32])] - 1)
                        while sha3(sha3(2) + stor[sha3(mem[mem[64] len _1155 + 32])] - 1) + (stor[('name', 'stor2', 2) + stor[sha3(mem[mem[64] len _1155 + 32])] - 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        require stor2.length - 1 < stor2.length
                        mem[0] = sha3(2) + stor2.length - 1
                        mem[mem[64]] = uint256(stor[sha3(('name', 'stor2', 2) + stor2.length - 1)])
                        s = mem[64]
                        t = sha3(mem[0])
                        while mem[64] + stor[('name', 'stor2', 2) + stor2.length - 1].length > s + 32:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[mem[64] + stor[('name', 'stor2', 2) + stor2.length - 1].length] = 3
                        stor[sha3(mem[mem[64] len stor[('name', 'stor2', 2) + stor2.length - 1].length + 32])] = stor[_1704]
                        stor2.length--
                        if stor2.length <= stor2.length - 1:
                            _3407 = mem[_13]
                            t = _13 + 32
                            u = mem[64]
                            s = mem[_13]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_13])] = mem[_13 + floor32(mem[_13]) + -(mem[_13] % 32) + 64 len mem[_13] % 32] or Mask(8 * -(mem[_13] % 32) + 32, -(8 * -(mem[_13] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_13])])
                            mem[_3407 + mem[64]] = 3
                            stor[sha3(mem[mem[64] len _3407 + 32])] = 0
                            mem[0] = Mask(32, 224, _1150)
                            mem[32] = 0
                            stor0[Mask(32, 224, _1150)] = 0
                            _3693 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = mem[_13]
                            _3695 = mem[_13]
                            s = 0
                            while s < _3695:
                                mem[s + _3693 + 64] = mem[s + _13 + 32]
                                s = s + 32
                                continue 
                            if not _3695 % 32:
                                emit ContractUpdated(mem[mem[64] len _3695 + _3693 + -mem[64] + 64], _1150, stor0[Mask(32, 224, _1150)], 'removed');
                            else:
                                mem[floor32(_3695) + _3693 + 64] = mem[floor32(_3695) + _3693 + -(_3695 % 32) + 96 len _3695 % 32]
                                emit ContractUpdated(mem[mem[64] len floor32(_3695) + _3693 + -mem[64] + 96], _1150, stor0[Mask(32, 224, _1150)], 'removed');
                        else:
                            mem[0] = 2
                            s = stor2.length + sha3(mem[0]) - 1
                            while sha3(2) + stor2.length > s:
                                stor[s] = 0
                                if 31 < stor[s].length:
                                    mem[0] = s
                                    t = sha3(s)
                                    while sha3(s) + (stor[s].length + 31 / 32) > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                                s = s + 1
                                continue 
                            _3775 = mem[_13]
                            t = _13 + 32
                            u = mem[64]
                            s = mem[_13]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_13])] = mem[_13 + floor32(mem[_13]) + -(mem[_13] % 32) + 64 len mem[_13] % 32] or Mask(8 * -(mem[_13] % 32) + 32, -(8 * -(mem[_13] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_13])])
                            mem[_3775 + mem[64]] = 3
                            stor[sha3(mem[mem[64] len _3775 + 32])] = 0
                            mem[0] = Mask(32, 224, _1150)
                            mem[32] = 0
                            stor0[Mask(32, 224, _1150)] = 0
                            _3966 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = mem[_13]
                            _3968 = mem[_13]
                            s = 0
                            while s < _3968:
                                mem[s + _3966 + 64] = mem[s + _13 + 32]
                                s = s + 32
                                continue 
                            if not _3968 % 32:
                                emit ContractUpdated(mem[mem[64] len _3968 + _3966 + -mem[64] + 64], _1150, stor0[Mask(32, 224, _1150)], 'removed');
                            else:
                                mem[floor32(_3968) + _3966 + 64] = mem[floor32(_3968) + _3966 + -(_3968 % 32) + 96 len _3968 % 32]
                                emit ContractUpdated(mem[mem[64] len floor32(_3968) + _3966 + -mem[64] + 96], _1150, stor0[Mask(32, 224, _1150)], 'removed');
                    else:
                        uint256(stor2[stor[sha3(mem[mem[64] len _1155 + 32])]]) = Mask(255, 1, (256 * not bool(stor2[stor2.length])) - 1 and uint256(stor2[stor2.length])) + 1
                        if not Mask(255, 1, (256 * not bool(stor2[stor2.length])) - 1 and uint256(stor2[stor2.length])):
                            s = sha3(sha3(2) + stor[sha3(mem[mem[64] len _1155 + 32])] - 1)
                            while sha3(sha3(2) + stor[sha3(mem[mem[64] len _1155 + 32])] - 1) + (stor[('name', 'stor2', 2) + stor[sha3(mem[mem[64] len _1155 + 32])] - 1].length + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            require stor2.length - 1 < stor2.length
                            mem[0] = sha3(2) + stor2.length - 1
                            mem[mem[64]] = uint256(stor[sha3(('name', 'stor2', 2) + stor2.length - 1)])
                            s = mem[64]
                            t = sha3(mem[0])
                            while mem[64] + stor[('name', 'stor2', 2) + stor2.length - 1].length > s + 32:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + stor[('name', 'stor2', 2) + stor2.length - 1].length] = 3
                            stor[sha3(mem[mem[64] len stor[('name', 'stor2', 2) + stor2.length - 1].length + 32])] = stor[_1704]
                            stor2.length--
                            if stor2.length <= stor2.length - 1:
                                _3392 = mem[64]
                                _3393 = mem[_13]
                                t = _13 + 32
                                u = mem[64]
                                s = mem[_13]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_13])] = mem[_13 + floor32(mem[_13]) + -(mem[_13] % 32) + 64 len mem[_13] % 32] or Mask(8 * -(mem[_13] % 32) + 32, -(8 * -(mem[_13] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_13])])
                                mem[_3393 + mem[64]] = 3
                                stor[sha3(mem[mem[64] len _3393 + _3392 + -mem[64] + 32])] = 0
                                mem[0] = Mask(32, 224, _1150)
                                mem[32] = 0
                                stor0[Mask(32, 224, _1150)] = 0
                                _3659 = mem[64]
                                mem[mem[64]] = 32
                                mem[mem[64] + 32] = mem[_13]
                                _3661 = mem[_13]
                                s = 0
                                while s < _3661:
                                    mem[s + _3659 + 64] = mem[s + _13 + 32]
                                    s = s + 32
                                    continue 
                                if not _3661 % 32:
                                    emit ContractUpdated(mem[mem[64] len _3661 + _3659 + -mem[64] + 64], _1150, stor0[Mask(32, 224, _1150)], 'removed');
                                else:
                                    mem[floor32(_3661) + _3659 + 64] = mem[floor32(_3661) + _3659 + -(_3661 % 32) + 96 len _3661 % 32]
                                    emit ContractUpdated(mem[mem[64] len floor32(_3661) + _3659 + -mem[64] + 96], _1150, stor0[Mask(32, 224, _1150)], 'removed');
                            else:
                                mem[0] = 2
                                s = stor2.length + sha3(mem[0]) - 1
                                while sha3(2) + stor2.length > s:
                                    stor[s] = 0
                                    if 31 < stor[s].length:
                                        mem[0] = s
                                        t = sha3(s)
                                        while sha3(s) + (stor[s].length + 31 / 32) > t:
                                            stor[t] = 0
                                            t = t + 1
                                            continue 
                                    s = s + 1
                                    continue 
                                _3764 = mem[64]
                                _3765 = mem[_13]
                                t = _13 + 32
                                u = mem[64]
                                s = mem[_13]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_13])] = mem[_13 + floor32(mem[_13]) + -(mem[_13] % 32) + 64 len mem[_13] % 32] or Mask(8 * -(mem[_13] % 32) + 32, -(8 * -(mem[_13] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_13])])
                                mem[_3765 + mem[64]] = 3
                                stor[sha3(mem[mem[64] len _3765 + _3764 + -mem[64] + 32])] = 0
                                mem[0] = Mask(32, 224, _1150)
                                mem[32] = 0
                                stor0[Mask(32, 224, _1150)] = 0
                                _3943 = mem[64]
                                mem[mem[64]] = 32
                                mem[mem[64] + 32] = mem[_13]
                                _3945 = mem[_13]
                                s = 0
                                while s < _3945:
                                    mem[s + _3943 + 64] = mem[s + _13 + 32]
                                    s = s + 32
                                    continue 
                                if not _3945 % 32:
                                    emit ContractUpdated(mem[mem[64] len _3945 + _3943 + -mem[64] + 64], _1150, stor0[Mask(32, 224, _1150)], 'removed');
                                else:
                                    mem[floor32(_3945) + _3943 + 64] = mem[floor32(_3945) + _3943 + -(_3945 % 32) + 96 len _3945 % 32]
                                    emit ContractUpdated(mem[mem[64] len floor32(_3945) + _3943 + -mem[64] + 96], _1150, stor0[Mask(32, 224, _1150)], 'removed');
                        else:
                            t = sha3(sha3(2) + stor[sha3(mem[mem[64] len _1155 + 32])] - 1)
                            s = sha3(sha3(2) + stor2.length - 1)
                            while sha3(sha3(2) + stor2.length - 1) + (stor[('name', 'stor2', 2) + stor2.length - 1].length + 31 / 32) > s:
                                stor[t] = stor[s]
                                t = t + 1
                                s = s + 1
                                continue 
                            s = sha3(sha3(2) + stor[sha3(mem[mem[64] len _1155 + 32])] - 1) + (stor[('name', 'stor2', 2) + stor2.length - 1].length + 31 / 32)
                            while sha3(sha3(2) + stor[sha3(mem[mem[64] len _1155 + 32])] - 1) + (stor[('name', 'stor2', 2) + stor[sha3(mem[mem[64] len _1155 + 32])] - 1].length + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            require stor2.length - 1 < stor2.length
                            mem[0] = sha3(2) + stor2.length - 1
                            mem[mem[64]] = uint256(stor[sha3(('name', 'stor2', 2) + stor2.length - 1)])
                            s = mem[64]
                            t = sha3(mem[0])
                            while mem[64] + stor[('name', 'stor2', 2) + stor2.length - 1].length > s + 32:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + stor[('name', 'stor2', 2) + stor2.length - 1].length] = 3
                            stor[sha3(mem[mem[64] len stor[('name', 'stor2', 2) + stor2.length - 1].length + 32])] = stor[_1704]
                            stor2.length--
                            if stor2.length <= stor2.length - 1:
                                _3769 = mem[_13]
                                t = _13 + 32
                                u = mem[64]
                                s = mem[_13]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_13])] = mem[_13 + floor32(mem[_13]) + -(mem[_13] % 32) + 64 len mem[_13] % 32] or Mask(8 * -(mem[_13] % 32) + 32, -(8 * -(mem[_13] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_13])])
                                mem[_3769 + mem[64]] = 3
                                stor[sha3(mem[mem[64] len _3769 + 32])] = 0
                                mem[0] = Mask(32, 224, _1150)
                                mem[32] = 0
                                stor0[Mask(32, 224, _1150)] = 0
                                _3954 = mem[64]
                                mem[mem[64]] = 32
                                mem[mem[64] + 32] = mem[_13]
                                _3956 = mem[_13]
                                s = 0
                                while s < _3956:
                                    mem[s + _3954 + 64] = mem[s + _13 + 32]
                                    s = s + 32
                                    continue 
                                if not _3956 % 32:
                                    emit ContractUpdated(mem[mem[64] len _3956 + _3954 + -mem[64] + 64], _1150, stor0[Mask(32, 224, _1150)], 'removed');
                                else:
                                    mem[floor32(_3956) + _3954 + 64] = mem[floor32(_3956) + _3954 + -(_3956 % 32) + 96 len _3956 % 32]
                                    emit ContractUpdated(mem[mem[64] len floor32(_3956) + _3954 + -mem[64] + 96], _1150, stor0[Mask(32, 224, _1150)], 'removed');
                            else:
                                mem[0] = 2
                                s = stor2.length + sha3(mem[0]) - 1
                                while sha3(2) + stor2.length > s:
                                    stor[s] = 0
                                    if 31 < stor[s].length:
                                        mem[0] = s
                                        t = sha3(s)
                                        while sha3(s) + (stor[s].length + 31 / 32) > t:
                                            stor[t] = 0
                                            t = t + 1
                                            continue 
                                    s = s + 1
                                    continue 
                                _4015 = mem[_13]
                                t = _13 + 32
                                u = mem[64]
                                s = mem[_13]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_13])] = mem[_13 + floor32(mem[_13]) + -(mem[_13] % 32) + 64 len mem[_13] % 32] or Mask(8 * -(mem[_13] % 32) + 32, -(8 * -(mem[_13] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_13])])
                                mem[_4015 + mem[64]] = 3
                                stor[sha3(mem[mem[64] len _4015 + 32])] = 0
                                mem[0] = Mask(32, 224, _1150)
                                mem[32] = 0
                                stor0[Mask(32, 224, _1150)] = 0
                                _4073 = mem[64]
                                mem[mem[64]] = 32
                                mem[mem[64] + 32] = mem[_13]
                                _4075 = mem[_13]
                                s = 0
                                while s < _4075:
                                    mem[s + _4073 + 64] = mem[s + _13 + 32]
                                    s = s + 32
                                    continue 
                                if not _4075 % 32:
                                    emit ContractUpdated(mem[mem[64] len _4075 + _4073 + -mem[64] + 64], _1150, stor0[Mask(32, 224, _1150)], 'removed');
                                else:
                                    mem[floor32(_4075) + _4073 + 64] = mem[floor32(_4075) + _4073 + -(_4075 % 32) + 96 len _4075 % 32]
                                    emit ContractUpdated(mem[mem[64] len floor32(_4075) + _4073 + -mem[64] + 96], _1150, stor0[Mask(32, 224, _1150)], 'removed');
            else:
                s = 0
                while s < idx + 1:
                    require s < mem[96]
                    require s < mem[_13]
                    mem[_13 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
                    s = s + 1
                    continue 
                _579 = mem[_13]
                t = _13 + 32
                u = mem[64]
                s = mem[_13]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_13])] = mem[_13 + floor32(mem[_13]) + -(mem[_13] % 32) + 64 len mem[_13] % 32] or Mask(8 * -(mem[_13] % 32) + 32, -(8 * -(mem[_13] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_13])])
                _1145 = sha3(mem[mem[64] len _579])
                _1153 = mem[_13]
                t = _13 + 32
                u = mem[64]
                s = mem[_13]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_13])] = 256^(-(mem[_13] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_13])] or mem[_13 + floor32(mem[_13]) + 32] and !(256^(-(mem[_13] % 32) + 32) - 1)
                mem[mem[64] + _1153] = 3
                _1699 = sha3(mem[mem[64] len _1153 + 32])
                if not stor[sha3(mem[mem[64] len _1153 + 32])]:
                    revert with 0, 'Function does not exist.'
                if stor[sha3(mem[mem[64] len _1153 + 32])] - 1 == stor2.length - 1:
                    stor2.length--
                    if stor2.length <= stor2.length - 1:
                        _1717 = mem[_13]
                        t = _13 + 32
                        u = mem[64]
                        s = mem[_13]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_13])] = mem[_13 + floor32(mem[_13]) + -(mem[_13] % 32) + 64 len mem[_13] % 32] or Mask(8 * -(mem[_13] % 32) + 32, -(8 * -(mem[_13] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_13])])
                        mem[_1717 + mem[64]] = 3
                        stor[sha3(mem[mem[64] len _1717 + 32])] = 0
                        mem[0] = Mask(32, 224, _1145)
                        mem[32] = 0
                        stor0[Mask(32, 224, _1145)] = 0
                        _2242 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = mem[_13]
                        _2244 = mem[_13]
                        s = 0
                        while s < _2244:
                            mem[s + _2242 + 64] = mem[s + _13 + 32]
                            s = s + 32
                            continue 
                        if not _2244 % 32:
                            emit ContractUpdated(mem[mem[64] len _2244 + _2242 + -mem[64] + 64], _1145, stor0[Mask(32, 224, _1145)], 'removed');
                        else:
                            mem[floor32(_2244) + _2242 + 64] = mem[floor32(_2244) + _2242 + -(_2244 % 32) + 96 len _2244 % 32]
                            emit ContractUpdated(mem[mem[64] len floor32(_2244) + _2242 + -mem[64] + 96], _1145, stor0[Mask(32, 224, _1145)], 'removed');
                    else:
                        mem[0] = 2
                        s = stor2.length + sha3(mem[0]) - 1
                        while sha3(2) + stor2.length > s:
                            stor[s] = 0
                            if 31 < stor[s].length:
                                mem[0] = s
                                t = sha3(s)
                                while sha3(s) + (stor[s].length + 31 / 32) > t:
                                    stor[t] = 0
                                    t = t + 1
                                    continue 
                            s = s + 1
                            continue 
                        _2262 = mem[64]
                        _2263 = mem[_13]
                        t = _13 + 32
                        u = mem[64]
                        s = mem[_13]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_13])] = mem[_13 + floor32(mem[_13]) + -(mem[_13] % 32) + 64 len mem[_13] % 32] or Mask(8 * -(mem[_13] % 32) + 32, -(8 * -(mem[_13] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_13])])
                        mem[_2263 + mem[64]] = 3
                        stor[sha3(mem[mem[64] len _2263 + _2262 + -mem[64] + 32])] = 0
                        mem[0] = Mask(32, 224, _1145)
                        mem[32] = 0
                        stor0[Mask(32, 224, _1145)] = 0
                        _2755 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = mem[_13]
                        _2757 = mem[_13]
                        s = 0
                        while s < _2757:
                            mem[s + _2755 + 64] = mem[s + _13 + 32]
                            s = s + 32
                            continue 
                        if not _2757 % 32:
                            emit ContractUpdated(mem[mem[64] len _2757 + _2755 + -mem[64] + 64], _1145, stor0[Mask(32, 224, _1145)], 'removed');
                        else:
                            mem[floor32(_2757) + _2755 + 64] = mem[floor32(_2757) + _2755 + -(_2757 % 32) + 96 len _2757 % 32]
                            emit ContractUpdated(mem[mem[64] len floor32(_2757) + _2755 + -mem[64] + 96], _1145, stor0[Mask(32, 224, _1145)], 'removed');
                else:
                    require stor2.length - 1 < stor2.length
                    require stor[sha3(mem[mem[64] len _1153 + 32])] - 1 < stor2.length
                    if 31 >= stor[('name', 'stor2', 2) + stor2.length - 1].length:
                        uint256(stor2[stor[sha3(mem[mem[64] len _1153 + 32])]]) = uint256(stor2[stor2.length])
                        s = sha3(sha3(2) + stor[sha3(mem[mem[64] len _1153 + 32])] - 1)
                        while sha3(sha3(2) + stor[sha3(mem[mem[64] len _1153 + 32])] - 1) + (stor[('name', 'stor2', 2) + stor[sha3(mem[mem[64] len _1153 + 32])] - 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        require stor2.length - 1 < stor2.length
                        mem[0] = sha3(2) + stor2.length - 1
                        mem[mem[64]] = uint256(stor[sha3(('name', 'stor2', 2) + stor2.length - 1)])
                        s = mem[64]
                        t = sha3(mem[0])
                        while mem[64] + stor[('name', 'stor2', 2) + stor2.length - 1].length > s + 32:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[mem[64] + stor[('name', 'stor2', 2) + stor2.length - 1].length] = 3
                        stor[sha3(mem[mem[64] len stor[('name', 'stor2', 2) + stor2.length - 1].length + 32])] = stor[_1699]
                        stor2.length--
                        if stor2.length <= stor2.length - 1:
                            _3387 = mem[_13]
                            t = _13 + 32
                            u = mem[64]
                            s = mem[_13]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_13])] = mem[_13 + floor32(mem[_13]) + -(mem[_13] % 32) + 64 len mem[_13] % 32] or Mask(8 * -(mem[_13] % 32) + 32, -(8 * -(mem[_13] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_13])])
                            mem[_3387 + mem[64]] = 3
                            stor[sha3(mem[mem[64] len _3387 + 32])] = 0
                            mem[0] = Mask(32, 224, _1145)
                            mem[32] = 0
                            stor0[Mask(32, 224, _1145)] = 0
                            _3647 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = mem[_13]
                            _3649 = mem[_13]
                            s = 0
                            while s < _3649:
                                mem[s + _3647 + 64] = mem[s + _13 + 32]
                                s = s + 32
                                continue 
                            if not _3649 % 32:
                                emit ContractUpdated(mem[mem[64] len _3649 + _3647 + -mem[64] + 64], _1145, stor0[Mask(32, 224, _1145)], 'removed');
                            else:
                                mem[floor32(_3649) + _3647 + 64] = mem[floor32(_3649) + _3647 + -(_3649 % 32) + 96 len _3649 % 32]
                                emit ContractUpdated(mem[mem[64] len floor32(_3649) + _3647 + -mem[64] + 96], _1145, stor0[Mask(32, 224, _1145)], 'removed');
                        else:
                            mem[0] = 2
                            s = stor2.length + sha3(mem[0]) - 1
                            while sha3(2) + stor2.length > s:
                                stor[s] = 0
                                if 31 < stor[s].length:
                                    mem[0] = s
                                    t = sha3(s)
                                    while sha3(s) + (stor[s].length + 31 / 32) > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                                s = s + 1
                                continue 
                            _3761 = mem[_13]
                            t = _13 + 32
                            u = mem[64]
                            s = mem[_13]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_13])] = mem[_13 + floor32(mem[_13]) + -(mem[_13] % 32) + 64 len mem[_13] % 32] or Mask(8 * -(mem[_13] % 32) + 32, -(8 * -(mem[_13] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_13])])
                            mem[_3761 + mem[64]] = 3
                            stor[sha3(mem[mem[64] len _3761 + 32])] = 0
                            mem[0] = Mask(32, 224, _1145)
                            mem[32] = 0
                            stor0[Mask(32, 224, _1145)] = 0
                            _3932 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = mem[_13]
                            _3934 = mem[_13]
                            s = 0
                            while s < _3934:
                                mem[s + _3932 + 64] = mem[s + _13 + 32]
                                s = s + 32
                                continue 
                            if not _3934 % 32:
                                emit ContractUpdated(mem[mem[64] len _3934 + _3932 + -mem[64] + 64], _1145, stor0[Mask(32, 224, _1145)], 'removed');
                            else:
                                mem[floor32(_3934) + _3932 + 64] = mem[floor32(_3934) + _3932 + -(_3934 % 32) + 96 len _3934 % 32]
                                emit ContractUpdated(mem[mem[64] len floor32(_3934) + _3932 + -mem[64] + 96], _1145, stor0[Mask(32, 224, _1145)], 'removed');
                    else:
                        uint256(stor2[stor[sha3(mem[mem[64] len _1153 + 32])]]) = Mask(255, 1, (256 * not bool(stor2[stor2.length])) - 1 and uint256(stor2[stor2.length])) + 1
                        if not Mask(255, 1, (256 * not bool(stor2[stor2.length])) - 1 and uint256(stor2[stor2.length])):
                            s = sha3(sha3(2) + stor[sha3(mem[mem[64] len _1153 + 32])] - 1)
                            while sha3(sha3(2) + stor[sha3(mem[mem[64] len _1153 + 32])] - 1) + (stor[('name', 'stor2', 2) + stor[sha3(mem[mem[64] len _1153 + 32])] - 1].length + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            require stor2.length - 1 < stor2.length
                            mem[0] = sha3(2) + stor2.length - 1
                            mem[mem[64]] = uint256(stor[sha3(('name', 'stor2', 2) + stor2.length - 1)])
                            s = mem[64]
                            t = sha3(mem[0])
                            while mem[64] + stor[('name', 'stor2', 2) + stor2.length - 1].length > s + 32:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + stor[('name', 'stor2', 2) + stor2.length - 1].length] = 3
                            stor[sha3(mem[mem[64] len stor[('name', 'stor2', 2) + stor2.length - 1].length + 32])] = stor[_1699]
                            stor2.length--
                            if stor2.length <= stor2.length - 1:
                                _3373 = mem[_13]
                                t = _13 + 32
                                u = mem[64]
                                s = mem[_13]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_13])] = mem[_13 + floor32(mem[_13]) + -(mem[_13] % 32) + 64 len mem[_13] % 32] or Mask(8 * -(mem[_13] % 32) + 32, -(8 * -(mem[_13] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_13])])
                                mem[_3373 + mem[64]] = 3
                                stor[sha3(mem[mem[64] len _3373 + 32])] = 0
                                mem[0] = Mask(32, 224, _1145)
                                mem[32] = 0
                                stor0[Mask(32, 224, _1145)] = 0
                                _3613 = mem[64]
                                mem[mem[64]] = 32
                                mem[mem[64] + 32] = mem[_13]
                                _3615 = mem[_13]
                                s = 0
                                while s < _3615:
                                    mem[s + _3613 + 64] = mem[s + _13 + 32]
                                    s = s + 32
                                    continue 
                                if not _3615 % 32:
                                    emit ContractUpdated(mem[mem[64] len _3615 + _3613 + -mem[64] + 64], _1145, stor0[Mask(32, 224, _1145)], 'removed');
                                else:
                                    mem[floor32(_3615) + _3613 + 64] = mem[floor32(_3615) + _3613 + -(_3615 % 32) + 96 len _3615 % 32]
                                    emit ContractUpdated(mem[mem[64] len floor32(_3615) + _3613 + -mem[64] + 96], _1145, stor0[Mask(32, 224, _1145)], 'removed');
                            else:
                                mem[0] = 2
                                s = stor2.length + sha3(mem[0]) - 1
                                while sha3(2) + stor2.length > s:
                                    stor[s] = 0
                                    if 31 < stor[s].length:
                                        mem[0] = s
                                        t = sha3(s)
                                        while sha3(s) + (stor[s].length + 31 / 32) > t:
                                            stor[t] = 0
                                            t = t + 1
                                            continue 
                                    s = s + 1
                                    continue 
                                _3751 = mem[_13]
                                t = _13 + 32
                                u = mem[64]
                                s = mem[_13]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_13])] = mem[_13 + floor32(mem[_13]) + -(mem[_13] % 32) + 64 len mem[_13] % 32] or Mask(8 * -(mem[_13] % 32) + 32, -(8 * -(mem[_13] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_13])])
                                mem[_3751 + mem[64]] = 3
                                stor[sha3(mem[mem[64] len _3751 + 32])] = 0
                                mem[0] = Mask(32, 224, _1145)
                                mem[32] = 0
                                stor0[Mask(32, 224, _1145)] = 0
                                _3909 = mem[64]
                                mem[mem[64]] = 32
                                mem[mem[64] + 32] = mem[_13]
                                _3911 = mem[_13]
                                s = 0
                                while s < _3911:
                                    mem[s + _3909 + 64] = mem[s + _13 + 32]
                                    s = s + 32
                                    continue 
                                if not _3911 % 32:
                                    emit ContractUpdated(mem[mem[64] len _3911 + _3909 + -mem[64] + 64], _1145, stor0[Mask(32, 224, _1145)], 'removed');
                                else:
                                    mem[floor32(_3911) + _3909 + 64] = mem[floor32(_3911) + _3909 + -(_3911 % 32) + 96 len _3911 % 32]
                                    emit ContractUpdated(mem[mem[64] len floor32(_3911) + _3909 + -mem[64] + 96], _1145, stor0[Mask(32, 224, _1145)], 'removed');
                        else:
                            t = sha3(sha3(2) + stor[sha3(mem[mem[64] len _1153 + 32])] - 1)
                            s = sha3(sha3(2) + stor2.length - 1)
                            while sha3(sha3(2) + stor2.length - 1) + (stor[('name', 'stor2', 2) + stor2.length - 1].length + 31 / 32) > s:
                                stor[t] = stor[s]
                                t = t + 1
                                s = s + 1
                                continue 
                            s = sha3(sha3(2) + stor[sha3(mem[mem[64] len _1153 + 32])] - 1) + (stor[('name', 'stor2', 2) + stor2.length - 1].length + 31 / 32)
                            while sha3(sha3(2) + stor[sha3(mem[mem[64] len _1153 + 32])] - 1) + (stor[('name', 'stor2', 2) + stor[sha3(mem[mem[64] len _1153 + 32])] - 1].length + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            require stor2.length - 1 < stor2.length
                            _2914 = mem[64]
                            mem[0] = sha3(2) + stor2.length - 1
                            mem[mem[64]] = uint256(stor[sha3(('name', 'stor2', 2) + stor2.length - 1)])
                            s = mem[64]
                            t = sha3(mem[0])
                            while _2914 + stor[('name', 'stor2', 2) + stor2.length - 1].length > s + 32:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_2914 + stor[('name', 'stor2', 2) + stor2.length - 1].length] = 3
                            stor[sha3(mem[mem[64] len _2914 + stor[('name', 'stor2', 2) + stor2.length - 1].length + -mem[64] + 32])] = stor[_1699]
                            stor2.length--
                            if stor2.length <= stor2.length - 1:
                                _3755 = mem[_13]
                                t = _13 + 32
                                u = mem[64]
                                s = mem[_13]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_13])] = mem[_13 + floor32(mem[_13]) + -(mem[_13] % 32) + 64 len mem[_13] % 32] or Mask(8 * -(mem[_13] % 32) + 32, -(8 * -(mem[_13] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_13])])
                                mem[_3755 + mem[64]] = 3
                                stor[sha3(mem[mem[64] len _3755 + 32])] = 0
                                mem[0] = Mask(32, 224, _1145)
                                mem[32] = 0
                                stor0[Mask(32, 224, _1145)] = 0
                                _3920 = mem[64]
                                mem[mem[64]] = 32
                                mem[mem[64] + 32] = mem[_13]
                                _3922 = mem[_13]
                                s = 0
                                while s < _3922:
                                    mem[s + _3920 + 64] = mem[s + _13 + 32]
                                    s = s + 32
                                    continue 
                                if not _3922 % 32:
                                    emit ContractUpdated(mem[mem[64] len _3922 + _3920 + -mem[64] + 64], _1145, stor0[Mask(32, 224, _1145)], 'removed');
                                else:
                                    mem[floor32(_3922) + _3920 + 64] = mem[floor32(_3922) + _3920 + -(_3922 % 32) + 96 len _3922 % 32]
                                    emit ContractUpdated(mem[mem[64] len floor32(_3922) + _3920 + -mem[64] + 96], _1145, stor0[Mask(32, 224, _1145)], 'removed');
                            else:
                                mem[0] = 2
                                s = stor2.length + sha3(mem[0]) - 1
                                while sha3(2) + stor2.length > s:
                                    stor[s] = 0
                                    if 31 < stor[s].length:
                                        mem[0] = s
                                        t = sha3(s)
                                        while sha3(s) + (stor[s].length + 31 / 32) > t:
                                            stor[t] = 0
                                            t = t + 1
                                            continue 
                                    s = s + 1
                                    continue 
                                _4006 = mem[64]
                                _4007 = mem[_13]
                                t = _13 + 32
                                u = mem[64]
                                s = mem[_13]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_13])] = mem[_13 + floor32(mem[_13]) + -(mem[_13] % 32) + 64 len mem[_13] % 32] or Mask(8 * -(mem[_13] % 32) + 32, -(8 * -(mem[_13] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_13])])
                                mem[_4007 + mem[64]] = 3
                                stor[sha3(mem[mem[64] len _4007 + _4006 + -mem[64] + 32])] = 0
                                mem[0] = Mask(32, 224, _1145)
                                mem[32] = 0
                                stor0[Mask(32, 224, _1145)] = 0
                                _4060 = mem[64]
                                mem[mem[64]] = 32
                                mem[mem[64] + 32] = mem[_13]
                                _4062 = mem[_13]
                                s = 0
                                while s < _4062:
                                    mem[s + _4060 + 64] = mem[s + _13 + 32]
                                    s = s + 32
                                    continue 
                                if not _4062 % 32:
                                    emit ContractUpdated(mem[mem[64] len _4062 + _4060 + -mem[64] + 64], _1145, stor0[Mask(32, 224, _1145)], 'removed');
                                else:
                                    mem[floor32(_4062) + _4060 + 64] = mem[floor32(_4062) + _4060 + -(_4062 % 32) + 96 len _4062 % 32]
                                    emit ContractUpdated(mem[mem[64] len floor32(_4062) + _4060 + -mem[64] + 96], _1145, stor0[Mask(32, 224, _1145)], 'removed');
        idx = idx + 1
        continue 
}



}
