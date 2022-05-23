contract main {




// =====================  Runtime code  =====================


address sub_a671afb7Address;
array of uint256 sub_1e2f0b74;
mapping of struct sub_593248e7;
uint256 sub_d8319ef3;
uint256 sub_da8cffe5;
uint256 stor5;
uint256 stor6;

function sub_1e2f0b74(?) {
    require arg1 < sub_1e2f0b74.length
    return sub_1e2f0b74[arg1]
}

function sub_593248e7(?) {
    return sub_593248e7[arg1].field_0, sub_593248e7[arg1].field_256, sub_593248e7[arg1].field_512
}

function sub_a671afb7(?) {
    return sub_a671afb7Address
}

function sub_d8319ef3(?) {
    return sub_d8319ef3
}

function sub_da8cffe5(?) {
    return sub_da8cffe5
}

function _fallback() payable {
  stop
}

function sub_40010a7e(?) {
    return stor5, stor6
}

function withdraw(bytes32 arg1) payable {
    require sub_593248e7[arg1].field_512 == msg.sender
    sub_593248e7[arg1].field_256 = 0
    call msg.sender with:
       value sub_593248e7[arg1].field_256 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f7a71695(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == sub_a671afb7Address
    sub_da8cffe5 += arg2
    idx = 0
    while idx < sub_1e2f0b74.length:
        require idx < arg1.length
        require idx < sub_1e2f0b74.length
        mem[0] = sub_1e2f0b74[idx]
        mem[32] = 2
        sub_593248e7[stor1[idx]].field_256 += mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
}

function sub_5a70b49e(?) {
    mem[96] = arg4.length
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = arg5.length
    mem[(32 * arg4.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg4.length) + (32 * arg5.length) + 160] = arg6.length
    mem[(32 * arg4.length) + (32 * arg5.length) + 192 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[64] = (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192] = 0
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 224] = 0
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 256] = 0
    require msg.sender == sub_a671afb7Address
    sub_a671afb7Address = arg1
    stor5 = arg3
    stor6 = arg2
    sub_d8319ef3 = arg5.length
    sub_1e2f0b74.length = 0
    mem[0] = 1
    idx = 0
    while sub_1e2f0b74.length > idx:
        sub_1e2f0b74[idx] = 0
        idx = idx + 1
        continue 
    s = (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192
    s = 0
    idx = 0
    while idx < arg5.length:
        require idx < mem[(32 * arg4.length) + 128]
        sub_1e2f0b74.length++
        sub_1e2f0b74[sub_1e2f0b74.length] = mem[(32 * idx) + (32 * arg4.length) + 160]
        require idx < mem[(32 * arg4.length) + 128]
        mem[0] = mem[(32 * idx) + (32 * arg4.length) + 160]
        mem[32] = 2
        _49 = sha3(mem[(32 * idx) + (32 * arg4.length) + 160], 2)
        _50 = mem[64]
        mem[64] = mem[64] + 96
        require idx < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
        mem[_50] = mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + 192]
        mem[_50 + 32] = sub_1e2f0b74[_49]
        require idx < mem[96]
        mem[_50 + 64] = mem[(32 * idx) + 140 len 20]
        require idx < mem[(32 * arg4.length) + 128]
        mem[0] = mem[(32 * idx) + (32 * arg4.length) + 160]
        mem[32] = 2
        sub_593248e7[mem[(32 * idx) + (32 * arg4.length) + 160]].field_0 = mem[_50]
        sub_593248e7[mem[(32 * idx) + (32 * arg4.length) + 160]].field_256 = sub_1e2f0b74[_49]
        sub_593248e7[mem[(32 * idx) + (32 * arg4.length) + 160]].field_512 = mem[_50 + 76 len 20]
        s = _50
        s = sub_1e2f0b74[_49]
        idx = idx + 1
        continue 
}



}
