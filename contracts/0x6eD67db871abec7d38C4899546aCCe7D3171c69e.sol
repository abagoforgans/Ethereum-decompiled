contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = 0x96619cd92fe0c7deaaee1c8043a7fea79cfa3e71
    require not msg.value
    stor1 = code.data[3740 len 20]
    return code.data[110 len 3618]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 stor1;
mapping of struct content;

function content(bytes32 arg1) {
    return content[arg1].field_256
}

function name(bytes32 arg1) {
    return content[arg1][2][0 len content[arg1][2].length].field_0
}

function pubkey(bytes32 arg1) {
    return content[arg1].field_768, content[arg1].field_1024
}

function _fallback() payable {
    revert 
}

function addr(bytes32 arg1) {
    if content[arg1].field_0:
        return content[arg1].field_0
    return stor0
}

function setAddr(bytes32 arg1, address arg2) {
    require ext_code.size(address(stor1.length))
    call address(stor1.length).owner(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    content[arg1].field_0 = arg2
    emit AddrChanged(arg2, arg1);
}

function setContent(bytes32 arg1, bytes32 arg2) {
    require ext_code.size(address(stor1.length))
    call address(stor1.length).owner(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    content[arg1].field_256 = arg2
    emit ContentChanged(arg2, arg1);
}

function setPubkey(bytes32 arg1, bytes32 arg2, bytes32 arg3) {
    require ext_code.size(address(stor1.length))
    call address(stor1.length).owner(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    content[arg1].field_768 = arg2
    content[arg1].field_1024 = arg3
    emit PubkeyChanged(arg2, arg3, arg1);
}

function setABI(bytes32 arg1, uint256 arg2, bytes arg3) {
    require ext_code.size(address(stor1.length))
    call address(stor1.length).owner(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require not arg2 or not arg2 - 1
    content[arg1][5][arg2][].field_0 = Array(len=arg3.length, data=arg3[all])
    emit ABIChanged(arg1, arg2);
}

function supportsInterface(bytes4 arg1) {
    if 0x3b3b57de00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xd8389dc500000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x691f343100000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x2203ab5600000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xc869023300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function setName(bytes32 arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    require ext_code.size(address(stor1.length))
    call address(stor1.length).owner(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    content[arg1].field_512 = (2 * arg2.length) + 1
    s = 0
    idx = 128
    while arg2.length + 128 > idx:
        content[arg1][s + 2].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if content[arg1][2].length + 31 / 32 > Mask(251, 0, arg2.length + 31) >> 5:
        stor[('array', 2, ('map', ('param', 'arg1'), ('name', 'content', 2))) + (Mask(251, 0, arg2.length + 31) >> 5)].field_0 = 0
        idx = (Mask(251, 0, arg2.length + 31) >> 5) + 1
        while content[arg1][2].length + 31 / 32 > idx:
            content[arg1][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    mem[ceil32(arg2.length) + 128] = 32
    mem[ceil32(arg2.length) + 160] = arg2.length
    if arg2.length:
        mem[ceil32(arg2.length) + 192] = mem[128]
        mem[ceil32(arg2.length) + 224 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
    emit NameChanged(Array(len=arg2.length, data=mem[ceil32(arg2.length) + 192 len arg2.length]), arg1);
}

function ABI(bytes32 arg1, uint256 arg2) {
    mem[64] = 128
    mem[96] = 0
    mem[0] = arg1
    mem[32] = 2
    idx = 1
    while idx <= arg2:
        if not arg2 or not idx:
            idx = 2 * idx
            continue 
        mem[0] = idx
        mem[32] = sha3(arg1, 2) + 5
        if content[arg1][5][idx].length <= 0:
            idx = 2 * idx
            continue 
        mem[32] = sha3(arg1, 2) + 5
        mem[64] = ceil32(content[arg1][5][idx].length) + 160
        mem[128] = content[arg1][5][idx].length
        mem[0] = sha3(idx, sha3(arg1, 2) + 5)
        mem[160] = content[arg1][5][idx].field_0
        s = 160
        t = sha3(mem[0])
        while content[arg1][5][idx].length + 128 > s:
            mem[s + 32] = uint256(stor1[t])
            s = s + 32
            t = t + 1
            continue 
        mem[mem[64]] = idx
        mem[mem[64] + 32] = 64
        mem[mem[64] + 64] = mem[128]
        _73 = mem[128]
        if not mem[128]:
            if not mem[128] % 32:
                return idx, 64, mem[mem[64] + 64 len mem[128] + 32]
            mem[floor32(mem[128]) + mem[64] + 96] = mem[floor32(mem[128]) + mem[64] + -(mem[128] % 32) + 128 len mem[128] % 32]
            return idx, Array(len=mem[128], data=mem[mem[64] + 96 len floor32(mem[128]) + 32])
        mem[mem[64] + 96] = mem[160]
        t = 160
        u = mem[64] + 96
        s = mem[128]
        while s > 32:
            mem[u + 32] = mem[t + 32]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        if not _73 % 32:
            return idx, 64, mem[mem[64] + 64 len _73 + 32]
        mem[floor32(_73) + mem[64] + 96] = mem[floor32(_73) + mem[64] + -(_73 % 32) + 128 len _73 % 32]
        return idx, 64, mem[mem[64] + 64 len floor32(_73) + 64]
    return 0, 64, 0
}

function sub_7f85b195(?) {
    mem[128 len arg3.length] = arg3[all]
    require ext_code.size(address(stor1.length))
    call address(stor1.length).owner(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(address(stor1.length))
    call address(stor1.length).owner(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    content[arg1].field_0 = arg2
    emit AddrChanged(arg2, arg1);
    require ext_code.size(address(stor1.length))
    call address(stor1.length).owner(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    mem[ceil32(arg3.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    content[arg1].field_512 = (2 * arg3.length) + 1
    s = 0
    idx = 128
    while arg3.length + 128 > idx:
        content[arg1][s + 2].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if content[arg1][2].length + 31 / 32 > Mask(251, 0, arg3.length + 31) >> 5:
        stor[('array', 2, ('map', ('param', 'arg1'), ('name', 'content', 2))) + (Mask(251, 0, arg3.length + 31) >> 5)].field_0 = 0
        idx = (Mask(251, 0, arg3.length + 31) >> 5) + 1
        while content[arg1][2].length + 31 / 32 > idx:
            content[arg1][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    mem[ceil32(arg3.length) + 128] = 32
    mem[ceil32(arg3.length) + 160] = arg3.length
    if arg3.length:
        mem[ceil32(arg3.length) + 192] = mem[128]
        mem[ceil32(arg3.length) + 224 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
    emit NameChanged(Array(len=arg3.length, data=mem[ceil32(arg3.length) + 192 len arg3.length]), arg1);
}



}
