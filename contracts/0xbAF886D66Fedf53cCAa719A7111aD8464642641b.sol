contract main {




// =====================  Runtime code  =====================


address adminAddress;
address buyerAddress;
address sellerAddress;
address admin_walletAddress;
uint256 amount;
array of uint256 offer_id;

function seller() {
    return sellerAddress
}

function offer_id() {
    return offer_id[0 len offer_id.length]
}

function buyer() {
    return buyerAddress
}

function amount() {
    return amount
}

function admin_wallet() {
    return admin_walletAddress
}

function admin() {
    return adminAddress
}

function sub_6afb6771(?) {
    require msg.sender == adminAddress
    selfdestruct(buyerAddress)
}

function cancelTrade() {
    require msg.sender == adminAddress
    selfdestruct(sellerAddress)
}

function _fallback() payable {
  stop
}



}
