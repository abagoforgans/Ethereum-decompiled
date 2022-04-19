contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor1 = code.data[2034 len 20]
    stor0 = msg.sender
    stor2 = block.timestamp
    stor3 = code.data[2054 len 32]
    return code.data[201 len 1821]
}



// =====================  Runtime code  =====================


address sub_075aa0c4Address;
address sub_04758e79Address;
uint256 startDate;
uint256 channelTimeout;
mapping of address stor4;

function sub_04758e79(?) {
    return sub_04758e79Address
}

function sub_075aa0c4(?) {
    return sub_075aa0c4Address
}

function startDate() {
    return startDate
}

function channelTimeout() {
    return channelTimeout
}

function ChannelTimeout() {
    require startDate + channelTimeout <= block.timestamp
    selfdestruct(sub_075aa0c4Address)
}

function CloseChannel(bytes32 arg1, uint8 arg2, bytes32 arg3, bytes32 arg4, uint256 arg5) {
    signer = erecover(arg1, arg2 << 248, arg3, arg4) 
    require erecover.result
    emit 0x80c76b9f: arg5, address(signer), sub_04758e79Address, sub_075aa0c4Address
    if address(signer) != sub_075aa0c4Address:
        require address(signer) == sub_04758e79Address
    emit 0x6552c051: sha3(this.address, arg5)
    if not stor4[this.address][arg5]:
        stor4[this.address][arg5] = address(signer)
    if stor4[this.address][arg5] == address(signer):
    call sub_04758e79Address with:
       value arg5 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    selfdestruct(sub_075aa0c4Address)
}

function _fallback() payable {
    revert
}



}
