contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 285]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 sub_f971d77c;

function getOwner() payable {
    return owner
}

function sub_f971d77c(?) payable {
    return sub_f971d77c[address(arg1)]
}

function _fallback() payable {
  stop
}

function sub_2fae7387(?) payable {
    require owner == msg.sender
    if 0 == sub_f971d77c[address(arg1)]:
        return 0
    sub_f971d77c[address(arg1)] = 0
    return 1
}

function sub_336d7f56(?) payable {
    require owner == msg.sender
    if sub_f971d77c[address(arg1)] != 0:
        return 0
    sub_f971d77c[address(arg1)] = arg2
    return 1
}



}
