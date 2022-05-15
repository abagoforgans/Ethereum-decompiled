contract main {


// =======================  Init code  ======================


address stor1;
array of uint256 stor2;
uint256 stor3;
array of uint256 stor4;
uint256 stor5;
address stor7;

function _fallback() payable {
    stor7 = this.address
    require not msg.value
    mem[96 len -2715] = code.data[3070 len -2715]
    mem[64] = -2619
    stor1 = mem[108 len 20]
    stor2[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor3 = mem[160]
    stor4[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor5 = mem[224]
    return code.data[355 len 2715]
}



// =====================  Runtime code  =====================


array of address stor0;
address sub_4811b141Address;
array of struct sub_8a7e729b;
uint256 sub_85aa2452;
array of struct stor4;
uint256 sub_b841d98a;
uint256 sub_cfe3e225;
address stor7;

function sub_4811b141(?) {
    return sub_4811b141Address
}

function sub_85aa2452(?) {
    return sub_85aa2452
}

function sub_8a7e729b(?) {
    return uint256(sub_8a7e729b[0 len sub_8a7e729b.length].field_0)
}

function sub_b841d98a(?) {
    return sub_b841d98a
}

function sub_cfe3e225(?) {
    return sub_cfe3e225
}

function _fallback() payable {
    revert
}

function withdrawFunds(uint256 arg1) {
    if sub_4811b141Address != msg.sender:
        emit 0x6a7792a8: sub_4811b141Address
        return 0
    call sub_4811b141Address with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0xdb885766: arg1
    return 1
}

function sub_76c41357(?) {
    require arg1 < stor0.length
    mem[192] = uint256(stor[sha3((2 * arg1) + ('name', 'stor0', 0) + 1)].field_0)
    idx = 192
    s = 0
    while stor[(2 * arg1) + ('name', 'stor0', 0) + 1].length + 192 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((2 * arg1) + ('name', 'stor0', 0) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor0[arg1].field_0), 
           Array(len=stor[(2 * arg1) + ('name', 'stor0', 0) + 1].length, data=mem[192 len stor[(2 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(2 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(2 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32)])
}

function sub_1f9a2e5e(?) payable {
    require msg.value == sub_b841d98a
    sub_cfe3e225++
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        mem[0] = 0
        idx = 2 * stor0.length + 1
        while sha3(0) + (2 * stor0.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            idx = idx + 2
            continue 
    address(stor0[stor0.length].field_0) = msg.sender
    uint256(stor[sha3((2 * stor0.length) + ('name', 'stor0', 0) + 1)][].field_0) = Array(len=arg1.length, data=arg1[all])
    emit 0xd137dc9c: msg.sender, msg.value, sub_cfe3e225, Array(len=arg1.length, data=arg1[all])
}

function getScaffoldSummary() {
    mem[96] = 0
    mem[128] = 0
    mem[160] = sub_8a7e729b.length
    mem[192] = uint256(sub_8a7e729b.field_0)
    idx = 192
    s = 0
    while sub_8a7e729b.length + 160 > idx:
        mem[idx + 32] = uint256(sub_8a7e729b[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(sub_8a7e729b.length) + ceil32(stor4.length) + 224
    mem[ceil32(sub_8a7e729b.length) + 192] = stor4.length
    mem[0] = 4
    mem[ceil32(sub_8a7e729b.length) + 224] = uint256(stor4.field_0)
    idx = ceil32(sub_8a7e729b.length) + 224
    s = 0
    while ceil32(sub_8a7e729b.length) + stor4.length + 192 > idx:
        mem[idx + 32] = uint256(stor4[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(sub_8a7e729b.length) + ceil32(stor4.length) + 256] = eth.balance(stor7)
    mem[ceil32(sub_8a7e729b.length) + ceil32(stor4.length) + 288] = sub_85aa2452
    mem[ceil32(sub_8a7e729b.length) + ceil32(stor4.length) + 352] = sub_b841d98a
    mem[ceil32(sub_8a7e729b.length) + ceil32(stor4.length) + 384] = sub_cfe3e225
    mem[ceil32(sub_8a7e729b.length) + ceil32(stor4.length) + 416] = sub_4811b141Address
    mem[ceil32(sub_8a7e729b.length) + ceil32(stor4.length) + 224] = 224
    mem[ceil32(sub_8a7e729b.length) + ceil32(stor4.length) + 448] = sub_8a7e729b.length
    mem[ceil32(sub_8a7e729b.length) + ceil32(stor4.length) + 480 len ceil32(sub_8a7e729b.length)] = mem[192 len ceil32(sub_8a7e729b.length)]
    mem[ceil32(sub_8a7e729b.length) + ceil32(stor4.length) + 320] = sub_8a7e729b.length + 256
    mem[sub_8a7e729b.length + ceil32(sub_8a7e729b.length) + ceil32(stor4.length) + 480] = stor4.length
    mem[sub_8a7e729b.length + ceil32(sub_8a7e729b.length) + ceil32(stor4.length) + 512 len ceil32(stor4.length)] = mem[ceil32(sub_8a7e729b.length) + 224 len ceil32(stor4.length)]
    if not stor4.length % 32:
        return Array(len=sub_8a7e729b.length, data=mem[192 len ceil32(sub_8a7e729b.length)], mem[(2 * ceil32(sub_8a7e729b.length)) + ceil32(stor4.length) + 480 len stor4.length + sub_8a7e729b.length + -ceil32(sub_8a7e729b.length) + 32]), 
               eth.balance(stor7),
               sub_85aa2452,
               sub_8a7e729b.length + 256,
               sub_b841d98a,
               sub_cfe3e225,
               sub_4811b141Address
    mem[floor32(stor4.length) + sub_8a7e729b.length + ceil32(sub_8a7e729b.length) + ceil32(stor4.length) + 512] = mem[floor32(stor4.length) + sub_8a7e729b.length + ceil32(sub_8a7e729b.length) + ceil32(stor4.length) + -stor4.length % 32 + 544 len stor4.length % 32]
    return Array(len=sub_8a7e729b.length, data=mem[192 len ceil32(sub_8a7e729b.length)], mem[(2 * ceil32(sub_8a7e729b.length)) + ceil32(stor4.length) + 480 len floor32(stor4.length) + sub_8a7e729b.length + -ceil32(sub_8a7e729b.length) + 64]), 
           eth.balance(stor7),
           sub_85aa2452,
           sub_8a7e729b.length + 256,
           sub_b841d98a,
           sub_cfe3e225,
           sub_4811b141Address
}



}
