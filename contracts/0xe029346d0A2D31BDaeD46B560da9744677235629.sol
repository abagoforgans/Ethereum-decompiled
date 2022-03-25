contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[37 len 3076]
}



// =====================  Runtime code  =====================


address owner;
mapping of struct sub_43e491c3;
mapping of struct stor2;

function sub_43e491c3(?) payable {
    return sub_43e491c3[arg1].field_0, sub_43e491c3[arg1].field_256
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert 
}

function sub_40370e0a(?) payable {
    if stor2[arg1[all]].field_768 != 0:
        stor2[arg1[all]].field_512 = msg.sender or Mask(96, 160, stor2[arg1[all]].field_512)
        stor2[arg1[all]].field_768 = block.timestamp
        stor2[arg1[all]].field_256 = arg2 or Mask(248, 8, stor2[arg1[all]].field_256)
    emit code.data[3044 len 32]: 0
}

function register(bytes32 arg1) payable {
    require owner == msg.sender
    if sub_43e491c3[arg1].field_256:
        emit code.data[3044 len 32]: 0
    else:
        sub_43e491c3[arg1].field_0 = msg.sender or Mask(96, 160, sub_43e491c3[arg1].field_0)
        sub_43e491c3[arg1].field_256 = block.timestamp
        emit code.data[3044 len 32]: arg1
}

function sub_7a7986bb(?) payable {
    if 0 == stor2[arg1[all]].field_768:
        emit code.data[3044 len 32]: 0
    else:
        stor2[arg1[all]][].field_0 = Array(len=arg2.length, data=arg2[all])
        stor2[arg1[all]].field_512 = msg.sender or Mask(96, 160, stor2[arg1[all]].field_512)
        stor2[arg1[all]].field_768 = block.timestamp
        emit code.data[3044 len 32]: 1
}

function sub_b72f9d77(?) payable {
    require owner == msg.sender
    if stor2[arg1[all]].field_768 != 0:
        emit code.data[3044 len 32]: 0
    else:
        stor2[arg1[all]][].field_0 = Array(len=arg2.length, data=arg2[all])
        stor2[arg1[all]].field_256 = 0
        stor2[arg1[all]].field_512 = msg.sender or Mask(96, 160, stor2[arg1[all]].field_512)
        stor2[arg1[all]].field_768 = block.timestamp
        emit code.data[3044 len 32]: 1
}

function sub_802fb068(?) payable {
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



}
