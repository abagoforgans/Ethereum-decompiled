contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[63 len 4365]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address parentAddress;
uint256 stor1;
mapping of struct stor2;
array of struct stor3;
mapping of uint8 stor4;

function exists(string arg1) {
    return bool(stor4[arg1[all]])
}

function parent() {
    return address(parentAddress)
}

function owner() {
    return address(owner)
}

function _fallback() payable {
    revert 
}

function setParent(address arg1) {
    require msg.sender == address(owner)
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function transferOwner(address arg1) {
    require msg.sender == address(owner)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function set(string arg1, bytes32 arg2) {
    require msg.sender == address(owner)
    stor2[arg1[all]].field_0 = arg2
    stor4[arg1[all]] = 1
}

function setInt(string arg1, int256 arg2) {
    require msg.sender == address(owner)
    stor2[arg1[all]].field_0 = arg2
    stor4[arg1[all]] = 1
}

function setUInt(string arg1, uint256 arg2) {
    require msg.sender == address(owner)
    stor2[arg1[all]].field_0 = arg2
    stor4[arg1[all]] = 1
}

function setAddress(string arg1, address arg2) {
    require msg.sender == address(owner)
    stor2[arg1[all]].field_0 = arg2
    stor2[arg1[all]].field_160 = 0
    stor4[arg1[all]] = 1
}

function setString(string arg1, string arg2) {
    require msg.sender == address(owner)
    stor2[arg1[all]].field_0 = sha3(arg2[all])
    stor4[arg1[all]] = 1
    stor3[arg2[all]][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function setBool(string arg1, bool arg2) {
    require msg.sender == address(owner)
    require msg.sender == address(owner)
    if not arg2:
        stor2[arg1[all]].field_0 = 0
    else:
        stor2[arg1[all]].field_0 = 1
    stor4[arg1[all]] = 1
}

function get(string arg1) {
    if stor4[arg1[all]]:
        return stor2[arg1[all]].field_0
    require address(parentAddress)
    require ext_code.size(address(parentAddress))
    call address(parentAddress).0x693ec85e with:
         gas gas_remaining - 50 wei
        args Array(len=arg1.length, data=arg1[all])
    require ext_call.success
    return ext_call.return_data[0]
}

function getInt(string arg1) {
    if stor4[arg1[all]]:
        return stor2[arg1[all]].field_0
    require address(parentAddress)
    require ext_code.size(address(parentAddress))
    call address(parentAddress).0x693ec85e with:
         gas gas_remaining - 50 wei
        args Array(len=arg1.length, data=arg1[all])
    require ext_call.success
    return ext_call.return_data[0]
}

function getUInt(string arg1) {
    if stor4[arg1[all]]:
        return stor2[arg1[all]].field_0
    require address(parentAddress)
    require ext_code.size(address(parentAddress))
    call address(parentAddress).0x693ec85e with:
         gas gas_remaining - 50 wei
        args Array(len=arg1.length, data=arg1[all])
    require ext_call.success
    return ext_call.return_data[0]
}

function getAddress(string arg1) {
    if stor4[arg1[all]]:
        return stor2[arg1[all]].field_0
    require address(parentAddress)
    require ext_code.size(address(parentAddress))
    call address(parentAddress).0x693ec85e with:
         gas gas_remaining - 50 wei
        args Array(len=arg1.length, data=arg1[all])
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function getBool(string arg1) {
    if stor4[arg1[all]]:
        return not not stor2[arg1[all]].field_0
    require address(parentAddress)
    require ext_code.size(address(parentAddress))
    call address(parentAddress).0x693ec85e with:
         gas gas_remaining - 50 wei
        args Array(len=arg1.length, data=arg1[all])
    require ext_call.success
    return not not ext_call.return_data[0]
}

function getString(string arg1) {
    mem[ceil32(arg1.length) + 160 len arg1.length] = arg1[all]
    if stor4[arg1[all]]:
        mem[ceil32(arg1.length) + 192] = stor3[stor2[arg1[all]].field_0].field_0
        idx = ceil32(arg1.length) + 192
        s = 0
        while ceil32(arg1.length) + stor3[stor2[arg1[all]].field_0].length + 160 > idx:
            mem[idx + 32] = stor3[stor2[arg1[all]].field_0][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor3[stor2[arg1[all]].field_0].length, data=mem[ceil32(arg1.length) + 192 len stor3[stor2[arg1[all]].field_0].length]), 
    require address(parentAddress)
    mem[ceil32(arg1.length) + 196] = arg1.length
    mem[ceil32(arg1.length) + 228 len arg1.length] = arg1[all]
    require ext_code.size(address(parentAddress))
    call address(parentAddress).0x693ec85e with:
         gas gas_remaining - 50 wei
        args Array(len=arg1.length, data=arg1[all])
    require ext_call.success
    mem[ceil32(arg1.length) + 192] = stor3[ext_call.return_data[0]].field_0
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + stor3[ext_call.return_data[0]].length + 160 > idx:
        mem[idx + 32] = stor3[ext_call.return_data[0]][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor3[ext_call.return_data[0]].length, data=mem[ceil32(arg1.length) + 192 len stor3[ext_call.return_data[0]].length]), 
}



}
