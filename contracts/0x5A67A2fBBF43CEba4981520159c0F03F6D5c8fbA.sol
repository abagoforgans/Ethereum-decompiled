contract main {




// =====================  Runtime code  =====================


address owner;
uint256 tokensPerEth;
uint256 closeTime;
address anacoContractAddress;
address fundsWalletAddress;

function fundsWallet() {
    return fundsWalletAddress
}

function anacoContract() {
    return anacoContractAddress
}

function closeTime() {
    return closeTime
}

function owner() {
    return owner
}

function tokensPerEth() {
    return tokensPerEth
}

function _fallback() {
    revert
}

function changeFundsWallet(address arg1) {
    require msg.sender == owner
    fundsWalletAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function getTokens() payable {
    require msg.value >= 2 * 10^15
    if not msg.value:
        require ext_code.size(anacoContractAddress)
        call anacoContractAddress.0x23b872dd with:
             gas gas_remaining wei
            args fundsWalletAddress, msg.sender, 0
    else:
        require tokensPerEth * msg.value / msg.value == tokensPerEth
        if msg.value < 5 * 10^17:
            require ext_code.size(anacoContractAddress)
            call anacoContractAddress.0x23b872dd with:
                 gas gas_remaining wei
                args fundsWalletAddress, msg.sender, tokensPerEth * msg.value / 10^18
        else:
            require (tokensPerEth * msg.value / 10^18 / 2) + (tokensPerEth * msg.value / 10^18) >= tokensPerEth * msg.value / 10^18
            require ext_code.size(anacoContractAddress)
            call anacoContractAddress.0x23b872dd with:
                 gas gas_remaining wei
                args fundsWalletAddress, msg.sender, (tokensPerEth * msg.value / 10^18 / 2) + (tokensPerEth * msg.value / 10^18)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
