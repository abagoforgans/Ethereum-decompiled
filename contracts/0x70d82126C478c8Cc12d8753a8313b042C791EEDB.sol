contract main {




// =====================  Runtime code  =====================


#
#  - sub_4ef5129d(?)
#  - sub_895e7029(?)
#  - sub_8c2229be(?)
#  - sub_e921d7ad(?)
#
address stor0;
uint256 stor1;
address stor2;
address stor3;
uint256 stor4;
uint256 stor6;

function _fallback() payable {
    revert
}

function sub_2b86eadf(?) {
    emit 0xefe29a8e: msg.sender, arg1, arg2
}

function sub_4f3abaf5(?) {
    emit 0x54845e74: msg.sender, arg1, arg2
}

function sub_1c1dbe86(?) {
    emit 0x8beef7ee: arg2, msg.sender, arg1, arg3
}

function emitErrorCode(uint256 arg1) {
    emit 0x9e0713b4: arg1, msg.sender
}

function getEventsHistory() {
    if stor3:
        return stor3
    return this.address
}

function removeUserContract(address arg1) {
    require ext_code.size(this.address)
    call this.address.0xe921d7ad with:
         gas gas_remaining wei
        args address(arg1), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_2637cd7d(?) {
    if this.address == msg.sender:
        stor2 = arg1
        return 1
    if stor2:
        require ext_code.size(stor2)
        call stor2.0xb7009613 with:
             gas gas_remaining wei
            args msg.sender, this.address, call.func_hash
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            stor2 = arg1
            return 1
    emit AuthFailedError(this.address, msg.sender, call.func_hash);
    return 0
}

function sub_dff187d4(?) {
    require ext_code.size(arg2)
    call arg2.0xce606ee0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x1eacfd78 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function setupEventsHistory(address arg1) {
    if msg.sender != this.address:
        if not stor2:
            emit AuthFailedError(this.address, msg.sender, call.func_hash);
            return 0
        require ext_code.size(stor2)
        call stor2.0xb7009613 with:
             gas gas_remaining wei
            args msg.sender, this.address, call.func_hash
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            emit AuthFailedError(this.address, msg.sender, call.func_hash);
            return 0
    require arg1
    stor3 = arg1
    return 1
}

function getUserContracts(address arg1) {
    mem[128] = stor4
    mem[160] = arg1
    mem[96] = 64
    mem[196] = stor1
    mem[228] = sha3(stor4, arg1)
    require ext_code.size(stor0)
    call stor0.0x53aa3f5e with:
         gas gas_remaining wei
        args stor1, sha3(stor4, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[192] = ext_call.return_data[0]
    mem[64] = (32 * ext_call.return_data[0]) + 224
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            _218 = mem[64]
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = idx + 1
            _219 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _220 = mem[_219]
            t = _219 + 32
            u = _218 + 96
            s = mem[_219]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_218 + floor32(mem[_219]) + 96] = mem[_219 + floor32(mem[_219]) + -(mem[_219] % 32) + 64 len mem[_219] % 32] or Mask(8 * -(mem[_219] % 32) + 32, -(8 * -(mem[_219] % 32) + 32) + 256, mem[_218 + floor32(mem[_219]) + 96])
            _325 = sha3(mem[mem[64] len _220 + _218 + -mem[64] + 96])
            _338 = mem[64]
            mem[mem[64] + 32] = stor6
            mem[mem[64] + 64] = _325
            _339 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _340 = mem[_339]
            if mem[_339] < 32:
                mem[_338 + 96] = 256^(-mem[_339] + 32) - 1 and mem[_338 + 96] or mem[_339 + 32] and !(256^(-mem[_339] + 32) - 1)
                _351 = sha3(mem[_338 + 96 len _340])
                mem[_338 + 100] = stor1
                mem[_338 + 132] = _351
                require ext_code.size(stor0)
                call stor0.0x37d9d7fc with:
                     gas gas_remaining wei
                    args stor1, _351
                mem[_338 + 96] = ext_call.return_data[0]
            else:
                mem[_338 + 96] = mem[_339 + 32]
                t = _339 + 64
                u = _338 + 128
                s = _340 - 32
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_338 + floor32(_340 - 32) + 128] = 256^(-_340 + floor32(_340 - 32) + 64) - 1 and mem[_338 + floor32(_340 - 32) + 128] or mem[_339 + floor32(_340 - 32) + 64] and !(256^(-_340 + floor32(_340 - 32) + 64) - 1)
                _411 = sha3(mem[mem[64] len _338 + _340 + -mem[64] + 96])
                mem[mem[64] + 4] = stor1
                mem[mem[64] + 36] = _411
                require ext_code.size(stor0)
                call stor0.0x37d9d7fc with:
                     gas gas_remaining wei
                    args stor1, _411
                mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[192]
            mem[(32 * idx) + 224] = ext_call.return_data[0]
            idx = idx + 1
            continue 
        _224 = mem[192]
        _225 = mem[64]
        mem[mem[64]] = mem[192]
        mem[64] = mem[64] + (32 * _224) + 32
        if not _224:
            _316 = mem[192]
            idx = 0
            while idx < _316:
                require idx < mem[192]
                require idx < mem[_225]
                mem[_225 + (32 * idx) + 32] = mem[(32 * idx) + 236 len 20]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_225]
            _362 = mem[_225]
            mem[mem[64] + 64 len floor32(mem[_225])] = mem[_225 + 32 len floor32(mem[_225])]
            return 32, mem[mem[64] + 32 len (32 * _362) + 32]
        mem[_225 + 32 len 32 * _224] = code.data[6320 len 32 * _224]
        _317 = mem[192]
        idx = 0
        while idx < _317:
            require idx < mem[192]
            require idx < mem[_225]
            mem[_225 + (32 * idx) + 32] = mem[(32 * idx) + 236 len 20]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_225]
        _365 = mem[_225]
        mem[mem[64] + 64 len floor32(mem[_225])] = mem[_225 + 32 len floor32(mem[_225])]
        return 32, mem[mem[64] + 32 len (32 * _365) + 32]
    mem[224 len 32 * ext_call.return_data[0]] = code.data[6320 len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        _221 = mem[64]
        mem[mem[64] + 32] = arg1
        mem[mem[64] + 64] = idx + 1
        _222 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        _223 = mem[_222]
        t = _222 + 32
        u = _221 + 96
        s = mem[_222]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_221 + floor32(mem[_222]) + 96] = mem[_222 + floor32(mem[_222]) + -(mem[_222] % 32) + 64 len mem[_222] % 32] or Mask(8 * -(mem[_222] % 32) + 32, -(8 * -(mem[_222] % 32) + 32) + 256, mem[_221 + floor32(mem[_222]) + 96])
        _332 = sha3(mem[mem[64] len _223 + _221 + -mem[64] + 96])
        _345 = mem[64]
        mem[mem[64] + 32] = stor6
        mem[mem[64] + 64] = _332
        _346 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        _347 = mem[_346]
        if mem[_346] < 32:
            mem[_345 + 96] = 256^(-mem[_346] + 32) - 1 and mem[_345 + 96] or mem[_346 + 32] and !(256^(-mem[_346] + 32) - 1)
            _357 = sha3(mem[_345 + 96 len _347])
            mem[_345 + 100] = stor1
            mem[_345 + 132] = _357
            require ext_code.size(stor0)
            call stor0.0x37d9d7fc with:
                 gas gas_remaining wei
                args stor1, _357
            mem[_345 + 96] = ext_call.return_data[0]
        else:
            mem[_345 + 96] = mem[_346 + 32]
            t = _346 + 64
            u = _345 + 128
            s = _347 - 32
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_345 + floor32(_347 - 32) + 128] = 256^(-_347 + floor32(_347 - 32) + 64) - 1 and mem[_345 + floor32(_347 - 32) + 128] or mem[_346 + floor32(_347 - 32) + 64] and !(256^(-_347 + floor32(_347 - 32) + 64) - 1)
            _421 = sha3(mem[mem[64] len _345 + _347 + -mem[64] + 96])
            mem[mem[64] + 4] = stor1
            mem[mem[64] + 36] = _421
            require ext_code.size(stor0)
            call stor0.0x37d9d7fc with:
                 gas gas_remaining wei
                args stor1, _421
            mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[192]
        mem[(32 * idx) + 224] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    _226 = mem[192]
    _227 = mem[64]
    mem[mem[64]] = mem[192]
    mem[64] = mem[64] + (32 * _226) + 32
    if not _226:
        _318 = mem[192]
        idx = 0
        while idx < _318:
            require idx < mem[192]
            require idx < mem[_227]
            mem[_227 + (32 * idx) + 32] = mem[(32 * idx) + 236 len 20]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_227]
        _368 = mem[_227]
        mem[mem[64] + 64 len floor32(mem[_227])] = mem[_227 + 32 len floor32(mem[_227])]
        return 32, mem[mem[64] + 32 len (32 * _368) + 32]
    mem[_227 + 32 len 32 * _226] = code.data[6320 len 32 * _226]
    _319 = mem[192]
    idx = 0
    while idx < _319:
        require idx < mem[192]
        require idx < mem[_227]
        mem[_227 + (32 * idx) + 32] = mem[(32 * idx) + 236 len 20]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_227]
    _371 = mem[_227]
    mem[mem[64] + 64 len floor32(mem[_227])] = mem[_227 + 32 len floor32(mem[_227])]
    return 32, mem[mem[64] + 32 len (32 * _371) + 32]
}



}
