contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address stor0;
array of uint256 title;
uint256 creationDate;
uint256 sub_7bb79266;

function sub_7bb79266(?) {
    return sub_7bb79266
}

function getCreationDate() {
    return creationDate
}

function getTitle() {
    return title[0 len title.length]
}

function refund() {
    require msg.sender == stor0
    require block.timestamp > creationDate + (24 * 3600 * sub_7bb79266)
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function isRefundable() {
    if block.timestamp <= creationDate + (24 * 3600 * sub_7bb79266):
        return 0
    return 1
}



}
