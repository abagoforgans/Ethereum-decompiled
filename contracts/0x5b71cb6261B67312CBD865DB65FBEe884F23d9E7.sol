contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1656]




// =====================  Runtime code  =====================


mapping of struct stor0;
uint256 sub_ed8f7e89;

function sub_ed8f7e89(?) payable {
    return sub_ed8f7e89
}

function _fallback() payable {
  stop
}

function createForum(string arg1) payable {
    sub_ed8f7e89++
    stor0[stor1][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor0[stor1].field_0 = msg.sender or Mask(96, 160, stor0[stor1].field_0)
    return sub_ed8f7e89
}

function sub_3f2b3786(?) payable {
    stor0[arg3].field_768++
    stor0[arg3][2][stor0[arg3].field_768][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor0[arg3][2][stor0[arg3].field_768][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    return stor0[arg3].field_768
}

function sub_7e3617f9(?) payable {
    mem[224] = stor0[arg1][1].field_0
    idx = 224
    s = 0
    while stor0[arg1][1].length + 224 > idx + 32:
        mem[idx + 32] = stor0[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor0[arg1].field_0, 
           Array(len=stor0[arg1][1].length, data=mem[224 len stor0[arg1][1].length + (floor32(stor0[arg1][1].length - 1) + -stor0[arg1][1].length + 32 % 32)]),
           stor0[arg1].field_768
}

function getMessage(uint256 arg1, uint256 arg2) payable {
    mem[96] = 0
    mem[128] = 0
    mem[32] = sha3(arg1, 0) + 2
    mem[160] = stor0[arg1][2][arg2].length
    mem[192] = stor0[arg1][2][arg2].field_0
    idx = 192
    s = 0
    while stor0[arg1][2][arg2].length + 160 > idx:
        mem[idx + 32] = stor0[arg1][2][arg2][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor0[arg1][2][arg2].length) + ceil32(stor0[arg1][2][arg2][1].length) + 224
    mem[ceil32(stor0[arg1][2][arg2].length) + 192] = stor0[arg1][2][arg2][1].length
    mem[0] = sha3(arg2, sha3(arg1, 0) + 2) + 1
    mem[ceil32(stor0[arg1][2][arg2].length) + 224] = stor0[arg1][2][arg2][1].field_0
    idx = ceil32(stor0[arg1][2][arg2].length) + 224
    s = 0
    while ceil32(stor0[arg1][2][arg2].length) + stor0[arg1][2][arg2][1].length + 192 > idx:
        mem[idx + 32] = stor0[arg1][2][arg2][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor0[arg1][2][arg2].length) + ceil32(stor0[arg1][2][arg2][1].length) + 224] = arg1
    mem[ceil32(stor0[arg1][2][arg2].length) + ceil32(stor0[arg1][2][arg2][1].length) + 256] = arg2
    mem[ceil32(stor0[arg1][2][arg2].length) + ceil32(stor0[arg1][2][arg2][1].length) + 288] = 128
    mem[ceil32(stor0[arg1][2][arg2].length) + ceil32(stor0[arg1][2][arg2][1].length) + 352] = stor0[arg1][2][arg2].length
    mem[ceil32(stor0[arg1][2][arg2].length) + ceil32(stor0[arg1][2][arg2][1].length) + 384 len stor0[arg1][2][arg2].length] = mem[192 len stor0[arg1][2][arg2].length]
    mem[ceil32(stor0[arg1][2][arg2].length) + ceil32(stor0[arg1][2][arg2][1].length) + 320] = stor0[arg1][2][arg2].length + 160
    mem[stor0[arg1][2][arg2].length + ceil32(stor0[arg1][2][arg2].length) + ceil32(stor0[arg1][2][arg2][1].length) + 384] = stor0[arg1][2][arg2][1].length
    mem[stor0[arg1][2][arg2].length + ceil32(stor0[arg1][2][arg2].length) + ceil32(stor0[arg1][2][arg2][1].length) + 416 len stor0[arg1][2][arg2][1].length] = mem[ceil32(stor0[arg1][2][arg2].length) + 224 len stor0[arg1][2][arg2][1].length]
    if not stor0[arg1][2][arg2][1].length % 32:
        return arg1, 
               arg2,
               Array(len=stor0[arg1][2][arg2].length, data=mem[192 len stor0[arg1][2][arg2].length], stor0[arg1][2][arg2][1].length, mem[ceil32(stor0[arg1][2][arg2].length) + 224 len stor0[arg1][2][arg2][1].length]),
               stor0[arg1][2][arg2].length + 160
    mem[floor32(stor0[arg1][2][arg2][1].length) + stor0[arg1][2][arg2].length + ceil32(stor0[arg1][2][arg2].length) + ceil32(stor0[arg1][2][arg2][1].length) + 416] = mem[floor32(stor0[arg1][2][arg2][1].length) + stor0[arg1][2][arg2].length + ceil32(stor0[arg1][2][arg2].length) + ceil32(stor0[arg1][2][arg2][1].length) + -stor0[arg1][2][arg2][1].length % 32 + 448 len stor0[arg1][2][arg2][1].length % 32]
    return arg1, 
           arg2,
           Array(len=stor0[arg1][2][arg2].length, data=mem[192 len stor0[arg1][2][arg2].length], stor0[arg1][2][arg2][1].length, mem[ceil32(stor0[arg1][2][arg2].length) + ceil32(stor0[arg1][2][arg2][1].length) + stor0[arg1][2][arg2].length + 416 len floor32(stor0[arg1][2][arg2][1].length) + 32]),
           stor0[arg1][2][arg2].length + 160
}



}
