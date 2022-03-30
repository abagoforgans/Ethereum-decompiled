contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor3;
uint256 stor5;

function _fallback() {
    stor0 = code.data[1419 len 20]
    stor1 = code.data[1451 len 20]
    require code.data[1451 len 20]
    stor3 = code.data[1515 len 20]
    require code.data[1515 len 20]
    stor5 = code.data[1535 len 32]
    return code.data[186 len 1221]
}



// =====================  Runtime code  =====================


const isFinalizeAgent = 1


address tokenAddress;
address crowdsaleAddress;
uint256 bonusBasePoints;
address teamMultisigAddress;
uint256 allocatedBonus;
uint256 accountedTokenSales;

function allocatedBonus() {
    return allocatedBonus
}

function bonusBasePoints() {
    return bonusBasePoints
}

function crowdsale() {
    return crowdsaleAddress
}

function accountedTokenSales() {
    return accountedTokenSales
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
    call tokenAddress.mintAgents(address rg1) with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    return (1 == bool(ext_call.return_data[0]))
}

function finalizeCrowdsale() {
    require crowdsaleAddress == msg.sender
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0x518ab2a8 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(0x87e3d3e8b6f444ddfc8fa7241c412b5c878ce18e)
    delegate 0x87e3d3e8b6f444ddfc8fa7241c412b5c878ce18e.minus(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args ext_call.return_data[0], accountedTokenSales
    require delegate.return_code
    require ext_code.size(0x87e3d3e8b6f444ddfc8fa7241c412b5c878ce18e)
    delegate 0x87e3d3e8b6f444ddfc8fa7241c412b5c878ce18e.times(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args delegate.return_data[0], bonusBasePoints
    require delegate.return_code
    allocatedBonus = delegate.return_data[0] / 10000
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args teamMultisigAddress, delegate.return_data[0] / 10000
    require ext_call.success
}



}
