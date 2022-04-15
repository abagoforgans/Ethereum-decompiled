contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 10
    stor1.length.field_8 = 'Sackfresse' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor0 = msg.sender
    return code.data[296 len 1081]
}



// =====================  Runtime code  =====================


address stor0;
array of struct name;

function name() {
    return name[0 len name.length].field_0
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function changeName(string arg1) {
    name[].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 192] = uint256(name.field_0)
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + name.length + 160 > idx:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=name.length, data=mem[ceil32(arg1.length) + 192 len name.length])
}



}
