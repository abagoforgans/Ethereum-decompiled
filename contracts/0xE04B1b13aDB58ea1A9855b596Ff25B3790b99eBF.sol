contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor4;

function _fallback() {
    require code.data[12259 len 20]
    create contract with 0 wei
                    code: code.data[7150 len 2071]
    require create.new_address
    stor0 = address(create.new_address)
    stor2 = 500
    stor1 = code.data[12259 len 20]
    stor4 = 0
    create contract with 0 wei
                    code: code.data[9221 len 3026], 96, 160, 18, 12, 'Gateon Token' << 160, 3, 'GTN' % 16777216
    require create.new_address
    stor0 = address(create.new_address)
    return code.data[679 len 6471]
}



// =====================  Runtime code  =====================


const hasEnded = 0


address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 investors;

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function investors() {
    return investors
}

function token() {
    return tokenAddress
}

function buyTokens(address arg1) payable {
    require arg1
    require msg.value
    require msg.value
    require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), rate * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function sub_3d15c10b(?) payable {
    investors++
    require arg1
    require msg.value
    require msg.value
    require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), rate * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    investors++
    require msg.sender
    require msg.value
    require msg.value
    require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, rate * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
