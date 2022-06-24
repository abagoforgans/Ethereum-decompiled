contract main {




// =====================  Runtime code  =====================


const sub_111c7c75(?) = 100

const VERSION = 1


address owner;
uint256 sub_57525cbc;
address registryAddress;
array of address sub_62f25ab3;
mapping of uint256 sub_98db6210;

function sub_57525cbc(?) payable {
    return sub_57525cbc
}

function sub_62f25ab3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_62f25ab3.length
    return sub_62f25ab3[arg1]
}

function registry() payable {
    return registryAddress
}

function owner() payable {
    return owner
}

function sub_98db6210(?) payable {
    require calldata.size - 4 >= 32
    return sub_98db6210[address(arg1)]
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isValidator(address arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < sub_62f25ab3.length:
        mem[0] = 3
        if sub_62f25ab3[idx] != arg1:
            idx = idx + 1
            continue 
        require ext_code.size(registryAddress)
        staticcall registryAddress.0xfacd743b with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return bool(ext_call.return_data[0])
    return 0
}

function remove(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    idx = 0
    while idx < sub_62f25ab3.length:
        mem[0] = 3
        if sub_62f25ab3[idx] != arg1:
            idx = idx + 1
            continue 
        require sub_62f25ab3.length - 1 < sub_62f25ab3.length
        require idx < sub_62f25ab3.length
        sub_62f25ab3[idx] = sub_62f25ab3[sub_62f25ab3.length]
        sub_62f25ab3[idx] = 0
        sub_62f25ab3.length--
        if sub_62f25ab3.length > sub_62f25ab3.length - 1:
            idx = sha3(3) + sub_62f25ab3.length - 1
            while sha3(3) + sub_62f25ab3.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        sub_98db6210[address(arg1)] = 0
        emit ValidatorRemoved(arg1);
    revert with 0, 'Unknown Validator Address'
}

function addValidator(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Address must not be 0!'
    if sub_62f25ab3.length > sub_57525cbc - 1:
        revert with 0, 'Can't add more members!'
    if sub_62f25ab3.length > 99:
        revert with 0, 'Can't add more members!'
    idx = 0
    while idx < sub_62f25ab3.length:
        mem[0] = 3
        if sub_62f25ab3[idx] == arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0xfe41646472657373206d757374206e6f7420626520616c72656164792061206d656d6265,
                        mem[200 len 28]
        idx = idx + 1
        continue 
    sub_62f25ab3.length++
    sub_62f25ab3[sub_62f25ab3.length] = arg1
    sub_98db6210[address(arg1)] = block.number
    emit ValidatorAdded(arg1);
}

function getValidators() payable {
    idx = 0
    s = 0
    while idx < sub_62f25ab3.length:
        mem[0] = 3
        mem[100] = sub_62f25ab3[idx]
        require ext_code.size(registryAddress)
        staticcall registryAddress.0xfacd743b with:
                gas gas_remaining wei
               args sub_62f25ab3[idx]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if s:
        mem[128 len 32 * s] = code.data[6188 len 32 * s]
    idx = 0
    t = 0
    while idx < sub_62f25ab3.length:
        mem[0] = 3
        mem[(32 * s) + 132] = sub_62f25ab3[idx]
        require ext_code.size(registryAddress)
        staticcall registryAddress.0xfacd743b with:
                gas gas_remaining wei
               args sub_62f25ab3[idx]
        mem[(32 * s) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            idx = idx + 1
            t = t
            continue 
        require idx < sub_62f25ab3.length
        mem[0] = 3
        require t < s
        mem[(32 * t) + 128] = Mask(160, 96, sub_62f25ab3[idx])
        idx = idx + 1
        t = t + 1
        continue 
    mem[(32 * s) + 192 len floor32(s)] = mem[128 len floor32(s)]
    return Array(len=s, data=mem[128 len floor32(s)], mem[(32 * s) + floor32(s) + 192 len (32 * s) - floor32(s)])
}

function sub_20429673(?) payable {
    idx = 0
    s = 0
    while idx < sub_62f25ab3.length:
        mem[0] = 3
        mem[100] = sub_62f25ab3[idx]
        require ext_code.size(registryAddress)
        staticcall registryAddress.0xfacd743b with:
                gas gas_remaining wei
               args sub_62f25ab3[idx]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    mem[96] = s
    if not s:
        idx = 0
        t = 0
        while idx < sub_62f25ab3.length:
            mem[0] = 3
            mem[(32 * s) + 132] = sub_62f25ab3[idx]
            require ext_code.size(registryAddress)
            staticcall registryAddress.0xfacd743b with:
                    gas gas_remaining wei
                   args sub_62f25ab3[idx]
            mem[(32 * s) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                idx = idx + 1
                t = t
                continue 
            require idx < sub_62f25ab3.length
            mem[0] = 3
            require t < s
            mem[(32 * t) + 128] = Mask(160, 96, sub_62f25ab3[idx])
            idx = idx + 1
            t = t + 1
            continue 
        if not s:
            mem[(64 * s) + 160] = s
            mem[64] = (98 * s) + 192
            t = 0
            while t < s:
                require t < mem[96]
                _355 = mem[(32 * t) + 128]
                mem[mem[64]] = 0x2536f8b500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = Mask(160, 96, _355) >> 96
                require ext_code.size(registryAddress)
                staticcall registryAddress.0x2536f8b5 with:
                        gas gas_remaining wei
                       args Mask(160, 96, _355)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _379 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_379] <= 4294967296
                require mem[_379] + 32 <= return_data.size
                require mem[mem[_379] + _379] <= 4294967296 and mem[_379] + mem[mem[_379] + _379] + 32 <= return_data.size
                _408 = mem[_379 + 32]
                require mem[_379 + 32] <= 4294967296
                require mem[_379 + 32] + 32 <= return_data.size
                require mem[mem[_379 + 32] + _379] <= 4294967296 and mem[_379 + 32] + mem[mem[_379 + 32] + _379] + 32 <= return_data.size
                require mem[_379 + 64] <= 4294967296
                require mem[_379 + 64] + 32 <= return_data.size
                require mem[mem[_379 + 64] + _379] <= 4294967296 and mem[_379 + 64] + mem[mem[_379 + 64] + _379] + 32 <= return_data.size
                require t < mem[(32 * s) + 128]
                mem[(32 * t) + (32 * s) + 160] = mem[_379 + 108 len 20]
                if mem[_408 + _379] < 4:
                    idx = 0
                    t = 0
                    while idx < mem[_408 + _379]:
                        require idx < mem[_408 + _379]
                        idx = idx + 1
                        t = t or Mask(8, 248, mem[_408 + _379 + idx + 32]) / 2^(8 * idx)
                        continue 
                    require mem[_408 + _379] < mem[(64 * s) + 160]
                    mem[(32 * mem[_408 + _379]) + (64 * s) + 192] = Mask(32, 224, t * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379] * mem[_408 + _379])
                    idx = idx + 1
                    continue 
                idx = 0
                t = 0
                while idx < 4:
                    require idx < mem[_408 + _379]
                    idx = idx + 1
                    t = t or Mask(8, 248, mem[_408 + _379 + idx + 32]) / 2^(8 * idx)
                    continue 
                require 4 < mem[(64 * s) + 160]
                mem[(64 * s) + 320] = Mask(32, 64, t) << 160
                idx = 5
                continue 
            _352 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[(32 * s) + 128]
            _354 = mem[(32 * s) + 128]
            mem[mem[64] + 96 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
            mem[mem[64] + 32] = (32 * _354) + 96
            mem[(32 * _354) + _352 + 96] = mem[(64 * s) + 160]
            _461 = mem[(64 * s) + 160]
            mem[(32 * _354) + _352 + 128 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
            return memory
              from mem[64]
               len (32 * _461) + (32 * _354) + _352 + -mem[64] + 128
        mem[(32 * s) + 160 len 32 * s] = code.data[6188 len 32 * s]
        mem[(64 * s) + 160] = s
        mem[64] = (98 * s) + 192
        mem[(64 * s) + 192 len 32 * s] = code.data[6188 len 32 * s]
        t = 0
        while t < s:
            require t < mem[96]
            _361 = mem[(32 * t) + 128]
            mem[mem[64]] = 0x2536f8b500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = Mask(160, 96, _361) >> 96
            require ext_code.size(registryAddress)
            staticcall registryAddress.0x2536f8b5 with:
                    gas gas_remaining wei
                   args Mask(160, 96, _361)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _383 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_383] <= 4294967296
            require mem[_383] + 32 <= return_data.size
            require mem[mem[_383] + _383] <= 4294967296 and mem[_383] + mem[mem[_383] + _383] + 32 <= return_data.size
            _409 = mem[_383 + 32]
            require mem[_383 + 32] <= 4294967296
            require mem[_383 + 32] + 32 <= return_data.size
            require mem[mem[_383 + 32] + _383] <= 4294967296 and mem[_383 + 32] + mem[mem[_383 + 32] + _383] + 32 <= return_data.size
            require mem[_383 + 64] <= 4294967296
            require mem[_383 + 64] + 32 <= return_data.size
            require mem[mem[_383 + 64] + _383] <= 4294967296 and mem[_383 + 64] + mem[mem[_383 + 64] + _383] + 32 <= return_data.size
            require t < mem[(32 * s) + 128]
            mem[(32 * t) + (32 * s) + 160] = mem[_383 + 108 len 20]
            if mem[_409 + _383] < 4:
                idx = 0
                t = 0
                while idx < mem[_409 + _383]:
                    require idx < mem[_409 + _383]
                    idx = idx + 1
                    t = t or Mask(8, 248, mem[_409 + _383 + idx + 32]) / 2^(8 * idx)
                    continue 
                require mem[_409 + _383] < mem[(64 * s) + 160]
                mem[(32 * mem[_409 + _383]) + (64 * s) + 192] = Mask(32, 224, t * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383] * mem[_409 + _383])
                idx = idx + 1
                continue 
            idx = 0
            t = 0
            while idx < 4:
                require idx < mem[_409 + _383]
                idx = idx + 1
                t = t or Mask(8, 248, mem[_409 + _383 + idx + 32]) / 2^(8 * idx)
                continue 
            require 4 < mem[(64 * s) + 160]
            mem[(64 * s) + 320] = Mask(32, 64, t) << 160
            idx = 5
            continue 
        _358 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[(32 * s) + 128]
        _360 = mem[(32 * s) + 128]
        mem[mem[64] + 96 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
        mem[mem[64] + 32] = (32 * _360) + 96
        mem[(32 * _360) + _358 + 96] = mem[(64 * s) + 160]
        _466 = mem[(64 * s) + 160]
        mem[(32 * _360) + _358 + 128 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
        return memory
          from mem[64]
           len (32 * _466) + (32 * _360) + _358 + -mem[64] + 128
    mem[128 len 32 * s] = code.data[6188 len 32 * s]
    idx = 0
    t = 0
    while idx < sub_62f25ab3.length:
        mem[0] = 3
        mem[(32 * s) + 132] = sub_62f25ab3[idx]
        require ext_code.size(registryAddress)
        staticcall registryAddress.0xfacd743b with:
                gas gas_remaining wei
               args sub_62f25ab3[idx]
        mem[(32 * s) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            idx = idx + 1
            t = t
            continue 
        require idx < sub_62f25ab3.length
        mem[0] = 3
        require t < s
        mem[(32 * t) + 128] = Mask(160, 96, sub_62f25ab3[idx])
        idx = idx + 1
        t = t + 1
        continue 
    if not s:
        mem[(64 * s) + 160] = s
        mem[64] = (98 * s) + 192
        t = 0
        while t < s:
            require t < mem[96]
            _367 = mem[(32 * t) + 128]
            mem[mem[64]] = 0x2536f8b500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = Mask(160, 96, _367) >> 96
            require ext_code.size(registryAddress)
            staticcall registryAddress.0x2536f8b5 with:
                    gas gas_remaining wei
                   args Mask(160, 96, _367)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _387 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_387] <= 4294967296
            require mem[_387] + 32 <= return_data.size
            require mem[mem[_387] + _387] <= 4294967296 and mem[_387] + mem[mem[_387] + _387] + 32 <= return_data.size
            _410 = mem[_387 + 32]
            require mem[_387 + 32] <= 4294967296
            require mem[_387 + 32] + 32 <= return_data.size
            require mem[mem[_387 + 32] + _387] <= 4294967296 and mem[_387 + 32] + mem[mem[_387 + 32] + _387] + 32 <= return_data.size
            require mem[_387 + 64] <= 4294967296
            require mem[_387 + 64] + 32 <= return_data.size
            require mem[mem[_387 + 64] + _387] <= 4294967296 and mem[_387 + 64] + mem[mem[_387 + 64] + _387] + 32 <= return_data.size
            require t < mem[(32 * s) + 128]
            mem[(32 * t) + (32 * s) + 160] = mem[_387 + 108 len 20]
            if mem[_410 + _387] < 4:
                idx = 0
                t = 0
                while idx < mem[_410 + _387]:
                    require idx < mem[_410 + _387]
                    idx = idx + 1
                    t = t or Mask(8, 248, mem[_410 + _387 + idx + 32]) / 2^(8 * idx)
                    continue 
                require mem[_410 + _387] < mem[(64 * s) + 160]
                mem[(32 * mem[_410 + _387]) + (64 * s) + 192] = Mask(32, 224, t * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387] * mem[_410 + _387])
                idx = idx + 1
                continue 
            idx = 0
            t = 0
            while idx < 4:
                require idx < mem[_410 + _387]
                idx = idx + 1
                t = t or Mask(8, 248, mem[_410 + _387 + idx + 32]) / 2^(8 * idx)
                continue 
            require 4 < mem[(64 * s) + 160]
            mem[(64 * s) + 320] = Mask(32, 64, t) << 160
            idx = 5
            continue 
        _364 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[(32 * s) + 128]
        _366 = mem[(32 * s) + 128]
        mem[mem[64] + 96 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
        mem[mem[64] + 32] = (32 * _366) + 96
        mem[(32 * _366) + _364 + 96] = mem[(64 * s) + 160]
        _471 = mem[(64 * s) + 160]
        mem[(32 * _366) + _364 + 128 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
        return memory
          from mem[64]
           len (32 * _471) + (32 * _366) + _364 + -mem[64] + 128
    mem[(32 * s) + 160 len 32 * s] = code.data[6188 len 32 * s]
    mem[(64 * s) + 160] = s
    mem[64] = (98 * s) + 192
    mem[(64 * s) + 192 len 32 * s] = code.data[6188 len 32 * s]
    t = 0
    while t < s:
        require t < mem[96]
        _373 = mem[(32 * t) + 128]
        mem[mem[64]] = 0x2536f8b500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = Mask(160, 96, _373) >> 96
        require ext_code.size(registryAddress)
        staticcall registryAddress.0x2536f8b5 with:
                gas gas_remaining wei
               args Mask(160, 96, _373)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _391 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_391] <= 4294967296
        require mem[_391] + 32 <= return_data.size
        require mem[mem[_391] + _391] <= 4294967296 and mem[_391] + mem[mem[_391] + _391] + 32 <= return_data.size
        _411 = mem[_391 + 32]
        require mem[_391 + 32] <= 4294967296
        require mem[_391 + 32] + 32 <= return_data.size
        require mem[mem[_391 + 32] + _391] <= 4294967296 and mem[_391 + 32] + mem[mem[_391 + 32] + _391] + 32 <= return_data.size
        require mem[_391 + 64] <= 4294967296
        require mem[_391 + 64] + 32 <= return_data.size
        require mem[mem[_391 + 64] + _391] <= 4294967296 and mem[_391 + 64] + mem[mem[_391 + 64] + _391] + 32 <= return_data.size
        require t < mem[(32 * s) + 128]
        mem[(32 * t) + (32 * s) + 160] = mem[_391 + 108 len 20]
        if mem[_411 + _391] < 4:
            idx = 0
            t = 0
            while idx < mem[_411 + _391]:
                require idx < mem[_411 + _391]
                idx = idx + 1
                t = t or Mask(8, 248, mem[_411 + _391 + idx + 32]) / 2^(8 * idx)
                continue 
            require mem[_411 + _391] < mem[(64 * s) + 160]
            mem[(32 * mem[_411 + _391]) + (64 * s) + 192] = Mask(32, 224, t * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391] * mem[_411 + _391])
            idx = idx + 1
            continue 
        idx = 0
        t = 0
        while idx < 4:
            require idx < mem[_411 + _391]
            idx = idx + 1
            t = t or Mask(8, 248, mem[_411 + _391 + idx + 32]) / 2^(8 * idx)
            continue 
        require 4 < mem[(64 * s) + 160]
        mem[(64 * s) + 320] = Mask(32, 64, t) << 160
        idx = 5
        continue 
    _370 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[(32 * s) + 128]
    _372 = mem[(32 * s) + 128]
    mem[mem[64] + 96 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
    mem[mem[64] + 32] = (32 * _372) + 96
    mem[(32 * _372) + _370 + 96] = mem[(64 * s) + 160]
    _476 = mem[(64 * s) + 160]
    mem[(32 * _372) + _370 + 128 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
    return memory
      from mem[64]
       len (32 * _476) + (32 * _372) + _370 + -mem[64] + 128
}



}
