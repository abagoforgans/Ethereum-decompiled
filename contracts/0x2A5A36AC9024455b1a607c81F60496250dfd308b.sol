contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 12
    stor1.length.field_8 = 'Name Not Set' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[192 len 150] = code.data[2200 len 150]
    stor2.length = 301
    s = 0
    idx = 192
    while 342 > idx:
        stor2[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 5
    while stor2.length + 31 / 32 > idx:
        stor2[idx] = 0
        idx = idx + 1
        continue 
    stor0 = msg.sender or Mask(96, 160, stor0)
    bool(stor1.length) = 0
    stor1.length.field_1 = 17
    stor1.length.field_8 = 'WinLines v1.00.00' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[724 len 1476]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 getName;
array of struct stor2;

function GetName() {
    return getName[0 len getName.length]
}

function Kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert 
}

function sub_2c4fb2b1(?) {
    return (stor2.length / 5)
}

function SetName(string arg1) {
    require msg.sender == stor0
    getName[] = Array(len=arg1.length, data=arg1[all])
    emit NameChange(Array(len=arg1.length, data=arg1[all]));
}

function sub_1992f75d(?) {
    require (5 * arg1) + arg2 < stor2.length
    if not bool(stor2.length):
        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor2', 2)))), 0) + 256, (5 * arg1) + arg2) << (('field', 3, ('stor', ('length', ('name', 'stor2', 2)))), 0) - 256) - '0')
    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('add', ('mul', 5, ('param', 'arg1')), ('param', 'arg2'))), ('name', 'stor2', 2)))), 0) + 256, (5 * arg1) + arg2 % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('add', ('mul', 5, ('param', 'arg1')), ('param', 'arg2'))), ('name', 'stor2', 2)))), 0) - 256) - '0')
}



}
