contract main {




// =====================  Runtime code  =====================


#
#  - sub_208c9a3d(?)
#  - sub_e3e08ee9(?)
#
address sub_fabcf585Address;
uint256 ownerCut;
address ownerAddress;
mapping of struct sub_e2b375dc;
array of struct sub_98f3c2d2;
mapping of struct sub_1e5465af;
uint256 startTime;
uint256 endTime;

function sub_1a148c81(?) {
    return sub_e2b375dc[arg1].field_0, 
           sub_e2b375dc[arg1].field_256,
           sub_e2b375dc[arg1].field_512,
           sub_e2b375dc[arg1].field_768,
           sub_e2b375dc[arg1].field_1024,
           sub_e2b375dc[arg1].field_1280
}

function sub_1e5465af(?) {
    return bool(sub_1e5465af[arg1].field_0), 
           sub_1e5465af[arg1].field_256,
           sub_1e5465af[arg1].field_512,
           sub_1e5465af[arg1].field_512,
           sub_1e5465af[arg1].field_536
}

function endTime() {
    return endTime
}

function startTime() {
    return startTime
}

function ownerCut() {
    return ownerCut
}

function ownerAddress() {
    return ownerAddress
}

function sub_98f3c2d2(?) {
    require arg1 < sub_98f3c2d2.length
    return sub_98f3c2d2[arg1].field_0
}

function sub_e2b375dc(?) {
    return sub_e2b375dc[arg1].field_0, 
           sub_e2b375dc[arg1].field_256,
           sub_e2b375dc[arg1].field_512,
           sub_e2b375dc[arg1].field_768,
           sub_e2b375dc[arg1].field_1024,
           sub_e2b375dc[arg1].field_1280
}

function sub_fabcf585(?) {
    return sub_fabcf585Address
}

function _fallback() payable {
    revert
}

function sub_1d4bcc0a(?) {
    if ownerAddress != msg.sender:
        revert with 0, 'error'
    startTime = arg1
    endTime = arg2
}

function sub_932b24ad(?) {
    if ownerAddress != msg.sender:
        revert with 0, 'error'
    sub_98f3c2d2.length = 0
    idx = 0
    while sub_98f3c2d2.length > idx:
        sub_98f3c2d2[idx].field_0 = 0
        idx = idx + 1
        continue 
}

function sub_c2296209(?) {
    if not sub_98f3c2d2.length:
        mem[(32 * sub_98f3c2d2.length) + 128] = 32
        mem[(32 * sub_98f3c2d2.length) + 160] = sub_98f3c2d2.length
        mem[(32 * sub_98f3c2d2.length) + 192 len floor32(sub_98f3c2d2.length)] = mem[128 len floor32(sub_98f3c2d2.length)]
        return memory
          from (32 * sub_98f3c2d2.length) + 128
           len (96 * sub_98f3c2d2.length) + 64
    mem[128] = uint256(sub_98f3c2d2.field_0)
    idx = 128
    s = 0
    while (32 * sub_98f3c2d2.length) + 96 > idx:
        mem[idx + 32] = sub_98f3c2d2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_98f3c2d2.length) + 192 len floor32(sub_98f3c2d2.length)] = mem[128 len floor32(sub_98f3c2d2.length)]
    return Array(len=sub_98f3c2d2.length, data=mem[128 len floor32(sub_98f3c2d2.length)], mem[(32 * sub_98f3c2d2.length) + floor32(sub_98f3c2d2.length) + 192 len (32 * sub_98f3c2d2.length) - floor32(sub_98f3c2d2.length)]), 
}

function sub_d1128519(?) {
    idx = 0
    s = 0
    while idx < sub_98f3c2d2.length:
        mem[0] = sub_98f3c2d2[idx].field_0
        mem[32] = 3
        if sub_e2b375dc[stor4[idx].field_0].field_256 != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if s:
        mem[128 len 32 * s] = code.data[6450 len 32 * s]
    t = 0
    idx = 0
    while idx < sub_98f3c2d2.length:
        mem[0] = sub_98f3c2d2[idx].field_0
        mem[32] = 3
        if sub_e2b375dc[stor4[idx].field_0].field_256 != arg1:
            t = t
            idx = idx + 1
            continue 
        require idx < sub_98f3c2d2.length
        mem[0] = sub_98f3c2d2[idx].field_0
        mem[32] = 3
        require t < s
        mem[(32 * t) + 128] = sub_e2b375dc[stor4[idx].field_0].field_0
        t = t + 1
        idx = idx + 1
        continue 
    mem[(32 * s) + 192 len floor32(s)] = mem[128 len floor32(s)]
    return Array(len=s, data=mem[128 len floor32(s)], mem[(32 * s) + floor32(s) + 192 len (32 * s) - floor32(s)])
}

function sub_a9ec560d(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if ownerAddress != msg.sender:
        revert with 0, 'error'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        sub_98f3c2d2.length++
        sub_98f3c2d2[sub_98f3c2d2.length].field_0 = mem[(32 * idx) + 128]
        require idx < arg1.length
        require idx < arg1.length
        sub_e2b375dc[mem[(32 * idx) + 128]].field_0 = mem[(32 * idx) + 128]
        require idx < arg2.length
        require idx < arg1.length
        sub_e2b375dc[mem[(32 * idx) + 128]].field_512 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg3.length
        require idx < arg1.length
        sub_e2b375dc[mem[(32 * idx) + 128]].field_256 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 204 len 20]
        require idx < arg2.length
        sub_e2b375dc[mem[(32 * idx) + (32 * arg1.length) + 160]].field_768 = 0
        require idx < arg2.length
        mem[0] = mem[(32 * arg1.length) + (32 * idx) + 160]
        mem[32] = 3
        sub_e2b375dc[mem[(32 * arg1.length) + (32 * idx) + 160]].field_1024 = 0
        idx = idx + 1
        continue 
}

function sub_757c2cac(?) {
    if sub_98f3c2d2.length:
        require 1 <= sub_98f3c2d2.length
        idx = var26006
        while idx < sub_98f3c2d2.length - 1:
            require 1 <= sub_98f3c2d2.length
            require idx <= sub_98f3c2d2.length - 1
            s = var46006
            t = var46007
            while t < sub_98f3c2d2.length + -idx - 1:
                require t + 1 >= t
                require t + 1 < sub_98f3c2d2.length
                require t < sub_98f3c2d2.length
                mem[0] = sub_98f3c2d2[t].field_0
                mem[32] = 3
                if sub_e2b375dc[stor4[t].field_0].field_1280 >= sub_e2b375dc[stor4[t].field_256].field_1280:
                    require t + 1 >= t
                    require 1 <= sub_98f3c2d2.length
                    require idx <= sub_98f3c2d2.length - 1
                    s = s
                    t = t + 1
                    continue 
                require t < sub_98f3c2d2.length
                require t + 1 >= t
                require t + 1 < sub_98f3c2d2.length
                require t < sub_98f3c2d2.length
                sub_98f3c2d2[t].field_0 = sub_98f3c2d2[t].field_256
                require t + 1 >= t
                require t + 1 < sub_98f3c2d2.length
                mem[0] = 4
                sub_98f3c2d2[t].field_256 = sub_98f3c2d2[t].field_0
                require t + 1 >= t
                require 1 <= sub_98f3c2d2.length
                require idx <= sub_98f3c2d2.length - 1
                s = sub_98f3c2d2[t].field_0
                t = t + 1
                continue 
            if idx + 1 >= idx:
                if 1 <= sub_98f3c2d2.length:
                    idx = idx + 1
                    continue 
            revert
}



}
