contract main {




// =====================  Runtime code  =====================


address owner;
address mainwalletAddress;
uint256 rate;
uint256 maxTokens;
address tokenAddress;

function rate() {
    return rate
}

function MaxTokens() {
    return maxTokens
}

function owner() {
    return owner
}

function mainwallet() {
    return mainwalletAddress
}

function token() {
    return tokenAddress
}

function ChangeOwner(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function ChangeRate(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    rate = arg1
}

function ChangeMainWallet(address arg1) {
    require msg.sender == owner
    require arg1
    mainwalletAddress = arg1
}

function GetTotal() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function GetBalance(address arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function BurnTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    emit Burn(arg2, arg1);
    require ext_code.size(tokenAddress)
    call tokenAddress.burn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function MintTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    emit Mint(arg2, arg1);
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function _fallback() payable {
    call mainwalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if rate:
        require rate
        require rate * msg.value / rate == msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, rate * msg.value / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit SaleToken((rate * msg.value / 10^18), msg.sender);
}

function CreateTokens() payable {
    call mainwalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if rate:
        require rate
        require rate * msg.value / rate == msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, rate * msg.value / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit SaleToken((rate * msg.value / 10^18), msg.sender);
}



}
