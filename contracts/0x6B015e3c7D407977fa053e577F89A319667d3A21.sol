contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 845]




// =====================  Runtime code  =====================


array of struct stor0;
array of address sub_3ab9354c;

function sub_3ab9354c(?) payable {
    require arg2 < uint256(sub_3ab9354c[arg1])
    return address(sub_3ab9354c[arg1][arg2])
}

function _fallback() payable {
  stop
}

function sub_8ff6507f(?) payable {
    stor0[arg1].field_256 += arg2
}

function Withdraw(bytes32 arg1, uint256 arg2) payable {
    stor0[arg1].field_256 -= arg2
}

function sub_ed49bb7c(?) payable {
    stor0[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor0[arg1].field_256 = 0
}

function sub_9fa1cc47(?) payable {
    mem[192] = stor0[arg1].field_0
    idx = 192
    s = 0
    while stor0[arg1].length + 192 > idx + 32:
        mem[idx + 32] = stor0[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor0[arg1].length, data=mem[192 len stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32)]), 
           stor0[arg1].field_256
}

function sub_7449e402(?) payable {
    uint256(sub_3ab9354c[arg1])++
    if not uint256(sub_3ab9354c[arg1]) <= uint256(sub_3ab9354c[arg1]) + 1:
        idx = uint256(sub_3ab9354c[arg1]) + 1
        while uint256(sub_3ab9354c[arg1]) > idx:
            uint256(sub_3ab9354c[arg1][idx]) = 0
            idx = idx + 1
            continue 
    uint256(sub_3ab9354c[arg1][uint256(sub_3ab9354c[arg1])]) = arg2 or Mask(96, 160, uint256(sub_3ab9354c[arg1][uint256(sub_3ab9354c[arg1])]))
}



}
