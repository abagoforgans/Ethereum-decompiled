contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[60 len 3337]
}



// =====================  Runtime code  =====================


address stor0;
array of struct stor1;
mapping of struct stor4;

function selfDestruct() {
    if stor0 != msg.sender:
    require ext_code.size(0x122a2fde2f403d9155dd232e149a8c4497b047bc)
    delegate 0x122a2fde2f403d9155dd232e149a8c4497b047bc.0xf2279f8f with:
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
    require ext_code.size(0x122a2fde2f403d9155dd232e149a8c4497b047bc)
    delegate 0x122a2fde2f403d9155dd232e149a8c4497b047bc.0xa61ecd5d with:
         gas gas_remaining - 710 wei
        args sha3(address(msg.sender), 4), arg2
    require delegate.return_code
    return bool(delegate.return_data[0]), stor4[address(arg1)][3][arg2].field_0, stor4[address(arg1)][3][arg2].field_256
}

function proveIt(address arg1, string arg2) {
    require ext_code.size(0x122a2fde2f403d9155dd232e149a8c4497b047bc)
    delegate 0x122a2fde2f403d9155dd232e149a8c4497b047bc.0xa61ecd5d with:
         gas gas_remaining - 710 wei
        args sha3(address(msg.sender), 4), sha3(arg2[all])
    require delegate.return_code
    return bool(delegate.return_data[0]), 
           stor4[address(arg1)][3][sha3(arg2[all])].field_0,
           stor4[address(arg1)][3][sha3(arg2[all])].field_256
}

function usersGetter() {
    mem[160] = 0
    mem[132] = 1
    require ext_code.size(0x122a2fde2f403d9155dd232e149a8c4497b047bc)
    delegate 0x122a2fde2f403d9155dd232e149a8c4497b047bc.0xf2279f8f with:
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
    require ext_code.size(0x122a2fde2f403d9155dd232e149a8c4497b047bc)
    delegate 0x122a2fde2f403d9155dd232e149a8c4497b047bc.0xa61ecd5d with:
         gas gas_remaining - 710 wei
        args sha3(address(msg.sender), 4), arg1
    require delegate.return_code
    require not delegate.return_data[0]
    require ext_code.size(0x122a2fde2f403d9155dd232e149a8c4497b047bc)
    delegate 0x122a2fde2f403d9155dd232e149a8c4497b047bc.0x5856638c with:
         gas gas_remaining - 710 wei
        args sha3(address(msg.sender), 4), arg1
    require delegate.return_code
    stor4[address(msg.sender)][3][arg1].field_0 = block.timestamp
    stor4[address(msg.sender)][3][arg1].field_256 = msg.value
    require ext_code.size(0x122a2fde2f403d9155dd232e149a8c4497b047bc)
    delegate 0x122a2fde2f403d9155dd232e149a8c4497b047bc.0xe102e97c with:
         gas gas_remaining - 710 wei
        args 1, msg.sender
    require delegate.return_code
}

function userEntries(address arg1) {
    if not stor4[address(arg1)].field_0:
        mem[(32 * stor4[address(arg1)].field_0) + 160] = 32
        mem[(32 * stor4[address(arg1)].field_0) + 192] = stor4[address(arg1)].field_0
        mem[(32 * stor4[address(arg1)].field_0) + 224 len floor32(stor4[address(arg1)].field_0)] = mem[160 len floor32(stor4[address(arg1)].field_0)]
        return memory
          from (32 * stor4[address(arg1)].field_0) + 160
           len (96 * stor4[address(arg1)].field_0) + 64
    mem[160] = stor4[address(arg1)].field_0
    idx = 160
    s = 0
    while (32 * stor4[address(arg1)].field_0) + 128 > idx:
        mem[idx + 32] = stor4[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor4[address(arg1)].field_0) + 224 len floor32(stor4[address(arg1)].field_0)] = mem[160 len floor32(stor4[address(arg1)].field_0)]
    return Array(len=stor4[address(arg1)].field_0, data=mem[160 len floor32(stor4[address(arg1)].field_0)], mem[(32 * stor4[address(arg1)].field_0) + floor32(stor4[address(arg1)].field_0) + 224 len (32 * stor4[address(arg1)].field_0) - floor32(stor4[address(arg1)].field_0)]), 
}

function deleteEntry(bytes32 arg1) {
    require ext_code.size(0x122a2fde2f403d9155dd232e149a8c4497b047bc)
    delegate 0x122a2fde2f403d9155dd232e149a8c4497b047bc.0x990ec6b7 with:
         gas gas_remaining - 710 wei
        args sha3(address(msg.sender), 4)
    require delegate.return_code
    require delegate.return_data[0] >= 1
    require ext_code.size(0x122a2fde2f403d9155dd232e149a8c4497b047bc)
    delegate 0x122a2fde2f403d9155dd232e149a8c4497b047bc.0xa61ecd5d with:
         gas gas_remaining - 710 wei
        args sha3(address(msg.sender), 4), arg1
    require delegate.return_code
    require delegate.return_data[0]
    require ext_code.size(0x122a2fde2f403d9155dd232e149a8c4497b047bc)
    delegate 0x122a2fde2f403d9155dd232e149a8c4497b047bc.0xf6bf2aab with:
         gas gas_remaining - 710 wei
        args sha3(address(msg.sender), 4), arg1
    require delegate.return_code
    stor4[address(msg.sender)][3][arg1].field_0 = 0
    stor4[address(msg.sender)][3][arg1].field_256 = 0
    if stor4[address(msg.sender)][3][arg1].field_256 > 0:
        call msg.sender with:
           value stor4[address(msg.sender)][3][arg1].field_256 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    require ext_code.size(0x122a2fde2f403d9155dd232e149a8c4497b047bc)
    delegate 0x122a2fde2f403d9155dd232e149a8c4497b047bc.0x990ec6b7 with:
         gas gas_remaining - 710 wei
        args sha3(address(msg.sender), 4)
    require delegate.return_code
    if not delegate.return_data[0]:
        require ext_code.size(0x122a2fde2f403d9155dd232e149a8c4497b047bc)
        delegate 0x122a2fde2f403d9155dd232e149a8c4497b047bc.0x40511d61 with:
             gas gas_remaining - 710 wei
            args 1, msg.sender
        require delegate.return_code
}

function addEntry(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    require ext_code.size(0x122a2fde2f403d9155dd232e149a8c4497b047bc)
    delegate 0x122a2fde2f403d9155dd232e149a8c4497b047bc.0xa61ecd5d with:
         gas gas_remaining - 710 wei
        args sha3(address(msg.sender), 4), sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    require delegate.return_code
    require not delegate.return_data[0]
    require ext_code.size(0x122a2fde2f403d9155dd232e149a8c4497b047bc)
    delegate 0x122a2fde2f403d9155dd232e149a8c4497b047bc.0x5856638c with:
         gas gas_remaining - 710 wei
        args sha3(address(msg.sender), 4), sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    require delegate.return_code
    stor4[address(msg.sender)][3][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_0 = block.timestamp
    stor4[address(msg.sender)][3][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_256 = msg.value
    require ext_code.size(0x122a2fde2f403d9155dd232e149a8c4497b047bc)
    delegate 0x122a2fde2f403d9155dd232e149a8c4497b047bc.0xe102e97c with:
         gas gas_remaining - 710 wei
        args 1, msg.sender
    require delegate.return_code
}

function deleteEntry(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 132] = sha3(address(msg.sender), 4)
    require ext_code.size(0x122a2fde2f403d9155dd232e149a8c4497b047bc)
    delegate 0x122a2fde2f403d9155dd232e149a8c4497b047bc.0x990ec6b7 with:
         gas gas_remaining - 710 wei
        args sha3(address(msg.sender), 4)
    mem[ceil32(arg1.length) + 128] = delegate.return_data[0]
    require delegate.return_code
    require delegate.return_data[0] >= 1
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    require ext_code.size(0x122a2fde2f403d9155dd232e149a8c4497b047bc)
    delegate 0x122a2fde2f403d9155dd232e149a8c4497b047bc.0xa61ecd5d with:
         gas gas_remaining - 710 wei
        args sha3(address(msg.sender), 4), sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    require delegate.return_code
    require delegate.return_data[0]
    require ext_code.size(0x122a2fde2f403d9155dd232e149a8c4497b047bc)
    delegate 0x122a2fde2f403d9155dd232e149a8c4497b047bc.0xf6bf2aab with:
         gas gas_remaining - 710 wei
        args sha3(address(msg.sender), 4), sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    require delegate.return_code
    stor4[address(msg.sender)][3][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_0 = 0
    stor4[address(msg.sender)][3][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_256 = 0
    if stor4[address(msg.sender)][3][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_256 > 0:
        call msg.sender with:
           value stor4[address(msg.sender)][3][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_256 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    require ext_code.size(0x122a2fde2f403d9155dd232e149a8c4497b047bc)
    delegate 0x122a2fde2f403d9155dd232e149a8c4497b047bc.0x990ec6b7 with:
         gas gas_remaining - 710 wei
        args sha3(address(msg.sender), 4)
    require delegate.return_code
    if not delegate.return_data[0]:
        require ext_code.size(0x122a2fde2f403d9155dd232e149a8c4497b047bc)
        delegate 0x122a2fde2f403d9155dd232e149a8c4497b047bc.0x40511d61 with:
             gas gas_remaining - 710 wei
            args 1, msg.sender
        require delegate.return_code
}



}
