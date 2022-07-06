contract main {




// =====================  Runtime code  =====================


#
#  - sub_1254ad2d(?)
#  - __callback(bytes32 arg1, string arg2)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#
address owner;
address proxyAddress;
uint256 sub_6752c139;
uint256 order;
mapping of struct sub_a4b2ea6a;

function sub_6752c139(?) {
    return sub_6752c139
}

function owner() {
    return owner
}

function sub_a4b2ea6a(?) {
    require calldata.size - 4 >= 32
    mem[128] = sub_a4b2ea6a[arg1].field_0
    idx = 128
    s = 0
    while sub_a4b2ea6a[arg1].length + 96 > idx:
        mem[idx + 32] = sub_a4b2ea6a[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_a4b2ea6a[arg1].length, data=mem[128 len sub_a4b2ea6a[arg1].length]), 
           sub_a4b2ea6a[arg1].field_256,
           sub_a4b2ea6a[arg1].field_512
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
