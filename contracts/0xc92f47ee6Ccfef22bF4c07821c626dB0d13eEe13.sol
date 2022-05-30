contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
address stor2;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 14
    stor0.length.field_8 = 'PetTransaction' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'pet' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor2 = msg.sender
    return code.data[417 len 3004]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
address stor2;
mapping of struct sub_5ab37fca;

function name() {
    return name[0 len name.length]
}

function sub_5ab37fca(?) {
    mem[160] = sub_5ab37fca[arg1 << 152][2].field_0
    idx = 160
    s = 0
    while sub_5ab37fca[arg1 << 152][2].length + 128 > idx:
        mem[idx + 32] = sub_5ab37fca[arg1 << 152][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_5ab37fca[arg1 << 152].field_0, 
           sub_5ab37fca[arg1 << 152].field_256,
           Array(len=sub_5ab37fca[arg1 << 152][2].length, data=mem[160 len sub_5ab37fca[arg1 << 152][2].length])
}

function symbol() {
    return symbol[0 len symbol.length]
}

function kill() {
    if stor2 != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() {
    revert
}

function sub_3ccc4969(?) {
    if stor2 != msg.sender:
        return 0
    sub_5ab37fca[arg3 << 152].field_0 = arg1
    sub_5ab37fca[arg3 << 152].field_256 = arg2
    sub_5ab37fca[arg3 << 152][2][].field_0 = Array(len=arg4.length, data=arg4[all])
    if stor2 != arg1:
        emit 0xe98f8ff2: address(arg1), arg3 << 152, Array(len=arg4.length, data=arg4[all])
    emit 0x43ae1526: address(arg1), address(arg2), arg3 << 152, Array(len=arg4.length, data=arg4[all])
    return 1
}



}
