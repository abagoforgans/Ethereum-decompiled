contract main {




// =====================  Runtime code  =====================


const name = 'TaurusPay Token'

const decimals = 18

const symbol = 'TAPT'

const INITIAL_SUPPLY = 735091890625000000 * 10^18


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
    require 68 == calldata.size
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

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function changeOwner(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnerChanged(owner, arg1);
    owner = arg1
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
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function validPurchaseTokens(uint256 arg1) {
    if arg1:
        require arg1
        require priceToken * arg1 / arg1 == priceToken
    if arg1 < 10^16:
        emit MinWeiLimitReached(arg1, msg.sender);
    else:
        require (priceToken * arg1) + tokenAllocated >= tokenAllocated
        if (priceToken * arg1) + tokenAllocated <= balanceOf[stor6]:
            return (priceToken * arg1)
        emit TokenLimitReached(tokenAllocated, priceToken * arg1);
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require 100 == calldata.size
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require stor3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    require 100 == calldata.size
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require stor3
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
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
    require 68 == calldata.size
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require stor3
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    if ext_code.size(arg1) > 0:
        mem[164] = 96
        mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
        require ext_code.size(arg1)
        call arg1.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[128] = 64
    mem[160] = arg2
    mem[192 len ceil32(arg2)] = mem[128 len ceil32(arg2)]
    emit Transfer(arg2, Array(len=arg2, data=mem[192 len arg2]), msg.sender, arg1);
    return 1
}

function buyTokens(address arg1) payable {
    require arg1
    if msg.value:
        require msg.value
        require priceToken * msg.value / msg.value == priceToken
    if msg.value < 10^16:
        emit MinWeiLimitReached(msg.value, msg.sender);
        revert
    require (priceToken * msg.value) + tokenAllocated >= tokenAllocated
    if (priceToken * msg.value) + tokenAllocated > balanceOf[stor6]:
        emit TokenLimitReached(tokenAllocated, priceToken * msg.value);
        revert
    require priceToken * msg.value
    require (priceToken * msg.value) + tokenAllocated >= tokenAllocated
    tokenAllocated += priceToken * msg.value
    require not stor8
    require arg1
    require priceToken * msg.value <= balanceOf[stor6]
    require not stor8
    require (priceToken * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += priceToken * msg.value
    require priceToken * msg.value <= balanceOf[stor6]
    balanceOf[stor6] += -1 * priceToken * msg.value
    emit Mint((priceToken * msg.value), arg1);
    emit Transfer((priceToken * msg.value), owner, arg1);
    emit TokenPurchase(msg.value, priceToken * msg.value, arg1);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return (priceToken * msg.value)
}

function _fallback() payable {
    require msg.sender
    if msg.value:
        require msg.value
        require priceToken * msg.value / msg.value == priceToken
    if msg.value < 10^16:
        emit MinWeiLimitReached(msg.value, msg.sender);
        revert
    require (priceToken * msg.value) + tokenAllocated >= tokenAllocated
    if (priceToken * msg.value) + tokenAllocated > balanceOf[stor6]:
        emit TokenLimitReached(tokenAllocated, priceToken * msg.value);
        revert
    require priceToken * msg.value
    require (priceToken * msg.value) + tokenAllocated >= tokenAllocated
    tokenAllocated += priceToken * msg.value
    require not stor8
    require msg.sender
    require priceToken * msg.value <= balanceOf[stor6]
    require not stor8
    require (priceToken * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += priceToken * msg.value
    require priceToken * msg.value <= balanceOf[stor6]
    balanceOf[stor6] += -1 * priceToken * msg.value
    emit Mint((priceToken * msg.value), msg.sender);
    emit Transfer((priceToken * msg.value), owner, msg.sender);
    emit TokenPurchase(msg.value, priceToken * msg.value, msg.sender);
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
    if 22 <= countClaimsToken[address(msg.sender)]:
        require 0 <= balanceOf[stor6]
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require 0 <= balanceOf[stor6]
        balanceOf[stor6] = balanceOf[stor6]
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
        require ((105 * numberClaimToken) - (5 * countClaimsToken[address(msg.sender)] * numberClaimToken) / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += (105 * numberClaimToken) - (5 * countClaimsToken[address(msg.sender)] * numberClaimToken) / 100
        require (105 * numberClaimToken) - (5 * countClaimsToken[address(msg.sender)] * numberClaimToken) / 100 <= balanceOf[stor6]
        balanceOf[stor6] -= (105 * numberClaimToken) - (5 * countClaimsToken[address(msg.sender)] * numberClaimToken) / 100
        require ((105 * numberClaimToken) - (5 * countClaimsToken[address(msg.sender)] * numberClaimToken) / 100) + tokenAllocated >= tokenAllocated
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
