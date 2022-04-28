contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 802]




// =====================  Runtime code  =====================


address meAddress;
uint256 numberOfFriends;
mapping of uint8 stor2;

function friendsWith(address arg1) {
    return bool(stor2[address(arg1)])
}

function numberOfFriends() {
    return numberOfFriends
}

function me() {
    return meAddress
}

function _fallback() payable {
    revert
}

function sub_0d6bec6f(?) {
    meAddress = msg.sender
}

function becomeFriendsWithMe() {
    require meAddress != msg.sender
    stor2[address(msg.sender)] = 1
    numberOfFriends++
}



}
