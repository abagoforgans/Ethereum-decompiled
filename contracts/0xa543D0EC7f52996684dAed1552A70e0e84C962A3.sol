contract main {




// =====================  Runtime code  =====================


#
#  - sub_073e3b4f(?)
#  - __callback(bytes32 arg1, string arg2)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#
address owner;
address proxyAddress;
uint256 sub_6752c139;
uint256 order;
array of uint256 sub_a4b2ea6a;

function sub_6752c139(?) {
    return sub_6752c139
}

function owner() {
    return owner
}

function sub_a4b2ea6a(?) {
    return sub_a4b2ea6a[arg1][0 len sub_a4b2ea6a[arg1].length]
}

function order() {
    return order
}

function proxy() {
    return proxyAddress
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}



}
