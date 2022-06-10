contract main {




// =====================  Runtime code  =====================


const sub_0d3a9c82(?) = 50


address owner;
array of struct sub_747b24b7;
mapping of uint256 sub_8730925f;
address sub_24ad6bccAddress;
address sub_ad94361dAddress;
array of uint256 sub_b59e27d5;
uint256 startDate;
uint256 releaseDate;
uint256 sub_5313223e;
uint256 sub_8ff2aa54;

function startDate() {
    return startDate
}

function sub_24ad6bcc(?) {
    return sub_24ad6bccAddress
}

function sub_5313223e(?) {
    return sub_5313223e
}

function sub_747b24b7(?) {
    require arg1 < sub_747b24b7.length
    return sub_747b24b7[arg1].field_0, sub_747b24b7[arg1].field_256
}

function sub_8730925f(?) {
    return sub_8730925f[arg1]
}

function owner() {
    return owner
}

function sub_8ff2aa54(?) {
    return sub_8ff2aa54
}

function sub_a4af7f64(?) {
    return sub_747b24b7.length
}

function sub_ad94361d(?) {
    return sub_ad94361dAddress
}

function sub_b59e27d5(?) {
    require arg1 < 50
    return sub_b59e27d5[arg1]
}

function releaseDate() {
    return releaseDate
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_54ccb18b(?) {
    require msg.sender == owner
}

function sub_b895741c(?) {
    return block.timestamp >= releaseDate
}

function sub_b0286e30(?) {
    require msg.sender == owner
    sub_5313223e = arg1
}

function sub_8e068aa4(?) {
    require msg.sender == owner
    sub_24ad6bccAddress = arg1
}

function sub_b5f86059(?) {
    require msg.sender == owner
    sub_ad94361dAddress = arg1
}

function sub_49bbefde(?) {
    require msg.sender == owner
    startDate = arg1
    releaseDate = arg2
}

function sub_25ed252c(?) {
    require msg.sender == owner
    require arg1 < 50
    sub_b59e27d5[arg1] = arg2
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_26ee1cdc(?) {
    require msg.sender == owner
    sub_8ff2aa54 = block.timestamp
    sub_747b24b7.length = 0
    if sub_747b24b7.length > 0:
        idx = 0
        while 2 * sub_747b24b7.length > idx:
            sub_747b24b7[idx].field_0 = 0
            sub_747b24b7[idx].field_256 = 0
            idx = idx + 2
            continue 
}

function sub_1b5eb190(?) {
    mem[64] = 288
    if sub_8730925f[address(msg.sender)] >= arg1:
        if sub_747b24b7.length < 50:
            sub_747b24b7.length++
            sub_747b24b7[sub_747b24b7.length].field_0 = msg.sender
            sub_747b24b7[sub_747b24b7.length].field_256 = arg1
        else:
            require 0 < sub_747b24b7.length
            mem[0] = 1
            s = 160
            idx = 1
            s = 0
            t = sub_747b24b7[sha3(mem[0])].field_0
            while idx < sub_747b24b7.length:
                mem[0] = 1
                _34 = mem[64]
                mem[64] = mem[64] + 64
                mem[_34] = sub_747b24b7[idx].field_0
                mem[_34 + 32] = sub_747b24b7[idx].field_256
                if t <= sub_747b24b7[idx].field_256:
                    s = _34
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                s = _34
                idx = idx + 1
                s = idx
                t = sub_747b24b7[idx].field_256
                continue 
            if t < arg1:
                require s < sub_747b24b7.length
                sub_747b24b7[s].field_0 = msg.sender
                sub_747b24b7[s].field_256 = arg1
    else:
        sub_8730925f[address(msg.sender)] = arg1
        if sub_747b24b7.length < 50:
            sub_747b24b7.length++
            sub_747b24b7[sub_747b24b7.length].field_0 = msg.sender
            sub_747b24b7[sub_747b24b7.length].field_256 = arg1
        else:
            require 0 < sub_747b24b7.length
            mem[0] = 1
            s = 160
            idx = 1
            s = 0
            t = sub_747b24b7[sha3(mem[0])].field_0
            while idx < sub_747b24b7.length:
                mem[0] = 1
                _38 = mem[64]
                mem[64] = mem[64] + 64
                mem[_38] = sub_747b24b7[idx].field_0
                mem[_38 + 32] = sub_747b24b7[idx].field_256
                if t <= sub_747b24b7[idx].field_256:
                    s = _38
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                s = _38
                idx = idx + 1
                s = idx
                t = sub_747b24b7[idx].field_256
                continue 
            if t < arg1:
                require s < sub_747b24b7.length
                sub_747b24b7[s].field_0 = msg.sender
                sub_747b24b7[s].field_256 = arg1
}

function sub_92f0b13e(?) {
    mem[96] = 0
    mem[128] = 0
    require msg.sender == owner
    if block.timestamp < releaseDate:
        revert with 0, 'Season in progress'
    require msg.sender == owner
    startDate = releaseDate
    releaseDate += sub_5313223e
    mem[160] = sub_747b24b7.length
    mem[64] = (32 * sub_747b24b7.length) + 192
    if not sub_747b24b7.length:
        s = 96
        idx = 0
        while idx < sub_747b24b7.length:
            mem[0] = 1
            _68 = mem[64]
            mem[64] = mem[64] + 64
            mem[_68] = sub_747b24b7[idx].field_0
            mem[_68 + 32] = sub_747b24b7[idx].field_256
            require idx < mem[160]
            mem[(32 * idx) + 192] = _68
            s = _68
            idx = idx + 1
            continue 
        _70 = mem[64]
        mem[64] = mem[64] + 64
        mem[_70] = 0
        mem[_70 + 32] = 0
        s = 0
        idx = 0
        while idx < mem[160]:
            t = _70
            s = idx + 1
            while s < mem[160]:
                require s < mem[160]
                require idx < mem[160]
                if mem[mem[(32 * idx) + 192] + 32] <= mem[mem[(32 * s) + 192] + 32]:
                    t = t
                    s = s + 1
                    continue 
                require idx < mem[160]
                _198 = mem[(32 * idx) + 192]
                require s < mem[160]
                require idx < mem[160]
                mem[(32 * idx) + 192] = mem[(32 * s) + 192]
                require s < mem[160]
                mem[(32 * s) + 192] = _198
                t = _198
                s = s + 1
                continue 
            s = s
            idx = idx + 1
            continue 
        idx = 0
        while idx < sub_747b24b7.length:
            require idx < mem[160]
            _186 = mem[mem[(32 * idx) + 192]]
            require msg.sender == owner
            require idx < 50
            require ext_code.size(sub_24ad6bccAddress)
            call sub_24ad6bccAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_ad94361dAddress, sub_b59e27d5[idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 68] = sub_b59e27d5[idx]
            require ext_code.size(sub_24ad6bccAddress)
            call sub_24ad6bccAddress.0x23b872dd with:
                 gas gas_remaining wei
                args sub_ad94361dAddress, address(_186), sub_b59e27d5[idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64]] = address(_186)
            mem[mem[64] + 32] = idx
            mem[mem[64] + 64] = sub_b59e27d5[idx]
            emit 0x3d5c4db1: address(_186), idx, sub_b59e27d5[idx]
            idx = idx + 1
            continue 
    else:
        mem[64] = (32 * sub_747b24b7.length) + 256
        mem[(32 * sub_747b24b7.length) + 192] = 0
        mem[(32 * sub_747b24b7.length) + 224] = 0
        mem[var23001] = (32 * sub_747b24b7.length) + 192
        s = var23001
        idx = var23002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * sub_747b24b7.length) + 192] = 0
            mem[(32 * sub_747b24b7.length) + 224] = 0
            mem[s + 32] = (32 * sub_747b24b7.length) + 192
            s = s + 32
            idx = idx - 1
            continue 
        s = 96
        idx = 0
        while idx < sub_747b24b7.length:
            mem[0] = 1
            _191 = mem[64]
            mem[64] = mem[64] + 64
            mem[_191] = sub_747b24b7[idx].field_0
            mem[_191 + 32] = sub_747b24b7[idx].field_256
            require idx < mem[160]
            mem[(32 * idx) + 192] = _191
            s = _191
            idx = idx + 1
            continue 
        _195 = mem[64]
        mem[64] = mem[64] + 64
        mem[_195] = 0
        mem[_195 + 32] = 0
        s = 0
        idx = 0
        while idx < mem[160]:
            t = _195
            s = idx + 1
            while s < mem[160]:
                require s < mem[160]
                require idx < mem[160]
                if mem[mem[(32 * idx) + 192] + 32] <= mem[mem[(32 * s) + 192] + 32]:
                    t = t
                    s = s + 1
                    continue 
                require idx < mem[160]
                _273 = mem[(32 * idx) + 192]
                require s < mem[160]
                require idx < mem[160]
                mem[(32 * idx) + 192] = mem[(32 * s) + 192]
                require s < mem[160]
                mem[(32 * s) + 192] = _273
                t = _273
                s = s + 1
                continue 
            s = s
            idx = idx + 1
            continue 
        idx = 0
        while idx < sub_747b24b7.length:
            require idx < mem[160]
            _266 = mem[mem[(32 * idx) + 192]]
            require msg.sender == owner
            require idx < 50
            require ext_code.size(sub_24ad6bccAddress)
            call sub_24ad6bccAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_ad94361dAddress, sub_b59e27d5[idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 68] = sub_b59e27d5[idx]
            require ext_code.size(sub_24ad6bccAddress)
            call sub_24ad6bccAddress.0x23b872dd with:
                 gas gas_remaining wei
                args sub_ad94361dAddress, address(_266), sub_b59e27d5[idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64]] = address(_266)
            mem[mem[64] + 32] = idx
            mem[mem[64] + 64] = sub_b59e27d5[idx]
            emit 0x3d5c4db1: address(_266), idx, sub_b59e27d5[idx]
            idx = idx + 1
            continue 
}



}
