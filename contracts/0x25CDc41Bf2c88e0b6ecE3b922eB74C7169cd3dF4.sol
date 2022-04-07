contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[2504 len 20]
    stor2 = code.data[2536 len 20]
    require ext_code.size(code.data[2536 len 20])
    call code.data[2536 len 20].isCrowdsale() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0]
    stor3 = code.data[2568 len 20]
    return code.data[281 len 2211]
}



// =====================  Runtime code  =====================


const isFinalizeAgent = 1

const isSane = 1


address owner;
address tokenAddress;
address crowdsaleAddress;
address mysteriumPricingAddress;
address stor4;
address stor5;
address stor6;
address stor7;
address stor8;
uint256 future_round_coins;
uint256 foundation_coins;
uint256 team_coins;
uint256 seed_coins_vault1;
uint256 seed_coins_vault2;

function foundation_coins() {
    return foundation_coins
}

function future_round_coins() {
    return future_round_coins
}

function mysteriumPricing() {
    return mysteriumPricingAddress
}

function seed_coins_vault1() {
    return seed_coins_vault1
}

function team_coins() {
    return team_coins
}

function owner() {
    return owner
}

function crowdsale() {
    return crowdsaleAddress
}

function seed_coins_vault2() {
    return seed_coins_vault2
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert 
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function setVaults(address arg1, address arg2, address arg3, address arg4, address arg5) {
    require owner == msg.sender
    stor4 = arg1
    stor5 = arg2
    stor6 = arg3
    stor7 = arg4
    stor8 = arg5
}

function getDistributionFacts() {
    require ext_code.size(mysteriumPricingAddress)
    call mysteriumPricingAddress.getEthChfPrice() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.weiRaised() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(0x790d13e76b2c727086018842af947408e371868f)
    delegate 0x790d13e76b2c727086018842af947408e371868f.times(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args ext_call.return_data[0], ext_call.return_data[0]
    require delegate.return_code
    return delegate.return_data[0] / 10^18, ext_call.return_data[0]
}

function distribute(uint256 arg1, uint256 arg2) {
    if crowdsaleAddress != msg.sender:
        require owner == msg.sender
    future_round_coins = 486500484333000
    foundation_coins = 291900290600000
    team_coins = 324333656222000
    seed_coins_vault1 = 34 * 10^9 * 3600
    seed_coins_vault2 = 136 * 10^9 * 3600
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args stor4, 486500484333000
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args stor5, foundation_coins
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args stor6, team_coins
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args stor7, seed_coins_vault1
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args stor8, seed_coins_vault2
    require ext_call.success
}

function finalizeCrowdsale() {
    if crowdsaleAddress != msg.sender:
        require owner == msg.sender
    require ext_code.size(mysteriumPricingAddress)
    call mysteriumPricingAddress.getEthChfPrice() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.weiRaised() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(0x790d13e76b2c727086018842af947408e371868f)
    delegate 0x790d13e76b2c727086018842af947408e371868f.times(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args ext_call.return_data[0], ext_call.return_data[0]
    require delegate.return_code
    if crowdsaleAddress != msg.sender:
        require owner == msg.sender
    future_round_coins = 486500484333000
    foundation_coins = 291900290600000
    team_coins = 324333656222000
    seed_coins_vault1 = 34 * 10^9 * 3600
    seed_coins_vault2 = 136 * 10^9 * 3600
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args stor4, 486500484333000
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args stor5, foundation_coins
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args stor6, team_coins
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args stor7, seed_coins_vault1
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args stor8, seed_coins_vault2
    require ext_call.success
}



}
