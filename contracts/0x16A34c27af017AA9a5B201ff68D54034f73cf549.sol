contract main {




// =====================  Runtime code  =====================


address primaryAddress;

function primary() {
    return primaryAddress
}

function _fallback() payable {
    revert
}

function transferPrimary(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == primaryAddress
    require arg1
    primaryAddress = arg1
}



}
