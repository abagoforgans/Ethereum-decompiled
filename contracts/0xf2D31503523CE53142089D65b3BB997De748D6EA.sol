contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 1354]




// =====================  Runtime code  =====================


mapping of struct sub_bfa41f3a;

function sub_bfa41f3a(?) {
    return sub_bfa41f3a[address(arg1)][0 len sub_bfa41f3a[address(arg1)].length].field_0
}

function sub_c840a786(?) {
    return sub_bfa41f3a[address(arg1)].field_256
}

function _fallback() payable {
    revert
}

function sub_eb252383(?) payable {
    require arg1 < msg.value
    sub_bfa41f3a[address(msg.sender)].field_256 += arg1
    return (arg1 + sub_bfa41f3a[address(msg.sender)].field_256)
}

function sub_14d99029(?) {
    mem[128 len arg1.length] = arg1[all]
    require not sub_bfa41f3a[address(msg.sender)].field_672
    mem[ceil32(arg1.length) + 128] = 96
    sub_bfa41f3a[address(msg.sender)][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_bfa41f3a[address(msg.sender)].field_256 = 1
    sub_bfa41f3a[address(msg.sender)].field_512 = msg.sender
    sub_bfa41f3a[address(msg.sender)].field_672 = 1
    sub_bfa41f3a[address(msg.sender)].field_768 = block.timestamp
    mem[ceil32(arg1.length) + 288 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 288] = mem[ceil32(arg1.length) + floor32(arg1.length) + 288] and 256^(-(arg1.length % 32) + 32) - 1 or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    emit 0x4ebca980: sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 288 len arg1.length % 32]), msg.sender
    return 1
}



}
