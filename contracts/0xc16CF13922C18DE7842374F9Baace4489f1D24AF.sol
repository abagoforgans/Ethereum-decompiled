contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor6;
uint256 stor7;
uint8 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
address stor12;
uint256 stor14;
uint256 stor15;
uint8 stor17;
uint256 stor19;
uint256 stor20;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 4
    stor0.length.field_8 = 'deex' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 4
    stor1.length.field_8 = 'deex' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 0
    stor6 = 0
    stor9 = 0
    stor10 = 0
    stor11 = 0
    stor14 = 0
    stor15 = 0
    stor17 = 0
    stor19 = 0
    stor20 = 0
    require not msg.value
    stor12 = msg.sender
    stor7 = 2
    stor8 = 1
    return code.data[466 len 7347]
}



// =====================  Runtime code  =====================


#
#  - transferAllAndCall(address arg1, bytes arg2)
#
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 salesCounter;
uint256 maxSalesAllowed;
uint8 stor8;
uint256 tokenPriceInWei;
uint256 saleStartUnixTime;
uint256 saleEndUnixTime;
address owner;
address priceSetterAddress;
uint256 stor14;
uint256 stor15;
mapping of uint8 stor16;
uint8 contractInitialized;
mapping of uint8 stor18;
uint256 stor19;
uint256 stor20;
mapping of uint256 referrerBalanceOf;
mapping of uint256 referrerLinkedSales;

function contractInitialized() {
    return bool(contractInitialized)
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function saleStartUnixTime() {
    return saleStartUnixTime
}

function maxSalesAllowed() {
    return maxSalesAllowed
}

function priceSetter() {
    return priceSetterAddress
}

function isPreferredTokensAccount(address arg1) {
    return bool(stor16[arg1])
}

function tokenPriceInWei() {
    return tokenPriceInWei
}

function decimals() {
    return decimals
}

function referrerLinkedSales(bytes32 arg1) {
    return referrerLinkedSales[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function saleEndUnixTime() {
    return saleEndUnixTime
}

function salesCounter() {
    return salesCounter
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function referrerBalanceOf(bytes32 arg1) {
    return referrerBalanceOf[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function addReferrer(bytes32 arg1) {
    require owner == msg.sender
    stor18[arg1] = 1
    return 1
}

function removeReferrer(bytes32 arg1) {
    require owner == msg.sender
    stor18[arg1] = 0
    return 1
}

function changePriceSetter(address arg1) {
    require owner == msg.sender
    priceSetterAddress = arg1
    return 1
}

function changeOwner(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
    emit OwnerChanged(owner, arg1);
    return 1
}

function setReferralBonuses(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    require arg1 > 0
    require arg2 > 0
    stor19 = arg1
    stor20 = arg2
    return 1
}

function approve(address arg1, uint256 arg2) {
    require arg2 >= 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setMinMaxPriceInWei(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    require arg1 >= 0
    require arg2 >= 0
    stor15 = arg1
    stor14 = arg2
    return 1
}

function saleIsFinished() {
    if balanceOf[address(this.address)]:
        if saleStartUnixTime <= 0:
            return 0
        if saleEndUnixTime <= 0:
            return 0
        if block.timestamp <= saleEndUnixTime:
            return 0
    return 1
}

function saleIsRunning() {
    if not balanceOf[address(this.address)]:
        return 0
    if not saleStartUnixTime:
        if not saleEndUnixTime:
            return 0
    if block.timestamp <= saleStartUnixTime:
        return 0
    if block.timestamp >= saleEndUnixTime:
        return 0
    return 1
}

function getReferrerBonusTokens() {
    if balanceOf[address(this.address)]:
        require saleStartUnixTime > 0
        require saleEndUnixTime > 0
        require block.timestamp > saleEndUnixTime
    balanceOf[address(msg.sender)] += referrerBalanceOf[msg.sender]
    emit ReferrerBonusTokensTaken(msg.sender, referrerBalanceOf[msg.sender]);
    return 1
}

function withdrawAllToOwner() {
    require owner == msg.sender
    if balanceOf[address(this.address)]:
        require saleStartUnixTime > 0
        require saleEndUnixTime > 0
        require block.timestamp > saleEndUnixTime
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        return 0
    emit Withdrawal(eth.balance(this.address), msg.sender);
    return 1
}

function initContract(address arg1, address arg2, address arg3) {
    require owner == msg.sender
    require not contractInitialized
    contractInitialized = 1
    priceSetterAddress = msg.sender
    totalSupply = 100 * 10^6
    balanceOf[address(this.address)] = 75 * 10^6
    balanceOf[arg1] += 15 * 10^6
    stor16[address(arg1)] = 1
    balanceOf[address(arg2)] += 7 * 10^6
    stor16[address(arg2)] = 1
    balanceOf[address(arg3)] += 3 * 10^6
    stor16[address(arg3)] = 1
    return 0
}

function _fallback() payable {
    require balanceOf[address(this.address)]
    if not saleStartUnixTime:
        require saleEndUnixTime
    require block.timestamp > saleStartUnixTime
    require block.timestamp < saleEndUnixTime
    require tokenPriceInWei > 0
    require tokenPriceInWei
    require msg.value / tokenPriceInWei <= balanceOf[address(this.address)]
    balanceOf[address(msg.sender)] += msg.value / tokenPriceInWei
    balanceOf[this.address] -= msg.value / tokenPriceInWei
    emit NewTokensSold((msg.value / tokenPriceInWei), msg.sender, tokenPriceInWei);
}

function buyTokens() payable {
    require balanceOf[address(this.address)]
    if not saleStartUnixTime:
        require saleEndUnixTime
    require block.timestamp > saleStartUnixTime
    require block.timestamp < saleEndUnixTime
    require tokenPriceInWei > 0
    require tokenPriceInWei
    require msg.value / tokenPriceInWei <= balanceOf[address(this.address)]
    balanceOf[address(msg.sender)] += msg.value / tokenPriceInWei
    balanceOf[this.address] -= msg.value / tokenPriceInWei
    emit NewTokensSold((msg.value / tokenPriceInWei), msg.sender, tokenPriceInWei);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require arg2 >= 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit DataSentToAnotherContract(Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    return 1
}

function setTokenPriceInWei(uint256 arg1) {
    require priceSetterAddress == msg.sender
    require arg1 >= 0
    if not stor15:
        if not stor14:
            tokenPriceInWei = arg1
        else:
            if arg1 <= stor14:
                tokenPriceInWei = arg1
            else:
                tokenPriceInWei = stor14
    else:
        if arg1 < stor15:
            tokenPriceInWei = stor15
        else:
            if not stor14:
                tokenPriceInWei = arg1
            else:
                if arg1 <= stor14:
                    tokenPriceInWei = arg1
                else:
                    tokenPriceInWei = stor14
    emit PriceChanged(tokenPriceInWei);
    return 1
}

function approveAllAndCall(address arg1, bytes arg2) {
    require balanceOf[address(msg.sender)] >= 0
    allowance[address(msg.sender)][address(arg1)] = balanceOf[address(msg.sender)]
    emit Approval(balanceOf[address(msg.sender)], msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, balanceOf[address(msg.sender)], address(this.address), Array(len=arg2.length, data=arg2[all])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit DataSentToAnotherContract(Array(len=arg2.length, data=arg2[all]), msg.sender, arg1);
    return 1
}

function startSale(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    require balanceOf[address(this.address)] > 0
    require salesCounter < maxSalesAllowed
    if saleStartUnixTime:
        if balanceOf[address(this.address)]:
            require saleStartUnixTime > 0
            require saleEndUnixTime > 0
            require block.timestamp > saleEndUnixTime
    else:
        if saleEndUnixTime:
            if balanceOf[address(this.address)]:
                require saleStartUnixTime > 0
                require saleEndUnixTime > 0
                require block.timestamp > saleEndUnixTime
    require arg1 > block.timestamp
    require arg2 > block.timestamp
    require arg2 - arg1 > 0
    saleStartUnixTime = arg1
    saleEndUnixTime = arg2
    salesCounter++
    emit SaleStarted(arg1, arg2, salesCounter + 1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(this.address)]:
        if saleStartUnixTime <= 0:
            if owner != msg.sender:
                require stor16[address(msg.sender)]
        else:
            if saleEndUnixTime <= 0:
                if owner != msg.sender:
                    require stor16[address(msg.sender)]
            else:
                if block.timestamp <= saleEndUnixTime:
                    if owner != msg.sender:
                        require stor16[address(msg.sender)]
    if not stor8:
        if salesCounter != maxSalesAllowed:
            if owner != msg.sender:
                require stor16[address(msg.sender)]
    require arg3 >= 0
    if arg1 != msg.sender:
        require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    if arg1 != msg.sender:
        allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(this.address)]:
        if saleStartUnixTime <= 0:
            if owner != msg.sender:
                require stor16[address(msg.sender)]
        else:
            if saleEndUnixTime <= 0:
                if owner != msg.sender:
                    require stor16[address(msg.sender)]
            else:
                if block.timestamp <= saleEndUnixTime:
                    if owner != msg.sender:
                        require stor16[address(msg.sender)]
    if not stor8:
        if salesCounter != maxSalesAllowed:
            if owner != msg.sender:
                require stor16[address(msg.sender)]
    require arg2 >= 0
    if msg.sender != msg.sender:
        require arg2 <= allowance[address(msg.sender)][address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    if msg.sender != msg.sender:
        allowance[address(msg.sender)][address(msg.sender)] -= arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferAndCall(address arg1, uint256 arg2, bytes arg3) {
    if balanceOf[address(this.address)]:
        if saleStartUnixTime <= 0:
            if owner != msg.sender:
                require stor16[address(msg.sender)]
        else:
            if saleEndUnixTime <= 0:
                if owner != msg.sender:
                    require stor16[address(msg.sender)]
            else:
                if block.timestamp <= saleEndUnixTime:
                    if owner != msg.sender:
                        require stor16[address(msg.sender)]
    if not stor8:
        if salesCounter != maxSalesAllowed:
            if owner != msg.sender:
                require stor16[address(msg.sender)]
    require arg2 >= 0
    if msg.sender != msg.sender:
        require arg2 <= allowance[address(msg.sender)][address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    if msg.sender != msg.sender:
        allowance[address(msg.sender)][address(msg.sender)] -= arg2
    emit Transfer(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.0xc0ee0b8a with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit DataSentToAnotherContract(Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    return 1
}

function buyTokensWithReferrerAddress(address arg1) payable {
    require balanceOf[address(this.address)]
    if not saleStartUnixTime:
        require saleEndUnixTime
    require block.timestamp > saleStartUnixTime
    require block.timestamp < saleEndUnixTime
    require tokenPriceInWei > 0
    if stor18[arg1]:
        require tokenPriceInWei
        require msg.value / tokenPriceInWei <= balanceOf[address(this.address)]
        referrerLinkedSales[arg1] += msg.value / tokenPriceInWei
        balanceOf[address(this.address)] = balanceOf[address(this.address)] - ((100 * msg.value / tokenPriceInWei) + (stor19 * msg.value / tokenPriceInWei) / 100) - ((100 * msg.value / tokenPriceInWei) + (stor20 * msg.value / tokenPriceInWei) / 100) + (msg.value / tokenPriceInWei)
        balanceOf[msg.sender] += (100 * msg.value / tokenPriceInWei) + (stor19 * msg.value / tokenPriceInWei) / 100
        referrerBalanceOf[arg1] = ((100 * msg.value / tokenPriceInWei) + (stor20 * msg.value / tokenPriceInWei) / 100) - (msg.value / tokenPriceInWei) + referrerBalanceOf[arg1]
        emit NewTokensSold(((100 * msg.value / tokenPriceInWei) + (stor19 * msg.value / tokenPriceInWei) / 100), msg.sender, tokenPriceInWei);
        return 1
    require balanceOf[address(this.address)]
    if not saleStartUnixTime:
        require saleEndUnixTime
    require block.timestamp > saleStartUnixTime
    require block.timestamp < saleEndUnixTime
    require tokenPriceInWei > 0
    require tokenPriceInWei
    require msg.value / tokenPriceInWei <= balanceOf[address(this.address)]
    balanceOf[address(msg.sender)] += msg.value / tokenPriceInWei
    balanceOf[this.address] -= msg.value / tokenPriceInWei
    emit NewTokensSold((msg.value / tokenPriceInWei), msg.sender, tokenPriceInWei);
    return 0
}



}
