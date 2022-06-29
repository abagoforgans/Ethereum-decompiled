contract main {




// =====================  Runtime code  =====================


uint64 version; offset 192
uint256 vendor;
uint256 stor1;
uint256 stor2;

function vendor() payable {
    return Mask(192, 64, vendor)
}

function version() payable {
    return (version << 192)
}

function _fallback() payable {
    revert
}

function getItem() payable {
    return stor1, stor2
}

function setItem(bytes32 arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    stor1 = arg1
    stor2 = arg2
    emit ItemSet(stor1, stor2);
}



}
