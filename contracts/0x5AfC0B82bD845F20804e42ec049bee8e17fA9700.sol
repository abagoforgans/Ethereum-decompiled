contract main {




// =====================  Runtime code  =====================


const name = 'Cevac Token'

const CevacFund = (10^14 * 3600)

const decimals = 8

const symbol = 'CEVAC'


uint256 totalSupply;
address owner;
array of uint256 version;
uint256 valueToBeSent;
uint8 stor4;
uint256 ethraised;
uint256 btcraised;
uint256 usdraised;
uint256 numberOfBackers;
uint8 stor9;
uint256 fundingStartBlock;
uint256 fundingEndBlock;
uint256 tokenCreationMax;
mapping of uint8 stor13;
uint256 minCapUSD;
uint256 maxCapUSD;
address ownerWallet;
mapping of uint256 balances;
mapping of uint256 allowed;

function numberOfBackers() {
    return numberOfBackers
}

function btcraised() {
    return btcraised
}

function totalSupply() {
    return totalSupply
}

function valueToBeSent() {
    return valueToBeSent
}

function tokenCreationMax() {
    return tokenCreationMax
}

function ownership(address arg1) {
    return bool(stor13[arg1])
}

function balances(address arg1) {
    return balances[arg1]
}

function version() {
    return version[0 len version.length]
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function finalizedICO() {
    return bool(stor4)
}

function owner() {
    return owner
}

function usdraised() {
    return usdraised
}

function fundingEndBlock() {
    return fundingEndBlock
}

function ownerWallet() {
    return ownerWallet
}

function ethraised() {
    return ethraised
}

function maxCapUSD() {
    return maxCapUSD
}

function fundingStartBlock() {
    return fundingStartBlock
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function minCapUSD() {
    return minCapUSD
}

function istransferAllowed() {
    return bool(stor9)
}

function _fallback() payable {
    revert
}

function enableTransfers() {
    require msg.sender == owner
    stor9 = 1
}

function disableTransfers() {
    require msg.sender == owner
    stor9 = 0
}

function finalizeICOOwner() {
    require msg.sender == owner
    stor4 = 1
    stor9 = 1
}

function changeMaxCapUSD(uint256 arg1) {
    require msg.sender == owner
    maxCapUSD = arg1
}

function changeMinCapUSD(uint256 arg1) {
    require msg.sender == owner
    minCapUSD = arg1
}

function changeEndBlock(uint256 arg1) {
    require msg.sender == owner
    fundingEndBlock = arg1
}

function addToOwnership(address arg1) {
    require msg.sender == owner
    stor13[address(arg1)] = 1
}

function changeStartBlock(uint256 arg1) {
    require msg.sender == owner
    fundingStartBlock = arg1
}

function increaseEthRaised(uint256 arg1) {
    require stor13[address(msg.sender)]
    ethraised += arg1
}

function increaseBTCRaised(uint256 arg1) {
    require stor13[address(msg.sender)]
    btcraised += arg1
}

function increaseUSDRaised(uint256 arg1) {
    require stor13[address(msg.sender)]
    usdraised += arg1
}

function removeFromOwnership(address arg1) {
    require msg.sender == owner
    stor13[address(arg1)] = 0
}

function finalizeICO() {
    require stor13[address(msg.sender)]
    require usdraised >= minCapUSD
    stor4 = 1
    stor9 = 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isValid() {
    if block.timestamp < fundingStartBlock:
        return 0
    if block.timestamp >= fundingEndBlock:
        return 0
    return 1
}

function burnTokens(uint256 arg1) {
    require balances[address(msg.sender)] >= arg1
    require arg1 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if arg2:
        require not allowed[address(msg.sender)][address(arg1)]
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addToBalances(address arg1, uint256 arg2) {
    require stor13[address(msg.sender)]
    require arg2 <= balances[stor16]
    balances[stor16] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, this.address, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require stor9
    if balances[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balances[address(msg.sender)] -= arg2
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require stor9
    if balances[address(arg1)] < arg3:
        return 0
    if allowed[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balances[address(arg2)] += arg3
    balances[address(arg1)] -= arg3
    allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
