contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = code.data[817 len 20]
    stor1 = code.data[849 len 20]
    return code.data[106 len 699]
}



// =====================  Runtime code  =====================


const isFinalizeAgent = 1


address tokenAddress;
address crowdsaleAddress;

function crowdsale() {
    return crowdsaleAddress
}

function token() {
    return tokenAddress
}

function finalizeCrowdsale() {
    require crowdsaleAddress == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x5f412d4f with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function isSane() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0xd1f276d3 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return (ext_call.return_data[12 len 20] == this.address)
}

function _fallback() payable {
    if uint32(call.func_hash) == finalizeCrowdsale():
        require not msg.value
        require crowdsaleAddress == msg.sender
        require ext_code.size(tokenAddress)
        call tokenAddress.0x5f412d4f with:
             gas gas_remaining - 710 wei
        require ext_call.success
    if unknown_0x614cb904(?????) == uint32(call.func_hash):
        require not msg.value
        return 1
    if uint32(call.func_hash) != unknown_0x82771c8e(?????):
        if unknown_0x9c1e03a0(?????) == uint32(call.func_hash):
            require not msg.value
            return crowdsaleAddress
        require unknown_0xfc0c546a(?????) == uint32(call.func_hash)
        require not msg.value
        return tokenAddress
    require not msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xd1f276d3 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return (ext_call.return_data[12 len 20] == this.address)
}



}
