contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
address stor1;
address stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    stor1 = 0x774d91ac35f4e2f94f0e821a03c6eaff8ad4c138
    stor6 = 0xa8f93faee440644f89059a2c88bdc9bf3be5e2ea
    stor7 = 417714 * 3600
    stor8 = 418026 * 3600
    stor9 = 17 * 10^13
    address(stor0.field_0) = msg.sender
    return code.data[308 len 3866]
}



// =====================  Runtime code  =====================


const tokensLimit = 8000000 * 10^18

const minInvest = 10^16


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address tokenWalletAddress;
uint256 tokensSold;
uint256 weiRaised;
mapping of uint256 purchasedTokens;
uint256 investorCount;
address tokenAddress;
uint256 startTime;
uint256 endTime;
uint256 price;

function endTime() {
    return endTime
}

function weiRaised() {
    return weiRaised
}

function purchasedTokens(address arg1) {
    return purchasedTokens[arg1]
}

function tokensSold() {
    return tokensSold
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function price() {
    return price
}

function tokenWallet() {
    return tokenWalletAddress
}

function investorCount() {
    return investorCount
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function withdrawal(address arg1) {
    require msg.sender == owner
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    require msg.sender == owner
    require tokensSold <= 8000000 * 10^18
    require ext_code.size(tokenAddress)
    if arg2 <= -tokensSold + 8000000 * 10^18:
        call tokenAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args tokenWalletAddress, address(arg1), arg2
        require ext_call.success
        require ext_call.return_data[0]
        require tokensSold + arg2 >= tokensSold
        tokensSold += arg2
    else:
        call tokenAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args tokenWalletAddress, address(arg1), -tokensSold + 8000000 * 10^18
        require ext_call.success
        require ext_call.return_data[0]
        require 8000000 * 10^18 >= tokensSold
        tokensSold = 8000000 * 10^18
}

function buyTokens(address arg1) payable {
    require not uint8(stor0.field_160)
    require startTime <= block.timestamp
    require block.timestamp <= endTime
    require msg.value >= 10^16
    require tokensSold <= 8000000 * 10^18
    require -tokensSold + 8000000 * 10^18 > 0
    require price
    if 10^18 * msg.value / price <= -tokensSold + 8000000 * 10^18:
        if not purchasedTokens[address(arg1)]:
            investorCount++
        require purchasedTokens[address(arg1)] + (10^18 * msg.value / price) >= purchasedTokens[address(arg1)]
        purchasedTokens[address(arg1)] += 10^18 * msg.value / price
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args tokenWalletAddress, address(arg1), 10^18 * msg.value / price
        require ext_call.success
        require ext_call.return_data[0]
        require tokensSold + (10^18 * msg.value / price) >= tokensSold
        tokensSold += 10^18 * msg.value / price
        emit TokenPurchase(msg.value, 10^18 * msg.value / price, msg.sender, arg1);
    else:
        call msg.sender with:
           value msg.value - ((8000000 * 10^18 * price) - (tokensSold * price) / 10^18) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if not purchasedTokens[address(arg1)]:
            investorCount++
        require purchasedTokens[address(arg1)] + -tokensSold + 8000000 * 10^18 >= purchasedTokens[address(arg1)]
        purchasedTokens[address(arg1)] = purchasedTokens[address(arg1)] + -tokensSold + 8000000 * 10^18
        require weiRaised + ((8000000 * 10^18 * price) - (tokensSold * price) / 10^18) >= weiRaised
        weiRaised += (8000000 * 10^18 * price) - (tokensSold * price) / 10^18
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args tokenWalletAddress, address(arg1), -tokensSold + 8000000 * 10^18
        require ext_call.success
        require ext_call.return_data[0]
        require 8000000 * 10^18 >= tokensSold
        tokensSold = 8000000 * 10^18
        emit TokenPurchase((8000000 * 10^18 * price) - (tokensSold * price) / 10^18, -tokensSold + 8000000 * 10^18, msg.sender, arg1);
}

function _fallback() payable {
    require not uint8(stor0.field_160)
    require startTime <= block.timestamp
    require block.timestamp <= endTime
    require msg.value >= 10^16
    require tokensSold <= 8000000 * 10^18
    require -tokensSold + 8000000 * 10^18 > 0
    require price
    if 10^18 * msg.value / price <= -tokensSold + 8000000 * 10^18:
        if not purchasedTokens[address(msg.sender)]:
            investorCount++
        require purchasedTokens[address(msg.sender)] + (10^18 * msg.value / price) >= purchasedTokens[address(msg.sender)]
        purchasedTokens[address(msg.sender)] += 10^18 * msg.value / price
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args tokenWalletAddress, msg.sender, 10^18 * msg.value / price
        require ext_call.success
        require ext_call.return_data[0]
        require tokensSold + (10^18 * msg.value / price) >= tokensSold
        tokensSold += 10^18 * msg.value / price
        emit TokenPurchase(msg.value, 10^18 * msg.value / price, msg.sender, msg.sender);
    else:
        call msg.sender with:
           value msg.value - ((8000000 * 10^18 * price) - (tokensSold * price) / 10^18) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if not purchasedTokens[address(msg.sender)]:
            investorCount++
        require purchasedTokens[address(msg.sender)] + -tokensSold + 8000000 * 10^18 >= purchasedTokens[address(msg.sender)]
        purchasedTokens[address(msg.sender)] = purchasedTokens[address(msg.sender)] + -tokensSold + 8000000 * 10^18
        require weiRaised + ((8000000 * 10^18 * price) - (tokensSold * price) / 10^18) >= weiRaised
        weiRaised += (8000000 * 10^18 * price) - (tokensSold * price) / 10^18
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args tokenWalletAddress, msg.sender, -tokensSold + 8000000 * 10^18
        require ext_call.success
        require ext_call.return_data[0]
        require 8000000 * 10^18 >= tokensSold
        tokensSold = 8000000 * 10^18
        emit TokenPurchase((8000000 * 10^18 * price) - (tokensSold * price) / 10^18, -tokensSold + 8000000 * 10^18, msg.sender, msg.sender);
}



}
