contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[4587 len 20]
    return code.data[75 len 4500]
}



// =====================  Runtime code  =====================


address stor0;
mapping of struct content;
array of uint256 stor99;

function content(bytes32 arg1) {
    return content[arg1].field_256
}

function addr(bytes32 arg1) {
    return address(content[arg1].field_0)
}

function text(bytes32 arg1, string arg2) {
    return stor[_33][0 len stor[_33].length]
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

function setContent(bytes32 arg1, bytes32 arg2) {
    require ext_code.size(stor0)
    call stor0.owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    content[arg1].field_256 = arg2
    emit ContentChanged(arg2, arg1);
}

function setAddr(bytes32 arg1, address arg2) {
    require ext_code.size(stor0)
    call stor0.owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    address(content[arg1].field_0) = arg2
    emit AddrChanged(arg2, arg1);
}

function setPubkey(bytes32 arg1, bytes32 arg2, bytes32 arg3) {
    require ext_code.size(stor0)
    call stor0.owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    content[arg1].field_768 = arg2
    content[arg1].field_1024 = arg3
    emit PubkeyChanged(arg2, arg3, arg1);
}

function setABI(bytes32 arg1, uint256 arg2, bytes arg3) {
    require ext_code.size(stor0)
    call stor0.owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require not arg2 or not arg2 - 1
    content[arg1][6][arg2][].field_0 = Array(len=arg3.length, data=arg3[all])
    emit ABIChanged(arg1, arg2);
}

function setName(bytes32 arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    require ext_code.size(stor0)
    call stor0.owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    content[arg1][2][].field_0 = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg2.length) + 128] = 32
    mem[ceil32(arg2.length) + 160] = arg2.length
    if arg2.length:
        mem[ceil32(arg2.length) + 192] = mem[128]
        mem[ceil32(arg2.length) + 224 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
    emit NameChanged(Array(len=arg2.length, data=mem[ceil32(arg2.length) + 192 len arg2.length]), arg1);
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
    if 0x59d1d43c00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function ABI(bytes32 arg1, uint256 arg2) {
    mem[64] = 128
    mem[96] = 0
    mem[0] = arg1
    mem[32] = 1
    idx = 1
    while idx <= arg2:
        if not arg2 or not idx:
            idx = 2 * idx
            continue 
        mem[0] = idx
        mem[32] = sha3(arg1, 1) + 6
        if content[arg1][6][idx].length <= 0:
            idx = 2 * idx
            continue 
        mem[32] = sha3(arg1, 1) + 6
        mem[64] = ceil32(content[arg1][6][idx].length) + 160
        mem[128] = content[arg1][6][idx].length
        mem[0] = sha3(idx, sha3(arg1, 1) + 6)
        mem[160] = content[arg1][6][idx].field_0
        s = 160
        t = sha3(mem[0])
        while content[arg1][6][idx].length + 128 > s:
            mem[s + 32] = content[t].field_0
            s = s + 32
            t = t + 1
            continue 
        _71 = mem[64]
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
        s = 160
        t = mem[64] + 96
        idx = mem[128]
        while idx > 32:
            mem[t + 32] = mem[s + 32]
            s = s + 32
            t = t + 32
            idx = idx - 32
            continue 
        if not _73 % 32:
            return memory
              from mem[64]
               len _73 + _71 + -mem[64] + 96
        mem[floor32(_73) + _71 + 96] = mem[floor32(_73) + _71 + -(_73 % 32) + 128 len _73 % 32]
        return memory
          from mem[64]
           len floor32(_73) + _71 + -mem[64] + 128
    return 0, 64, 0
}

function setText(bytes32 arg1, string arg2, string arg3) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 0
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 164] = arg1
    require ext_code.size(stor0)
    call stor0.owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = sha3(arg1, 1) + 5
    stor[mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][] = Array(len=arg3.length, data=arg3[all])
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    _175 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len arg2.length % 32])
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 32
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = arg2.length
    if arg2.length:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = mem[128]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 256 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
    if not arg2.length % 32:
        emit TextChanged(Array(len=mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len floor32(arg2.length)], data=Mask(8 * arg2.length % 32, 0, sha3(arg1, 1) + 5), mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 192]), arg1, _175);
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 256 len arg2.length % 32]
        emit TextChanged(Array(len=mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len floor32(arg2.length)], data=Mask(8 * arg2.length % 32, 0, sha3(arg1, 1) + 5), mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 192 len -(arg2.length % 32) + 64]), arg1, _175);
}



}
