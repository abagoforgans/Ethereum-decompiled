contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 1384]
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
    return 1
}

function readMessage() payable {
    if sub_c6820a6e[address(msg.sender)].field_768:
        mem[160] = sub_c6820a6e[address(msg.sender)].field_0
        idx = 160
        s = 0
        while sub_c6820a6e[address(msg.sender)].length + 128 > idx:
            mem[idx + 32] = sub_c6820a6e[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_c6820a6e[address(msg.sender)].length, data=mem[160 len sub_c6820a6e[address(msg.sender)].length]), 
               sub_c6820a6e[address(msg.sender)].field_256,
               sub_c6820a6e[address(msg.sender)].field_512
    sub_c6820a6e[address(msg.sender)].field_0 = 0
    sub_c6820a6e[address(msg.sender)].field_1 = 0
    sub_c6820a6e[address(msg.sender)].field_8 = mem[288 len 31]
    idx = 0
    while sub_c6820a6e[address(msg.sender)].length + 31 / 32 > idx:
        sub_c6820a6e[address(msg.sender)][idx].field_0 = 0
        idx = idx + 1
        continue 
    sub_c6820a6e[address(msg.sender)].field_256 = 0
    sub_c6820a6e[address(msg.sender)].field_512 = 0
    sub_c6820a6e[address(msg.sender)].field_512 = 0
    sub_c6820a6e[address(msg.sender)].field_768 = 1
    mem[320] = sub_c6820a6e[address(msg.sender)].field_0
    idx = 320
    s = 0
    while sub_c6820a6e[address(msg.sender)].length + 288 > idx:
        mem[idx + 32] = sub_c6820a6e[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_c6820a6e[address(msg.sender)].length, data=mem[320 len sub_c6820a6e[address(msg.sender)].length]), 
           sub_c6820a6e[address(msg.sender)].field_256,
           sub_c6820a6e[address(msg.sender)].field_512
}



}
