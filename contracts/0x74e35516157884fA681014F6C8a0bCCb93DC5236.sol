contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_6eb63da2(?) {
    mem[128 len arg1.length] = arg1[all]
    require arg1.length > 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    emit 0x83a85081: msg.sender, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
}



}
