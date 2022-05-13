contract main {




// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - claim(string arg1)
#
address owner;
uint256 stor6;
array of uint256 username;

function sub_61fac54d(?) {
    return uint256(username[0 len username.length])
}

function getUsername() {
    return uint256(username[0 len username.length])
}

function owner() {
    return owner
}

function refundOwner() {
    require msg.sender == owner
    if eth.balance(this.address) != stor6:
    emit Refunded(block.timestamp);
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function init(string arg1) {
    require not Mask(255, 1, (256 * not bool(username.length)) - 1 and username.length)
    require arg1.length > 0
    uint256(username[]) = Array(len=arg1.length, data=arg1[all])
    owner = msg.sender
    stor6 = msg.value
}



}
