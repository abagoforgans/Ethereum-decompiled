contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
address stor3;

function _fallback() {
    stor0 = code.data[1477 len 20]
    stor1 = code.data[1509 len 20]
    require code.data[1509 len 20]
    stor3 = code.data[1573 len 20]
    require code.data[1573 len 20]
    stor2 = code.data[1529 len 32]
    return code.data[190 len 1275]
}



// =====================  Runtime code  =====================


const isFinalizeAgent = 1


address tokenAddress;
address crowdsaleAddress;
uint256 bonusBasePoints;
address teamMultisigAddress;
uint256 allocatedBonus;

function allocatedBonus() {
    return allocatedBonus
}

function bonusBasePoints() {
    return bonusBasePoints
}

function crowdsale() {
    return crowdsaleAddress
}

function teamMultisig() {
    return teamMultisigAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isSane() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x42c1867b with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if bool(ext_call.return_data[0]) != 1:
        return (1 == bool(ext_call.return_data[0]))
    require ext_code.size(tokenAddress)
    call tokenAddress.0xd1f276d3 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return (ext_call.return_data[12 len 20] == this.address)
}

function finalizeCrowdsale() {
    require crowdsaleAddress == msg.sender
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0x518ab2a8 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(0xb3b19465fb5b3807c51b73bcc67ebcf16cb2c7bf)
    delegate 0xb3b19465fb5b3807c51b73bcc67ebcf16cb2c7bf.0x1d3b9edf with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0], bonusBasePoints
    require delegate.return_code
    allocatedBonus = delegate.return_data[0] / 10000
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args teamMultisigAddress, (delegate.return_data[0] / 10000) + 77 * 10^12
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x5f412d4f with:
         gas gas_remaining - 710 wei
    require ext_call.success
}



}
