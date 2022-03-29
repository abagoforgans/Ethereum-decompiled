contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[95 len 1601]
}



// =====================  Runtime code  =====================


address devAddress;
address curatorAddress;
uint256 creditsExchanged;
array of uint256 sub_a7f3f0d2;
address addyAddress;
uint256 sub_2fdd4d7b;
uint256 sub_b73b1e81;
uint256 sub_5b1ae381;

function sub_2fdd4d7b(?) {
    return sub_2fdd4d7b
}

function addy() {
    return addyAddress
}

function sub_5b1ae381(?) {
    return sub_5b1ae381
}

function dev() {
    return devAddress
}

function sub_a7f3f0d2(?) {
    return sub_a7f3f0d2[0 len sub_a7f3f0d2.length]
}

function sub_b73b1e81(?) {
    return sub_b73b1e81
}

function creditsExchanged() {
    return creditsExchanged
}

function curator() {
    return curatorAddress
}

function _fallback() {
    revert 
}

function sub_c9dbf2f5(?) {
    if msg.sender == curatorAddress:
        return 0
    return 1
}

function setCreditMCCurator(address arg1) {
    if devAddress != msg.sender:
        return 1
    curatorAddress = arg1
    return 0
}



}
