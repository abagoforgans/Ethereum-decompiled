contract main {




// =====================  Runtime code  =====================


const name = 'Oratium'

const decimals = 18

const symbol = 'ORT'

const INITIAL_SUPPLY = 950000000 * 10^18


uint256 totalSupply;
uint8 stor3;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
mapping of uint8 stor7;
uint8 stor8;
uint256 tokenAllocated;
mapping of uint256 countClaimsToken;
uint256 priceToken;
uint256 priceClaim;
uint256 numberClaimToken;
uint256 startTimeDay;
uint256 endTimeDay;

function mintingFinished() {
    return bool(stor8)
}

function totalSupply() {
    return totalSupply
}

function priceToken() {
    return priceToken
}

function countClaimsToken(address arg1) {
    return countClaimsToken[arg1]
}

function endTimeDay() {
    return endTimeDay
}

function priceClaim() {
    return priceClaim
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function tokenAllocated() {
    return tokenAllocated
}

function owner() {
    return owner
}

function contractUsers(address arg1) {
    return bool(stor7[arg1])
}

function transfersEnabled() {
    return bool(stor3)
}

function numberClaimToken() {
    return numberClaimToken
}

function allowance(address arg1, address arg2) {
    require calldata.size == 68
    return allowance[address(arg1)][address(arg2)]
}

function startTimeDay() {
    return startTimeDay
}

function enableTransfers(bool arg1) {
    require msg.sender == owner
    stor3 = uint8(arg1)
}

function setPriceClaim(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    priceClaim = arg1
}

function setNumberClaimToken(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    numberClaimToken = arg1
}

function finishMinting() {
    require msg.sender == owner
    require not stor8
    stor8 = 1
    emit MintFinished()
    return 1
}

function changeTime(uint256 arg1, uint256 arg2) {
    require 0 < arg1
    require 0 < arg2
    startTimeDay = arg1
    endTimeDay = arg2
}

function changeOwner(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnerChanged(owner, arg1);
    owner = arg1
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function validPurchaseTime(uint256 arg1) {
    require not stor8
    if startTimeDay > arg1 % 24 * 3600:
        return 0
    if arg1 % 24 * 3600 > endTimeDay:
        return 0
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function validPurchaseTokens(uint256 arg1) {
    if arg1:
        require arg1
        require arg1 * priceToken / arg1 == priceToken
    if arg1 < 5 * 10^16:
        emit MinWeiLimitReached(arg1, msg.sender);
    else:
        require tokenAllocated + (arg1 * priceToken) >= tokenAllocated
        if tokenAllocated + (arg1 * priceToken) <= balanceOf[stor6]:
            return (arg1 * priceToken)
        emit TokenLimitReached(tokenAllocated, arg1 * priceToken);
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size == 100
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require stor3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size == 100
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require stor3
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
}

function claimTokensToOwner(address arg1) {
    require msg.sender == owner
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Transfer(ext_call.return_data[0], arg1, owner);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size == 68
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require stor3
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) > 0:
        mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
        require ext_code.size(arg1)
        call arg1.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function buyTokens(address arg1) payable {
    require arg1
    if msg.value:
        require msg.value
        require msg.value * priceToken / msg.value == priceToken
    if msg.value < 5 * 10^16:
        emit MinWeiLimitReached(msg.value, msg.sender);
        revert
    require tokenAllocated + (msg.value * priceToken) >= tokenAllocated
    if tokenAllocated + (msg.value * priceToken) > balanceOf[stor6]:
        emit TokenLimitReached(tokenAllocated, msg.value * priceToken);
        revert
    require msg.value * priceToken
    require tokenAllocated + (msg.value * priceToken) >= tokenAllocated
    tokenAllocated += msg.value * priceToken
    require not stor8
    require arg1
    require msg.value * priceToken <= balanceOf[stor6]
    require not stor8
    require balanceOf[address(arg1)] + (msg.value * priceToken) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += msg.value * priceToken
    require msg.value * priceToken <= balanceOf[stor6]
    balanceOf[stor6] += -1 * msg.value * priceToken
    emit Mint((msg.value * priceToken), arg1);
    emit Transfer((msg.value * priceToken), owner, arg1);
    emit TokenPurchase(msg.value, msg.value * priceToken, arg1);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return (msg.value * priceToken)
}

function _fallback() payable {
    require msg.sender
    if msg.value:
        require msg.value
        require msg.value * priceToken / msg.value == priceToken
    if msg.value < 5 * 10^16:
        emit MinWeiLimitReached(msg.value, msg.sender);
        revert
    require tokenAllocated + (msg.value * priceToken) >= tokenAllocated
    if tokenAllocated + (msg.value * priceToken) > balanceOf[stor6]:
        emit TokenLimitReached(tokenAllocated, msg.value * priceToken);
        revert
    require msg.value * priceToken
    require tokenAllocated + (msg.value * priceToken) >= tokenAllocated
    tokenAllocated += msg.value * priceToken
    require not stor8
    require msg.sender
    require msg.value * priceToken <= balanceOf[stor6]
    require not stor8
    require balanceOf[address(msg.sender)] + (msg.value * priceToken) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value * priceToken
    require msg.value * priceToken <= balanceOf[stor6]
    balanceOf[stor6] += -1 * msg.value * priceToken
    emit Mint((msg.value * priceToken), msg.sender);
    emit Transfer((msg.value * priceToken), owner, msg.sender);
    emit TokenPurchase(msg.value, msg.value * priceToken, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claim() payable {
    require not stor8
    require startTimeDay <= block.timestamp % 24 * 3600
    require block.timestamp % 24 * 3600 <= endTimeDay
    require msg.value >= priceClaim
    require msg.sender
    require not stor8
    if not countClaimsToken[address(msg.sender)]:
        countClaimsToken[address(msg.sender)] = 1
    if countClaimsToken[address(msg.sender)] >= 1000:
        require 0 <= balanceOf[stor6]
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require 0 <= balanceOf[stor6]
        require tokenAllocated >= tokenAllocated
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Mint(0, msg.sender);
        emit Transfer(0, owner, msg.sender);
    else:
        if numberClaimToken:
            require numberClaimToken
            require (105 * numberClaimToken) - (5 * countClaimsToken[address(msg.sender)] * numberClaimToken) / numberClaimToken == (-5 * countClaimsToken[address(msg.sender)]) + 105
        require countClaimsToken[address(msg.sender)] + 1 >= countClaimsToken[address(msg.sender)]
        countClaimsToken[address(msg.sender)]++
        require (105 * numberClaimToken) - (5 * countClaimsToken[address(msg.sender)] * numberClaimToken) / 100 <= balanceOf[stor6]
        require balanceOf[address(msg.sender)] + ((105 * numberClaimToken) - (5 * countClaimsToken[address(msg.sender)] * numberClaimToken) / 100) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += (105 * numberClaimToken) - (5 * countClaimsToken[address(msg.sender)] * numberClaimToken) / 100
        require (105 * numberClaimToken) - (5 * countClaimsToken[address(msg.sender)] * numberClaimToken) / 100 <= balanceOf[stor6]
        balanceOf[stor6] -= (105 * numberClaimToken) - (5 * countClaimsToken[address(msg.sender)] * numberClaimToken) / 100
        require tokenAllocated + ((105 * numberClaimToken) - (5 * countClaimsToken[address(msg.sender)] * numberClaimToken) / 100) >= tokenAllocated
        tokenAllocated += (105 * numberClaimToken) - (5 * countClaimsToken[address(msg.sender)] * numberClaimToken) / 100
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Mint(((105 * numberClaimToken) - (5 * countClaimsToken[address(msg.sender)] * numberClaimToken) / 100), msg.sender);
        emit Transfer(((105 * numberClaimToken) - (5 * countClaimsToken[address(msg.sender)] * numberClaimToken) / 100), owner, msg.sender);
    return 1
}



}
