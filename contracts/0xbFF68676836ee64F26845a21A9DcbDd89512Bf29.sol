contract main {




// =====================  Runtime code  =====================


address sub_b6262dc2Address;
address owner;
address tokenAddress;
uint256 stor3;
uint256 stor4;

function owner() {
    return owner
}

function sub_b6262dc2(?) {
    return sub_b6262dc2Address
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    if sub_b6262dc2Address != msg.sender:
        require msg.sender == owner
    owner = arg1
}

function sub_5ea84b33(?) {
    if msg.sender == sub_b6262dc2Address:
        tokenAddress = arg1
        stor3 = 0
        # nil
    else:
        require msg.sender == owner
        tokenAddress = arg1
        stor3 = 0
        # nil
}

function sub_e1257f2b(?) {
    if msg.sender == sub_b6262dc2Address:
        tokenAddress = arg1
        stor3 = 0
        # nil
    else:
        require msg.sender == owner
        tokenAddress = arg1
        stor3 = 0
        # nil
}

function sub_056d642d(?) {
    if msg.sender == sub_b6262dc2Address:
        stor4 = arg2
        tokenAddress = arg1
        stor3 = 0
        # nil
    else:
        require msg.sender == owner
        stor4 = arg2
        tokenAddress = arg1
        stor3 = 0
        # nil
}

function sub_132599ed(?) {
    if msg.sender == sub_b6262dc2Address:
        stor4 = arg2
        tokenAddress = arg1
        stor3 = 0
        # nil
    else:
        require msg.sender == owner
        stor4 = arg2
        tokenAddress = arg1
        stor3 = 0
        # nil
}



}
