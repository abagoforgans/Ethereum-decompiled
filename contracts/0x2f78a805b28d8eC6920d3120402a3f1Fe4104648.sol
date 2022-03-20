contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 887]
}



// =====================  Runtime code  =====================


address stor0;
mapping of struct sub_c6820a6e;

function sub_c6820a6e(?) payable {
    mem[256] = sub_c6820a6e[arg1].field_0
    idx = 256
    s = 0
    while sub_c6820a6e[arg1].length + 256 > idx + 32:
        mem[idx + 32] = sub_c6820a6e[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_c6820a6e[arg1].length, data=mem[256 len sub_c6820a6e[arg1].length + (floor32(sub_c6820a6e[arg1].length - 1) + -sub_c6820a6e[arg1].length + 32 % 32)]), 
           sub_c6820a6e[arg1].field_256,
           sub_c6820a6e[arg1].field_512,
           sub_c6820a6e[arg1].field_768
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sendMessage(address arg1, string arg2) payable {
    sub_c6820a6e[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_c6820a6e[address(arg1)].field_256 = msg.sender or Mask(96, 160, sub_c6820a6e[address(arg1)].field_256)
    sub_c6820a6e[address(arg1)].field_512 = block.timestamp
    sub_c6820a6e[address(arg1)].field_768 = 1
    emit 0x3e100f05: msg.sender, address(arg1), Array(len=arg2.length, data=arg2[all])
    return 1
}



}
