contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1774]




// =====================  Runtime code  =====================


mapping of struct sub_0e1fb8bb;
uint256 sub_ed8f7e89;
uint256 messageCount;
array of uint256 stor78338746147236970124700731725183845421594913511827187288591969170390706184118;

function sub_0e1fb8bb(?) payable {
    return address(sub_0e1fb8bb[arg1][2][0].field_0)
}

function messageCount() payable {
    return messageCount
}

function sub_8cefd980(?) payable {
    return address(sub_0e1fb8bb[arg1].field_0)
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

function sub_e4ea8241(?) payable {
    sub_0e1fb8bb[arg4][2][0][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_0e1fb8bb[arg4][2][0][2][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_0e1fb8bb[arg4][2][0].field_768 = arg3
    sub_0e1fb8bb[arg4][2][0].field_0 = msg.sender or Mask(96, 160, sub_0e1fb8bb[arg4][2][0].field_0)
    return 1
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
    return address(sub_0e1fb8bb[arg1].field_0), 
           Array(len=sub_0e1fb8bb[arg1][1].length, data=mem[192 len sub_0e1fb8bb[arg1][1].length + (floor32(sub_0e1fb8bb[arg1][1].length - 1) + -sub_0e1fb8bb[arg1][1].length + 32 % 32)])
}

function createForum(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    storAD32.length = (2 * arg1.length) + 1
    s = 0xfb99d7831ab212c8d7b12d9b212d10b2f1416d3da0d5b82ca68f616d8f79ce09
    idx = 128
    while arg1.length + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, arg1.length + 31) >> 5) - 0x466287ce54ded37284ed264ded2ef4d0ebe92c25f2a47d359709e92708631f7
    while (storAD32.length + 31 / 32) - 0x466287ce54ded37284ed264ded2ef4d0ebe92c25f2a47d359709e92708631f7 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    sub_0e1fb8bb[0].field_0 = msg.sender or Mask(96, 160, sub_0e1fb8bb[0].field_0)
    return 1
}



}
