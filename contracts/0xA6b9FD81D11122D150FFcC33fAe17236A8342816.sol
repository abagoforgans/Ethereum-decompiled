contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor4;
address stor5;
address stor6;
array of uint256 stor7;
uint256 stor8;

function _fallback() payable {
    stor1 = block.timestamp
    stor2 = 0
    stor3 = 0
    stor8 = 10 * 10^6
    require not msg.value
    mem[96 len -4042] = code.data[4736 len -4042]
    mem[64] = -3946
    stor0 = msg.sender
    emit Admined(stor0);
    stor4 = 0x3a26746ddb79b1b8e4450e3f4ffe3285a307387e
    stor5 = msg.sender
    stor6 = mem[108 len 20]
    stor7[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    return code.data[694 len 4042]
}



// =====================  Runtime code  =====================


const version = 1


address adminAddress;
uint256 startTime;
uint256 totalDistributed;
uint256 currentBalance;
address tokenRewardAddress;
address creatorAddress;
address ethWalletAddress;
array of uint256 campaignUrl;
uint256 exchangeRate;

function creator() {
    return creatorAddress
}

function ethWallet() {
    return ethWalletAddress
}

function exchangeRate() {
    return exchangeRate
}

function tokenReward() {
    return tokenRewardAddress
}

function startTime() {
    return startTime
}

function currentBalance() {
    return currentBalance
}

function totalDistributed() {
    return totalDistributed
}

function admin() {
    return adminAddress
}

function campaignUrl() {
    return campaignUrl[0 len campaignUrl.length]
}

function transferAdminship(address arg1) {
    require msg.sender == adminAddress
    require arg1
    adminAddress = arg1
    emit TransferAdminship(adminAddress);
}

function ethWithdraw() {
    require msg.sender == adminAddress
    require eth.balance(this.address) > 0
    currentBalance = 0
    call ethWalletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit PayOut(ethWalletAddress, eth.balance(this.address));
}

function tokenWithdraw(address arg1) {
    require msg.sender == adminAddress
    require arg1
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), ext_call.return_data[0]
    require ext_call.success
    emit TokenWithdrawal(address(arg1), ext_call.return_data[0]);
}

function exchange() payable {
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require msg.value > 10^15
    require exchangeRate
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] >= msg.value / exchangeRate
    require currentBalance + msg.value >= currentBalance
    currentBalance += msg.value
    require totalDistributed + (msg.value / exchangeRate) >= totalDistributed
    totalDistributed += msg.value / exchangeRate
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / exchangeRate
    require ext_call.success
    emit TokenBought(msg.sender, msg.value / exchangeRate);
}

function _fallback() payable {
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require msg.value > 10^15
    require exchangeRate
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] >= msg.value / exchangeRate
    require currentBalance + msg.value >= currentBalance
    currentBalance += msg.value
    require totalDistributed + (msg.value / exchangeRate) >= totalDistributed
    totalDistributed += msg.value / exchangeRate
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / exchangeRate
    require ext_call.success
    emit TokenBought(msg.sender, msg.value / exchangeRate);
}



}
