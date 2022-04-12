contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[60 len 3031]
}



// =====================  Runtime code  =====================


address stor0;
array of struct stor1;
mapping of struct stor3;

function selfDestruct() {
    if stor0 != msg.sender:
    require ext_code.size(0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f)
    delegate 0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.0xf2279f8f with:
         gas gas_remaining - 710 wei
        args 1
    require delegate.return_code
    if delegate.return_data[0]:
    selfdestruct(stor0)
}

function _fallback() {
    revert
}

function proveIt(address arg1, bytes32 arg2) {
    require ext_code.size(0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f)
    delegate 0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.0xa61ecd5d with:
         gas gas_remaining - 710 wei
        args sha3(address(arg1), 3), arg2
    require delegate.return_code
    return bool(delegate.return_data[0]), stor3[address(arg1)][2][arg2].field_0, stor3[address(arg1)][2][arg2].field_256
}

function proveIt(address arg1, string arg2) {
    require ext_code.size(0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f)
    delegate 0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.0xa61ecd5d with:
         gas gas_remaining - 710 wei
        args sha3(address(arg1), 3), sha3(arg2[all])
    require delegate.return_code
    return bool(delegate.return_data[0]), 
           stor3[address(arg1)][2][sha3(arg2[all])].field_0,
           stor3[address(arg1)][2][sha3(arg2[all])].field_256
}

function registeredUsers() {
    mem[160] = 0
    mem[132] = 1
    require ext_code.size(0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f)
    delegate 0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.0xf2279f8f with:
         gas gas_remaining - 710 wei
        args 1
    require delegate.return_code
    if stor1.length:
        mem[160] = address(stor1.field_0)
        idx = 160
        s = 0
        while (32 * stor1.length) + 128 > idx:
            mem[idx + 32] = stor1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor1.length) + 256 len floor32(stor1.length)] = mem[160 len floor32(stor1.length)]
    return delegate.return_data[0], 
           Array(len=stor1.length, data=mem[160 len floor32(stor1.length)], mem[(32 * stor1.length) + floor32(stor1.length) + 256 len (32 * stor1.length) - floor32(stor1.length)])
}

function addEntry(bytes32 arg1) payable {
    require ext_code.size(0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f)
    delegate 0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.0xa61ecd5d with:
         gas gas_remaining - 710 wei
        args sha3(address(msg.sender), 3), arg1
    require delegate.return_code
    require not delegate.return_data[0]
    require ext_code.size(0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f)
    delegate 0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.0xe102e97c with:
         gas gas_remaining - 710 wei
        args 1, msg.sender
    require delegate.return_code
    require ext_code.size(0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f)
    delegate 0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.0x5856638c with:
         gas gas_remaining - 710 wei
        args sha3(address(msg.sender), 3), arg1
    require delegate.return_code
    stor3[address(msg.sender)][2][arg1].field_0 = block.timestamp
    stor3[address(msg.sender)][2][arg1].field_256 = msg.value
}

function userEntries(address arg1) {
    if not stor3[address(arg1)].field_0:
        mem[(32 * stor3[address(arg1)].field_0) + 160] = 32
        mem[(32 * stor3[address(arg1)].field_0) + 192] = stor3[address(arg1)].field_0
        mem[(32 * stor3[address(arg1)].field_0) + 224 len floor32(stor3[address(arg1)].field_0)] = mem[160 len floor32(stor3[address(arg1)].field_0)]
        return memory
          from (32 * stor3[address(arg1)].field_0) + 160
           len (96 * stor3[address(arg1)].field_0) + 64
    mem[160] = stor3[address(arg1)].field_0
    idx = 160
    s = 0
    while (32 * stor3[address(arg1)].field_0) + 128 > idx:
        mem[idx + 32] = stor3[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor3[address(arg1)].field_0) + 224 len floor32(stor3[address(arg1)].field_0)] = mem[160 len floor32(stor3[address(arg1)].field_0)]
    return Array(len=stor3[address(arg1)].field_0, data=mem[160 len floor32(stor3[address(arg1)].field_0)], mem[(32 * stor3[address(arg1)].field_0) + floor32(stor3[address(arg1)].field_0) + 224 len (32 * stor3[address(arg1)].field_0) - floor32(stor3[address(arg1)].field_0)]), 
}

function deleteEntry(bytes32 arg1) {
    require ext_code.size(0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f)
    delegate 0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.0xa61ecd5d with:
         gas gas_remaining - 710 wei
        args sha3(address(msg.sender), 3), arg1
    require delegate.return_code
    require bool(delegate.return_data[0]) == 1
    stor3[address(msg.sender)][2][arg1].field_0 = 0
    stor3[address(msg.sender)][2][arg1].field_256 = 0
    require ext_code.size(0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f)
    delegate 0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.0xf6bf2aab with:
         gas gas_remaining - 710 wei
        args sha3(address(msg.sender), 3), arg1
    require delegate.return_code
    require ext_code.size(0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f)
    delegate 0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.0x990ec6b7 with:
         gas gas_remaining - 710 wei
        args sha3(address(msg.sender), 3)
    require delegate.return_code
    if not delegate.return_data[0]:
        require ext_code.size(0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f)
        delegate 0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.0x40511d61 with:
             gas gas_remaining - 710 wei
            args 1, msg.sender
        require delegate.return_code
    if stor3[address(msg.sender)][2][arg1].field_256 > 0:
        call msg.sender with:
           value stor3[address(msg.sender)][2][arg1].field_256 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function addEntry(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    require ext_code.size(0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f)
    delegate 0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.0xa61ecd5d with:
         gas gas_remaining - 710 wei
        args sha3(address(msg.sender), 3), sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    require delegate.return_code
    require not delegate.return_data[0]
    require ext_code.size(0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f)
    delegate 0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.0xe102e97c with:
         gas gas_remaining - 710 wei
        args 1, msg.sender
    require delegate.return_code
    require ext_code.size(0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f)
    delegate 0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.0x5856638c with:
         gas gas_remaining - 710 wei
        args sha3(address(msg.sender), 3), sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    require delegate.return_code
    stor3[address(msg.sender)][2][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_0 = block.timestamp
    stor3[address(msg.sender)][2][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_256 = msg.value
}

function deleteEntry(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    require ext_code.size(0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f)
    delegate 0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.0xa61ecd5d with:
         gas gas_remaining - 710 wei
        args sha3(address(msg.sender), 3), sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    require delegate.return_code
    require bool(delegate.return_data[0]) == 1
    stor3[address(msg.sender)][2][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_0 = 0
    stor3[address(msg.sender)][2][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_256 = 0
    require ext_code.size(0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f)
    delegate 0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.0xf6bf2aab with:
         gas gas_remaining - 710 wei
        args sha3(address(msg.sender), 3), sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    require delegate.return_code
    require ext_code.size(0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f)
    delegate 0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.0x990ec6b7 with:
         gas gas_remaining - 710 wei
        args sha3(address(msg.sender), 3)
    require delegate.return_code
    if not delegate.return_data[0]:
        require ext_code.size(0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f)
        delegate 0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.0x40511d61 with:
             gas gas_remaining - 710 wei
            args 1, msg.sender
        require delegate.return_code
    if stor3[address(msg.sender)][2][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_256 > 0:
        call msg.sender with:
           value stor3[address(msg.sender)][2][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_256 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
