contract main {




// =====================  Runtime code  =====================


mapping of uint256 sub_ad294f68;
mapping of uint8 stor1;
address stor2;

function available(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function sub_ad294f68(?) payable {
    require calldata.size - 4 >= 32
    require bool(stor1[arg1]) == 1
    return sub_ad294f68[arg1]
}

function _fallback() payable {
    revert
}

function setPrice(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == stor2
    sub_ad294f68[arg1] = arg2
    stor1[arg1] = 1
    emit 0xc50014e4: arg1, arg2
}



}
