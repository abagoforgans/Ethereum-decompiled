contract main {




// =====================  Runtime code  =====================


#
#  - sendTokens()
#
address owner;

function owner() {
    return owner
}

function owned() {
    owner = msg.sender
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    revert 
}



}
