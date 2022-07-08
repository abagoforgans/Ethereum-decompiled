contract main {




// =====================  Runtime code  =====================


const sub_f3bc843e(?) = ''


mapping of uint8 stor0;
mapping of uint8 stor1;
mapping of uint8 stor99;

function _fallback() payable {
    revert
}

function validateToken(address arg1) {
    if not stor1[address(arg1)]:
        revert with 0, 'Token is not whitelisted'
}

function addTokenToWhitelist(address arg1) {
    require stor0[address(msg.sender)]
    if not arg1:
        revert with 0, 'Whitelisted token address is not set'
    stor1[address(arg1)] = 1
}

function removeTokenFromWhitelist(address arg1) {
    require stor0[address(msg.sender)]
    if not arg1:
        revert with 0, 'Whitelisted token address is not set'
    stor1[address(arg1)] = 0
}

function sub_c8fe2c68(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        if not stor1[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 'Token is not whitelisted'
        idx = idx + 1
        continue 
}

function checkRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 0
    require stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]
}

function hasRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128] = bool(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function sub_80cfdfc2(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg1.length) + 192
    mem[(32 * arg1.length) + 128] = 10
    mem[(32 * arg1.length) + 160] = 0x676f7665726e616e6365000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 192 len 0] = None
    mem[(32 * arg1.length) + 193 len 9] = 1908046358119698230883
    mem[(32 * arg1.length) + 192 len 1] = 0
    mem[(32 * arg1.length) + 202] = 0
    mem[0] = msg.sender
    mem[32] = sha3(0)
    require stor0[address(msg.sender)]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _55 = mem[(32 * idx) + 128]
        _56 = mem[64]
        mem[64] = mem[64] + 64
        mem[_56] = 10
        mem[_56 + 32] = 0x676f7665726e616e6365000000000000000000000000000000000000000000
        t = _56 + 32
        u = mem[64]
        s = mem[_56]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_56])] = 256^(-(mem[_56] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_56])] or mem[_56 + floor32(mem[_56]) + 32] and !(256^(-(mem[_56] % 32) + 32) - 1)
        mem[mem[64] + 10] = 0
        require stor0[mem[mem[64] len 10]][address(msg.sender)]
        if not address(_55):
            revert with 0, 'Whitelisted token address is not set'
        mem[0] = address(_55)
        mem[32] = 1
        stor1[address(_55)] = 1
        idx = idx + 1
        continue 
}



}
