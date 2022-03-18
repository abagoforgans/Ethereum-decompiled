contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = 0
    return code.data[26 len 1397]
}



// =====================  Runtime code  =====================


address sub_aaabd6b0Address;
uint256 sub_e299541c;
mapping of struct sub_f0f0b7c0;
mapping of uint256 sub_f38e53fc;

function sub_aaabd6b0(?) payable {
    return sub_aaabd6b0Address
}

function sub_e299541c(?) payable {
    return sub_e299541c
}

function sub_f0f0b7c0(?) payable {
    mem[288] = sub_f0f0b7c0[arg1][2].field_0
    idx = 288
    s = 0
    while sub_f0f0b7c0[arg1][2].length + 288 > idx + 32:
        mem[idx + 32] = sub_f0f0b7c0[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_f0f0b7c0[arg1].field_0, 
           sub_f0f0b7c0[arg1].field_0,
           sub_f0f0b7c0[arg1].field_256,
           sub_f0f0b7c0[arg1].field_256,
           Array(len=sub_f0f0b7c0[arg1][2].length, data=mem[288 len sub_f0f0b7c0[arg1][2].length + (floor32(sub_f0f0b7c0[arg1][2].length - 1) + -sub_f0f0b7c0[arg1][2].length + 32 % 32)])
}

function sub_f38e53fc(?) payable {
    return sub_f38e53fc[arg1]
}

function _fallback() payable {
  stop
}

function addString(string arg1) payable {
    if sub_f0f0b7c0[stor1].field_256:
        return 0
    sub_f0f0b7c0[stor1].field_0 = sub_f0f0b7c0[stor1].field_0
    sub_f0f0b7c0[stor1].field_320 = Mask(192, 0, block.timestamp)
    sub_f0f0b7c0[stor1][2][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_f0f0b7c0[stor1].field_256 = 1
    sub_f0f0b7c0[stor1].field_264 = 0
    sub_f38e53fc[stor1] = sub_e299541c
    sub_e299541c++
    return 1
}



}
