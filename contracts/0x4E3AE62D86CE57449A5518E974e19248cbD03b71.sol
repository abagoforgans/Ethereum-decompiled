contract main {




// =====================  Runtime code  =====================


uint256 time;
mapping of uint8 stor1;
mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
uint8 decimals; offset 160
address newOwner;
array of uint256 name;
array of uint256 symbol;
array of uint256 standard;
uint256 maxSupply;
uint8 stor11;
mapping of uint256 bounty;
mapping of uint8 stor13;
mapping of uint8 stor14;
mapping of uint8 stor15;
address crowdsaleAddress;
address authorizedAddress;
mapping of uint8 stor18;

function name() {
    return name[0 len name.length]
}

function time() {
    return time
}

function totalSupply() {
    return totalSupply
}

function bounty(address arg1) {
    return bounty[arg1]
}

function sub_28a801c7(?) {
    return bool(stor18[arg1])
}

function burnAgents(address arg1) {
    return bool(stor15[arg1])
}

function decimals() {
    return decimals
}

function allowedMinting() {
    return bool(stor11)
}

function authorizedAddress() {
    return authorizedAddress
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function crowdsale() {
    return crowdsaleAddress
}

function mintingAgents(address arg1) {
    return bool(stor13[arg1])
}

function stateChangeAgents(address arg1) {
    return bool(stor14[arg1])
}

function excludedAddresses(address arg1) {
    return bool(stor1[arg1])
}

function newOwner() {
    return newOwner
}

function maxSupply() {
    return maxSupply
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function disableMinting() {
    require stor14[msg.sender]
    stor11 = 0
}

function acceptOwnership() {
    if msg.sender == newOwner:
        owner = newOwner
}

function setUnlockTime(uint256 arg1) {
    require stor14[msg.sender]
    time = arg1
}

function availableTokens() {
    require totalSupply <= maxSupply
    return (maxSupply - totalSupply)
}

function sub_dd2eb8ce(?) {
    require stor14[msg.sender]
    require arg1
    stor18[address(arg1)] = 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    newOwner = arg1
}

function setCrowdsale(address arg1) {
    require msg.sender == owner
    require arg1
    crowdsaleAddress = arg1
}

function updateMaxSupply(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    maxSupply = arg1
}

function updateBurnAgent(address arg1, bool arg2) {
    require msg.sender == owner
    stor15[address(arg1)] = uint8(arg2)
}

function updateMintingAgent(address arg1, bool arg2) {
    require msg.sender == owner
    stor13[address(arg1)] = uint8(arg2)
}

function updateExcludedAddress(address arg1, bool arg2) {
    require msg.sender == owner
    stor1[address(arg1)] = uint8(arg2)
}

function updateStateChangeAgent(address arg1, bool arg2) {
    require msg.sender == owner
    stor14[address(arg1)] = uint8(arg2)
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_28d389bc(?) {
    require msg.sender == owner
    require arg1
    require owner != arg1
    authorizedAddress = arg1
    require msg.sender == owner
    stor1[address(arg1)] = 1
}

function isTransferAllowed(address arg1, uint256 arg2) {
    if authorizedAddress != arg1:
        if authorizedAddress != msg.sender:
            return 0
    else:
        if bool(stor18[msg.sender]) != 1:
            if authorizedAddress != msg.sender:
                return 0
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function burnUnsoldTokens(uint256 arg1) {
    require stor15[msg.sender]
    require arg1 + totalSupply >= totalSupply
    require arg1 + totalSupply <= maxSupply
    require arg1 <= maxSupply
    maxSupply -= arg1
    emit Burn(address arg1, uint256 arg2):
              arg1,
    emit 0x0: arg1
    return arg1
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= maxSupply
    maxSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        require arg2 <= allowance[msg.sender][address(arg1)]
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require stor13[msg.sender]
    require 1 == bool(stor11)
    require arg2 + totalSupply >= totalSupply
    require arg2 + totalSupply <= maxSupply
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    bounty[address(arg1)] = arg2
    if totalSupply == maxSupply:
        stor11 = 0
    emit Mint(arg2, arg1);
}

function transfer(address arg1, uint256 arg2) {
    if authorizedAddress != arg1:
        require msg.sender == authorizedAddress
    else:
        if bool(stor18[msg.sender]) != 1:
            require msg.sender == authorizedAddress
    if bool(stor1[msg.sender]) != 1:
        require block.timestamp >= time
    require arg2 <= balanceOf[msg.sender]
    require arg1
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if authorizedAddress != arg2:
        require msg.sender == authorizedAddress
    else:
        if bool(stor18[msg.sender]) != 1:
            require msg.sender == authorizedAddress
    if bool(stor1[address(arg1)]) != 1:
        require block.timestamp >= time
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function burnByAgent(address arg1, uint256 arg2) {
    require stor15[msg.sender]
    if arg2:
        require arg2 <= balanceOf[address(arg1)]
        require arg2 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg2
        require arg2 <= totalSupply
        totalSupply -= arg2
        require arg2 <= maxSupply
        maxSupply -= arg2
        emit Burn(arg2, arg1);
        emit Transfer(arg2, arg1, 0);
        return arg2
    require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = 0
    require balanceOf[address(arg1)] <= totalSupply
    totalSupply -= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] <= maxSupply
    maxSupply -= balanceOf[address(arg1)]
    emit Burn(balanceOf[address(arg1)], arg1);
    emit Transfer(balanceOf[address(arg1)], arg1, 0);
    return balanceOf[address(arg1)]
}



}
