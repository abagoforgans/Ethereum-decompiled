contract main {




// =====================  Runtime code  =====================


uint64 version;
uint256 sub_971bda96;
uint256 sub_60d1cf88;

function version() payable {
    return Mask(64, 192, version)
}

function sub_60d1cf88(?) payable {
    return sub_60d1cf88
}

function sub_971bda96(?) payable {
    return sub_971bda96
}

function _fallback() payable {
    revert
}

function setItem(bytes32 arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    sub_971bda96 = arg1
    sub_60d1cf88 = arg2
    emit ItemSet(sub_971bda96, sub_60d1cf88);
}



}
