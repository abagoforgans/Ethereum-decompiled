contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[36 len 1492]
}



// =====================  Runtime code  =====================


array of struct sub_b1933661;
address stor1;
uint256 stor1;

function sub_b1933661(?) payable {
    return sub_b1933661[arg1][1][0 len sub_b1933661[arg1][1].length].field_0
}

function sub_b7ba1f9d(?) payable {
    return sub_b1933661[arg1][2][0 len sub_b1933661[arg1][2].length].field_0
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) payable {
    require address(stor1) == msg.sender
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function sub_61626e34(?) payable {
    require msg.sender == address(stor1)
    require not sub_b1933661[arg1].field_0
    sub_b1933661[arg1].field_0 = 1
    sub_b1933661[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_b1933661[arg1][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    emit 0xb17e8dfc: arg1
}

function sub_de4796cd(?) payable {
    mem[224] = sub_b1933661[arg1][1].field_0
    idx = 224
    s = 0
    while sub_b1933661[arg1][1].length + 224 > idx + 32:
        mem[idx + 32] = sub_b1933661[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[sub_b1933661[arg1][1].length + (floor32(sub_b1933661[arg1][1].length - 1) + -sub_b1933661[arg1][1].length + 32 % 32) + 224] = sub_b1933661[arg1][2].length
    mem[sub_b1933661[arg1][1].length + (floor32(sub_b1933661[arg1][1].length - 1) + -sub_b1933661[arg1][1].length + 32 % 32) + 256] = sub_b1933661[arg1][2].field_0
    idx = sub_b1933661[arg1][1].length + (floor32(sub_b1933661[arg1][1].length - 1) + -sub_b1933661[arg1][1].length + 32 % 32) + 256
    s = 0
    while sub_b1933661[arg1][1].length + (floor32(sub_b1933661[arg1][1].length - 1) + -sub_b1933661[arg1][1].length + 32 % 32) + sub_b1933661[arg1][2].length + 256 > idx + 32:
        mem[idx + 32] = sub_b1933661[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return bool(sub_b1933661[arg1].field_0), 
           Array(len=sub_b1933661[arg1][1].length, data=mem[224 len sub_b1933661[arg1][1].length + (floor32(sub_b1933661[arg1][1].length - 1) + -sub_b1933661[arg1][1].length + 32 % 32) + sub_b1933661[arg1][2].length + (floor32(sub_b1933661[arg1][2].length - 1) + -sub_b1933661[arg1][2].length + 32 % 32) + 32]),
           sub_b1933661[arg1][1].length + (floor32(sub_b1933661[arg1][1].length - 1) + -sub_b1933661[arg1][1].length + 32 % 32) + 128
}



}
