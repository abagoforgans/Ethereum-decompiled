contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0xb73d8a967e3787c62b670a31b22ab42b2abf6506
    require not msg.value
    return code.data[114 len 580]
}



// =====================  Runtime code  =====================


address serverAddress;
uint256 spend;

function spend() {
    return spend
}

function server() {
    return serverAddress
}

function buyForBitcoin(address arg1, uint256 arg2) {
    require msg.sender == serverAddress
    spend += arg2
    emit Minted(address(arg1), arg2);
}

function _fallback() payable {
    if unknown_0x45615bcc(?????) == uint32(call.func_hash):
        require not msg.value
        return spend
    if uint32(call.func_hash) != unknown_0xb63c57f1(?????):
        require unknown_0xfd922a42(?????) == uint32(call.func_hash)
        require not msg.value
        return serverAddress
    require not msg.value
    require msg.sender == serverAddress
    spend += arg2
    emit Minted(address(arg1), arg2);
}



}
