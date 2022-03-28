contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[54 len 958]
}



// =====================  Runtime code  =====================


address sub_b2a16933Address;
uint256 sub_08094b99;
uint256 sub_11ec94d9;
uint8 stor3;
uint8 stor3; offset 8
address sub_fab88e62Address; offset 16

function sub_05607821(?) {
    return bool(uint8(stor3.field_8))
}

function sub_08094b99(?) {
    return sub_08094b99
}

function sub_11ec94d9(?) {
    return sub_11ec94d9
}

function sub_91d6da38(?) {
    return bool(uint8(stor3.field_0))
}

function sub_b2a16933(?) {
    return sub_b2a16933Address
}

function sub_fab88e62(?) {
    return sub_fab88e62Address
}

function _fallback() payable {
    revert 
}

function sub_af74473b(?) {
    mem[128 len arg1.length] = arg1[all]
    if sub_b2a16933Address != msg.sender:
        uint8(stor3.field_8) = 0
    else:
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = mem[ceil32(arg1.length) + floor32(arg1.length) + 128] and 256^(-(arg1.length % 32) + 32) - 1 or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
        sub_08094b99 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
        uint8(stor3.field_8) = 1
}

function sub_18bda028(?) {
    mem[128 len arg1.length] = arg1[all]
    sub_fab88e62Address = msg.sender
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = mem[ceil32(arg1.length) + floor32(arg1.length) + 128] and 256^(-(arg1.length % 32) + 32) - 1 or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    sub_11ec94d9 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    if sub_08094b99 != sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]):
        uint8(stor3.field_0) = 0
    else:
        uint8(stor3.field_0) = 1
}



}
