contract main {




// =====================  Runtime code  =====================


address owner;
address sub_4fe5b830Address;
uint256 tokeninOneEther;
uint256 sub_5a03d679;
uint256 tokenSold;
uint8 stor5;
uint256 stor6;
uint256 stor7;
mapping of uint256 tokensOwed;
mapping of uint256 ethContribution;
mapping of uint8 stor10;

function isWhitelisted(address arg1) {
    return bool(stor10[arg1])
}

function tokensOwed(address arg1) {
    return tokensOwed[arg1]
}

function ethContribution(address arg1) {
    return ethContribution[arg1]
}

function sub_4fe5b830(?) {
    return sub_4fe5b830Address
}

function tokenSold() {
    return tokenSold
}

function sub_5a03d679(?) {
    return sub_5a03d679
}

function owner() {
    return owner
}

function tokeninOneEther() {
    return tokeninOneEther
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateTokenRate(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    tokeninOneEther = arg1
    emit LogTokenRateUpdated(arg1);
}

function addContributor(address arg1) {
    require msg.sender == owner
    require arg1
    require not stor10[address(arg1)]
    stor10[address(arg1)] = 1
    emit LogAddedToWhitelist(arg1);
}

function giveTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require tokenSold + arg2 >= tokenSold
    require tokenSold + arg2 <= sub_5a03d679
    tokensOwed[address(arg1)] += arg2
    tokenSold += arg2
}

function closeSale() {
    require msg.sender == owner
    require block.timestamp > stor6
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor5 = 1
    emit LogSaleClosed()
}

function withdrawMyTokens() {
    require stor5
    require tokensOwed[address(msg.sender)] > 0
    require block.timestamp > stor7
    tokensOwed[address(msg.sender)] = 0
    require ext_code.size(sub_4fe5b830Address)
    call sub_4fe5b830Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, tokensOwed[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function _fallback() payable {
    require not stor5
    require stor10[address(msg.sender)]
    require tokenSold + (msg.value * tokeninOneEther) >= tokenSold
    require tokenSold + (msg.value * tokeninOneEther) <= sub_5a03d679
    tokensOwed[address(msg.sender)] += msg.value * tokeninOneEther
    tokenSold += msg.value * tokeninOneEther
    ethContribution[address(msg.sender)] += msg.value
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawTokens() {
    require msg.sender == owner
    require block.timestamp > stor7
    require ext_code.size(sub_4fe5b830Address)
    call sub_4fe5b830Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_4fe5b830Address)
    call sub_4fe5b830Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
