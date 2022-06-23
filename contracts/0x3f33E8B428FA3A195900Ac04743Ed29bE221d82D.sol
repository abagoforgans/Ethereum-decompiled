contract main {




// =====================  Runtime code  =====================


#
#  - distributeFeeFromSignatures(uint256 arg1)
#  - sub_767e15c1(?)
#
const sub_7587f576(?) = sha3('reward-transferring-from-foreign')

const getFeeManagerMode = Mask(32, 224, sha3(Mask(88, 0, 'manages-one-direction'), Mask(80, 88, Mask(80, 88, 'manages-one-direction') >> 88, 0) >> 88))


mapping of uint256 homeFee;
mapping of address erc677token;

function erc677token() {
    return erc677token[Mask(88, 0, 'erc677token', 0)]
}

function getHomeFee() {
    return homeFee['homeFee', 0 % 72057594037927936]
}

function rewardableValidatorContract() {
    return erc677token['validatorContract']
}

function getForeignFee() {
    return homeFee['foreignFee']
}

function _fallback() payable {
    revert
}

function setHomeFee(uint256 arg1) {
    homeFee['homeFee', 0 % 72057594037927936] = arg1
    emit HomeFeeUpdated(arg1);
}

function setForeignFee(uint256 arg1) {
    homeFee[Mask(80, 0, 'foreignFee', 0)] = arg1
    emit ForeignFeeUpdated(arg1);
}

function random(uint256 arg1) {
    require 1 <= block.number
    require arg1
    return (block.hash(block.number - 1) % arg1)
}

function calculateFee(uint256 arg1, bool arg2, bytes32 arg3) {
    if arg3 == sha3(uint64('home-fee', 0)):
        if not arg2:
            if not arg1:
                return 0
            if homeFee['homeFee', 0 % 72057594037927936] * arg1 / arg1 == homeFee['homeFee', 0 % 72057594037927936]:
                return (homeFee['homeFee', 0 % 72057594037927936] * arg1 / 10^18)
        else:
            if homeFee['homeFee', 0 % 72057594037927936] <= 10^18:
                if not arg1:
                    if -homeFee['homeFee', 0 % 72057594037927936] + 10^18:
                        return (0 / -homeFee['homeFee', 0 % 72057594037927936] + 10^18)
                else:
                    if homeFee['homeFee', 0 % 72057594037927936] * arg1 / arg1 == homeFee['homeFee', 0 % 72057594037927936]:
                        if -homeFee['homeFee', 0 % 72057594037927936] + 10^18:
                            return (homeFee['homeFee', 0 % 72057594037927936] * arg1 / -homeFee['homeFee', 0 % 72057594037927936] + 10^18)
    else:
        if not arg2:
            if not arg1:
                return 0
            if homeFee['foreignFee'] * arg1 / arg1 == homeFee['foreignFee']:
                return (homeFee['foreignFee'] * arg1 / 10^18)
        else:
            if homeFee['foreignFee'] <= 10^18:
                if not arg1:
                    if -homeFee['foreignFee'] + 10^18:
                        return (0 / -homeFee['foreignFee'] + 10^18)
                else:
                    if homeFee['foreignFee'] * arg1 / arg1 == homeFee['foreignFee']:
                        if -homeFee['foreignFee'] + 10^18:
                            return (homeFee['foreignFee'] * arg1 / -homeFee['foreignFee'] + 10^18)
    revert
}

function distributeFeeFromAffirmation(uint256 arg1) {
    mem[128] = 'reward-transferring-from-foreign'
    mem[96] = 32
    mem[192] = 'validatorContract'
    mem[160] = 17
    mem[0] = sha3('validatorContract')
    mem[32] = 2
    mem[209] = 0x5890ef7900000000000000000000000000000000000000000000000000000000
    require ext_code.size(erc677token['validatorContract'])
    call erc677token['validatorContract'].0x5890ef79 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[209 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 209
    require return_data.size >= 32
    _698 = mem[209]
    require mem[209] <= 4294967296
    require mem[209] + 32 <= return_data.size
    require mem[mem[209] + 209] <= 4294967296 and mem[209] + (32 * mem[mem[209] + 209]) + 32 <= return_data.size
    _702 = mem[mem[209] + 209]
    require mem[mem[209] + 209]
    _705 = mem[mem[209] + 209]
    if not arg1 / mem[mem[209] + 209]:
        require 0 <= arg1
        if arg1 <= 0:
            _1341 = mem[mem[209] + 209]
            s = 0
            s = 0
            idx = 0
            while idx < _1341:
                if arg1 <= 0:
                    require idx < mem[_698 + 209]
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x81b91174 with:
                         gas gas_remaining wei
                        args address(mem[(32 * idx) + _698 + 241])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _1408 = mem[64]
                    mem[mem[64] + 32] = 'reward-transferring-from-foreign'
                    _1409 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    _1411 = mem[_1409]
                    t = _1409 + 32
                    u = _1408 + 64
                    s = mem[_1409]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_1408 + floor32(mem[_1409]) + 64] = mem[_1408 + floor32(mem[_1409]) + 64] and 256^(-(mem[_1409] % 32) + 32) - 1 or mem[_1409 + floor32(mem[_1409]) + 32] and !(256^(-(mem[_1409] % 32) + 32) - 1)
                    if sha3('reward-transferring-from-foreign') == sha3(mem[_1408 + 64 len _1411]):
                        call address(ext_call.return_data[0]) with:
                           value arg1 / _702 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            mem[_1408 + 64 len 33] = code.data[3820 len 33]
                            mem[_1408 + 97] = address(ext_call.return_data[0])
                            create contract with ('div', ('param', 'arg1'), ('var', '_702')) wei
                                            code: code.data[3820 len 33], address(ext_call.return_data[0])
                            if not create.new_address:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[_1408 + 96] = 'erc677token'
                        mem[_1408 + 64] = 11
                        mem[64] = _1408 + 107
                        t = _1408 + 96
                        u = _1408 + 107
                        s = 11
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1408 + 107] = mem[_1408 + 118 len 21] or Mask(88, 168, mem[_1408 + 96])
                        mem[0] = sha3(mem[_1408 + 107 len 11])
                        mem[32] = 2
                        mem[_1408 + 107] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[_1408 + 111] = address(ext_call.return_data[0])
                        mem[_1408 + 143] = arg1 / _702
                        require ext_code.size(erc677token[mem[0]])
                        call erc677token[mem[0]].0x40c10f19 with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg1 / _702
                        mem[_1408 + 107] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    s = ext_call.return_data[0]
                    s = arg1 / _702
                    idx = idx + 1
                    continue 
                if idx != 0:
                    require idx < mem[_698 + 209]
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x81b91174 with:
                         gas gas_remaining wei
                        args address(mem[(32 * idx) + _698 + 241])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _1429 = mem[64]
                    mem[mem[64] + 32] = 'reward-transferring-from-foreign'
                    _1430 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    _1432 = mem[_1430]
                    t = _1430 + 32
                    u = _1429 + 64
                    s = mem[_1430]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_1429 + floor32(mem[_1430]) + 64] = mem[_1429 + floor32(mem[_1430]) + 64] and 256^(-(mem[_1430] % 32) + 32) - 1 or mem[_1430 + floor32(mem[_1430]) + 32] and !(256^(-(mem[_1430] % 32) + 32) - 1)
                    if sha3('reward-transferring-from-foreign') == sha3(mem[_1429 + 64 len _1432]):
                        call address(ext_call.return_data[0]) with:
                           value arg1 / _702 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            mem[_1429 + 64 len 33] = code.data[3820 len 33]
                            mem[_1429 + 97] = address(ext_call.return_data[0])
                            create contract with ('div', ('param', 'arg1'), ('var', '_702')) wei
                                            code: code.data[3820 len 33], address(ext_call.return_data[0])
                            if not create.new_address:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[_1429 + 96] = 'erc677token'
                        mem[_1429 + 64] = 11
                        mem[64] = _1429 + 107
                        t = _1429 + 96
                        u = _1429 + 107
                        s = 11
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1429 + 107] = mem[_1429 + 118 len 21] or Mask(88, 168, mem[_1429 + 96])
                        mem[0] = sha3(mem[_1429 + 107 len 11])
                        mem[32] = 2
                        mem[_1429 + 107] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[_1429 + 111] = address(ext_call.return_data[0])
                        mem[_1429 + 143] = arg1 / _702
                        require ext_code.size(erc677token[mem[0]])
                        call erc677token[mem[0]].0x40c10f19 with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg1 / _702
                        mem[_1429 + 107] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    s = ext_call.return_data[0]
                    s = arg1 / _702
                    idx = idx + 1
                    continue 
                require arg1 + (arg1 / _702) >= arg1 / _702
                require idx < mem[_698 + 209]
                require ext_code.size(erc677token['validatorContract'])
                call erc677token['validatorContract'].0x81b91174 with:
                     gas gas_remaining wei
                    args address(mem[(32 * idx) + _698 + 241])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1547 = mem[64]
                mem[mem[64] + 32] = 'reward-transferring-from-foreign'
                _1548 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                _1550 = mem[_1548]
                t = _1548 + 32
                u = _1547 + 64
                s = mem[_1548]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_1547 + floor32(mem[_1548]) + 64] = mem[_1547 + floor32(mem[_1548]) + 64] and 256^(-(mem[_1548] % 32) + 32) - 1 or mem[_1548 + floor32(mem[_1548]) + 32] and !(256^(-(mem[_1548] % 32) + 32) - 1)
                if sha3('reward-transferring-from-foreign') == sha3(mem[_1547 + 64 len _1550]):
                    call address(ext_call.return_data[0]) with:
                       value arg1 + (arg1 / _702) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        mem[_1547 + 64 len 33] = code.data[3820 len 33]
                        mem[_1547 + 97] = address(ext_call.return_data[0])
                        create contract with ('add', ('param', 'arg1'), ('div', ('param', 'arg1'), ('var', '_702'))) wei
                                        code: code.data[3820 len 33], address(ext_call.return_data[0])
                        if not create.new_address:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[_1547 + 96] = 'erc677token'
                    mem[_1547 + 64] = 11
                    mem[64] = _1547 + 107
                    t = _1547 + 96
                    u = _1547 + 107
                    s = 11
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_1547 + 107] = mem[_1547 + 118 len 21] or Mask(88, 168, mem[_1547 + 96])
                    mem[0] = sha3(mem[_1547 + 107 len 11])
                    mem[32] = 2
                    mem[_1547 + 107] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[_1547 + 111] = address(ext_call.return_data[0])
                    mem[_1547 + 143] = arg1 + (arg1 / _702)
                    require ext_code.size(erc677token[mem[0]])
                    call erc677token[mem[0]].0x40c10f19 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg1 + (arg1 / _702)
                    mem[_1547 + 107] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                s = ext_call.return_data[0]
                s = arg1 + (arg1 / _702)
                idx = idx + 1
                continue 
        else:
            _707 = mem[mem[209] + 209]
            require 1 <= block.number
            require mem[mem[209] + 209]
            _1342 = mem[mem[209] + 209]
            s = 0
            s = 0
            idx = 0
            while idx < _1342:
                if arg1 <= 0:
                    require idx < mem[_698 + 209]
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x81b91174 with:
                         gas gas_remaining wei
                        args address(mem[(32 * idx) + _698 + 241])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _1413 = mem[64]
                    mem[mem[64] + 32] = 'reward-transferring-from-foreign'
                    _1414 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    _1416 = mem[_1414]
                    t = _1414 + 32
                    u = _1413 + 64
                    s = mem[_1414]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_1413 + floor32(mem[_1414]) + 64] = mem[_1413 + floor32(mem[_1414]) + 64] and 256^(-(mem[_1414] % 32) + 32) - 1 or mem[_1414 + floor32(mem[_1414]) + 32] and !(256^(-(mem[_1414] % 32) + 32) - 1)
                    if sha3('reward-transferring-from-foreign') == sha3(mem[_1413 + 64 len _1416]):
                        call address(ext_call.return_data[0]) with:
                           value arg1 / _702 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            mem[_1413 + 64 len 33] = code.data[3820 len 33]
                            mem[_1413 + 97] = address(ext_call.return_data[0])
                            create contract with ('div', ('param', 'arg1'), ('var', '_702')) wei
                                            code: code.data[3820 len 33], address(ext_call.return_data[0])
                            if not create.new_address:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[_1413 + 96] = 'erc677token'
                        mem[_1413 + 64] = 11
                        mem[64] = _1413 + 107
                        t = _1413 + 96
                        u = _1413 + 107
                        s = 11
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1413 + 107] = mem[_1413 + 118 len 21] or Mask(88, 168, mem[_1413 + 96])
                        mem[0] = sha3(mem[_1413 + 107 len 11])
                        mem[32] = 2
                        mem[_1413 + 107] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[_1413 + 111] = address(ext_call.return_data[0])
                        mem[_1413 + 143] = arg1 / _702
                        require ext_code.size(erc677token[mem[0]])
                        call erc677token[mem[0]].0x40c10f19 with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg1 / _702
                        mem[_1413 + 107] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    s = ext_call.return_data[0]
                    s = arg1 / _702
                    idx = idx + 1
                    continue 
                if block.hash(block.number - 1) % _707 != idx:
                    require idx < mem[_698 + 209]
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x81b91174 with:
                         gas gas_remaining wei
                        args address(mem[(32 * idx) + _698 + 241])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _1434 = mem[64]
                    mem[mem[64] + 32] = 'reward-transferring-from-foreign'
                    _1435 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    _1437 = mem[_1435]
                    t = _1435 + 32
                    u = _1434 + 64
                    s = mem[_1435]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_1434 + floor32(mem[_1435]) + 64] = mem[_1434 + floor32(mem[_1435]) + 64] and 256^(-(mem[_1435] % 32) + 32) - 1 or mem[_1435 + floor32(mem[_1435]) + 32] and !(256^(-(mem[_1435] % 32) + 32) - 1)
                    if sha3('reward-transferring-from-foreign') == sha3(mem[_1434 + 64 len _1437]):
                        call address(ext_call.return_data[0]) with:
                           value arg1 / _702 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            mem[_1434 + 64 len 33] = code.data[3820 len 33]
                            mem[_1434 + 97] = address(ext_call.return_data[0])
                            create contract with ('div', ('param', 'arg1'), ('var', '_702')) wei
                                            code: code.data[3820 len 33], address(ext_call.return_data[0])
                            if not create.new_address:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[_1434 + 96] = 'erc677token'
                        mem[_1434 + 64] = 11
                        mem[64] = _1434 + 107
                        t = _1434 + 96
                        u = _1434 + 107
                        s = 11
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1434 + 107] = mem[_1434 + 118 len 21] or Mask(88, 168, mem[_1434 + 96])
                        mem[0] = sha3(mem[_1434 + 107 len 11])
                        mem[32] = 2
                        mem[_1434 + 107] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[_1434 + 111] = address(ext_call.return_data[0])
                        mem[_1434 + 143] = arg1 / _702
                        require ext_code.size(erc677token[mem[0]])
                        call erc677token[mem[0]].0x40c10f19 with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg1 / _702
                        mem[_1434 + 107] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    s = ext_call.return_data[0]
                    s = arg1 / _702
                    idx = idx + 1
                    continue 
                require arg1 + (arg1 / _702) >= arg1 / _702
                require idx < mem[_698 + 209]
                require ext_code.size(erc677token['validatorContract'])
                call erc677token['validatorContract'].0x81b91174 with:
                     gas gas_remaining wei
                    args address(mem[(32 * idx) + _698 + 241])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1556 = mem[64]
                mem[mem[64] + 32] = 'reward-transferring-from-foreign'
                _1557 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                _1559 = mem[_1557]
                t = _1557 + 32
                u = _1556 + 64
                s = mem[_1557]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_1556 + floor32(mem[_1557]) + 64] = mem[_1556 + floor32(mem[_1557]) + 64] and 256^(-(mem[_1557] % 32) + 32) - 1 or mem[_1557 + floor32(mem[_1557]) + 32] and !(256^(-(mem[_1557] % 32) + 32) - 1)
                if sha3('reward-transferring-from-foreign') == sha3(mem[_1556 + 64 len _1559]):
                    call address(ext_call.return_data[0]) with:
                       value arg1 + (arg1 / _702) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        mem[_1556 + 64 len 33] = code.data[3820 len 33]
                        mem[_1556 + 97] = address(ext_call.return_data[0])
                        create contract with ('add', ('param', 'arg1'), ('div', ('param', 'arg1'), ('var', '_702'))) wei
                                        code: code.data[3820 len 33], address(ext_call.return_data[0])
                        if not create.new_address:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[_1556 + 96] = 'erc677token'
                    mem[_1556 + 64] = 11
                    mem[64] = _1556 + 107
                    t = _1556 + 96
                    u = _1556 + 107
                    s = 11
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_1556 + 107] = mem[_1556 + 118 len 21] or Mask(88, 168, mem[_1556 + 96])
                    mem[0] = sha3(mem[_1556 + 107 len 11])
                    mem[32] = 2
                    mem[_1556 + 107] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[_1556 + 111] = address(ext_call.return_data[0])
                    mem[_1556 + 143] = arg1 + (arg1 / _702)
                    require ext_code.size(erc677token[mem[0]])
                    call erc677token[mem[0]].0x40c10f19 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg1 + (arg1 / _702)
                    mem[_1556 + 107] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                s = ext_call.return_data[0]
                s = arg1 + (arg1 / _702)
                idx = idx + 1
                continue 
    else:
        require mem[mem[209] + 209] * arg1 / mem[mem[209] + 209] / arg1 / mem[mem[209] + 209] == mem[mem[209] + 209]
        require mem[mem[209] + 209] * arg1 / mem[mem[209] + 209] <= arg1
        if arg1 - (mem[mem[209] + 209] * arg1 / mem[mem[209] + 209]) <= 0:
            _1339 = mem[mem[209] + 209]
            s = 0
            s = 0
            idx = 0
            while idx < _1339:
                if arg1 - (_705 * arg1 / _702) <= 0:
                    require idx < mem[_698 + 209]
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x81b91174 with:
                         gas gas_remaining wei
                        args address(mem[(32 * idx) + _698 + 241])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _1398 = mem[64]
                    mem[mem[64] + 32] = 'reward-transferring-from-foreign'
                    _1399 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    _1401 = mem[_1399]
                    t = _1399 + 32
                    u = _1398 + 64
                    s = mem[_1399]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_1398 + floor32(mem[_1399]) + 64] = mem[_1398 + floor32(mem[_1399]) + 64] and 256^(-(mem[_1399] % 32) + 32) - 1 or mem[_1399 + floor32(mem[_1399]) + 32] and !(256^(-(mem[_1399] % 32) + 32) - 1)
                    if sha3('reward-transferring-from-foreign') == sha3(mem[_1398 + 64 len _1401]):
                        call address(ext_call.return_data[0]) with:
                           value arg1 / _702 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            mem[_1398 + 64 len 33] = code.data[3820 len 33]
                            mem[_1398 + 97] = address(ext_call.return_data[0])
                            create contract with ('div', ('param', 'arg1'), ('var', '_702')) wei
                                            code: code.data[3820 len 33], address(ext_call.return_data[0])
                            if not create.new_address:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[_1398 + 96] = 'erc677token'
                        mem[_1398 + 64] = 11
                        mem[64] = _1398 + 107
                        t = _1398 + 96
                        u = _1398 + 107
                        s = 11
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1398 + 107] = mem[_1398 + 118 len 21] or Mask(88, 168, mem[_1398 + 96])
                        mem[0] = sha3(mem[_1398 + 107 len 11])
                        mem[32] = 2
                        mem[_1398 + 107] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[_1398 + 111] = address(ext_call.return_data[0])
                        mem[_1398 + 143] = arg1 / _702
                        require ext_code.size(erc677token[mem[0]])
                        call erc677token[mem[0]].0x40c10f19 with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg1 / _702
                        mem[_1398 + 107] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    s = ext_call.return_data[0]
                    s = arg1 / _702
                    idx = idx + 1
                    continue 
                if idx != 0:
                    require idx < mem[_698 + 209]
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x81b91174 with:
                         gas gas_remaining wei
                        args address(mem[(32 * idx) + _698 + 241])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _1419 = mem[64]
                    mem[mem[64] + 32] = 'reward-transferring-from-foreign'
                    _1420 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    _1422 = mem[_1420]
                    t = _1420 + 32
                    u = _1419 + 64
                    s = mem[_1420]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_1419 + floor32(mem[_1420]) + 64] = mem[_1419 + floor32(mem[_1420]) + 64] and 256^(-(mem[_1420] % 32) + 32) - 1 or mem[_1420 + floor32(mem[_1420]) + 32] and !(256^(-(mem[_1420] % 32) + 32) - 1)
                    if sha3('reward-transferring-from-foreign') == sha3(mem[_1419 + 64 len _1422]):
                        call address(ext_call.return_data[0]) with:
                           value arg1 / _702 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            mem[_1419 + 64 len 33] = code.data[3820 len 33]
                            mem[_1419 + 97] = address(ext_call.return_data[0])
                            create contract with ('div', ('param', 'arg1'), ('var', '_702')) wei
                                            code: code.data[3820 len 33], address(ext_call.return_data[0])
                            if not create.new_address:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[_1419 + 96] = 'erc677token'
                        mem[_1419 + 64] = 11
                        mem[64] = _1419 + 107
                        t = _1419 + 96
                        u = _1419 + 107
                        s = 11
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1419 + 107] = mem[_1419 + 118 len 21] or Mask(88, 168, mem[_1419 + 96])
                        mem[0] = sha3(mem[_1419 + 107 len 11])
                        mem[32] = 2
                        mem[_1419 + 107] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[_1419 + 111] = address(ext_call.return_data[0])
                        mem[_1419 + 143] = arg1 / _702
                        require ext_code.size(erc677token[mem[0]])
                        call erc677token[mem[0]].0x40c10f19 with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg1 / _702
                        mem[_1419 + 107] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    s = ext_call.return_data[0]
                    s = arg1 / _702
                    idx = idx + 1
                    continue 
                require arg1 - (_705 * arg1 / _702) + (arg1 / _702) >= arg1 / _702
                require idx < mem[_698 + 209]
                require ext_code.size(erc677token['validatorContract'])
                call erc677token['validatorContract'].0x81b91174 with:
                     gas gas_remaining wei
                    args address(mem[(32 * idx) + _698 + 241])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1529 = mem[64]
                mem[mem[64] + 32] = 'reward-transferring-from-foreign'
                _1530 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                _1532 = mem[_1530]
                t = _1530 + 32
                u = _1529 + 64
                s = mem[_1530]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_1529 + floor32(mem[_1530]) + 64] = mem[_1529 + floor32(mem[_1530]) + 64] and 256^(-(mem[_1530] % 32) + 32) - 1 or mem[_1530 + floor32(mem[_1530]) + 32] and !(256^(-(mem[_1530] % 32) + 32) - 1)
                if sha3('reward-transferring-from-foreign') == sha3(mem[_1529 + 64 len _1532]):
                    call address(ext_call.return_data[0]) with:
                       value arg1 - (_705 * arg1 / _702) + (arg1 / _702) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        mem[_1529 + 64 len 33] = code.data[3820 len 33]
                        mem[_1529 + 97] = address(ext_call.return_data[0])
                        create contract with ('add', ('param', 'arg1'), ('mul', -1, ('var', '_705'), ('div', ('param', 'arg1'), ('var', '_702'))), ('div', ('param', 'arg1'), ('var', '_702'))) wei
                                        code: code.data[3820 len 33], address(ext_call.return_data[0])
                        if not create.new_address:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[_1529 + 96] = 'erc677token'
                    mem[_1529 + 64] = 11
                    mem[64] = _1529 + 107
                    t = _1529 + 96
                    u = _1529 + 107
                    s = 11
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_1529 + 107] = mem[_1529 + 118 len 21] or Mask(88, 168, mem[_1529 + 96])
                    mem[0] = sha3(mem[_1529 + 107 len 11])
                    mem[32] = 2
                    mem[_1529 + 107] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[_1529 + 111] = address(ext_call.return_data[0])
                    mem[_1529 + 143] = arg1 - (_705 * arg1 / _702) + (arg1 / _702)
                    require ext_code.size(erc677token[mem[0]])
                    call erc677token[mem[0]].0x40c10f19 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg1 - (_705 * arg1 / _702) + (arg1 / _702)
                    mem[_1529 + 107] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                s = ext_call.return_data[0]
                s = arg1 - (_705 * arg1 / _702) + (arg1 / _702)
                idx = idx + 1
                continue 
        else:
            _709 = mem[mem[209] + 209]
            require 1 <= block.number
            require mem[mem[209] + 209]
            _1340 = mem[mem[209] + 209]
            s = 0
            s = 0
            idx = 0
            while idx < _1340:
                if arg1 - (_705 * arg1 / _702) <= 0:
                    require idx < mem[_698 + 209]
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x81b91174 with:
                         gas gas_remaining wei
                        args address(mem[(32 * idx) + _698 + 241])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _1403 = mem[64]
                    mem[mem[64] + 32] = 'reward-transferring-from-foreign'
                    _1404 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    _1406 = mem[_1404]
                    t = _1404 + 32
                    u = _1403 + 64
                    s = mem[_1404]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_1403 + floor32(mem[_1404]) + 64] = mem[_1403 + floor32(mem[_1404]) + 64] and 256^(-(mem[_1404] % 32) + 32) - 1 or mem[_1404 + floor32(mem[_1404]) + 32] and !(256^(-(mem[_1404] % 32) + 32) - 1)
                    if sha3('reward-transferring-from-foreign') == sha3(mem[_1403 + 64 len _1406]):
                        call address(ext_call.return_data[0]) with:
                           value arg1 / _702 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            mem[_1403 + 64 len 33] = code.data[3820 len 33]
                            mem[_1403 + 97] = address(ext_call.return_data[0])
                            create contract with ('div', ('param', 'arg1'), ('var', '_702')) wei
                                            code: code.data[3820 len 33], address(ext_call.return_data[0])
                            if not create.new_address:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[_1403 + 96] = 'erc677token'
                        mem[_1403 + 64] = 11
                        mem[64] = _1403 + 107
                        t = _1403 + 96
                        u = _1403 + 107
                        s = 11
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1403 + 107] = mem[_1403 + 118 len 21] or Mask(88, 168, mem[_1403 + 96])
                        mem[0] = sha3(mem[_1403 + 107 len 11])
                        mem[32] = 2
                        mem[_1403 + 107] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[_1403 + 111] = address(ext_call.return_data[0])
                        mem[_1403 + 143] = arg1 / _702
                        require ext_code.size(erc677token[mem[0]])
                        call erc677token[mem[0]].0x40c10f19 with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg1 / _702
                        mem[_1403 + 107] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    s = ext_call.return_data[0]
                    s = arg1 / _702
                    idx = idx + 1
                    continue 
                if block.hash(block.number - 1) % _709 != idx:
                    require idx < mem[_698 + 209]
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x81b91174 with:
                         gas gas_remaining wei
                        args address(mem[(32 * idx) + _698 + 241])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _1424 = mem[64]
                    mem[mem[64] + 32] = 'reward-transferring-from-foreign'
                    _1425 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    _1427 = mem[_1425]
                    t = _1425 + 32
                    u = _1424 + 64
                    s = mem[_1425]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_1424 + floor32(mem[_1425]) + 64] = mem[_1424 + floor32(mem[_1425]) + 64] and 256^(-(mem[_1425] % 32) + 32) - 1 or mem[_1425 + floor32(mem[_1425]) + 32] and !(256^(-(mem[_1425] % 32) + 32) - 1)
                    if sha3('reward-transferring-from-foreign') == sha3(mem[_1424 + 64 len _1427]):
                        call address(ext_call.return_data[0]) with:
                           value arg1 / _702 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            mem[_1424 + 64 len 33] = code.data[3820 len 33]
                            mem[_1424 + 97] = address(ext_call.return_data[0])
                            create contract with ('div', ('param', 'arg1'), ('var', '_702')) wei
                                            code: code.data[3820 len 33], address(ext_call.return_data[0])
                            if not create.new_address:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[_1424 + 96] = 'erc677token'
                        mem[_1424 + 64] = 11
                        mem[64] = _1424 + 107
                        t = _1424 + 96
                        u = _1424 + 107
                        s = 11
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1424 + 107] = mem[_1424 + 118 len 21] or Mask(88, 168, mem[_1424 + 96])
                        mem[0] = sha3(mem[_1424 + 107 len 11])
                        mem[32] = 2
                        mem[_1424 + 107] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[_1424 + 111] = address(ext_call.return_data[0])
                        mem[_1424 + 143] = arg1 / _702
                        require ext_code.size(erc677token[mem[0]])
                        call erc677token[mem[0]].0x40c10f19 with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg1 / _702
                        mem[_1424 + 107] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    s = ext_call.return_data[0]
                    s = arg1 / _702
                    idx = idx + 1
                    continue 
                require arg1 - (_705 * arg1 / _702) + (arg1 / _702) >= arg1 / _702
                require idx < mem[_698 + 209]
                require ext_code.size(erc677token['validatorContract'])
                call erc677token['validatorContract'].0x81b91174 with:
                     gas gas_remaining wei
                    args address(mem[(32 * idx) + _698 + 241])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1538 = mem[64]
                mem[mem[64] + 32] = 'reward-transferring-from-foreign'
                _1539 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                _1541 = mem[_1539]
                t = _1539 + 32
                u = _1538 + 64
                s = mem[_1539]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_1538 + floor32(mem[_1539]) + 64] = mem[_1538 + floor32(mem[_1539]) + 64] and 256^(-(mem[_1539] % 32) + 32) - 1 or mem[_1539 + floor32(mem[_1539]) + 32] and !(256^(-(mem[_1539] % 32) + 32) - 1)
                if sha3('reward-transferring-from-foreign') == sha3(mem[_1538 + 64 len _1541]):
                    call address(ext_call.return_data[0]) with:
                       value arg1 - (_705 * arg1 / _702) + (arg1 / _702) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        mem[_1538 + 64 len 33] = code.data[3820 len 33]
                        mem[_1538 + 97] = address(ext_call.return_data[0])
                        create contract with ('add', ('param', 'arg1'), ('mul', -1, ('var', '_705'), ('div', ('param', 'arg1'), ('var', '_702'))), ('div', ('param', 'arg1'), ('var', '_702'))) wei
                                        code: code.data[3820 len 33], address(ext_call.return_data[0])
                        if not create.new_address:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[_1538 + 96] = 'erc677token'
                    mem[_1538 + 64] = 11
                    mem[64] = _1538 + 107
                    t = _1538 + 96
                    u = _1538 + 107
                    s = 11
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_1538 + 107] = mem[_1538 + 118 len 21] or Mask(88, 168, mem[_1538 + 96])
                    mem[0] = sha3(mem[_1538 + 107 len 11])
                    mem[32] = 2
                    mem[_1538 + 107] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[_1538 + 111] = address(ext_call.return_data[0])
                    mem[_1538 + 143] = arg1 - (_705 * arg1 / _702) + (arg1 / _702)
                    require ext_code.size(erc677token[mem[0]])
                    call erc677token[mem[0]].0x40c10f19 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg1 - (_705 * arg1 / _702) + (arg1 / _702)
                    mem[_1538 + 107] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                s = ext_call.return_data[0]
                s = arg1 - (_705 * arg1 / _702) + (arg1 / _702)
                idx = idx + 1
                continue 
}



}
