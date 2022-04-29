contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor4;

function _fallback() payable {
    stor0 = msg.sender
    require msg.value > 0
    stor1 = code.data[2187 len 20]
    require ext_code.size(stor1)
    call stor1.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require code.data[2207 len 32] <= ext_call.return_data[0]
    stor2 = code.data[2207 len 32]
    stor4 = msg.value
    return code.data[396 len 1779]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 eligibleTokens;
mapping of uint256 distributed;
uint256 totalDistributionAmountInWei;

function eligibleTokens() {
    return eligibleTokens
}

function distributed(address arg1) {
    return distributed[arg1]
}

function owner() {
    return owner
}

function totalDistributionAmountInWei() {
    return totalDistributionAmountInWei
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function withdraw() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function distribute(address arg1) {
    require owner == msg.sender
    require not distributed[address(arg1)]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require eligibleTokens
    if not totalDistributionAmountInWei:
        distributed[address(arg1)] = 0
        emit Dividend(address(arg1), 0);
        call arg1 with:
             gas 2300 wei
        require ext_call.success
        return 0
    require totalDistributionAmountInWei
    require totalDistributionAmountInWei * (10 * 10^18 * ext_call.return_data[0] / eligibleTokens) + 5 / 10 / totalDistributionAmountInWei == (10 * 10^18 * ext_call.return_data[0] / eligibleTokens) + 5 / 10
    distributed[address(arg1)] = totalDistributionAmountInWei * (10 * 10^18 * ext_call.return_data[0] / eligibleTokens) + 5 / 10 / 10^18
    emit Dividend(address(arg1), totalDistributionAmountInWei * (10 * 10^18 * ext_call.return_data[0] / eligibleTokens) + 5 / 10 / 10^18);
    call arg1 with:
       value totalDistributionAmountInWei * (10 * 10^18 * ext_call.return_data[0] / eligibleTokens) + 5 / 10 / 10^18 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return (totalDistributionAmountInWei * (10 * 10^18 * ext_call.return_data[0] / eligibleTokens) + 5 / 10 / 10^18)
}



}
