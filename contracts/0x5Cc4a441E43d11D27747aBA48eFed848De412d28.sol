contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 1844]




// =====================  Runtime code  =====================


#
#  - proveIt(string arg1)
#
mapping of struct stor0;

function _fallback() {
    revert
}

function ledger(address arg1, bytes32 arg2) {
    return bool(stor0[arg1][arg2].field_0), stor0[arg1][arg2].field_256, stor0[arg1][arg2].field_512
}

function proveIt(address arg1, bytes32 arg2) {
    if not stor0[address(arg1)][arg2].field_0:
        return 0
    return 1, stor0[address(arg1)][arg2].field_256, stor0[address(arg1)][arg2].field_512
}

function proveIt(bytes32 arg1) {
    if not stor0[address(msg.sender)][arg1].field_0:
        return 0
    return 1, stor0[address(msg.sender)][arg1].field_256, stor0[address(msg.sender)][arg1].field_512
}

function addEntry(bytes32 arg1) payable {
    require not stor0[address(msg.sender)][arg1].field_0
    stor0[address(msg.sender)][arg1].field_0 = 1
    stor0[address(msg.sender)][arg1].field_256 = block.timestamp
    stor0[address(msg.sender)][arg1].field_512 = msg.value
}

function deleteEntry(bytes32 arg1) {
    require stor0[address(msg.sender)][arg1].field_0
    stor0[address(msg.sender)][arg1].field_0 = 0
    stor0[address(msg.sender)][arg1].field_256 = 0
    stor0[address(msg.sender)][arg1].field_512 = 0
    if stor0[address(msg.sender)][arg1].field_512 > 0:
        call msg.sender with:
           value stor0[address(msg.sender)][arg1].field_512 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function proveIt(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    if not stor0[address(arg1)][('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2')))))))].field_0:
        return 0
    return 1, 
           stor0[address(arg1)][('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2')))))))].field_256,
           stor0[address(arg1)][('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2')))))))].field_512
}

function addEntry(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    require not stor0[address(msg.sender)][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_0
    stor0[address(msg.sender)][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_0 = 1
    stor0[address(msg.sender)][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_256 = block.timestamp
    stor0[address(msg.sender)][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_512 = msg.value
}

function deleteEntry(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    require stor0[address(msg.sender)][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_0
    stor0[address(msg.sender)][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_0 = 0
    stor0[address(msg.sender)][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_256 = 0
    stor0[address(msg.sender)][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_512 = 0
    if stor0[address(msg.sender)][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_512 > 0:
        call msg.sender with:
           value stor0[address(msg.sender)][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_512 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
