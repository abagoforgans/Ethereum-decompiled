contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    require not msg.value
    return code.data[59 len 3059]
}



// =====================  Runtime code  =====================


address owner;
mapping of struct sub_43e491c3;
mapping of struct stor2;

function sub_43e491c3(?) {
    return sub_43e491c3[arg1].field_0, sub_43e491c3[arg1].field_256
}

function owner() {
    return owner
}

function _fallback() payable {
    revert 
}

function sub_40370e0a(?) {
    if stor2[arg1[all]].field_768 != 0:
        stor2[arg1[all]].field_512 = msg.sender
        stor2[arg1[all]].field_768 = block.timestamp
        stor2[arg1[all]].field_256 = arg2
    emit code.data[3027 len 32]: 0
}

function register(bytes32 arg1) {
    require owner == msg.sender
    if sub_43e491c3[arg1].field_256:
        emit code.data[3027 len 32]: 0
    else:
        sub_43e491c3[arg1].field_0 = msg.sender
        sub_43e491c3[arg1].field_256 = block.timestamp
        emit code.data[3027 len 32]: arg1
}

function sub_7a7986bb(?) {
    if 0 == stor2[arg1[all]].field_768:
        emit code.data[3027 len 32]: 0
    else:
        stor2[arg1[all]][].field_0 = Array(len=arg2.length, data=arg2[all])
        stor2[arg1[all]].field_512 = msg.sender
        stor2[arg1[all]].field_768 = block.timestamp
        emit code.data[3027 len 32]: 1
}

function sub_802fb068(?) {
    mem[ceil32(arg1.length) + 128 len arg1.length] = arg1[all]
    mem[arg1.length + ceil32(arg1.length) + 128] = 2
    mem[ceil32(arg1.length) + 288] = stor2[arg1[all]].field_0
    idx = ceil32(arg1.length) + 288
    s = 0
    while ceil32(arg1.length) + stor2[arg1[all]].length + 288 > idx + 32:
        mem[idx + 32] = stor2[arg1[all]][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0xf86ca2a0: Array(len=stor2[arg1[all]].length, data=mem[ceil32(arg1.length) + 288 len stor2[arg1[all]].length + (floor32(stor2[arg1[all]].length - 1) + -stor2[arg1[all]].length + 32 % 32)]), bool(stor2[arg1[all]].field_256), stor2[arg1[all]].field_512, stor2[arg1[all]].field_768
}

function sub_b72f9d77(?) {
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require owner == msg.sender
    if stor2[arg1[all]].field_768:
        emit code.data[3027 len 32]: 0
    else:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len arg1.length] = arg1[all]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 2
        stor2[arg1[all]].field_0 = (2 * arg2.length) + 1
        s = 0
        idx = ceil32(arg1.length) + 160
        while ceil32(arg1.length) + arg2.length + 160 > idx:
            stor2[arg1[all]][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        if stor2[arg1[all]].length + 31 / 32 > Mask(251, 0, arg2.length + 31) >> 5:
            stor2[arg1[all]][Mask(251, 0, arg2.length + 31) >> 5].field_0 = 0
            idx = (Mask(251, 0, arg2.length + 31) >> 5) + 1
            while stor2[arg1[all]].length + 31 / 32 > idx:
                stor2[arg1[all]][idx].field_0 = 0
                idx = idx + 1
                continue 
        stor2[arg1[all]].field_256 = 0
        stor2[arg1[all]].field_512 = msg.sender
        stor2[arg1[all]].field_768 = block.timestamp
        emit code.data[3027 len 32]: 1
}



}
