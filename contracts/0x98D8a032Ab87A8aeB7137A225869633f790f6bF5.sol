contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 283]




// =====================  Runtime code  =====================


mapping of uint256 sub_c38012c8;

function sub_c38012c8(?) payable {
    return sub_c38012c8[arg1]
}

function _fallback() payable {
  stop
}

function sub_8433760c(?) payable {
    sub_c38012c8[address(msg.sender)] = mulmod(sub_c38012c8[address(msg.sender)], msg.value, 5)
}

function sub_8e63274d(?) payable {
    if arg1 <= sub_c38012c8[address(msg.sender)]:
        sub_c38012c8[address(msg.sender)] -= arg1
        sub_c38012c8[address(msg.sender)] = mulmod(sub_c38012c8[address(msg.sender)] - arg1, 0, 5)
        sub_c38012c8[address(arg2)] = mulmod(sub_c38012c8[address(arg2)], arg1, 5)
}



}
