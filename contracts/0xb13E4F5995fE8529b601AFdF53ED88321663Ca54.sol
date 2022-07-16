contract main {




// =====================  Runtime code  =====================


uint256 price_;
address stor1;

function price() payable {
    return price_
}

function price_() payable {
    return price_
}

function _fallback() payable {
    revert
}

function setPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor1
    price_ = arg1
}



}
