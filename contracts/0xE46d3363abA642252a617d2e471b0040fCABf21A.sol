contract main {




// =====================  Runtime code  =====================


uint64 version;
uint256 stor1;
uint256 stor2;

function version() payable {
    return Mask(64, 192, version)
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
