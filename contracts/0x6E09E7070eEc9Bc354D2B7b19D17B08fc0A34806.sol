contract main {




// =====================  Runtime code  =====================


#
#  - sub_460dba69(?)
#  - sub_51132bbb(?)
#  - addressToString(address arg1)
#
const sub_0d3a9c82(?) = 100


address owner;
array of struct sub_747b24b7;
mapping of uint256 sub_8730925f;
uint256 stor3;
uint256 sub_f6393d65;
array of struct sub_1b3e093c;
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

function sub_1b3e093c(?) {
    require arg1 < sub_1b3e093c.length
    return sub_1b3e093c[arg1].field_0, sub_1b3e093c[arg1].field_256
}

function sub_24ad6bcc(?) {
    return sub_24ad6bccAddress
}

function getTopScore(uint256 arg1) {
    require stor3 + arg1 < sub_1b3e093c.length
    return sub_1b3e093c[stor3 + arg1].field_256
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
    require arg1 < 100
    return sub_b59e27d5[arg1]
}

function releaseDate() {
    return releaseDate
}

function sub_f6393d65(?) {
    return sub_f6393d65
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
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
    require arg1 < 100
    sub_b59e27d5[arg1] = arg2
}

function sub_26ee1cdc(?) {
    require msg.sender == owner
    sub_8ff2aa54 = block.timestamp
    sub_f6393d65 = 0
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

function sub_1b5eb190(?) {
    mem[64] = 288
    if sub_8730925f[address(msg.sender)] >= arg1:
        if sub_747b24b7.length < 100:
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
        if sub_747b24b7.length < 100:
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

function sub_79a9b5f2(?) {
    mem[64] = 288
    require msg.sender == owner
    if sub_8730925f[address(arg1)] >= arg2:
        if sub_f6393d65 < 100:
            sub_1b3e093c.length++
            sub_1b3e093c[sub_1b3e093c.length].field_0 = arg1
            sub_1b3e093c[sub_1b3e093c.length].field_256 = arg2
            sub_f6393d65++
        else:
            require 0 < sub_1b3e093c.length
            mem[0] = 5
            s = 160
            idx = 1
            s = 0
            t = sub_747b24b7[sha3(mem[0])].field_0
            while idx < sub_f6393d65:
                require idx < sub_1b3e093c.length
                mem[0] = 5
                _34 = mem[64]
                mem[64] = mem[64] + 64
                mem[_34] = sub_1b3e093c[idx].field_0
                mem[_34 + 32] = sub_1b3e093c[idx].field_256
                if t <= sub_1b3e093c[idx].field_256:
                    s = _34
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                s = _34
                idx = idx + 1
                s = idx
                t = sub_1b3e093c[idx].field_256
                continue 
            if t < arg2:
                require s < sub_1b3e093c.length
                sub_1b3e093c[s].field_0 = arg1
                sub_1b3e093c[s].field_256 = arg2
    else:
        sub_8730925f[address(arg1)] = arg2
        if sub_f6393d65 < 100:
            sub_1b3e093c.length++
            sub_1b3e093c[sub_1b3e093c.length].field_0 = arg1
            sub_1b3e093c[sub_1b3e093c.length].field_256 = arg2
            sub_f6393d65++
        else:
            require 0 < sub_1b3e093c.length
            mem[0] = 5
            s = 160
            idx = 1
            s = 0
            t = sub_747b24b7[sha3(mem[0])].field_0
            while idx < sub_f6393d65:
                require idx < sub_1b3e093c.length
                mem[0] = 5
                _38 = mem[64]
                mem[64] = mem[64] + 64
                mem[_38] = sub_1b3e093c[idx].field_0
                mem[_38 + 32] = sub_1b3e093c[idx].field_256
                if t <= sub_1b3e093c[idx].field_256:
                    s = _38
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                s = _38
                idx = idx + 1
                s = idx
                t = sub_1b3e093c[idx].field_256
                continue 
            if t < arg2:
                require s < sub_1b3e093c.length
                sub_1b3e093c[s].field_0 = arg1
                sub_1b3e093c[s].field_256 = arg2
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
    mem[160] = sub_f6393d65
    mem[64] = (32 * sub_f6393d65) + 192
    if not sub_f6393d65:
        s = 96
        idx = 0
        while idx < sub_f6393d65:
            require idx < sub_1b3e093c.length
            mem[0] = 5
            _60 = mem[64]
            mem[64] = mem[64] + 64
            mem[_60] = sub_1b3e093c[idx].field_0
            mem[_60 + 32] = sub_1b3e093c[idx].field_256
            require idx < mem[160]
            mem[(32 * idx) + 192] = _60
            s = _60
            idx = idx + 1
            continue 
        _62 = mem[64]
        mem[64] = mem[64] + 64
        mem[_62] = 0
        mem[_62 + 32] = 0
        s = 0
        idx = 0
        while idx < mem[160]:
            t = _62
            s = idx + 1
            while s < mem[160]:
                require s < mem[160]
                require idx < mem[160]
                if mem[mem[(32 * idx) + 192] + 32] <= mem[mem[(32 * s) + 192] + 32]:
                    t = t
                    s = s + 1
                    continue 
                require idx < mem[160]
                _174 = mem[(32 * idx) + 192]
                require s < mem[160]
                require idx < mem[160]
                mem[(32 * idx) + 192] = mem[(32 * s) + 192]
                require s < mem[160]
                mem[(32 * s) + 192] = _174
                t = _174
                s = s + 1
                continue 
            s = s
            idx = idx + 1
            continue 
        idx = 0
        while idx < sub_f6393d65:
            require idx < mem[160]
            _162 = mem[mem[(32 * idx) + 192]]
            require msg.sender == owner
            require idx < 100
            mem[mem[64] + 4] = mem[mem[(32 * idx) + 192] + 12 len 20]
            require ext_code.size(sub_24ad6bccAddress)
            call sub_24ad6bccAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], sub_b59e27d5[idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64]] = address(_162)
            mem[mem[64] + 32] = idx
            mem[mem[64] + 64] = sub_b59e27d5[idx]
            emit 0x3d5c4db1: address(_162), idx, sub_b59e27d5[idx]
            idx = idx + 1
            continue 
    else:
        mem[64] = (32 * sub_f6393d65) + 256
        mem[(32 * sub_f6393d65) + 192] = 0
        mem[(32 * sub_f6393d65) + 224] = 0
        mem[var23001] = (32 * sub_f6393d65) + 192
        s = var23001
        idx = var23002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * sub_f6393d65) + 192] = 0
            mem[(32 * sub_f6393d65) + 224] = 0
            mem[s + 32] = (32 * sub_f6393d65) + 192
            s = s + 32
            idx = idx - 1
            continue 
        s = 96
        idx = 0
        while idx < sub_f6393d65:
            require idx < sub_1b3e093c.length
            mem[0] = 5
            _167 = mem[64]
            mem[64] = mem[64] + 64
            mem[_167] = sub_1b3e093c[idx].field_0
            mem[_167 + 32] = sub_1b3e093c[idx].field_256
            require idx < mem[160]
            mem[(32 * idx) + 192] = _167
            s = _167
            idx = idx + 1
            continue 
        _171 = mem[64]
        mem[64] = mem[64] + 64
        mem[_171] = 0
        mem[_171 + 32] = 0
        s = 0
        idx = 0
        while idx < mem[160]:
            t = _171
            s = idx + 1
            while s < mem[160]:
                require s < mem[160]
                require idx < mem[160]
                if mem[mem[(32 * idx) + 192] + 32] <= mem[mem[(32 * s) + 192] + 32]:
                    t = t
                    s = s + 1
                    continue 
                require idx < mem[160]
                _237 = mem[(32 * idx) + 192]
                require s < mem[160]
                require idx < mem[160]
                mem[(32 * idx) + 192] = mem[(32 * s) + 192]
                require s < mem[160]
                mem[(32 * s) + 192] = _237
                t = _237
                s = s + 1
                continue 
            s = s
            idx = idx + 1
            continue 
        idx = 0
        while idx < sub_f6393d65:
            require idx < mem[160]
            _230 = mem[mem[(32 * idx) + 192]]
            require msg.sender == owner
            require idx < 100
            mem[mem[64] + 4] = mem[mem[(32 * idx) + 192] + 12 len 20]
            require ext_code.size(sub_24ad6bccAddress)
            call sub_24ad6bccAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], sub_b59e27d5[idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64]] = address(_230)
            mem[mem[64] + 32] = idx
            mem[mem[64] + 64] = sub_b59e27d5[idx]
            emit 0x3d5c4db1: address(_230), idx, sub_b59e27d5[idx]
            idx = idx + 1
            continue 
}



}
