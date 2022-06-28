contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function getRecord() payable {
    return Mask(160, 96, stor0), Mask(160, 96, stor1)
}

function sub_30a7c25c(?) payable {
    require calldata.size - 4 >= 64
    stor0 = Mask(160, 96, arg1) >> 96
    stor1 = Mask(160, 96, arg2) >> 96
}



}
