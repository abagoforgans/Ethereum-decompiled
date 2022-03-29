contract main {


// =======================  Init code  ======================


array of uint256 stor0;
uint8 stor1;
address stor1; offset 8

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 19
    stor0.length.field_8 = 'ContractDisplay 0.1' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor1.field_0) = 0
    address(stor1.field_8) = msg.sender
    require not msg.value
    return code.data[334 len 1437]
}



// =====================  Runtime code  =====================


array of uint256 standard;
uint8 stor1;
address owner; offset 8

function standard() {
    return standard[0 len standard.length]
}

function owner() {
    return owner
}

function _fallback() {
    revert 
}

function killContract() {
    require msg.sender == owner
    stor1 = 1
}

function changeOwner(address arg1) {
    require msg.sender == owner
    require not stor1
    owner = arg1
}

function transfer(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    require msg.sender == owner
    require not stor1
    mem[ceil32(arg2.length) + 128] = 32
    mem[ceil32(arg2.length) + 160] = arg2.length
    if arg2.length:
        mem[ceil32(arg2.length) + 192] = mem[128]
        mem[ceil32(arg2.length) + 224 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
    emit 0x9003ab6d: Array(len=arg2.length, data=mem[ceil32(arg2.length) + 192 len arg2.length]), msg.sender, arg1
}



}
