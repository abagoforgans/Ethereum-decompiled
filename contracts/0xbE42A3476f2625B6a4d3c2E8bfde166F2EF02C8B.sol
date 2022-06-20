contract main {




// =====================  Runtime code  =====================


address owner;
mapping of address referer;

function getReferer(address arg1) {
    return referer[address(arg1)]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_b71bde22(?) {
    require msg.sender == owner
    referer[address(arg1)] = 0
    emit 0x745b2c01: arg1, referer[address(arg1)]
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_aacff1dd(?) {
    require arg1
    require not referer[address(msg.sender)]
    require referer[address(arg1)] != msg.sender
    referer[address(msg.sender)] = arg1
    emit 0x908e62ce: msg.sender, arg1
}



}
