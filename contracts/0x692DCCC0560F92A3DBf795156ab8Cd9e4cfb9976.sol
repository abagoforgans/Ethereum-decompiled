contract main {




// =====================  Runtime code  =====================


const name = 'TMSY'

const decimals = 18

const symbol = 'TMSY'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor3;
array of address ownerHistory;
uint256 saleLimit;
uint256 teamTokens;
uint256 partnersTokens;
uint256 advisorsTokens;
uint256 reservaTokens;
address teamWalletAddress;
address partnersWalletAddress;
address advisorsWalletAddress;
address reservaWalletAddress;
uint256 unlockTeamTokensTime;
address sellerAddress;
uint256 tokensSold;
uint256 totalSales;
uint8 stor18;
mapping of uint8 stor19;

function seller() {
    return sellerAddress
}

function totalSupply() {
    return totalSupply
}

function isOwner(address arg1) {
    return bool(stor3[arg1])
}

function ownerHistoryCount() {
    return ownerHistory.length
}

function ownerHistory(uint256 arg1) {
    require arg1 < ownerHistory.length
    return ownerHistory[arg1]
}

function partnersTokens() {
    return partnersTokens
}

function tokensSold() {
    return tokensSold
}

function teamWallet() {
    return teamWalletAddress
}

function advisorsTokens() {
    return advisorsTokens
}

function totalSales() {
    return totalSales
}

function advisorsWallet() {
    return advisorsWalletAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function saleLimit() {
    return saleLimit
}

function partnersWallet() {
    return partnersWalletAddress
}

function reservaWallet() {
    return reservaWalletAddress
}

function reservaTokens() {
    return reservaTokens
}

function unlockTeamTokensTime() {
    return unlockTeamTokensTime
}

function walletsNotLocked(address arg1) {
    return bool(stor19[arg1])
}

function teamTokens() {
    return teamTokens
}

function locked() {
    return bool(stor18)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function walletLocked(address arg1) {
    require stor3[address(msg.sender)]
    stor19[address(arg1)] = 0
}

function walletNotLocked(address arg1) {
    require stor3[address(msg.sender)]
    stor19[address(arg1)] = 1
}

function unlock() {
    require stor3[address(msg.sender)]
    require stor18
    stor18 = 0
    emit Unlock()
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function removeOwner(address arg1) {
    require stor3[address(msg.sender)]
    require stor3[address(arg1)]
    stor3[address(arg1)] = 0
    emit OwnerRemovedEvent(arg1);
}

function addOwner(address arg1) {
    require stor3[address(msg.sender)]
    require arg1
    require not stor3[address(arg1)]
    ownerHistory.length++
    ownerHistory[ownerHistory.length] = arg1
    stor3[address(arg1)] = 1
    emit OwnerAddedEvent(arg1);
}

function burn(uint256 arg1) {
    if arg1 <= 0:
        revert with 0, 'Value is zero'
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    emit Burn(arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require stor19[address(arg1)]
    require not stor18
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function changeSeller(address arg1) {
    require stor3[address(msg.sender)]
    require arg1
    require sellerAddress != arg1
    require not balanceOf[address(arg1)]
    balanceOf[stor15] = 0
    balanceOf[address(arg1)] = balanceOf[stor15]
    emit Transfer(balanceOf[stor15], sellerAddress, arg1);
    sellerAddress = arg1
    emit ChangeSellerEvent(sellerAddress, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require stor19[address(arg2)]
    require not stor18
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sell(address arg1, uint256 arg2) {
    if sellerAddress != msg.sender:
        revert with 0, 'User not authorized'
    if not arg1:
        revert with 0, 'Not address authorized'
    if arg2 <= 0:
        revert with 0, 'Value is 0'
    require arg2 <= balanceOf[stor15]
    require arg2 <= balanceOf[stor15]
    balanceOf[stor15] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, sellerAddress, arg1);
    totalSales++
    require tokensSold + arg2 >= tokensSold
    tokensSold += arg2
    emit SellEvent(arg2, sellerAddress, arg1);
    return 1
}

function sellNoDecimals(address arg1, uint256 arg2) {
    if sellerAddress != msg.sender:
        revert with 0, 'User not authorized'
    if not arg1:
        revert with 0, 'Not address authorized'
    if 10^18 * arg2 <= 0:
        revert with 0, 'Value is 0'
    require 10^18 * arg2 <= balanceOf[stor15]
    require 10^18 * arg2 <= balanceOf[stor15]
    balanceOf[stor15] += -1 * 10^18 * arg2
    require balanceOf[address(arg1)] + (10^18 * arg2) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += 10^18 * arg2
    emit Transfer((10^18 * arg2), sellerAddress, arg1);
    totalSales++
    require tokensSold + (10^18 * arg2) >= tokensSold
    tokensSold += 10^18 * arg2
    emit SellEvent((10^18 * arg2), sellerAddress, arg1);
    return 1
}



}
