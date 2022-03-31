contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = 0
    require not msg.value
    stor0 = msg.sender
    return code.data[62 len 4248]
}



// =====================  Runtime code  =====================


#
#  - sub_a4f72c3c(?)
#
address owner;
uint256 recordCount;
array of uint256 sub_fdb85048;
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

function sub_fdb85048(?) {
    return sub_fdb85048[address(arg1)][arg2][0 len sub_fdb85048[address(arg1)][arg2].length]
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
    mem[ceil32(arg2.length) + arg2.length + 128] = sha3(address(arg1), 3)
    mem[ceil32(arg2.length) + 128] = stor4[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))]
    return memory
      from ceil32(arg2.length) + 128
       len 32
}



}
