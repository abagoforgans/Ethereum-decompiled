contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1771]




// =====================  Runtime code  =====================


mapping of struct sub_281be65e;
uint256 sub_ed8f7e89;

function sub_281be65e(?) payable {
    return sub_281be65e[arg1][2][arg2][1][0 len sub_281be65e[arg1][2][arg2][1].length].field_0
}

function sub_8cefd980(?) payable {
    return sub_281be65e[arg1].field_0
}

function sub_9f80db7e(?) payable {
    return sub_281be65e[arg1][2][0][1][0 len sub_281be65e[arg1][2][0][1].length].field_0
}

function sub_b3c278e1(?) payable {
    return sub_281be65e[arg1][2][0][0 len sub_281be65e[arg1][2][0].length].field_0
}

function sub_ed8f7e89(?) payable {
    return sub_ed8f7e89
}

function _fallback() payable {
  stop
}

function createForum(string arg1) payable {
    sub_ed8f7e89++
    sub_281be65e[stor1][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_281be65e[stor1].field_0 = msg.sender or Mask(96, 160, sub_281be65e[stor1].field_0)
    return sub_ed8f7e89
}

function sub_3f2b3786(?) payable {
    sub_281be65e[arg3].field_768++
    sub_281be65e[arg3][2][sub_281be65e[arg3].field_768][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_281be65e[arg3][2][sub_281be65e[arg3].field_768][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    return sub_281be65e[arg3].field_768
}

function sub_7e3617f9(?) payable {
    mem[224] = sub_281be65e[arg1][1].field_0
    idx = 224
    s = 0
    while sub_281be65e[arg1][1].length + 224 > idx + 32:
        mem[idx + 32] = sub_281be65e[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_281be65e[arg1].field_0, 
           Array(len=sub_281be65e[arg1][1].length, data=mem[224 len sub_281be65e[arg1][1].length + (floor32(sub_281be65e[arg1][1].length - 1) + -sub_281be65e[arg1][1].length + 32 % 32)]),
           sub_281be65e[arg1].field_768
}



}
