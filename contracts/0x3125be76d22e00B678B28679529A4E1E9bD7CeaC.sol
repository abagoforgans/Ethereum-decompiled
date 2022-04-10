contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[86 len 5737]
}



// =====================  Runtime code  =====================


address owner;
array of address sub_d628d480;
address rewardFundAddress;
mapping of struct sub_41df9bd4;
array of struct sub_16998b45;

function sub_16998b45(?) {
    require arg2 < sub_16998b45[arg1].field_0
    return sub_16998b45[arg1][arg2].field_0
}

function sub_41df9bd4(?) {
    require sub_41df9bd4[arg1].field_1792 <= 3
    mem[448] = sub_41df9bd4[arg1][8].field_0
    idx = 448
    s = 0
    while sub_41df9bd4[arg1][8].length + 448 > idx + 32:
        mem[idx + 32] = sub_41df9bd4[arg1][s + 8].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 0, ('stor', ('map', ('param', 'arg1'), ('name', 'sub_41df9bd4', 3))))))), 
           sub_41df9bd4[arg1].field_256,
           sub_41df9bd4[arg1].field_512,
           sub_41df9bd4[arg1].field_768,
           sub_41df9bd4[arg1].field_1024,
           sub_41df9bd4[arg1].field_1280,
           sub_41df9bd4[arg1].field_1536,
           sub_41df9bd4[arg1].field_1792,
           ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 1800, ('stor', ('map', ('param', 'arg1'), ('name', 'sub_41df9bd4', 3))))))),
           Array(len=sub_41df9bd4[arg1][8].length, data=mem[448 len sub_41df9bd4[arg1][8].length + (floor32(sub_41df9bd4[arg1][8].length - 1) + -sub_41df9bd4[arg1][8].length + 32 % 32)])
}

function owner() {
    return owner
}

function sub_d628d480(?) {
    require arg1 < sub_d628d480.length
    return sub_d628d480[arg1]
}

function rewardFund() {
    return rewardFundAddress
}

function _fallback() {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function withdrawAll() {
    call msg.sender with:
       value sub_41df9bd4[address(msg.sender)].field_256 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    sub_41df9bd4[address(msg.sender)].field_256 = 0
}

function sub_14d5c17c(?) {
    require sub_41df9bd4[address(msg.sender)].field_256 > 0
    sub_41df9bd4[address(msg.sender)].field_0 = uint8(('signextend', 0, ('signextend', 0, ('param', 'arg4'))))
    sub_41df9bd4[address(msg.sender)].field_1024 = arg1
    sub_41df9bd4[address(msg.sender)].field_1280 = arg2
    sub_41df9bd4[address(msg.sender)].field_1536 = arg3
    sub_41df9bd4[address(msg.sender)][8][].field_0 = Array(len=arg5.length, data=arg5[all])
}

function sub_a2625b94(?) payable {
    require msg.value > 10^16
    sub_41df9bd4[address(msg.sender)].field_0 = uint8(('signextend', 0, ('signextend', 0, ('param', 'arg4'))))
    require sub_41df9bd4[address(msg.sender)].field_256 + msg.value >= sub_41df9bd4[address(msg.sender)].field_256
    sub_41df9bd4[address(msg.sender)].field_256 += msg.value
    sub_41df9bd4[address(msg.sender)].field_1024 = arg1
    sub_41df9bd4[address(msg.sender)].field_1280 = arg2
    sub_41df9bd4[address(msg.sender)].field_1536 = arg3
    sub_41df9bd4[address(msg.sender)][8][].field_0 = Array(len=arg5.length, data=arg5[all])
}

function sendCoin(address arg1, uint256 arg2) {
    require sub_41df9bd4[address(msg.sender)].field_256 > arg2
    require 5 * arg2 / 1000 <= arg2
    require arg2 - (5 * arg2 / 1000) <= arg2
    call arg1 with:
       value arg2 - (5 * arg2 / 1000) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call rewardFundAddress with:
       value 5 * arg2 / 1000 wei
         gas 2300 * is_zero(value) wei
    require arg2 <= sub_41df9bd4[address(msg.sender)].field_256
    sub_41df9bd4[address(msg.sender)].field_256 -= arg2
    require sub_41df9bd4[address(msg.sender)].field_512 + arg2 >= sub_41df9bd4[address(msg.sender)].field_512
    sub_41df9bd4[address(msg.sender)].field_512 += arg2
    sub_41df9bd4[address(msg.sender)].field_768++
    emit Transfer((arg2 - (5 * arg2 / 1000)), msg.sender, arg1);
    emit Transfer((5 * arg2 / 1000), msg.sender, rewardFundAddress);
    return 1
}

function getZone(uint256 arg1) {
    if not sub_16998b45[arg1].field_0:
        mem[(32 * sub_16998b45[arg1].field_0) + 160] = 32
        mem[(32 * sub_16998b45[arg1].field_0) + 192] = sub_16998b45[arg1].field_0
        mem[(32 * sub_16998b45[arg1].field_0) + 224 len floor32(sub_16998b45[arg1].field_0)] = mem[160 len floor32(sub_16998b45[arg1].field_0)]
        return memory
          from (32 * sub_16998b45[arg1].field_0) + 160
           len (96 * sub_16998b45[arg1].field_0) + 64
    mem[160] = sub_16998b45[arg1].field_0
    idx = 160
    s = 0
    while (32 * sub_16998b45[arg1].field_0) + 128 > idx:
        mem[idx + 32] = sub_16998b45[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_16998b45[arg1].field_0) + 224 len floor32(sub_16998b45[arg1].field_0)] = mem[160 len floor32(sub_16998b45[arg1].field_0)]
    return Array(len=sub_16998b45[arg1].field_0, data=mem[160 len floor32(sub_16998b45[arg1].field_0)], mem[(32 * sub_16998b45[arg1].field_0) + floor32(sub_16998b45[arg1].field_0) + 224 len (32 * sub_16998b45[arg1].field_0) - floor32(sub_16998b45[arg1].field_0)]), 
}

function sub_b8cb0b49(?) payable {
    require msg.value > 10^15
    sub_41df9bd4[address(msg.sender)].field_0 = uint8(('signextend', 0, ('signextend', 0, ('param', 'arg4'))))
    require arg6 <= 3
    sub_41df9bd4[address(msg.sender)].field_1792 = arg6
    sub_41df9bd4[address(msg.sender)].field_1800 = uint8(('signextend', 0, ('signextend', 0, ('param', 'arg5'))))
    require sub_41df9bd4[address(msg.sender)].field_256 + msg.value >= sub_41df9bd4[address(msg.sender)].field_256
    sub_41df9bd4[address(msg.sender)].field_256 += msg.value
    sub_41df9bd4[address(msg.sender)].field_1024 = arg1
    sub_41df9bd4[address(msg.sender)].field_1280 = arg2
    sub_41df9bd4[address(msg.sender)].field_1536 = arg3
    sub_41df9bd4[address(msg.sender)][8][].field_0 = Array(len=arg7.length, data=arg7[all])
    sub_16998b45[arg3].field_0++
    if not sub_16998b45[arg3].field_0 <= sub_16998b45[arg3].field_0 + 1:
        idx = sub_16998b45[arg3].field_0 + 1
        while sub_16998b45[arg3].field_0 > idx:
            sub_16998b45[arg3][idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_16998b45[arg3][sub_16998b45[arg3].field_0].field_0 = msg.sender
}



}
