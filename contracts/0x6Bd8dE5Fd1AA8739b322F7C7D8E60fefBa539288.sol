contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
uint256 stor3;

function _fallback() payable {
    mem[96 len -1216] = code.data[1427 len -1216]
    mem[64] = -1120
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor3 = 0
    return code.data[211 len 1216]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
mapping of struct sub_18d9adab;
uint256 sub_a29092ed;

function name() payable {
    return name[0 len name.length]
}

function sub_18d9adab(?) payable {
    mem[224] = sub_18d9adab[arg1].field_0
    idx = 224
    s = 0
    while sub_18d9adab[arg1].length + 224 > idx + 32:
        mem[idx + 32] = sub_18d9adab[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[sub_18d9adab[arg1].length + (floor32(sub_18d9adab[arg1].length - 1) + -sub_18d9adab[arg1].length + 32 % 32) + 224] = sub_18d9adab[arg1][1].length
    mem[sub_18d9adab[arg1].length + (floor32(sub_18d9adab[arg1].length - 1) + -sub_18d9adab[arg1].length + 32 % 32) + 256] = sub_18d9adab[arg1][1].field_0
    idx = sub_18d9adab[arg1].length + (floor32(sub_18d9adab[arg1].length - 1) + -sub_18d9adab[arg1].length + 32 % 32) + 256
    s = 0
    while sub_18d9adab[arg1].length + (floor32(sub_18d9adab[arg1].length - 1) + -sub_18d9adab[arg1].length + 32 % 32) + sub_18d9adab[arg1][1].length + 256 > idx + 32:
        mem[idx + 32] = sub_18d9adab[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_18d9adab[arg1].length, data=mem[224 len sub_18d9adab[arg1].length + (floor32(sub_18d9adab[arg1].length - 1) + -sub_18d9adab[arg1].length + 32 % 32) + sub_18d9adab[arg1][1].length + (floor32(sub_18d9adab[arg1][1].length - 1) + -sub_18d9adab[arg1][1].length + 32 % 32) + 32]), 
           sub_18d9adab[arg1].length + (floor32(sub_18d9adab[arg1].length - 1) + -sub_18d9adab[arg1].length + 32 % 32) + 128,
           sub_18d9adab[arg1].field_512
}

function owner() payable {
    return owner
}

function sub_a29092ed(?) payable {
    return sub_a29092ed
}

function _fallback() payable {
  stop
}

function sub_c1e6adfd(?) payable {
    sub_a29092ed++
    sub_18d9adab[stor3].field_512 = msg.sender or Mask(96, 160, sub_18d9adab[stor3].field_512)
    sub_18d9adab[stor3][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_18d9adab[stor3][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    return sub_a29092ed
}



}
