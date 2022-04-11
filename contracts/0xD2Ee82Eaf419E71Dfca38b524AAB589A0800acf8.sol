contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = code.data[695 len 20]
    stor1 = code.data[727 len 20]
    return code.data[101 len 582]
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

function _fallback() payable {
    revert 
}

function finalizeCrowdsale() {
    require crowdsaleAddress == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.'_A-O' with:
         gas gas_remaining - 50 wei
    require ext_call.success
}

function isSane() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0xd1f276d3 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return (ext_call.return_data[12 len 20] == this.address)
}



}
