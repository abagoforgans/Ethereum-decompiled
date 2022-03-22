contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor2;

function _fallback() payable {
    mem[96 len -1483] = code.data[1692 len -1483]
    mem[64] = -1387
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor2[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    return code.data[209 len 1483]
}



// =====================  Runtime code  =====================


address stor0;
mapping of struct sub_505ed883;
array of uint256 sub_aebe9fe9;

function sub_505ed883(?) payable {
    return sub_505ed883[arg1][0 len sub_505ed883[arg1].length].field_0
}

function sub_aebe9fe9(?) payable {
    return sub_aebe9fe9[0 len sub_aebe9fe9.length]
}

function _fallback() payable {
    revert 
}

function link(string arg1) payable {
    emit 0x9c153ad6: msg.sender, Array(len=arg1.length, data=arg1[all])
}

function sub_60c3a85f(?) payable {
    require msg.sender == stor0
    sub_505ed883[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    emit 0x27979044: address(arg1), Array(len=arg2.length, data=arg2[all])
}

function unlink() payable {
    require Mask(255, 1, sub_505ed883[address(msg.sender)].field_0 and (256 * not sub_505ed883[address(msg.sender)].field_0) - 1)
    mem[192] = sub_505ed883[address(msg.sender)].field_0
    idx = 192
    s = 0
    while sub_505ed883[address(msg.sender)].length + 192 > idx + 32:
        mem[idx + 32] = sub_505ed883[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0x46bf2c5c: msg.sender, Array(len=sub_505ed883[address(msg.sender)].length, data=mem[192 len sub_505ed883[address(msg.sender)].length + (floor32(sub_505ed883[address(msg.sender)].length - 1) + -sub_505ed883[address(msg.sender)].length + 32 % 32)])
    sub_505ed883[address(msg.sender)].field_0 = 0
    if 31 < sub_505ed883[address(msg.sender)].length:
        idx = 0
        while sub_505ed883[address(msg.sender)].length + 31 / 32 > idx:
            sub_505ed883[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
}



}
