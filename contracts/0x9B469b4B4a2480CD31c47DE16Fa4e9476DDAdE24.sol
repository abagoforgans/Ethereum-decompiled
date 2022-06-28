contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    revert
}

function getRecord() payable {
    return Mask(184, 72, stor0), Mask(184, 72, stor1)
}

function sub_8db70a5a(?) payable {
    require calldata.size - 4 >= 64
    stor0 = Mask(184, 72, arg1) >> 72
    stor1 = Mask(184, 72, arg2) >> 72
}



}
