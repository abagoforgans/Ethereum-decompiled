contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of struct authorizs;
array of address authorizedAccts;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 tokenSaleHardCap;
uint256 baseRate;
uint8 tokenSaleClosed;
mapping of uint8 stor13;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function baseRate() {
    return baseRate
}

function tokenSaleHardCap() {
    return tokenSaleHardCap
}

function decimals() {
    return decimals
}

function authorizs(address arg1) {
    return authorizs[arg1].field_0, authorizs[arg1].field_256
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor13[arg1])
}

function authorized(address arg1) {
    return bool(stor1[arg1])
}

function authorizedAccts(uint256 arg1) {
    require arg1 < authorizedAccts.length
    return authorizedAccts[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function tokenSaleClosed() {
    return bool(tokenSaleClosed)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function removeAuthorized(address arg1) {
    require msg.sender == owner
    require arg1
    require arg1 != msg.sender
    stor1[address(arg1)] = 0
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function openSale() {
    if 0 >= authorizedAccts.length:
        require msg.sender == owner
    else:
        if bool(stor1[msg.sender]) != 1:
            require msg.sender == owner
    tokenSaleClosed = 0
}

function setRatePrices(uint256 arg1) {
    if 0 >= authorizedAccts.length:
        require msg.sender == owner
    else:
        if bool(stor1[msg.sender]) != 1:
            require msg.sender == owner
    baseRate = arg1
}

function getBalance() {
    if 0 >= authorizedAccts.length:
        require msg.sender == owner
    else:
        if bool(stor1[msg.sender]) != 1:
            require msg.sender == owner
    return eth.balance(this.address)
}

function setTokenSaleHardCap(uint256 arg1) {
    if 0 >= authorizedAccts.length:
        require msg.sender == owner
    else:
        if bool(stor1[msg.sender]) != 1:
            require msg.sender == owner
    tokenSaleHardCap = arg1
}

function isAuthorizedAccount(address arg1) {
    if owner == arg1:
        return 1
    if not authorizedAccts.length:
        return 0
    require authorizs[address(arg1)].field_0 < authorizedAccts.length
    return (authorizedAccts[stor2[address(arg1)].field_0] == arg1)
}

function freezeAccount(address arg1, bool arg2) {
    if 0 >= authorizedAccts.length:
        require msg.sender == owner
    else:
        if bool(stor1[msg.sender]) != 1:
            require msg.sender == owner
    stor13[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function burnFrom(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= allowance[address(arg1)][msg.sender]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][msg.sender] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    if 0 >= authorizedAccts.length:
        require msg.sender == owner
    else:
        if bool(stor1[msg.sender]) != 1:
            require msg.sender == owner
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function collect() {
    if 0 >= authorizedAccts.length:
        require msg.sender == owner
    else:
        if bool(stor1[msg.sender]) != 1:
            require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require not stor13[address(msg.sender)]
    require not stor13[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function close() {
    if 0 >= authorizedAccts.length:
        require msg.sender == owner
    else:
        if bool(stor1[msg.sender]) != 1:
            require msg.sender == owner
    require not tokenSaleClosed
    tokenSaleClosed = 1
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require not stor13[address(arg1)]
    require not stor13[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, this.address, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function addAuthorized(address arg1) {
    require msg.sender == owner
    require arg1
    require owner != arg1
    if authorizedAccts.length:
        require authorizs[address(arg1)].field_0 < authorizedAccts.length
        require authorizedAccts[stor2[address(arg1)].field_0] != arg1
    stor1[address(arg1)] = 1
    authorizs[address(arg1)].field_256 = arg1
    authorizedAccts.length++
    authorizedAccts[authorizedAccts.length] = arg1
    authorizs[address(arg1)].field_0 = authorizedAccts.length
}

function purchaseTokens(address arg1) payable {
    require totalSupply < tokenSaleHardCap
    require not tokenSaleClosed
    require msg.value >= 10^16
    if msg.value:
        require msg.value
        require baseRate * msg.value / msg.value == baseRate
    require 10^decimals
    require arg1
    balanceOf[address(arg1)] += baseRate * msg.value / 10^decimals
    totalSupply += baseRate * msg.value / 10^decimals
    emit Transfer((baseRate * msg.value / 10^decimals), 0, this.address);
    emit Transfer((baseRate * msg.value / 10^decimals), this.address, arg1);
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require totalSupply < tokenSaleHardCap
    require not tokenSaleClosed
    require msg.value >= 10^16
    if msg.value:
        require msg.value
        require baseRate * msg.value / msg.value == baseRate
    require 10^decimals
    require msg.sender
    balanceOf[address(msg.sender)] += baseRate * msg.value / 10^decimals
    totalSupply += baseRate * msg.value / 10^decimals
    emit Transfer((baseRate * msg.value / 10^decimals), 0, this.address);
    emit Transfer((baseRate * msg.value / 10^decimals), this.address, msg.sender);
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
