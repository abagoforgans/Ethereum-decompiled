contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1697]




// =====================  Runtime code  =====================


mapping of struct sub_0e1fb8bb;
uint256 sub_ed8f7e89;
uint256 messageCount;

function sub_0e1fb8bb(?) payable {
    return sub_0e1fb8bb[arg1][2][0].field_0
}

function messageCount() payable {
    return messageCount
}

function sub_8cefd980(?) payable {
    return sub_0e1fb8bb[arg1].field_0
}

function sub_9f80db7e(?) payable {
    return sub_0e1fb8bb[arg1][2][0][2][0 len sub_0e1fb8bb[arg1][2][0][2].length].field_0
}

function sub_b3c278e1(?) payable {
    return sub_0e1fb8bb[arg1][2][0][1][0 len sub_0e1fb8bb[arg1][2][0][1].length].field_0
}

function sub_ed8f7e89(?) payable {
    return sub_ed8f7e89
}

function _fallback() payable {
  stop
}

function createForum(string arg1) payable {
    sub_ed8f7e89++
    sub_0e1fb8bb[stor1][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_0e1fb8bb[stor1].field_0 = msg.sender or Mask(96, 160, sub_0e1fb8bb[stor1].field_0)
    return sub_ed8f7e89
}

function sub_e4ea8241(?) payable {
    messageCount++
    sub_0e1fb8bb[arg4][2][stor2][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_0e1fb8bb[arg4][2][stor2][2][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_0e1fb8bb[arg4][2][stor2].field_768 = arg3
    sub_0e1fb8bb[arg4][2][stor2].field_0 = msg.sender or Mask(96, 160, sub_0e1fb8bb[arg4][2][stor2].field_0)
    return messageCount
}

function sub_7e3617f9(?) payable {
    mem[192] = sub_0e1fb8bb[arg1][1].field_0
    idx = 192
    s = 0
    while sub_0e1fb8bb[arg1][1].length + 192 > idx + 32:
        mem[idx + 32] = sub_0e1fb8bb[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_0e1fb8bb[arg1].field_0, 
           Array(len=sub_0e1fb8bb[arg1][1].length, data=mem[192 len sub_0e1fb8bb[arg1][1].length + (floor32(sub_0e1fb8bb[arg1][1].length - 1) + -sub_0e1fb8bb[arg1][1].length + 32 % 32)])
}



}
