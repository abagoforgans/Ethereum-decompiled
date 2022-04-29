contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[83 len 2586]
}



// =====================  Runtime code  =====================


address stor0;
mapping of address sub_cd93c74d;
mapping of address users;
mapping of uint256 sub_18d9adab;

function sub_18d9adab(?) {
    return sub_18d9adab[arg1]
}

function users(uint256 arg1) {
    return users[arg1]
}

function sub_cd93c74d(?) {
    return sub_cd93c74d[arg1]
}

function _fallback() payable {
    revert
}

function sub_979bf256(?) {
    require msg.sender == stor0
    require arg2 != msg.sender
    users[arg1] = arg2
    sub_cd93c74d[arg1] = arg3
}

function sub_e6588a47(?) {
    require msg.sender == stor0
    require arg2 > 0
    require sub_cd93c74d[arg2]
    sub_18d9adab[arg1] = arg2
    return 1
}

function sub_2f32651b(?) {
    require arg1 > 0
    require arg2 > 0
    require arg5
    require arg2 != arg3
    require arg3 == sub_18d9adab[arg1]
    require msg.sender == sub_cd93c74d[arg2]
    emit 0xc8596616: arg1, arg2, arg3, arg4, msg.sender
}

function sub_8aa6baf9(?) {
    require msg.sender == stor0
    if arg3:
        require ext_code.size(sub_cd93c74d[arg1])
        call sub_cd93c74d[arg1].remove() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        sub_cd93c74d[arg1] = 0
    if arg2:
        users[arg1] = 0
}

function sub_c27ab56f(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == stor0
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        require msg.sender == stor0
        require mem[(32 * idx) + (32 * arg1.length) + 160] > 0
        require sub_cd93c74d[mem[(32 * idx) + (32 * arg1.length) + 160]]
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 3
        sub_18d9adab[mem[(32 * idx) + 128]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        s = mem[(32 * idx) + (32 * arg1.length) + 160]
        s = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
    return 1
}



}
