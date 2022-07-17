contract main {




// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#  - updatePrice()
#
const sub_f9a674f8(?) = (4 * 3600)


address owner;
uint256 currentPrice;
array of uint256 sub_300d9f04;

function sub_300d9f04(?) {
    return sub_300d9f04[0 len sub_300d9f04.length]
}

function owner() {
    return owner
}

function sub_c055e8cc(?) {
    return currentPrice
}

function getCurrentPrice() {
    return currentPrice
}

function isOwner() {
    return (msg.sender == owner)
}

function _fallback() payable {
    emit EthReceived(msg.value);
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

function close() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e6442ffd(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + ('cd', 4).length + 36 <= calldata.size
    require msg.sender == owner
    sub_300d9f04.length = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        sub_300d9f04[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while sub_300d9f04.length + 31 / 32 > idx:
        sub_300d9f04[idx] = 0
        idx = idx + 1
        continue 
}



}
