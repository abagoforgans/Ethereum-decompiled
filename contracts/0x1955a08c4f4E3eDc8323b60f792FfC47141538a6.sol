contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[94 len 903]
}



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

function becomeFriendsWithMe() {
    require meAddress != msg.sender
    stor3[address(msg.sender)] = 1
    latestFriendAddress = msg.sender
    numberOfFriends++
}



}
