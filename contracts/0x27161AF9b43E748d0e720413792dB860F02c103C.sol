contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 1001]




// =====================  Runtime code  =====================


address meAddress;
uint256 numberOfFriends;
address latestFriendAddress;
mapping of uint8 stor3;

function latestFriend() {
    return latestFriendAddress
}

function friendsWith(address arg1) {
    return bool(stor3[address(arg1)])
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
    stor3[address(msg.sender)] = 1
    latestFriendAddress = msg.sender
    numberOfFriends++
}



}
