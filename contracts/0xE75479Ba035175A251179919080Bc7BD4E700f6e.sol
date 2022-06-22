contract main {




// =====================  Runtime code  =====================


const getDigitalMediaStoreVersion = 2


uint8 stor0; offset 160
address owner;
mapping of struct stor1;
mapping of struct sub_110f0f06;
mapping of uint8 stor3;
mapping of uint8 stor4;
uint256 startingDigitalMediaId;
uint256 sub_45a72300;
uint256 sub_eb95de57;

function sub_110f0f06(?) {
    mem[128] = sub_110f0f06[arg1][1].field_0
    idx = 128
    s = 0
    while sub_110f0f06[arg1][1].length + 96 > idx:
        mem[idx + 32] = sub_110f0f06[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_110f0f06[arg1].field_0, Array(len=sub_110f0f06[arg1][1].length, data=mem[128 len sub_110f0f06[arg1][1].length])
}

function sub_45a72300(?) {
    return sub_45a72300
}

function paused() {
    return bool(stor0)
}

function sub_89918e0c(?) {
    return startingDigitalMediaId
}

function owner() {
    return owner
}

function getStartingDigitalMediaId() {
    return startingDigitalMediaId
}

function sub_ea1839c5(?) {
    return bool(stor4[arg1])
}

function sub_eb95de57(?) {
    return sub_eb95de57
}

function approvedTokenContracts(address arg1) {
    return bool(stor3[arg1])
}

function _fallback() payable {
    revert
}

function registerTokenContractAddress() {
    stor4[msg.sender] = 1
}

function unpause() {
    require msg.sender == owner
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor0
    stor0 = 1
    emit Pause()
}

function addApprovedTokenContract(address arg1) {
    require msg.sender == owner
    stor3[address(arg1)] = 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function removeApprovedTokenContract(address arg1) {
    require msg.sender == owner
    require bool(stor4[address(arg1)]) != 1
    stor3[address(arg1)] = 0
}

function createCollection(address arg1, string arg2) {
    require 1 == bool(stor3[msg.sender])
    require not stor0
    sub_eb95de57++
    sub_110f0f06[stor7].field_0 = arg1
    sub_110f0f06[stor7][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    emit 0xcac1cb3e: sub_eb95de57, address(arg1), Array(len=arg2.length, data=arg2[all])
    return sub_eb95de57
}

function getCollection(uint256 arg1) {
    mem[128] = sub_110f0f06[arg1][1].field_0
    idx = 128
    s = 0
    while sub_110f0f06[arg1][1].length + 96 > idx:
        mem[idx + 32] = sub_110f0f06[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return arg1, 
           sub_110f0f06[arg1].field_0,
           Array(len=sub_110f0f06[arg1][1].length, data=mem[128 len sub_110f0f06[arg1][1].length])
}

function getDigitalMedia(uint256 arg1) {
    mem[128] = stor1[arg1][4].field_0
    idx = 128
    s = 0
    while stor1[arg1][4].length + 96 > idx:
        mem[idx + 32] = stor1[arg1][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return arg1, 
           stor1[arg1].field_0,
           stor1[arg1].field_0,
           stor1[arg1].field_256,
           stor1[arg1].field_512,
           Array(len=stor1[arg1][4].length, data=mem[128 len stor1[arg1][4].length])
}

function incrementDigitalMediaPrintIndex(uint256 arg1, uint32 arg2) {
    require 1 == bool(stor3[msg.sender])
    if arg2 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot mint more than 10K tokens at once.'
    require uint32(arg2 + stor1[arg1].field_32) <= stor1[arg1].field_0
    require msg.sender == stor1[arg1].field_768
    stor1[arg1].field_32 = uint32(arg2 + stor1[arg1].field_32)
    emit 0x8fb6303c: arg1, arg2 << 224, 0, uint32(arg2 + stor1[arg1].field_32)
}

function createDigitalMedia(address arg1, uint32 arg2, uint32 arg3, uint256 arg4, string arg5) {
    require 1 == bool(stor3[msg.sender])
    require not stor0
    sub_45a72300++
    stor1[stor6].field_0 = arg3
    stor1[stor6].field_32 = arg2
    stor1[stor6].field_256 = arg4
    stor1[stor6].field_512 = arg1
    stor1[stor6].field_768 = msg.sender
    stor1[stor6][4][].field_0 = Array(len=arg5.length, data=arg5[all])
    emit 0x958152c7: sub_45a72300, address(arg1), arg3 << 224, arg2 << 224, arg4, Array(len=arg5.length, data=arg5[all]), msg.sender
    return sub_45a72300
}

function idToDigitalMedia(uint256 arg1) {
    mem[128] = stor1[arg1][4].field_0
    idx = 128
    s = 0
    while stor1[arg1][4].length + 96 > idx:
        mem[idx + 32] = stor1[arg1][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor1[arg1][4].length) + 128] = stor1[arg1].field_0
    mem[ceil32(stor1[arg1][4].length) + 160] = stor1[arg1].field_32
    mem[ceil32(stor1[arg1][4].length) + 192] = stor1[arg1].field_256
    mem[ceil32(stor1[arg1][4].length) + 224] = stor1[arg1].field_512
    mem[ceil32(stor1[arg1][4].length) + 256] = stor1[arg1].field_768
    mem[ceil32(stor1[arg1][4].length) + 288] = 192
    mem[ceil32(stor1[arg1][4].length) + 320] = stor1[arg1][4].length
    if 0 < stor1[arg1][4].length:
        mem[ceil32(stor1[arg1][4].length) + 352] = mem[128]
        mem[ceil32(stor1[arg1][4].length) + 384 len floor32(stor1[arg1][4].length - 1)] = mem[160 len floor32(stor1[arg1][4].length - 1)]
    return stor1[arg1].field_0, 
           stor1[arg1].field_0,
           stor1[arg1].field_256,
           stor1[arg1].field_512,
           stor1[arg1].field_768,
           Array(len=stor1[arg1][4].length, data=mem[ceil32(stor1[arg1][4].length) + 352 len stor1[arg1][4].length])
}



}
