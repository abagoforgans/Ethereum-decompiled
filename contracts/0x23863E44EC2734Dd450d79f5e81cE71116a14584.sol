contract main {




// =====================  Runtime code  =====================


const name = 'ACOCoin'

const decimals = 18

const initialSupply_ = 2000000000 * 10^18

const symbol = 'ACO'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stor3; offset 160
address owner;
uint256 tokensForPublicSale;
uint256 pricePerToken;
uint256 stor6;
uint256 stor7;
uint8 stor8;

function totalSupply() {
    return totalSupply
}

function tokensForPublicSale() {
    return tokensForPublicSale
}

function isCrowdsaleOpen() {
    return bool(stor8)
}

function paused() {
    return bool(uint8(stor3.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function pricePerToken() {
    return pricePerToken
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function stopCrowdSale() {
    require msg.sender == owner
    stor8 = 0
}

function startCrowdSale() {
    require msg.sender == owner
    stor8 = 1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function unpause() {
    require msg.sender == owner
    require uint8(stor3.field_160)
    uint8(stor3.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    uint8(stor3.field_160) = 1
    emit Pause()
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
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

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require arg2 <= balanceOf[msg.sender]
    require arg1
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 0
}

function sendToInvestor(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require arg2 <= balanceOf[msg.sender]
    require arg1
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function setPublicSaleParams(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require msg.sender == owner
    require arg1 > 0
    require arg1 <= totalSupply
    require arg4 > 0
    require arg2 >= 0
    require arg3 > 0
    pricePerToken = 0
    require arg4 >= 0
    pricePerToken = arg4
    tokensForPublicSale = 0
    require arg1 >= 0
    tokensForPublicSale = arg1
    stor6 = 0
    require arg2 >= 0
    stor6 = arg2
    stor7 = 0
    require arg3 >= 0
    stor7 = arg3
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor3.field_160)
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
    return 0
}

function _fallback() payable {
    require stor8
    require msg.value >= stor6
    require msg.value <= stor7
    if not msg.value:
        require pricePerToken > 0
        require pricePerToken
        require 0 / pricePerToken > 0
        require 0 / pricePerToken <= tokensForPublicSale
        tokensForPublicSale -= 0 / pricePerToken
        require 0 / pricePerToken <= balanceOf[address(stor3.field_0)]
        require 0 / pricePerToken <= balanceOf[address(stor3.field_0)]
        balanceOf[address(stor3.field_0)] -= 0 / pricePerToken
        require (0 / pricePerToken) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[msg.sender] += 0 / pricePerToken
        emit Transfer((0 / pricePerToken), owner, msg.sender);
    else:
        require 10^18 * msg.value / msg.value == 10^18
        require pricePerToken > 0
        require pricePerToken
        require 10^18 * msg.value / pricePerToken > 0
        require 10^18 * msg.value / pricePerToken <= tokensForPublicSale
        tokensForPublicSale -= 10^18 * msg.value / pricePerToken
        require 10^18 * msg.value / pricePerToken <= balanceOf[address(stor3.field_0)]
        require 10^18 * msg.value / pricePerToken <= balanceOf[address(stor3.field_0)]
        balanceOf[address(stor3.field_0)] -= 10^18 * msg.value / pricePerToken
        require (10^18 * msg.value / pricePerToken) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[msg.sender] += 10^18 * msg.value / pricePerToken
        emit Transfer((10^18 * msg.value / pricePerToken), owner, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function buyTokens() payable {
    require stor8
    require msg.value >= stor6
    require msg.value <= stor7
    if not msg.value:
        require pricePerToken > 0
        require pricePerToken
        require 0 / pricePerToken > 0
        require 0 / pricePerToken <= tokensForPublicSale
        tokensForPublicSale -= 0 / pricePerToken
        require 0 / pricePerToken <= balanceOf[address(stor3.field_0)]
        require 0 / pricePerToken <= balanceOf[address(stor3.field_0)]
        balanceOf[address(stor3.field_0)] -= 0 / pricePerToken
        require (0 / pricePerToken) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[msg.sender] += 0 / pricePerToken
        emit Transfer((0 / pricePerToken), owner, msg.sender);
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        return (0 / pricePerToken)
    require 10^18 * msg.value / msg.value == 10^18
    require pricePerToken > 0
    require pricePerToken
    require 10^18 * msg.value / pricePerToken > 0
    require 10^18 * msg.value / pricePerToken <= tokensForPublicSale
    tokensForPublicSale -= 10^18 * msg.value / pricePerToken
    require 10^18 * msg.value / pricePerToken <= balanceOf[address(stor3.field_0)]
    require 10^18 * msg.value / pricePerToken <= balanceOf[address(stor3.field_0)]
    balanceOf[address(stor3.field_0)] -= 10^18 * msg.value / pricePerToken
    require (10^18 * msg.value / pricePerToken) + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[msg.sender] += 10^18 * msg.value / pricePerToken
    emit Transfer((10^18 * msg.value / pricePerToken), owner, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return (10^18 * msg.value / pricePerToken)
}



}
