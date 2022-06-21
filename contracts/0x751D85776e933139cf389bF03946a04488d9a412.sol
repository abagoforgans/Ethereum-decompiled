contract main {




// =====================  Runtime code  =====================


const sub_89a4fe84(?) = 1


address primaryAddress;
mapping of address wallet;

function primary() {
    return primaryAddress
}

function getWallet(uint8 arg1) {
    return wallet[arg1 << 248]
}

function _fallback() payable {
    revert
}

function sub_684b0dd2(?) {
    require msg.sender == primaryAddress
    wallet[arg1 << 248] = arg2
    emit 0xfc3e2022: arg2, arg1
}

function transferPrimary(address arg1) {
    require msg.sender == primaryAddress
    require arg1
    primaryAddress = arg1
    emit PrimaryTransferred(arg1);
}



}
