contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = 0
    require not msg.value
    stor0 = msg.sender
    return code.data[62 len 3516]
}



// =====================  Runtime code  =====================


address owner;
uint256 recordCount;
array of uint256 stor4;
array of uint256 stor99;

function sub_035eaf07(?) {
    return stor[_33 + 1][0 len stor[_33 + 1].length]
}

function sub_0cdc35b4(?) {
    return stor[_33 + 2][0 len stor[_33 + 2].length]
}

function sub_20c8dfdc(?) {
    return stor[_33][0 len stor[_33].length]
}

function owner() {
    return owner
}

function recordCount() {
    return recordCount
}

function sub_f8e55970(?) {
    return stor[_33 + 3][0 len stor[_33 + 3].length]
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    if owner == msg.sender:
        owner = arg1
}

function sub_1bfd34e9(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = sha3(address(arg1), 2)
    mem[ceil32(arg2.length) + 128] = stor4[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))]
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function sub_a4f72c3c(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    if 64 == arg1.length:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 416 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg1.length) + 416] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg1.length) + 416] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + arg1.length + 416] = sha3(address(msg.sender), 2)
        stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg1.length) + 416 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][] = Array(len=arg2.length, data=arg2[all])
        stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg1.length) + 416 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][1][] = Array(len=arg3.length, data=arg3[all])
        stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg1.length) + 416 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][2][] = Array(len=arg4.length, data=arg4[all])
        stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg1.length) + 416 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][3][] = Array(len=arg5.length, data=arg5[all])
        stor4[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] = block.timestamp
        recordCount++
}



}
