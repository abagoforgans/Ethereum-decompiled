contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor1;
uint8 stor1; offset 128
uint128 stor1; offset 8
uint128 stor1; offset 136
uint256 stor2;

function _fallback() payable {
    uint8(stor1.field_0) = 1
    Mask(120, 0, stor1.field_8) = 0
    uint8(stor1.field_128) = 20
    Mask(120, 0, stor1.field_136) = 0
    stor2 = 10^16
    require not msg.value
    stor0 = msg.sender
    return code.data[116 len 1829]
}



// =====================  Runtime code  =====================


address owner;
uint128 sub_1fef2f2a;
uint128 sub_192f0846; offset 128
uint256 sub_12d3b8c9;
mapping of struct sub_57622667;

function sub_12d3b8c9(?) {
    return sub_12d3b8c9
}

function sub_192f0846(?) {
    return sub_192f0846
}

function sub_1fef2f2a(?) {
    return sub_1fef2f2a
}

function sub_57622667(?) {
    return sub_57622667[arg1].field_0, sub_57622667[arg1].field_256, sub_57622667[arg1].field_512
}

function owner() {
    return owner
}

function sub_e620ddab(?) {
    require owner == msg.sender
    selfdestruct(owner)
}

function sub_e38ff62c(?) {
    require owner == msg.sender
    sub_12d3b8c9 = arg1
}

function _fallback() payable {
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_28604f07(?) {
    require owner == msg.sender
    if arg2:
        if arg1 <= arg2:
            sub_1fef2f2a = arg1
            sub_192f0846 = arg2
}

function withdrawFunds() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function submitHash(bytes32 arg1) payable {
    require not sub_57622667[arg1].field_0
    require msg.value >= sub_12d3b8c9
    require sub_192f0846
    sub_57622667[arg1].field_256 = msg.sender
    sub_57622667[arg1].field_0 = msg.value - (sub_1fef2f2a * msg.value / sub_192f0846)
    sub_57622667[arg1].field_512 = block.timestamp
    call owner with:
       value sub_1fef2f2a * msg.value / sub_192f0846 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0xf291b779: (msg.value - (sub_1fef2f2a * msg.value / sub_192f0846)), msg.sender, arg1
}

function sub_bb3e3159(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    hash = sha256hash(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) 
    require sha256hash.result
    require sub_57622667[hash].field_0 > 0
    sub_57622667[hash].field_0 = 0
    sub_57622667[hash].field_256 = 0
    sub_57622667[hash].field_512 = 0
    call msg.sender with:
       value sub_57622667[hash].field_0 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    mem[ceil32(arg1.length) + 160] = sub_57622667[hash].field_0
    mem[ceil32(arg1.length) + 128] = 64
    mem[ceil32(arg1.length) + 192] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 224] = mem[128]
        mem[ceil32(arg1.length) + 256 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    emit 0x578e97af: Array(len=arg1.length, data=mem[ceil32(arg1.length) + 224 len arg1.length]), sub_57622667[hash].field_0, msg.sender, hash
}



}
