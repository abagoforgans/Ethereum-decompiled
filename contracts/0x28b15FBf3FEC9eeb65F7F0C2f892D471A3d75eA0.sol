contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;

function owner() payable {
    return owner
}

function token() payable {
    return tokenAddress
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

function sub_5d58bf42(?) payable {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x98650275 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function period() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0xef78d4fd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function mintAmount() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x5a2bcc18 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_e207b334(?) payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x1efe9395 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_ecd4e028(?) payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0xb5b80f12 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x983b2d56 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_884a727b(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0xef78d4fd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0xef78d4fd with:
                gas gas_remaining wei
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require not ext_call.return_data[0]
        require arg1.length
        require arg1.length == arg2.length
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < arg2.length
            require mem[(32 * idx) + (32 * arg1.length) + 160] + s >= s
            idx = idx + 1
            s = mem[(32 * idx) + (32 * arg1.length) + 160] + s
            continue 
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0xb5b80f12 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require mem[(64 * arg1.length) + 160] * arg1.length <= ext_call.return_data[0]
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 292 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(64 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 292] = arg2.length
        mem[(64 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x7fd30df0 with:
             gas gas_remaining wei
            args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg1.length) + 292 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32]), (32 * arg1.length) + 96
    else:
        require arg1.length
        require arg1.length == arg2.length
        require arg1.length == arg3.length
        require 2 * arg1.length >= arg1.length
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 2 * arg1.length
        if not uint255(arg1.length):
            mem[(98 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = 2 * arg1.length
            idx = 0
            s = 0
            t = 0
            while idx < arg1.length:
                require idx < arg2.length
                _131 = mem[(32 * idx) + (32 * arg1.length) + 160]
                if not mem[(32 * idx) + (32 * arg1.length) + 160]:
                    require idx < arg2.length
                    _167 = mem[(32 * idx) + (32 * arg1.length) + 160]
                    require 0 <= mem[(32 * idx) + (32 * arg1.length) + 160]
                    require mem[(32 * idx) + (32 * arg1.length) + 160] + t >= t
                    require idx < arg1.length
                    require s < 2 * arg1.length
                    mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = mem[(32 * idx) + 140 len 20]
                    require s < mem[(98 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                    mem[(32 * s) + (98 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256] = _167
                    require idx < arg3.length
                    require s + 1 < 2 * arg1.length
                    mem[(32 * s + 1) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]
                    require s + 1 < mem[(98 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                    mem[(32 * s + 1) + (98 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256] = 0
                    idx = idx + 1
                    s = s + 2
                    t = _167 + t
                    continue 
                require 28 * mem[(32 * idx) + (32 * arg1.length) + 160] / mem[(32 * idx) + (32 * arg1.length) + 160] == 28
                require idx < arg2.length
                _172 = mem[(32 * idx) + (32 * arg1.length) + 160]
                require 28 * mem[(32 * idx) + (32 * arg1.length) + 160] / 100 <= mem[(32 * idx) + (32 * arg1.length) + 160]
                require mem[(32 * idx) + (32 * arg1.length) + 160] + t >= t
                require idx < arg1.length
                require s < 2 * arg1.length
                mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = mem[(32 * idx) + 140 len 20]
                require s < mem[(98 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                mem[(32 * s) + (98 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256] = _172 - (28 * _131 / 100)
                require idx < arg3.length
                require s + 1 < 2 * arg1.length
                mem[(32 * s + 1) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]
                require s + 1 < mem[(98 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                mem[(32 * s + 1) + (98 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256] = 28 * _131 / 100
                idx = idx + 1
                s = s + 2
                t = _172 + t
                continue 
        else:
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 64 * arg1.length] = code.data[3784 len 64 * arg1.length]
            mem[(98 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = 2 * arg1.length
            mem[(98 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256 len 64 * arg1.length] = code.data[3784 len 64 * arg1.length]
            idx = 0
            s = 0
            t = 0
            while idx < arg1.length:
                require idx < arg2.length
                _132 = mem[(32 * idx) + (32 * arg1.length) + 160]
                if not mem[(32 * idx) + (32 * arg1.length) + 160]:
                    require idx < arg2.length
                    _169 = mem[(32 * idx) + (32 * arg1.length) + 160]
                    require 0 <= mem[(32 * idx) + (32 * arg1.length) + 160]
                    require mem[(32 * idx) + (32 * arg1.length) + 160] + t >= t
                    require idx < arg1.length
                    require s < 2 * arg1.length
                    mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = mem[(32 * idx) + 140 len 20]
                    require s < mem[(98 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                    mem[(32 * s) + (98 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256] = _169
                    require idx < arg3.length
                    require s + 1 < 2 * arg1.length
                    mem[(32 * s + 1) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]
                    require s + 1 < mem[(98 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                    mem[(32 * s + 1) + (98 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256] = 0
                    idx = idx + 1
                    s = s + 2
                    t = _169 + t
                    continue 
                require 28 * mem[(32 * idx) + (32 * arg1.length) + 160] / mem[(32 * idx) + (32 * arg1.length) + 160] == 28
                require idx < arg2.length
                _173 = mem[(32 * idx) + (32 * arg1.length) + 160]
                require 28 * mem[(32 * idx) + (32 * arg1.length) + 160] / 100 <= mem[(32 * idx) + (32 * arg1.length) + 160]
                require mem[(32 * idx) + (32 * arg1.length) + 160] + t >= t
                require idx < arg1.length
                require s < 2 * arg1.length
                mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = mem[(32 * idx) + 140 len 20]
                require s < mem[(98 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                mem[(32 * s) + (98 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256] = _173 - (28 * _132 / 100)
                require idx < arg3.length
                require s + 1 < 2 * arg1.length
                mem[(32 * s + 1) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]
                require s + 1 < mem[(98 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                mem[(32 * s + 1) + (98 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256] = 28 * _132 / 100
                idx = idx + 1
                s = s + 2
                t = _173 + t
                continue 
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0xb5b80f12 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require t <= ext_call.return_data[0]
        mem[(163 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256] = 0x7fd30df000000000000000000000000000000000000000000000000000000000
        mem[(163 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 260] = 64
        mem[(163 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 324] = 2 * arg1.length
        mem[(163 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 356 len 2 * Mask(251, 4, arg1.length)] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 2 * Mask(251, 4, arg1.length)]
        mem[(163 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 292] = (64 * arg1.length) + 96
        mem[(228 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 356] = mem[(98 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
        mem[(228 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 388 len floor32(mem[(98 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224])] = mem[(98 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256 len floor32(mem[(98 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224])]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x7fd30df0 with:
             gas gas_remaining wei
            args mem[(163 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 260 len (32 * mem[(98 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]) + (65 * arg1.length) + 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}



}
