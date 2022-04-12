contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
address stor2;
address stor3;

function _fallback() payable {
    stor0 = 0
    stor1 = 0x16138829b22e20f7d5c2158d7ee7e0719f490260
    stor2 = 0xfd19c8acc64d063ef46b506ce56bc98bd7ee0caa
    stor3 = 0x9c1e507522394138687f9f6dd33a63dba73ba2af
    require not msg.value
    return code.data[290 len 1206]
}



// =====================  Runtime code  =====================


uint256 weiRaised;
address wwamICOcontractAddress;
address pricingStrategyAddress;
address tokenAddress;

function weiRaised() {
    return weiRaised
}

function wwamICOcontractAddress() {
    return wwamICOcontractAddress
}

function tokenAddress() {
    return tokenAddress
}

function pricingStrategyAddress() {
    return pricingStrategyAddress
}

function _fallback() payable {
    call wwamICOcontractAddress with:
       value msg.value wei
         gas 300000 wei
    require weiRaised + msg.value >= weiRaised
    require weiRaised + msg.value >= msg.value
    weiRaised += msg.value
    require ext_code.size(pricingStrategyAddress)
    call pricingStrategyAddress.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, uint256 rg5) with:
         gas gas_remaining - 710 wei
        args 0
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
}



}
