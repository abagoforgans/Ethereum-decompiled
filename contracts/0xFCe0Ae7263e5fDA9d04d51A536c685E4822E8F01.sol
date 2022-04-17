contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[5007 len 20]
    return code.data[84 len 4911]
}



// =====================  Runtime code  =====================


address ensAddress;
mapping of struct content;

function content(bytes32 arg1) {
    return content[arg1].field_256
}

function addr(bytes32 arg1) {
    return address(content[arg1].field_0)
}

function ens() {
    return ensAddress
}

function mx(bytes32 arg1) {
    return address(content[arg1].field_1280)
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
    require ext_code.size(ensAddress)
    call ensAddress.owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    content[arg1].field_256 = arg2
    emit ContentChanged(arg2, arg1);
}

function setAddr(bytes32 arg1, address arg2) {
    require ext_code.size(ensAddress)
    call ensAddress.owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    address(content[arg1].field_0) = arg2
    emit AddrChanged(arg2, arg1);
}

function setMx(bytes32 arg1, address arg2) {
    require ext_code.size(ensAddress)
    call ensAddress.owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    address(content[arg1].field_1280) = arg2
    emit MxRecordChanged(arg2, arg1);
}

function setPubkey(bytes32 arg1, bytes32 arg2, bytes32 arg3) {
    require ext_code.size(ensAddress)
    call ensAddress.owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    content[arg1].field_768 = arg2
    content[arg1].field_1024 = arg3
    emit PubkeyChanged(arg2, arg3, arg1);
}

function setName(bytes32 arg1, string arg2) {
    require ext_code.size(ensAddress)
    call ensAddress.owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    content[arg1][2][].field_0 = Array(len=arg2.length, data=arg2[all])
    emit NameChanged(Array(len=arg2.length, data=arg2[all]), arg1);
}

function setABI(bytes32 arg1, uint256 arg2, bytes arg3) {
    require ext_code.size(ensAddress)
    call ensAddress.owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require not arg2 or not arg2 - 1
    content[arg1][7][arg2][].field_0 = Array(len=arg3.length, data=arg3[all])
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
    if 0x59d1d43c00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x7d753cf600000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
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
        mem[32] = sha3(arg1, 1) + 7
        if content[arg1][7][idx].length <= 0:
            idx = 2 * idx
            continue 
        mem[32] = sha3(arg1, 1) + 7
        mem[64] = ceil32(content[arg1][7][idx].length) + 160
        mem[128] = content[arg1][7][idx].length
        mem[0] = sha3(idx, sha3(arg1, 1) + 7)
        mem[160] = content[arg1][7][idx].field_0
        s = 160
        t = sha3(mem[0])
        while content[arg1][7][idx].length + 128 > s:
            mem[s + 32] = content[t].field_0
            s = s + 32
            t = t + 1
            continue 
        _79 = mem[64]
        mem[mem[64]] = idx
        mem[mem[64] + 32] = 64
        mem[mem[64] + 64] = mem[128]
        _81 = mem[128]
        idx = 0
        while idx < _81:
            mem[idx + mem[64] + 96] = mem[idx + 160]
            idx = idx + 32
            continue 
        if not _81 % 32:
            return memory
              from mem[64]
               len _81 + _79 + -mem[64] + 96
        mem[floor32(_81) + _79 + 96] = mem[floor32(_81) + _79 + -(_81 % 32) + 128 len _81 % 32]
        return memory
          from mem[64]
           len floor32(_81) + _79 + -mem[64] + 128
    return 0, 64, 0
}

function text(bytes32 arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 0
    mem[32] = 1
    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 160] = sha3(arg1, 1) + 6
    _37 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32])
    mem[64] = ceil32(arg2.length) + ceil32(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]].length) + 192
    mem[ceil32(arg2.length) + 160] = stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]].length
    mem[0] = _37
    mem[ceil32(arg2.length) + 192] = stor[sha3(_37)]
    idx = ceil32(arg2.length) + 192
    s = 0
    while ceil32(arg2.length) + stor[_37].length + 160 > idx:
        mem[idx + 32] = stor[s + sha3(_37) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[ceil32(arg2.length) + 160]
    _71 = mem[ceil32(arg2.length) + 160]
    mem[mem[64] + 64 len ceil32(mem[ceil32(arg2.length) + 160])] = mem[ceil32(arg2.length) + 192 len ceil32(mem[ceil32(arg2.length) + 160])]
    if not _71 % 32:
        return 32, mem[mem[64] + 32 len _71 + 32]
    mem[floor32(_71) + mem[64] + 64] = mem[floor32(_71) + mem[64] + -(_71 % 32) + 96 len _71 % 32]
    return 32, mem[mem[64] + 32 len floor32(_71) + 64]
}

function setText(bytes32 arg1, string arg2, string arg3) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 0
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 164] = arg1
    require ext_code.size(ensAddress)
    call ensAddress.owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = sha3(arg1, 1) + 6
    stor[mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][] = Array(len=arg3.length, data=arg3[all])
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    _198 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len arg2.length % 32])
    emit TextChanged(Array(len=arg2.length, data=arg2[all]), arg1, _198);
}



}
