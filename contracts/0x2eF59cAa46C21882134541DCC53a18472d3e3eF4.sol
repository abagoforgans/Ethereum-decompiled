contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[92 len 4733]
}



// =====================  Runtime code  =====================


address owner;
address parentAddress;
mapping of struct stor2;
array of struct stor3;
mapping of uint8 stor4;

function parent() {
    return parentAddress
}

function owner() {
    return owner
}

function _fallback() payable {
    revert 
}

function transferOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function setParent(address arg1) {
    require msg.sender == owner
    parentAddress = arg1
}

function exists(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = bool(stor4[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]])
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function set(string arg1, bytes32 arg2) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == owner
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    stor2[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_0 = arg2
    stor4[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]] = 1
}

function setInt(string arg1, int256 arg2) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == owner
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    stor2[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_0 = arg2
    stor4[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]] = 1
}

function setUInt(string arg1, uint256 arg2) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == owner
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    stor2[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_0 = arg2
    stor4[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]] = 1
}

function setAddress(string arg1, address arg2) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == owner
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    stor2[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_0 = arg2
    stor2[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_160 = 0
    stor4[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]] = 1
}

function setBool(string arg1, bool arg2) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == owner
    require msg.sender == owner
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    if not arg2:
        stor2[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_0 = 0
    else:
        stor2[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_0 = 1
    stor4[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]] = 1
}

function get(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    if stor4[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]]:
        return stor2[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_0
    require parentAddress
    mem[ceil32(arg1.length) + 128] = 0x693ec85e00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 132] = 32
    mem[ceil32(arg1.length) + 164] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 196] = mem[128]
        mem[ceil32(arg1.length) + 228 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    require ext_code.size(parentAddress)
    call parentAddress.0x693ec85e with:
         gas gas_remaining - 50 wei
        args Array(len=arg1.length, data=mem[ceil32(arg1.length) + 196 len arg1.length])
    require ext_call.success
    return ext_call.return_data[0]
}

function getInt(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    if stor4[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]]:
        return stor2[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_0
    require parentAddress
    mem[ceil32(arg1.length) + 128] = 0x693ec85e00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 132] = 32
    mem[ceil32(arg1.length) + 164] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 196] = mem[128]
        mem[ceil32(arg1.length) + 228 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    require ext_code.size(parentAddress)
    call parentAddress.0x693ec85e with:
         gas gas_remaining - 50 wei
        args Array(len=arg1.length, data=mem[ceil32(arg1.length) + 196 len arg1.length])
    require ext_call.success
    return ext_call.return_data[0]
}

function getUInt(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    if stor4[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]]:
        return stor2[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_0
    require parentAddress
    mem[ceil32(arg1.length) + 128] = 0x693ec85e00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 132] = 32
    mem[ceil32(arg1.length) + 164] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 196] = mem[128]
        mem[ceil32(arg1.length) + 228 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    require ext_code.size(parentAddress)
    call parentAddress.0x693ec85e with:
         gas gas_remaining - 50 wei
        args Array(len=arg1.length, data=mem[ceil32(arg1.length) + 196 len arg1.length])
    require ext_call.success
    return ext_call.return_data[0]
}

function getAddress(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    if stor4[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]]:
        return stor2[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_0
    require parentAddress
    mem[ceil32(arg1.length) + 128] = 0x693ec85e00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 132] = 32
    mem[ceil32(arg1.length) + 164] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 196] = mem[128]
        mem[ceil32(arg1.length) + 228 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    require ext_code.size(parentAddress)
    call parentAddress.0x693ec85e with:
         gas gas_remaining - 50 wei
        args Array(len=arg1.length, data=mem[ceil32(arg1.length) + 196 len arg1.length])
    require ext_call.success
    return address(ext_call.return_data[0])
}

function getBool(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    if stor4[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]]:
        return not not stor2[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_0
    require parentAddress
    mem[ceil32(arg1.length) + 128] = 0x693ec85e00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 132] = 32
    mem[ceil32(arg1.length) + 164] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 196] = mem[128]
        mem[ceil32(arg1.length) + 228 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    require ext_code.size(parentAddress)
    call parentAddress.0x693ec85e with:
         gas gas_remaining - 50 wei
        args Array(len=arg1.length, data=mem[ceil32(arg1.length) + 196 len arg1.length])
    require ext_call.success
    return not not ext_call.return_data[0]
}

function setString(string arg1, string arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require msg.sender == owner
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[ceil32(arg1.length) + -(arg2.length % 32) + floor32(arg2.length) + 192 len arg2.length % 32]
    _27 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len arg2.length % 32])
    require msg.sender == owner
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    stor2[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_0 = _27
    stor4[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]] = 1
    stor3[_27][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function getString(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    _89 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32])
    if stor4[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]]:
        mem[32] = 3
        mem[64] = ceil32(arg1.length) + ceil32(stor3[stor2[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_0].length) + 192
        mem[ceil32(arg1.length) + 160] = stor3[stor2[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_0].length
        mem[0] = sha3(stor2[_89].field_0, 3)
        mem[ceil32(arg1.length) + 192] = stor3[stor2[_89].field_0].field_0
        idx = ceil32(arg1.length) + 192
        s = 0
        while ceil32(arg1.length) + stor3[stor2[_89].field_0].length + 160 > idx:
            mem[idx + 32] = stor3[stor2[_89].field_0][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _195 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = stor3[stor2[_89].field_0].length
        if stor3[stor2[_89].field_0].length:
            mem[mem[64] + 64] = mem[ceil32(arg1.length) + 192]
            mem[mem[64] + 96 len floor32(stor3[stor2[_89].field_0].length - 1)] = mem[ceil32(arg1.length) + 224 len floor32(stor3[stor2[_89].field_0].length - 1)]
        return Array(len=stor3[stor2[_89].field_0].length, data=mem[mem[64] + 64 len stor3[stor2[_89].field_0].length])
    require parentAddress
    mem[ceil32(arg1.length) + 160] = 0x693ec85e00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 164] = 32
    mem[ceil32(arg1.length) + 196] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 228] = mem[128]
        mem[ceil32(arg1.length) + 260 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    require ext_code.size(parentAddress)
    call parentAddress.0x693ec85e with:
         gas gas_remaining - 50 wei
        args Array(len=arg1.length, data=mem[ceil32(arg1.length) + 228 len arg1.length])
    require ext_call.success
    mem[ceil32(arg1.length) + 192] = stor3[ext_call.return_data[0]].field_0
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + stor3[ext_call.return_data[0]].length + 160 > idx:
        mem[idx + 32] = stor3[ext_call.return_data[0]][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(stor3[ext_call.return_data[0]].length) + 192] = 32
    mem[ceil32(arg1.length) + ceil32(stor3[ext_call.return_data[0]].length) + 224] = stor3[ext_call.return_data[0]].length
    if stor3[ext_call.return_data[0]].length:
        mem[ceil32(arg1.length) + ceil32(stor3[ext_call.return_data[0]].length) + 256] = mem[ceil32(arg1.length) + 192]
        mem[ceil32(arg1.length) + ceil32(stor3[ext_call.return_data[0]].length) + 288 len floor32(stor3[ext_call.return_data[0]].length - 1)] = mem[ceil32(arg1.length) + 224 len floor32(stor3[ext_call.return_data[0]].length - 1)]
    return Array(len=stor3[ext_call.return_data[0]].length, data=mem[ceil32(arg1.length) + ceil32(stor3[ext_call.return_data[0]].length) + 256 len stor3[ext_call.return_data[0]].length]), 
}



}
