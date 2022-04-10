contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint16 stor11;
uint256 stor34;

function _fallback() payable {
    stor1 = 0
    stor2 = 1
    stor3 = 2
    stor4 = 3
    stor5 = 4
    stor6 = 5
    stor7 = 6
    stor8 = 7
    stor9 = 8
    stor10 = 10^18
    stor11 = 0
    stor34 = 100
    require not msg.value
    stor0 = msg.sender
    return code.data[130 len 15566]
}



// =====================  Runtime code  =====================


#
#  - sub_eb86dce9(?)
#
address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint8 stor11;
uint8 stor11; offset 8
array of uint256 sub_f0729594;
array of uint256 sub_c07bc903;
array of uint256 sub_5235662c;
array of uint256 sub_768b0903;
array of uint256 sub_7d3f8d7b;
uint256 status;
array of uint256 message;
array of uint256 sub_700ddd63;
array of struct sub_b49a7509;
array of uint256 sub_01a9bf80;
array of uint256 sub_710c7b2e;
array of uint256 sub_7a395fb6;
array of uint256 sub_f00590d3;
array of uint256 sub_fd429c20;
array of uint256 sub_ee373435;
array of uint256 sub_baae3774;
array of uint256 sub_89b40ab2;
array of uint256 sub_b05d3368;
array of uint256 weight;
array of uint256 sub_c0c0afe0;
array of uint256 sub_6705d6ac;
array of uint256 sub_4e0c1b0e;
uint256 balance;
address stor35;
array of struct stor36;
address stor37;
array of struct stor38;

function sub_01a9bf80(?) {
    return sub_01a9bf80[0 len sub_01a9bf80.length]
}

function status() {
    return status
}

function sub_4e0c1b0e(?) {
    return sub_4e0c1b0e[0 len sub_4e0c1b0e.length]
}

function sub_5235662c(?) {
    return sub_5235662c[0 len sub_5235662c.length]
}

function sub_6705d6ac(?) {
    return sub_6705d6ac[0 len sub_6705d6ac.length]
}

function sub_700ddd63(?) {
    return uint256(sub_700ddd63[0 len sub_700ddd63.length].field_0)
}

function sub_710c7b2e(?) {
    return sub_710c7b2e[0 len sub_710c7b2e.length]
}

function sub_768b0903(?) {
    return sub_768b0903[0 len sub_768b0903.length]
}

function sub_7a395fb6(?) {
    return sub_7a395fb6[0 len sub_7a395fb6.length]
}

function sub_7d3f8d7b(?) {
    return sub_7d3f8d7b[0 len sub_7d3f8d7b.length]
}

function sub_89b40ab2(?) {
    return sub_89b40ab2[0 len sub_89b40ab2.length]
}

function weight() {
    return weight[0 len weight.length]
}

function sub_b05d3368(?) {
    return sub_b05d3368[0 len sub_b05d3368.length]
}

function sub_b49a7509(?) {
    require arg1 < sub_b49a7509.length
    mem[288] = uint256(sub_b49a7509[arg1].field_0)
    idx = 288
    s = 0
    while sub_b49a7509[arg1].length + 288 > idx + 32:
        mem[idx + 32] = uint256(sub_b49a7509[(5 * arg1) + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[sub_b49a7509[arg1].length + (floor32(sub_b49a7509[arg1].length - 1) + -sub_b49a7509[arg1].length + 32 % 32) + 288] = stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length
    mem[sub_b49a7509[arg1].length + (floor32(sub_b49a7509[arg1].length - 1) + -sub_b49a7509[arg1].length + 32 % 32) + 320] = uint256(stor[sha3((5 * arg1) + ('name', 'sub_b49a7509', 20) + 1)].field_0)
    idx = sub_b49a7509[arg1].length + (floor32(sub_b49a7509[arg1].length - 1) + -sub_b49a7509[arg1].length + 32 % 32) + 320
    s = 0
    while sub_b49a7509[arg1].length + (floor32(sub_b49a7509[arg1].length - 1) + -sub_b49a7509[arg1].length + 32 % 32) + stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length + 320 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((5 * arg1) + ('name', 'sub_b49a7509', 20) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[sub_b49a7509[arg1].length + (floor32(sub_b49a7509[arg1].length - 1) + -sub_b49a7509[arg1].length + 32 % 32) + stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length + (floor32(stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length - 1) + -stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length + 32 % 32) + 352] = uint256(stor[sha3((5 * arg1) + ('name', 'sub_b49a7509', 20) + 2)].field_0)
    idx = sub_b49a7509[arg1].length + (floor32(sub_b49a7509[arg1].length - 1) + -sub_b49a7509[arg1].length + 32 % 32) + stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length + (floor32(stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length - 1) + -stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length + 32 % 32) + 352
    s = 0
    while sub_b49a7509[arg1].length + (floor32(sub_b49a7509[arg1].length - 1) + -sub_b49a7509[arg1].length + 32 % 32) + stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length + (floor32(stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length - 1) + -stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length + 32 % 32) + stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 2].length + 352 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((5 * arg1) + ('name', 'sub_b49a7509', 20) + 2)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[sub_b49a7509[arg1].length + (floor32(sub_b49a7509[arg1].length - 1) + -sub_b49a7509[arg1].length + 32 % 32) + stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length + (floor32(stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length - 1) + -stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length + 32 % 32) + stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 2].length + (floor32(stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 2].length - 1) + -stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 2].length + 32 % 32) + 352] = stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 3].length
    mem[sub_b49a7509[arg1].length + (floor32(sub_b49a7509[arg1].length - 1) + -sub_b49a7509[arg1].length + 32 % 32) + stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length + (floor32(stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length - 1) + -stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length + 32 % 32) + stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 2].length + (floor32(stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 2].length - 1) + -stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 2].length + 32 % 32) + 384] = uint256(stor[sha3((5 * arg1) + ('name', 'sub_b49a7509', 20) + 3)].field_0)
    idx = sub_b49a7509[arg1].length + (floor32(sub_b49a7509[arg1].length - 1) + -sub_b49a7509[arg1].length + 32 % 32) + stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length + (floor32(stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length - 1) + -stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length + 32 % 32) + stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 2].length + (floor32(stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 2].length - 1) + -stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 2].length + 32 % 32) + 384
    s = 0
    while sub_b49a7509[arg1].length + (floor32(sub_b49a7509[arg1].length - 1) + -sub_b49a7509[arg1].length + 32 % 32) + stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length + (floor32(stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length - 1) + -stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length + 32 % 32) + stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 2].length + (floor32(stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 2].length - 1) + -stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 2].length + 32 % 32) + stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 3].length + 384 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((5 * arg1) + ('name', 'sub_b49a7509', 20) + 3)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_b49a7509[arg1].length, data=mem[288 len sub_b49a7509[arg1].length + (floor32(sub_b49a7509[arg1].length - 1) + -sub_b49a7509[arg1].length + 32 % 32) + stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length + (floor32(stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length - 1) + -stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length + 32 % 32) + 32], stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 2].length, mem[sub_b49a7509[arg1].length + (floor32(sub_b49a7509[arg1].length - 1) + -sub_b49a7509[arg1].length + 32 % 32) + stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length + (floor32(stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length - 1) + -stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length + 32 % 32) + 352 len stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 2].length + (floor32(stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 2].length - 1) + -stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 2].length + 32 % 32) + stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 3].length + (floor32(stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 3].length - 1) + -stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 3].length + 32 % 32) + 32]), 
           sub_b49a7509[arg1].length + (floor32(sub_b49a7509[arg1].length - 1) + -sub_b49a7509[arg1].length + 32 % 32) + 192,
           sub_b49a7509[arg1].length + (floor32(sub_b49a7509[arg1].length - 1) + -sub_b49a7509[arg1].length + 32 % 32) + stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length + (floor32(stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length - 1) + -stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length + 32 % 32) + 224,
           sub_b49a7509[arg1].length + (floor32(sub_b49a7509[arg1].length - 1) + -sub_b49a7509[arg1].length + 32 % 32) + stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length + (floor32(stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length - 1) + -stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 1].length + 32 % 32) + stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 2].length + (floor32(stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 2].length - 1) + -stor[(5 * arg1) + ('name', 'sub_b49a7509', 20) + 2].length + 32 % 32) + 256,
           bool(uint8(sub_b49a7509[arg1].field_1024))
}

function balance() {
    return balance
}

function sub_baae3774(?) {
    return sub_baae3774[0 len sub_baae3774.length]
}

function sub_c07bc903(?) {
    return sub_c07bc903[0 len sub_c07bc903.length]
}

function sub_c0c0afe0(?) {
    return sub_c0c0afe0[0 len sub_c0c0afe0.length]
}

function message() {
    return uint256(message[0 len message.length].field_0)
}

function sub_ee373435(?) {
    return sub_ee373435[0 len sub_ee373435.length]
}

function sub_f00590d3(?) {
    return sub_f00590d3[0 len sub_f00590d3.length]
}

function sub_f0729594(?) {
    return sub_f0729594[0 len sub_f0729594.length]
}

function sub_fd429c20(?) {
    return sub_fd429c20[0 len sub_fd429c20.length]
}

function killContract() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function pay() payable {
  stop
}

function _fallback() payable {
    revert
}

function carrier() {
    mem[192] = uint256(stor38.field_0)
    idx = 192
    s = 0
    while stor38.length + 192 > idx + 32:
        mem[idx + 32] = uint256(stor38[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return stor37, 
           Array(len=stor38.length, data=mem[192 len stor38.length + (floor32(stor38.length - 1) + -stor38.length + 32 % 32)])
}

function sub_755a3191(?) {
    mem[192] = uint256(stor36.field_0)
    idx = 192
    s = 0
    while stor36.length + 192 > idx + 32:
        mem[idx + 32] = uint256(stor36[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return stor35, 
           Array(len=stor36.length, data=mem[192 len stor36.length + (floor32(stor36.length - 1) + -stor36.length + 32 % 32)])
}

function sub_22cbff23(?) {
    if stor0 == msg.sender:
        if status >= stor7:
            status = stor8
            uint8(message.length) = 24
            Mask(248, 0, message.length.field_8) = 'Bill loaded.' / 256
            idx = 0
            while message.length + 31 / 32 > idx:
                uint256(message[idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        mem[128] = 'You don't have permission to loa'
        mem[160] = 'ding execution.'
        message.length = 95
        s = 0
        idx = 128
        while 175 > idx:
            uint256(message[s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 2
        while message.length + 31 / 32 > idx:
            uint256(message[idx].field_0) = 0
            idx = idx + 1
            continue 
}

function sub_8fb6bdd2(?) {
    if stor0 != msg.sender:
        mem[128] = 'You don't have permission to dis'
        mem[160] = 'charge Bill.'
        message.length = 89
        s = 0
        idx = 128
        while 172 > idx:
            uint256(message[s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 2
        while message.length + 31 / 32 > idx:
            uint256(message[idx].field_0) = 0
            idx = idx + 1
            continue 
    if status < stor8:
    status = stor9
    balance = 0
    uint8(message.length) = 32
    Mask(248, 0, message.length.field_8) = 'Bill Discharged.' / 256
    idx = 0
    while message.length + 31 / 32 > idx:
        uint256(message[idx].field_0) = 0
        idx = idx + 1
        continue 
    call stor37 with:
       value 70 * stor10 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
    revert
}

function sub_2ad87a1a(?) {
    if stor0 == msg.sender:
        uint256(stor36[].field_0) = Array(len=arg2.length, data=arg2[all])
        stor35 = arg1
        uint8(message.length) = 54
        Mask(248, 0, message.length.field_8) = 'Trucker added successfully.' / 256
        idx = 0
        while message.length + 31 / 32 > idx:
            uint256(message[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        mem[ceil32(arg2.length) + 160] = 0x596f7520646f6e27742068617665207065726d697373696f6e20746f206164
        mem[ceil32(arg2.length) + 192] = ' trucker.'
        message.length = 83
        s = 0
        idx = ceil32(arg2.length) + 160
        while ceil32(arg2.length) + 201 > idx:
            uint256(message[s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 2
        while message.length + 31 / 32 > idx:
            uint256(message[idx].field_0) = 0
            idx = idx + 1
            continue 
}

function sub_fe3d0825(?) {
    if stor0 != msg.sender:
        mem[ceil32(arg1.length) + ceil32(arg3.length) + 192] = 0x596f7520646f6e27742068617665207065726d697373696f6e20746f206164
        mem[ceil32(arg1.length) + ceil32(arg3.length) + 224] = ' trucker.'
        message.length = 83
        s = 0
        idx = ceil32(arg1.length) + ceil32(arg3.length) + 192
        while ceil32(arg1.length) + ceil32(arg3.length) + 233 > idx:
            uint256(message[s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 2
        while message.length + 31 / 32 > idx:
            uint256(message[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        sub_01a9bf80[] = Array(len=arg1.length, data=arg1[all])
        uint256(stor38[].field_0) = Array(len=arg3.length, data=arg3[all])
        stor37 = arg2
        uint8(message.length) = 54
        Mask(248, 0, message.length.field_8) = 'Carrier added successfully.' / 256
        idx = 0
        while message.length + 31 / 32 > idx:
            uint256(message[idx].field_0) = 0
            idx = idx + 1
            continue 
}

function sub_f920b35f(?) {
    if stor0 != msg.sender:
        mem[128] = 'You don't have permission to ent'
        mem[160] = 'er in gate execution.'
        message.length = 107
        s = 0
        idx = 128
        while 181 > idx:
            uint256(message[s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 2
        while message.length + 31 / 32 > idx:
            uint256(message[idx].field_0) = 0
            idx = idx + 1
            continue 
    if status < stor4:
    uint8(sub_700ddd63.length) = 30
    Mask(248, 0, sub_700ddd63.length.field_8) = 'ENTERED_IN_GATE' / 256
    idx = 0
    while sub_700ddd63.length + 31 / 32 > idx:
        uint256(sub_700ddd63[idx].field_0) = 0
        idx = idx + 1
        continue 
    balance -= 10
    uint8(message.length) = 54
    Mask(248, 0, message.length.field_8) = 'Containers entered in gate.' / 256
    idx = 0
    while message.length + 31 / 32 > idx:
        uint256(message[idx].field_0) = 0
        idx = idx + 1
        continue 
    call stor35 with:
       value 10 * stor10 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
    revert
}

function sub_d3991734(?) {
    if stor0 != msg.sender:
        mem[128] = 'You don't have permission to acc'
        mem[160] = 'ept ACE.'
        message.length = 81
        s = 0
        idx = 128
        while 168 > idx:
            uint256(message[s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 2
        while message.length + 31 / 32 > idx:
            uint256(message[idx].field_0) = 0
            idx = idx + 1
            continue 
    if status != stor6:
        mem[128] = 'Can not accept booking for ACE. '
        mem[160] = 'Check required information.'
        message.length = 119
        s = 0
        idx = 128
        while 187 > idx:
            uint256(message[s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 2
        while message.length + 31 / 32 > idx:
            uint256(message[idx].field_0) = 0
            idx = idx + 1
            continue 
    status = stor7
    balance -= 10
    uint8(message.length) = 26
    Mask(248, 0, message.length.field_8) = 'ACE accepted.' / 256
    idx = 0
    while message.length + 31 / 32 > idx:
        uint256(message[idx].field_0) = 0
        idx = idx + 1
        continue 
    call stor37 with:
       value 10 * stor10 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
    revert
}

function sub_2613ceea(?) {
    if stor0 != msg.sender:
        mem[128] = 'You don't have permission to sub'
        mem[160] = 'mit 301.'
        message.length = 81
        s = 0
        idx = 128
        while 168 > idx:
            uint256(message[s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 2
        while message.length + 31 / 32 > idx:
            uint256(message[idx].field_0) = 0
            idx = idx + 1
            continue 
    if status != stor3:
        mem[128] = 'Booking can not be submit for 30'
        mem[160] = '1. Check required information fo'
        mem[192] = 'r 301.'
        message.length = 141
        s = 0
        idx = 128
        while 198 > idx:
            uint256(message[s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 3
        while message.length + 31 / 32 > idx:
            uint256(message[idx].field_0) = 0
            idx = idx + 1
            continue 
    status = stor4
    balance -= 10
    uint8(message.length) = 50
    Mask(248, 0, message.length.field_8) = '301 Received for booking.' / 256
    idx = 0
    while message.length + 31 / 32 > idx:
        uint256(message[idx].field_0) = 0
        idx = idx + 1
        continue 
    call stor37 with:
       value 10 * stor10 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
    revert
}

function sub_1937f998(?) {
    if stor0 == msg.sender:
        require arg1 < sub_b49a7509.length
        if not uint8(sub_b49a7509[arg1].field_1024):
            require arg1 < sub_b49a7509.length
            uint8(sub_b49a7509[arg1].field_1024) = 1
            uint256(sub_b49a7509[arg1][].field_0) = Array(len=arg2.length, data=arg2[all])
            uint8(sub_700ddd63.length) = 12
            Mask(248, 0, sub_700ddd63.length.field_8) = 'PICKED' / 256
            idx = 0
            while sub_700ddd63.length + 31 / 32 > idx:
                uint256(sub_700ddd63[idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if stor35 != msg.sender:
            mem[ceil32(arg2.length) + 160] = 'You don't have permission to pic'
            mem[ceil32(arg2.length) + 192] = 'k container.'
            message.length = 89
            s = 0
            idx = ceil32(arg2.length) + 160
            while ceil32(arg2.length) + 204 > idx:
                uint256(message[s].field_0) = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 2
            while message.length + 31 / 32 > idx:
                uint256(message[idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            require arg1 < sub_b49a7509.length
            if not uint8(sub_b49a7509[arg1].field_1024):
                require arg1 < sub_b49a7509.length
                uint8(sub_b49a7509[arg1].field_1024) = 1
                uint256(sub_b49a7509[arg1][].field_0) = Array(len=arg2.length, data=arg2[all])
                uint8(sub_700ddd63.length) = 12
                Mask(248, 0, sub_700ddd63.length.field_8) = 'PICKED' / 256
                idx = 0
                while sub_700ddd63.length + 31 / 32 > idx:
                    uint256(sub_700ddd63[idx].field_0) = 0
                    idx = idx + 1
                    continue 
}

function sub_960da000(?) {
    if stor0 != msg.sender:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 288] = 0x596f7520646f6e27742068617665207065726d697373696f6e20746f206164
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 320] = ' booking data.'
        message.length = 93
        s = 0
        idx = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 288
        while ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 334 > idx:
            uint256(message[s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 2
        while message.length + 31 / 32 > idx:
            uint256(message[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        sub_f0729594[] = Array(len=arg1.length, data=arg1[all])
        sub_c07bc903[] = Array(len=arg2.length, data=arg2[all])
        sub_5235662c[] = Array(len=arg3.length, data=arg3[all])
        sub_768b0903[] = Array(len=arg4.length, data=arg4[all])
        sub_7d3f8d7b[] = Array(len=arg5.length, data=arg5[all])
        if uint8(stor11.field_0):
            status = stor2
            uint8(message.length) = 62
            Mask(248, 0, message.length.field_8) = 'You can submit booking for 300.'
            idx = 0
            while message.length + 31 / 32 > idx:
                uint256(message[idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            uint8(stor11.field_8) = 1
            status = stor1
            uint8(message.length) = 60
            Mask(248, 0, message.length.field_8) = 'You should add Containers now.' / 256
            idx = 0
            while message.length + 31 / 32 > idx:
                uint256(message[idx].field_0) = 0
                idx = idx + 1
                continue 
}

function sub_4ca4e3ba(?) {
    if stor0 != msg.sender:
        mem[128] = 'You don't have permission to sub'
        mem[160] = 'mit ACE.'
        message.length = 81
        s = 0
        idx = 128
        while 168 > idx:
            uint256(message[s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 2
        while message.length + 31 / 32 > idx:
            uint256(message[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        if status != stor5:
            mem[128] = 'Can not submit booking for ACE. '
            mem[160] = 'Check required information.'
            message.length = 119
            s = 0
            idx = 128
            while 187 > idx:
                uint256(message[s].field_0) = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 2
            while message.length + 31 / 32 > idx:
                uint256(message[idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            idx = 0
            s = 1
            while idx < sub_b49a7509.length:
                mem[0] = 20
                if uint8(sub_b49a7509[idx].field_1024):
                    idx = idx + 1
                    s = s
                    continue 
                require idx < sub_b49a7509.length
                mem[0] = 20
                idx = idx + 1
                s = uint8(sub_b49a7509[idx].field_1024)
                continue 
            if s:
                status = stor6
                uint8(message.length) = 52
                Mask(248, 0, message.length.field_8) = 'ACE for booking submitted.' / 256
                idx = 0
                while message.length + 31 / 32 > idx:
                    uint256(message[idx].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                mem[128] = 'All containers need to be picked'
                mem[160] = ' for submitting ACE.'
                message.length = 105
                t = 0
                idx = 128
                while 180 > idx:
                    uint256(message[t].field_0) = mem[idx]
                    t = t + 1
                    idx = idx + 32
                    continue 
                idx = 2
                while message.length + 31 / 32 > idx:
                    uint256(message[idx].field_0) = 0
                    idx = idx + 1
                    continue 
}

function sub_0c5c3fc1(?) {
    if stor0 != msg.sender:
        mem[160] = 'You don't have permission to sub'
        mem[192] = 'mit 300.'
        message.length = 81
        s = 0
        idx = 160
        while 200 > idx:
            uint256(message[s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 2
        while message.length + 31 / 32 > idx:
            uint256(message[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        idx = 160
        s = 0
        while stor38.length + 128 > idx:
            mem[idx + 32] = uint256(stor38[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        if 0 == stor38.length:
            mem[ceil32(stor38.length) + 192] = 'No Carrier found. Add Carier fir'
            mem[ceil32(stor38.length) + 224] = 'st.'
            message.length = 71
            s = 0
            idx = ceil32(stor38.length) + 192
            while ceil32(stor38.length) + 227 > idx:
                uint256(message[s].field_0) = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 2
            while message.length + 31 / 32 > idx:
                uint256(message[idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            if status == stor2:
                status = stor3
                uint8(message.length) = 52
                Mask(248, 0, message.length.field_8) = 'Booking submitted for 300.' / 256
                idx = 0
                while message.length + 31 / 32 > idx:
                    uint256(message[idx].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                mem[ceil32(stor38.length) + 192] = 'Booking can not be submit for 30'
                mem[ceil32(stor38.length) + 224] = '0. Check required information fo'
                mem[ceil32(stor38.length) + 256] = 'r 300.'
                message.length = 141
                s = 0
                idx = ceil32(stor38.length) + 192
                while ceil32(stor38.length) + 262 > idx:
                    uint256(message[s].field_0) = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 3
                while message.length + 31 / 32 > idx:
                    uint256(message[idx].field_0) = 0
                    idx = idx + 1
                    continue 
}

function sub_99955257(?) {
    if stor0 != msg.sender:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224] = 0x596f7520646f6e27742068617665207065726d697373696f6e20746f206164
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 256] = ' Containers.'
        message.length = 89
        s = 0
        idx = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224
        while ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 268 > idx:
            uint256(message[s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 2
        while message.length + 31 / 32 > idx:
            uint256(message[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        if not arg2.length:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224] = 'Piece Count and Equipment type a'
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 256] = 're mandetory.'
            message.length = 91
            s = 0
            idx = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224
            while ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 269 > idx:
                uint256(message[s].field_0) = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 2
            while message.length + 31 / 32 > idx:
                uint256(message[idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            if not arg3.length:
                mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224] = 'Piece Count and Equipment type a'
                mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 256] = 're mandetory.'
                message.length = 91
                s = 0
                idx = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224
                while ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 269 > idx:
                    uint256(message[s].field_0) = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 2
                while message.length + 31 / 32 > idx:
                    uint256(message[idx].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                sub_b49a7509.length++
                if not sub_b49a7509.length <= sub_b49a7509.length + 1:
                    mem[0] = 20
                    idx = (5 * sub_b49a7509.length) + 5
                    while sha3(20) + (5 * sub_b49a7509.length) > idx + sha3(mem[0]):
                        uint256(stor[idx + sha3(mem[0])]) = 0
                        if 31 < stor[idx + sha3(mem[0])].length:
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                        if 31 < stor[idx + sha3(mem[0]) + 1].length:
                            mem[0] = idx + sha3(mem[0]) + 1
                            s = sha3(idx + sha3(mem[0]) + 1)
                            while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                        if 31 < stor[idx + sha3(mem[0]) + 2].length:
                            mem[0] = idx + sha3(mem[0]) + 2
                            s = sha3(idx + sha3(mem[0]) + 2)
                            while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                        if 31 < stor[idx + sha3(mem[0]) + 3].length:
                            mem[0] = idx + sha3(mem[0]) + 3
                            s = sha3(idx + sha3(mem[0]) + 3)
                            while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        uint8(stor[idx + sha3(mem[0]) + 4]) = 0
                        idx = idx + 5
                        continue 
                uint8(sub_b49a7509[sub_b49a7509.length].field_0) = 0
                Mask(248, 0, sub_b49a7509[sub_b49a7509.length].field_8) = mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 384 len 31]
                idx = 0
                while sub_b49a7509[sub_b49a7509.length].length + 31 / 32 > idx:
                    uint256(sub_b49a7509[(5 * sub_b49a7509.length) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
                uint256(stor[sha3((5 * sub_b49a7509.length) + ('name', 'sub_b49a7509', 20) + 1)][].field_0) = Array(len=arg1.length, data=arg1[all])
                uint256(stor[sha3((5 * sub_b49a7509.length) + ('name', 'sub_b49a7509', 20) + 2)][].field_0) = Array(len=arg2.length, data=arg2[all])
                uint256(stor[sha3((5 * sub_b49a7509.length) + ('name', 'sub_b49a7509', 20) + 3)][].field_0) = Array(len=arg3.length, data=arg3[all])
                uint8(sub_b49a7509[sub_b49a7509.length].field_1024) = 0
                if uint8(stor11.field_8):
                    status = stor2
                    uint8(message.length) = 62
                    Mask(248, 0, message.length.field_8) = 'You can submit booking for 300.'
                    idx = 0
                    while message.length + 31 / 32 > idx:
                        uint256(message[idx].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    uint8(stor11.field_0) = 1
                    status = stor1
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416] = 'You should add basic information'
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 448] = ' of bill.'
                    message.length = 83
                    s = 0
                    idx = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416
                    while ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 457 > idx:
                        uint256(message[s].field_0) = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while message.length + 31 / 32 > idx:
                        uint256(message[idx].field_0) = 0
                        idx = idx + 1
                        continue 
}



}
