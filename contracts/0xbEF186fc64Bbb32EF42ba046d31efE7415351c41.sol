contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[97 len 2909]
}



// =====================  Runtime code  =====================


const getLocation = 0, 0, 16, 16


address stor0;
mapping of struct sub_a0fa8ede;

function sub_4d0434f2(?) {
    mem[160] = sub_a0fa8ede[arg1][1].field_0
    idx = 160
    s = 0
    while sub_a0fa8ede[arg1][1].length + 128 > idx:
        mem[idx + 32] = sub_a0fa8ede[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_a0fa8ede[arg1].field_0, 
           Array(len=sub_a0fa8ede[arg1][1].length, data=mem[160 len sub_a0fa8ede[arg1][1].length]),
           sub_a0fa8ede[arg1].field_512
}

function sub_a0fa8ede(?) {
    mem[224] = sub_a0fa8ede[arg1][1].field_0
    idx = 224
    s = 0
    while sub_a0fa8ede[arg1][1].length + 224 > idx + 32:
        mem[idx + 32] = sub_a0fa8ede[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_a0fa8ede[arg1].field_0, 
           Array(len=sub_a0fa8ede[arg1][1].length, data=mem[224 len sub_a0fa8ede[arg1][1].length + (floor32(sub_a0fa8ede[arg1][1].length - 1) + -sub_a0fa8ede[arg1][1].length + 32 % 32)]),
           sub_a0fa8ede[arg1].field_512
}

function _fallback() payable {
    revert
}

function sub_68a3f248(?) {
    require sub_a0fa8ede[arg1].field_0 == msg.sender
    sub_a0fa8ede[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_a0fa8ede[arg1].field_512 = arg3
    emit 0xb75fd3f7: arg1
}

function sub_d6734829(?) {
    if sub_a0fa8ede[arg1].field_0:
        require sub_a0fa8ede[arg1].field_0 == msg.sender
    else:
        if stor0 != msg.sender:
            require sub_a0fa8ede[arg1].field_0 == msg.sender
    sub_a0fa8ede[arg1].field_0 = arg2
    emit 0xb75fd3f7: arg1
}

function sub_f246ed11(?) payable {
    require arg1 <= 255
    require sub_a0fa8ede[arg1].field_0 != msg.sender
    if not sub_a0fa8ede[arg1].field_0:
        require msg.value == 10^17
        call stor0 with:
           value 10^17 wei
             gas 0 wei
    else:
        require sub_a0fa8ede[arg1].field_512
        require msg.value == sub_a0fa8ede[arg1].field_512
        call sub_a0fa8ede[arg1].field_0 with:
           value sub_a0fa8ede[arg1].field_512 wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
    sub_a0fa8ede[arg1].field_0 = msg.sender
    sub_a0fa8ede[arg1].field_512 = 0
    emit 0xb75fd3f7: arg1
}



}
