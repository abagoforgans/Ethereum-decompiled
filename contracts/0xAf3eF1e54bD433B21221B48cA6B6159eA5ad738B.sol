contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor2 = 0
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[71 len 2588]
}



// =====================  Runtime code  =====================


address sub_be60040eAddress;
uint256 stor0;
address sub_aaabd6b0Address;
uint256 stor1;
uint256 sub_e299541c;
mapping of struct sub_f0f0b7c0;
mapping of uint256 sub_f38e53fc;

function sub_aaabd6b0(?) payable {
    return address(sub_aaabd6b0Address)
}

function sub_be60040e(?) payable {
    return address(sub_be60040eAddress)
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

function selfDestruct() payable {
    if address(sub_aaabd6b0Address) != msg.sender:
    selfdestruct(address(sub_aaabd6b0Address))
}

function _fallback() payable {
  stop
}

function sub_6c193ee0(?) payable {
    return sha3(arg1[all])
}

function sub_e3c45cd3(?) payable {
    if msg.sender == address(sub_aaabd6b0Address):
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
        uint256(stor1) = arg2 or Mask(96, 160, uint256(stor1))
}

function sub_b8055bd2(?) payable {
    if msg.sender == address(sub_be60040eAddress):
        if sub_f0f0b7c0[arg1[all]].field_256:
            sub_f0f0b7c0[arg1[all]].field_128 = uint128(sub_f0f0b7c0[arg1[all]].field_128 + arg2)
}

function addString(string arg1) payable {
    if sub_f0f0b7c0[arg1[all]].field_256:
        return 0
    sub_f0f0b7c0[arg1[all]].field_0 = sub_f0f0b7c0[arg1[all]].field_0
    sub_f0f0b7c0[arg1[all]].field_320 = Mask(192, 0, block.timestamp)
    sub_f0f0b7c0[arg1[all]][2][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_f0f0b7c0[arg1[all]].field_256 = 1
    sub_f0f0b7c0[arg1[all]].field_264 = 0
    sub_f38e53fc[stor2] = sha3(arg1[all])
    sub_e299541c++
    return 1
}



}
