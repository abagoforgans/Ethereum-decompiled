contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;

function _fallback() payable {
    mem[160 len 0] = None
    stor0[mem[160 len 5]][address(msg.sender)] = 1
    emit RoleAdded(msg.sender, 'admin');
    return code.data[550 len 3793]
}



// =====================  Runtime code  =====================


const ROLE_ADMIN = 'admin'


mapping of uint8 stor0;
array of uint256 sub_662ac607;
mapping of uint8 stor99;

function sub_662ac607(?) {
    require arg3 < 256
    return sub_662ac607[arg1][arg2][arg3]
}

function _fallback() payable {
    revert
}

function checkRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 0
    require uint8(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)])
}

function hasRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 0
    mem[ceil32(arg2.length) + 128] = bool(uint8(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]))
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function sub_e0769d93(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 5
    mem[(32 * arg2.length) + (32 * arg3.length) + 192] = 'admin'
    mem[(32 * arg2.length) + (32 * arg3.length) + 224 len 0] = None
    mem[(32 * arg2.length) + (32 * arg3.length) + 229] = 0
    require stor0[mem[(32 * arg2.length) + (32 * arg3.length) + 224 len 5]][address(msg.sender)]
    if arg2.length != arg3.length:
        return 0
    if not sub_662ac607[arg1]['id']:
        return 0
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = sha3(arg1, 1)
        s = sha3(mem[(32 * idx) + 128], sha3(arg1, 1))
        while sha3(mem[(32 * idx) + 128], sha3(arg1, 1)) + 256 > s:
            uint256(stor[s]) = 0
            s = s + 1
            continue 
        idx = idx + 1
        continue 
    s = 0
    t = 0
    t = 0
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg3.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = sha3(arg1, 1)
        u = u
        t = 0
        while t < 256:
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = sha3(arg1, 1)
            if sub_662ac607[arg1][mem[(32 * idx) + 128]][t]:
                u = sub_662ac607[arg1][mem[(32 * idx) + 128]][t]
                t = t + 1
                continue 
            u = mem[(32 * idx) + (32 * arg2.length) + 160]
            t = mem[(32 * idx) + (32 * arg2.length) + 160]
            t = mem[(32 * idx) + 128]
            idx = idx + 1
            continue 
        u = u
        t = mem[(32 * idx) + (32 * arg2.length) + 160]
        t = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
    return 1
}

function adminAddRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 5
    mem[ceil32(arg2.length) + 160] = 'admin'
    mem[ceil32(arg2.length) + 192 len 0] = None
    mem[ceil32(arg2.length) + 197] = 0
    require stor0[mem[ceil32(arg2.length) + 192 len 5]][address(msg.sender)]
    mem[ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 192] = 0
    uint8(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]) = 1
    mem[ceil32(arg2.length) + 224] = 64
    mem[ceil32(arg2.length) + 256] = arg2.length
    mem[ceil32(arg2.length) + 288 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit RoleAdded(address arg1, string arg2):
                       address(arg1),
                       mem[ceil32(arg2.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                       mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                       Mask(8 * arg2.length % 32, 0, 0),
                       mem[ceil32(arg2.length) + arg2.length + 224 len 64],
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
        emit RoleAdded(address arg1, string arg2):
                       address(arg1),
                       mem[ceil32(arg2.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                       mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                       Mask(8 * arg2.length % 32, 0, 0),
                       mem[ceil32(arg2.length) + arg2.length + 224 len -(arg2.length % 32) + 96],
}

function adminRemoveRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 5
    mem[ceil32(arg2.length) + 160] = 'admin'
    mem[ceil32(arg2.length) + 192 len 0] = None
    mem[ceil32(arg2.length) + 197] = 0
    require stor0[mem[ceil32(arg2.length) + 192 len 5]][address(msg.sender)]
    mem[ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 192] = 0
    uint8(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]) = 0
    mem[ceil32(arg2.length) + 224] = 64
    mem[ceil32(arg2.length) + 256] = arg2.length
    mem[ceil32(arg2.length) + 288 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit RoleRemoved(address arg1, string arg2):
                         address(arg1),
                         mem[ceil32(arg2.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                         mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                         Mask(8 * arg2.length % 32, 0, 0),
                         mem[ceil32(arg2.length) + arg2.length + 224 len 64],
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
        emit RoleRemoved(address arg1, string arg2):
                         address(arg1),
                         mem[ceil32(arg2.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                         mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                         Mask(8 * arg2.length % 32, 0, 0),
                         mem[ceil32(arg2.length) + arg2.length + 224 len -(arg2.length % 32) + 96],
}

function sub_8af099aa(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 5
    mem[(32 * arg2.length) + (32 * arg3.length) + 192] = 'admin'
    mem[(32 * arg2.length) + (32 * arg3.length) + 224 len 0] = None
    require stor0[mem[(32 * arg2.length) + (32 * arg3.length) + 224 len 5]][address(msg.sender)]
    if sub_662ac607[arg1]['id'] == arg1:
        return 0
    sub_662ac607[arg1]['id'] = arg1
    mem[(32 * arg2.length) + (32 * arg3.length) + 224] = 5
    mem[(32 * arg2.length) + (32 * arg3.length) + 256] = 'admin'
    mem[(32 * arg2.length) + (32 * arg3.length) + 288 len 0] = None
    mem[(32 * arg2.length) + (32 * arg3.length) + 293] = 0
    require stor0[mem[(32 * arg2.length) + (32 * arg3.length) + 288 len 5]][address(msg.sender)]
    if arg2.length != arg3.length:
        return 0
    if not sub_662ac607[arg1]['id']:
        return 0
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = sha3(arg1, 1)
        s = sha3(mem[(32 * idx) + 128], sha3(arg1, 1))
        while sha3(mem[(32 * idx) + 128], sha3(arg1, 1)) + 256 > s:
            uint256(stor[s]) = 0
            s = s + 1
            continue 
        idx = idx + 1
        continue 
    s = 0
    t = 0
    t = 0
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg3.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = sha3(arg1, 1)
        u = u
        t = 0
        while t < 256:
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = sha3(arg1, 1)
            if sub_662ac607[arg1][mem[(32 * idx) + 128]][t]:
                u = sub_662ac607[arg1][mem[(32 * idx) + 128]][t]
                t = t + 1
                continue 
            u = mem[(32 * idx) + (32 * arg2.length) + 160]
            t = mem[(32 * idx) + (32 * arg2.length) + 160]
            t = mem[(32 * idx) + 128]
            idx = idx + 1
            continue 
        u = u
        t = mem[(32 * idx) + (32 * arg2.length) + 160]
        t = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
    return 1
}



}
