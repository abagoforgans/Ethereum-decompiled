contract main {




// =====================  Runtime code  =====================


mapping of uint8 privileges;
mapping of uint8 stor1;
uint256 nonce;
mapping of uint256 routinePaidFees;

function routinePaidFees(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return routinePaidFees[arg1]
}

function nonce() payable {
    return nonce
}

function privileges(address arg1) payable {
    require calldata.size - 4 >= 32
    return privileges[arg1]
}

function routineAuthorizations(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function setRoutineAuth(bytes32 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if this.address != msg.sender:
        revert with 0, 'ONLY_IDENTITY_CAN_CALL'
    stor1[arg1] = uint8(arg2)
    emit 0x32f73b22: arg1, arg2
}

function setAddrPrivilege(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    if this.address != msg.sender:
        revert with 0, 'ONLY_IDENTITY_CAN_CALL'
    privileges[address(arg1)] = arg2
    emit 0x9685487d: arg2, arg1
}

function sub_9d8908c3(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size + -cd[4] + -cd[s] - 36 >= 224
        _22 = mem[64]
        require mem[64] + 224 <= test266151307() and mem[64] + 224 >= mem[64]
        mem[64] = mem[64] + 224
        mem[_22] = address(cd[(cd[4] + cd[s] + 36)])
        mem[_22 + 32] = cd[(cd[4] + cd[s] + 68)]
        mem[_22 + 64] = address(cd[(cd[4] + cd[s] + 100)])
        mem[_22 + 96] = cd[(cd[4] + cd[s] + 132)]
        mem[_22 + 128] = address(cd[(cd[4] + cd[s] + 164)])
        mem[_22 + 160] = cd[(cd[4] + cd[s] + 196)]
        require cd[(cd[4] + cd[s] + 228)] <= test266151307()
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 67 < calldata.size
        require cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 36)] <= test266151307()
        _41 = mem[64]
        require mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 36)]) + 32
        mem[_41] = cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 36)] + 68 <= calldata.size
        mem[_41 + 32 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 36)]] = call.data[cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 68 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 36)]]
        mem[_41 + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 36)] + 32] = 0
        mem[_22 + 192] = _41
        mem[t] = _22
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 0
    if privileges[address(msg.sender)] < 2:
        revert with 0, 'INSUFFICIENT_PRIVILEGE_SENDER'
    _24 = mem[96]
    idx = 0
    while idx < _24:
        _43 = mem[64]
        mem[64] = mem[64] + 224
        mem[_43] = 0
        mem[_43 + 32] = 0
        mem[_43 + 64] = 0
        mem[_43 + 96] = 0
        mem[_43 + 128] = 0
        mem[_43 + 160] = 0
        mem[_43 + 192] = 96
        require idx < mem[96]
        if mem[mem[(32 * idx) + 128] + 32] != nonce:
            revert with 0, 'WRONG_NONCE'
        require nonce + 1 >= nonce
        nonce++
        call mem[mem[(32 * idx) + 128] + 128].mem[mem[mem[(32 * idx) + 128] + 192] + 32 len 4] with:
           value mem[mem[(32 * idx) + 128] + 160] wei
             gas gas_remaining wei
            args mem[mem[mem[(32 * idx) + 128] + 192] + 36 len mem[mem[mem[(32 * idx) + 128] + 192]] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    if privileges[address(msg.sender)] < 2:
        revert with 0, 'PRIVILEGE_NOT_DOWNGRADED'
}

function sub_951a02af(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size + -cd[4] + -cd[s] - 36 >= 224
        _68 = mem[64]
        require mem[64] + 224 <= test266151307() and mem[64] + 224 >= mem[64]
        mem[64] = mem[64] + 224
        mem[_68] = address(cd[(cd[4] + cd[s] + 36)])
        mem[_68 + 32] = cd[(cd[4] + cd[s] + 68)]
        mem[_68 + 64] = address(cd[(cd[4] + cd[s] + 100)])
        mem[_68 + 96] = cd[(cd[4] + cd[s] + 132)]
        mem[_68 + 128] = address(cd[(cd[4] + cd[s] + 164)])
        mem[_68 + 160] = cd[(cd[4] + cd[s] + 196)]
        require cd[(cd[4] + cd[s] + 228)] <= test266151307()
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 67 < calldata.size
        require cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 36)] <= test266151307()
        _95 = mem[64]
        require mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 36)]) + 32
        mem[_95] = cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 36)] + 68 <= calldata.size
        mem[_95 + 32 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 36)]] = call.data[cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 68 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 36)]]
        mem[_95 + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 36)] + 32] = 0
        mem[_68 + 192] = _95
        mem[t] = _68
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    _69 = mem[64]
    require mem[64] + (32 * ('cd', 36).length) + 32 <= test266151307() and mem[64] + (32 * ('cd', 36).length) + 32 >= mem[64]
    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
    mem[_69] = ('cd', 36).length
    require cd[36] + (96 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = _69 + 32
    while idx < ('cd', 36).length:
        require s + 31 < calldata.size
        _199 = mem[64]
        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
        mem[64] = mem[64] + 96
        require s + 96 <= calldata.size
        u = 0
        v = s
        w = _199
        while u < 3:
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _199
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    require 0 < mem[96]
    _197 = mem[mem[128] + 64]
    _198 = mem[96]
    idx = 0
    s = 0
    while idx < _198:
        _258 = mem[64]
        mem[64] = mem[64] + 224
        mem[_258] = 0
        mem[_258 + 32] = 0
        mem[_258 + 64] = 0
        mem[_258 + 96] = 0
        mem[_258 + 128] = 0
        mem[_258 + 160] = 0
        mem[_258 + 192] = 96
        require idx < mem[96]
        _261 = mem[(32 * idx) + 128]
        if mem[mem[(32 * idx) + 128] + 12 len 20] != this.address:
            revert with 0, 'TRANSACTION_NOT_FOR_CONTRACT'
        if mem[mem[(32 * idx) + 128] + 76 len 20] != address(_197):
            revert with 0, 'EXECUTE_NEEDS_SINGLE_TOKEN'
        if mem[mem[(32 * idx) + 128] + 32] != nonce:
            revert with 0, 'WRONG_NONCE'
        _268 = mem[mem[(32 * idx) + 128] + 32]
        _269 = mem[mem[(32 * idx) + 128] + 64]
        _270 = mem[mem[(32 * idx) + 128] + 96]
        _271 = mem[mem[(32 * idx) + 128] + 128]
        _272 = mem[mem[(32 * idx) + 128] + 160]
        _273 = mem[mem[(32 * idx) + 128] + 192]
        mem[mem[64] + 32] = mem[mem[(32 * idx) + 128] + 12 len 20]
        mem[mem[64] + 64] = _268
        mem[mem[64] + 96] = address(_269)
        mem[mem[64] + 128] = _270
        mem[mem[64] + 160] = address(_271)
        mem[mem[64] + 192] = _272
        mem[mem[64] + 224] = 224
        _281 = mem[_273]
        mem[mem[64] + 256] = mem[_273]
        t = 0
        while t < _281:
            mem[mem[64] + t + 288] = mem[_273 + t + 32]
            t = t + 32
            continue 
        if ceil32(_281) <= _281:
            mem[mem[64]] = ceil32(_281) + 256
            mem[64] = mem[64] + ceil32(_281) + 288
            require idx < mem[_69]
            mem[0] = 0
            mem[32] = 0
            if privileges < 2:
                revert with 0, 'INSUFFICIENT_PRIVILEGE_TRANSACTION'
            require nonce + 1 >= nonce
            nonce++
            _336 = mem[_261 + 96]
            require s + mem[_261 + 96] >= s
            call mem[_261 + 128].mem[mem[_261 + 192] + 32 len 4] with:
               value mem[_261 + 160] wei
                 gas gas_remaining wei
                args mem[mem[_261 + 192] + 36 len mem[mem[_261 + 192]] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = 0
            mem[32] = 0
            if privileges < 2:
                revert with 0, 'PRIVILEGE_NOT_DOWNGRADED'
            idx = idx + 1
            s = s + _336
            continue 
        mem[mem[64] + _281 + 288] = 0
        mem[mem[64]] = ceil32(_281) + 256
        mem[64] = mem[64] + ceil32(_281) + 288
        require idx < mem[_69]
        mem[0] = 0
        mem[32] = 0
        if privileges < 2:
            revert with 0, 'INSUFFICIENT_PRIVILEGE_TRANSACTION'
        require nonce + 1 >= nonce
        nonce++
        _337 = mem[_261 + 96]
        require s + mem[_261 + 96] >= s
        call mem[_261 + 128].mem[mem[_261 + 192] + 32 len 4] with:
           value mem[_261 + 160] wei
             gas gas_remaining wei
            args mem[mem[_261 + 192] + 36 len mem[mem[_261 + 192]] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = 0
        mem[32] = 0
        if privileges < 2:
            revert with 0, 'PRIVILEGE_NOT_DOWNGRADED'
        idx = idx + 1
        s = s + _337
        continue 
    if s > 0:
        require ext_code.size(address(_197))
        call address(_197).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            require ext_call.return_data[0]
}

function sub_11aee8b7(?) payable {
    require calldata.size - 4 >= 224
    require calldata.size - 4 >= 192
    mem[96] = address(cd[4])
    mem[128] = address(cd[36])
    mem[160] = address(cd[68])
    mem[192] = cd[100]
    mem[224] = address(cd[132])
    mem[256] = cd[164]
    require cd[196] <= test266151307()
    require cd[196] + 35 < calldata.size
    require ('cd', 196).length <= test266151307()
    require (32 * ('cd', 196).length) + 320 <= test266151307() and (32 * ('cd', 196).length) + 320 >= 288
    mem[64] = (32 * ('cd', 196).length) + 320
    mem[288] = ('cd', 196).length
    idx = 0
    s = cd[196] + 36
    t = 320
    while idx < ('cd', 196).length:
        require calldata.size + -cd[196] + -cd[s] - 36 >= 64
        _127 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require cd[(cd[196] + cd[s] + 36)] < 4
        mem[_127] = cd[(cd[196] + cd[s] + 36)]
        require cd[(cd[196] + cd[s] + 68)] <= test266151307()
        require cd[196] + cd[s] + cd[(cd[196] + cd[s] + 68)] + 67 < calldata.size
        require cd[(cd[196] + cd[s] + cd[(cd[196] + cd[s] + 68)] + 36)] <= test266151307()
        _136 = mem[64]
        require mem[64] + ceil32(cd[(cd[196] + cd[s] + cd[(cd[196] + cd[s] + 68)] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(cd[196] + cd[s] + cd[(cd[196] + cd[s] + 68)] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[196] + cd[s] + cd[(cd[196] + cd[s] + 68)] + 36)]) + 32
        mem[_136] = cd[(cd[196] + cd[s] + cd[(cd[196] + cd[s] + 68)] + 36)]
        require cd[196] + cd[s] + cd[(cd[196] + cd[s] + 68)] + cd[(cd[196] + cd[s] + cd[(cd[196] + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_136 + 32 len cd[(cd[196] + cd[s] + cd[(cd[196] + cd[s] + 68)] + 36)]] = call.data[cd[196] + cd[s] + cd[(cd[196] + cd[s] + 68)] + 68 len cd[(cd[196] + cd[s] + cd[(cd[196] + cd[s] + 68)] + 36)]]
        mem[_136 + cd[(cd[196] + cd[s] + cd[(cd[196] + cd[s] + 68)] + 36)] + 32] = 0
        mem[_127 + 32] = _136
        mem[t] = _127
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if mem[108 len 20] != msg.sender:
        revert with 0, 'ONLY_RELAYER_CAN_CALL'
    if mem[192] < block.timestamp:
        revert with 0, 'AUTHORIZATION_EXPIRED'
    mem[mem[64] + 32] = mem[108 len 20]
    mem[mem[64] + 64] = mem[140 len 20]
    mem[mem[64] + 96] = mem[172 len 20]
    mem[mem[64] + 128] = mem[192]
    mem[mem[64] + 160] = mem[236 len 20]
    mem[mem[64] + 192] = mem[256]
    _141 = mem[64]
    mem[mem[64]] = 192
    mem[64] = mem[64] + 224
    _143 = sha3(mem[_141 + 32 len mem[_141]])
    mem[0] = sha3(mem[_141 + 32 len mem[_141]])
    mem[32] = 1
    if not stor1[mem[0]]:
        revert with 0, 'NOT_AUTHORIZED'
    _145 = mem[288]
    idx = 0
    while idx < _145:
        _308 = mem[64]
        mem[64] = mem[64] + 64
        mem[_308] = 0
        mem[_308 + 32] = 96
        require idx < mem[288]
        _314 = mem[(32 * idx) + 320]
        require mem[mem[(32 * idx) + 320]] <= 3
        if not mem[mem[(32 * idx) + 320]]:
            _316 = mem[128]
            mem[mem[64]] = 'channelWithdraw((address,address'
            mem[mem[64] + 32] = ',uint256,uint256,address[],bytes'
            mem[mem[64] + 64] = '32),bytes32,bytes32[3][],bytes32'
            mem[mem[64] + 96] = '[],uint256)'
            _324 = mem[_314 + 32]
            _325 = mem[64]
            mem[mem[64] + 32] = Mask(32, 224, sha3('channelWithdraw((address,address', ',uint256,uint256,address[],bytes', '32),bytes32,bytes32[3][],bytes32', '[],uint256)'))
            _343 = mem[_324]
            s = 0
            while s < _343:
                mem[_325 + s + 36] = mem[_324 + s + 32]
                s = s + 32
                continue 
            if ceil32(_343) <= _343:
                _469 = mem[64]
                mem[mem[64]] = _325 + _343 + -mem[64] + 4
                mem[64] = _325 + _343 + 36
                call _316.mem[_469 + 32 len 4] with:
                     gas gas_remaining wei
                    args mem[_469 + 36 len mem[_469] - 4]
            else:
                mem[_325 + _343 + 36] = 0
                _473 = mem[64]
                mem[mem[64]] = _325 + _343 + -mem[64] + 4
                mem[64] = _325 + _343 + 36
                call _316.mem[_473 + 32 len 4] with:
                     gas gas_remaining wei
                    args mem[_473 + 36 len mem[_473] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require mem[mem[(32 * idx) + 320]] <= 3
            if mem[mem[(32 * idx) + 320]] == 1:
                _319 = mem[128]
                mem[mem[64]] = 'channelWithdrawExpired((address,'
                mem[mem[64] + 32] = 'address,uint256,uint256,address['
                mem[mem[64] + 64] = '],bytes32))'
                _336 = mem[_314 + 32]
                _337 = mem[64]
                mem[mem[64] + 32] = Mask(32, 224, sha3('channelWithdrawExpired((address,', 'address,uint256,uint256,address[', '],bytes32))'))
                _346 = mem[_336]
                s = 0
                while s < _346:
                    mem[_337 + s + 36] = mem[_336 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_346) <= _346:
                    _468 = mem[64]
                    mem[mem[64]] = _337 + _346 + -mem[64] + 4
                    mem[64] = _337 + _346 + 36
                    call _319.mem[_468 + 32 len 4] with:
                         gas gas_remaining wei
                        args mem[_468 + 36 len mem[_468] - 4]
                else:
                    mem[_337 + _346 + 36] = 0
                    _471 = mem[64]
                    mem[mem[64]] = _337 + _346 + -mem[64] + 4
                    mem[64] = _337 + _346 + 36
                    call _319.mem[_471 + 32 len 4] with:
                         gas gas_remaining wei
                        args mem[_471 + 36 len mem[_471] - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require mem[mem[(32 * idx) + 320]] <= 3
                if mem[mem[(32 * idx) + 320]] != 2:
                    require mem[mem[(32 * idx) + 320]] <= 3
                    if mem[mem[(32 * idx) + 320]] != 3:
                        revert with 0, 'INVALID_MODE'
                    require mem[mem[mem[(32 * idx) + 320] + 32]] >= 96
                    _339 = mem[mem[mem[(32 * idx) + 320] + 32] + 32]
                    _345 = mem[mem[mem[(32 * idx) + 320] + 32] + 64]
                    _349 = mem[mem[mem[(32 * idx) + 320] + 32] + 96]
                    mem[0] = mem[mem[mem[(32 * idx) + 320] + 32] + 76 len 20]
                    mem[32] = 0
                    if privileges[mem[0]] < 3:
                        revert with 0, 'INSUFFICIENT_PRIVILEGE_WITHDRAW'
                    mem[mem[64]] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_345)
                    mem[mem[64] + 36] = _349
                    require ext_code.size(address(_339))
                    call address(_339).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(_345), _349
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if return_data.size:
                        require return_data.size == 32
                        mem[0] = ext_call.return_data[0]
                        require ext_call.return_data[0]
                else:
                    _327 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_327] = 0
                    mem[_327 + 32] = 0
                    mem[_327 + 64] = 0
                    mem[_327 + 96] = 0
                    mem[_327 + 128] = 96
                    mem[_327 + 160] = 0
                    _328 = mem[_314 + 32]
                    _329 = mem[mem[_314 + 32]]
                    require mem[mem[_314 + 32]] >= 32
                    _338 = mem[mem[_314 + 32] + 32]
                    require mem[mem[_314 + 32] + 32] <= test266151307()
                    require mem[mem[_314 + 32]] - mem[mem[_314 + 32] + 32] >= 192
                    _341 = mem[64]
                    require mem[64] + 192 <= test266151307() and mem[64] + 192 >= mem[64]
                    mem[64] = mem[64] + 192
                    mem[_341] = mem[_328 + _338 + 44 len 20]
                    mem[_341 + 32] = mem[_328 + _338 + 76 len 20]
                    mem[_341 + 64] = mem[_328 + _338 + 96]
                    mem[_341 + 96] = mem[_328 + _338 + 128]
                    _369 = mem[_328 + _338 + 160]
                    require mem[_328 + _338 + 160] <= test266151307()
                    require _328 + _338 + mem[_328 + _338 + 160] + 63 < _328 + _329 + 32
                    _370 = mem[_328 + _338 + mem[_328 + _338 + 160] + 32]
                    require mem[_328 + _338 + mem[_328 + _338 + 160] + 32] <= test266151307()
                    _372 = mem[64]
                    require mem[64] + (32 * mem[_328 + _338 + mem[_328 + _338 + 160] + 32]) + 32 <= test266151307() and mem[64] + (32 * mem[_328 + _338 + mem[_328 + _338 + 160] + 32]) + 32 >= mem[64]
                    mem[64] = mem[64] + (32 * mem[_328 + _338 + mem[_328 + _338 + 160] + 32]) + 32
                    mem[_372] = _370
                    require _338 + _369 + (32 * _370) + 64 <= _329 + 32
                    s = 0
                    t = _328 + _338 + _369 + 64
                    u = _372 + 32
                    while s < _370:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_341 + 128] = _372
                    mem[_341 + 160] = mem[_328 + _338 + 192]
                    if mem[_341 + 96] > block.timestamp + (2160 * 24 * 3600):
                        revert with 0, 'CHANNEL_EXCEEDED_MAX_VALID'
                    s = 0
                    while s < _370:
                        _570 = mem[160]
                        require s < mem[mem[_341 + 128]]
                        _574 = mem[(32 * s) + mem[_341 + 128] + 32]
                        mem[mem[64] + 4] = mem[(32 * s) + mem[_341 + 128] + 44 len 20]
                        require ext_code.size(address(_570))
                        staticcall address(_570).whitelisted(address arg1) with:
                                gas gas_remaining wei
                               args address(_574)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _577 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_577]:
                            revert with 0, 'VALIDATOR_NOT_WHITELISTED'
                        s = s + 1
                        continue 
                    _568 = mem[_341 + 32]
                    _569 = mem[128]
                    mem[mem[64]] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_569)
                    mem[mem[64] + 36] = 0
                    require ext_code.size(address(_568))
                    call address(_568).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_569), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not return_data.size:
                        _582 = mem[_341 + 32]
                        _583 = mem[128]
                        _584 = mem[_341 + 64]
                        mem[mem[64]] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(_583)
                        mem[mem[64] + 36] = _584
                        require ext_code.size(address(_582))
                        call address(_582).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(_583), _584
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not return_data.size:
                            _595 = mem[128]
                            mem[mem[64]] = 'channelOpen((address,address,uin'
                            mem[mem[64] + 32] = 't256,uint256,address[],bytes32))'
                            _605 = mem[_314 + 32]
                            _606 = mem[64]
                            mem[mem[64] + 32] = Mask(32, 224, sha3('channelOpen((address,address,uin', 't256,uint256,address[],bytes32))'))
                            _619 = mem[_605]
                            s = 0
                            while s < _619:
                                mem[_606 + s + 36] = mem[_605 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_619) <= _619:
                                _655 = mem[64]
                                mem[mem[64]] = _606 + _619 + -mem[64] + 4
                                mem[64] = _606 + _619 + 36
                                call _595.mem[_655 + 32 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_655 + 36 len mem[_655] - 4]
                            else:
                                mem[_606 + _619 + 36] = 0
                                _660 = mem[64]
                                mem[mem[64]] = _606 + _619 + -mem[64] + 4
                                mem[64] = _606 + _619 + 36
                                call _595.mem[_660 + 32 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_660 + 36 len mem[_660] - 4]
                        else:
                            require return_data.size == 32
                            mem[0] = ext_call.return_data[0]
                            require ext_call.return_data[0]
                            _597 = mem[128]
                            mem[mem[64]] = 'channelOpen((address,address,uin'
                            mem[mem[64] + 32] = 't256,uint256,address[],bytes32))'
                            _609 = mem[_314 + 32]
                            _610 = mem[64]
                            mem[mem[64] + 32] = Mask(32, 224, sha3('channelOpen((address,address,uin', 't256,uint256,address[],bytes32))'))
                            _620 = mem[_609]
                            s = 0
                            while s < _620:
                                mem[_610 + s + 36] = mem[_609 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_620) <= _620:
                                _656 = mem[64]
                                mem[mem[64]] = _610 + _620 + -mem[64] + 4
                                mem[64] = _610 + _620 + 36
                                call _597.mem[_656 + 32 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_656 + 36 len mem[_656] - 4]
                            else:
                                mem[_610 + _620 + 36] = 0
                                _662 = mem[64]
                                mem[mem[64]] = _610 + _620 + -mem[64] + 4
                                mem[64] = _610 + _620 + 36
                                call _597.mem[_662 + 32 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_662 + 36 len mem[_662] - 4]
                    else:
                        require return_data.size == 32
                        mem[0] = ext_call.return_data[0]
                        require ext_call.return_data[0]
                        _586 = mem[_341 + 32]
                        _587 = mem[128]
                        _588 = mem[_341 + 64]
                        mem[mem[64]] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(_587)
                        mem[mem[64] + 36] = _588
                        require ext_code.size(address(_586))
                        call address(_586).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(_587), _588
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not return_data.size:
                            _599 = mem[128]
                            mem[mem[64]] = 'channelOpen((address,address,uin'
                            mem[mem[64] + 32] = 't256,uint256,address[],bytes32))'
                            _613 = mem[_314 + 32]
                            _614 = mem[64]
                            mem[mem[64] + 32] = Mask(32, 224, sha3('channelOpen((address,address,uin', 't256,uint256,address[],bytes32))'))
                            _621 = mem[_613]
                            s = 0
                            while s < _621:
                                mem[_614 + s + 36] = mem[_613 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_621) <= _621:
                                _657 = mem[64]
                                mem[mem[64]] = _614 + _621 + -mem[64] + 4
                                mem[64] = _614 + _621 + 36
                                call _599.mem[_657 + 32 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_657 + 36 len mem[_657] - 4]
                            else:
                                mem[_614 + _621 + 36] = 0
                                _664 = mem[64]
                                mem[mem[64]] = _614 + _621 + -mem[64] + 4
                                mem[64] = _614 + _621 + 36
                                call _599.mem[_664 + 32 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_664 + 36 len mem[_664] - 4]
                        else:
                            require return_data.size == 32
                            mem[0] = ext_call.return_data[0]
                            require ext_call.return_data[0]
                            _601 = mem[128]
                            mem[mem[64]] = 'channelOpen((address,address,uin'
                            mem[mem[64] + 32] = 't256,uint256,address[],bytes32))'
                            _617 = mem[_314 + 32]
                            _618 = mem[64]
                            mem[mem[64] + 32] = Mask(32, 224, sha3('channelOpen((address,address,uin', 't256,uint256,address[],bytes32))'))
                            _622 = mem[_617]
                            s = 0
                            while s < _622:
                                mem[_618 + s + 36] = mem[_617 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_622) <= _622:
                                _658 = mem[64]
                                mem[mem[64]] = _618 + _622 + -mem[64] + 4
                                mem[64] = _618 + _622 + 36
                                call _601.mem[_658 + 32 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_658 + 36 len mem[_658] - 4]
                            else:
                                mem[_618 + _622 + 36] = 0
                                _666 = mem[64]
                                mem[mem[64]] = _618 + _622 + -mem[64] + 4
                                mem[64] = _618 + _622 + 36
                                call _601.mem[_666 + 32 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_666 + 36 len mem[_666] - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    if mem[256] > 0:
        if block.timestamp - routinePaidFees[_143] >= 168 * 24 * 3600:
            routinePaidFees[_143] = block.timestamp
            require ext_code.size(mem[236 len 20])
            call mem[236 len 20].0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, mem[256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if return_data.size:
                require return_data.size == 32
                require ext_call.return_data[0]
}



}
