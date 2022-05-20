contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[2892 len 20]
    stor5 = block.timestamp + (24 * 3600 * code.data[2912 len 32])
    stor6 = block.timestamp + (24 * 3600 * code.data[2944 len 32])
    stor7 = code.data[2976 len 32]
    stor8 = code.data[3020 len 20]
    return code.data[168 len 2712]
}



// =====================  Runtime code  =====================


address owner;
address fundRaiserAddress;
uint256 amountRaisedInWei;
uint256 tokensSold;
uint256 tokensClaimed;
uint256 icoDeadline;
uint256 tokensClaimableAfter;
uint256 tokensPerWei;
address tokenRewardAddress;
mapping of struct participants;

function participants(address arg1) {
    return bool(participants[arg1].field_0), participants[arg1].field_256, bool(participants[arg1].field_512)
}

function tokensPerWei() {
    return tokensPerWei
}

function icoDeadline() {
    return icoDeadline
}

function tokensSold() {
    return tokensSold
}

function tokenReward() {
    return tokenRewardAddress
}

function amountRaisedInWei() {
    return amountRaisedInWei
}

function owner() {
    return owner
}

function tokensClaimed() {
    return tokensClaimed
}

function tokensClaimableAfter() {
    return tokensClaimableAfter
}

function fundRaiser() {
    return fundRaiserAddress
}

function addToWhitelist(address arg1) {
    require owner == msg.sender
    participants[address(arg1)].field_0 = 1
}

function removeFromWhitelist(address arg1) {
    require owner == msg.sender
    participants[address(arg1)].field_0 = 0
}

function withdrawFunds() {
    if block.timestamp >= icoDeadline:
        require fundRaiserAddress == msg.sender
        call fundRaiserAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit FundTransfer(fundRaiserAddress, eth.balance(this.address));
}

function addAddressesToWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 9
        participants[mem[(32 * idx) + 140 len 20]].field_0 = 1
        idx = idx + 1
        continue 
}

function removeAddressesFromWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 9
        participants[mem[(32 * idx) + 140 len 20]].field_0 = 0
        idx = idx + 1
        continue 
}

function burnUnsoldTokens() {
    require owner == msg.sender
    if block.timestamp >= icoDeadline:
        require tokensClaimed <= tokensSold
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        require ext_call.success
        require tokensSold - tokensClaimed <= ext_call.return_data[0]
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x42966c68 with:
             gas gas_remaining wei
            args (ext_call.return_data[0] - tokensSold + tokensClaimed)
        require ext_call.success
}

function withdrawTokens() {
    if block.timestamp >= tokensClaimableAfter:
        require participants[address(msg.sender)].field_0
        require not participants[address(msg.sender)].field_512
        participants[address(msg.sender)].field_512 = 1
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, participants[address(msg.sender)].field_256
        require ext_call.success
        require participants[address(msg.sender)].field_256 + tokensClaimed >= tokensClaimed
        tokensClaimed += participants[address(msg.sender)].field_256
}

function transferUnsoldTokens(address arg1) {
    require owner == msg.sender
    if block.timestamp >= icoDeadline:
        require tokensClaimed <= tokensSold
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        require ext_call.success
        require tokensSold - tokensClaimed <= ext_call.return_data[0]
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0] - tokensSold + tokensClaimed
        require ext_call.success
}

function _fallback() payable {
    require block.timestamp < icoDeadline
    require participants[address(msg.sender)].field_0
    require msg.value >= 10^16
    if not msg.value:
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        require ext_call.success
        require tokensSold <= ext_call.return_data[0]
        require 0 <= ext_call.return_data[0] - tokensSold
        require participants[address(msg.sender)].field_256 >= participants[address(msg.sender)].field_256
        require msg.value + amountRaisedInWei >= amountRaisedInWei
        amountRaisedInWei += msg.value
        require tokensSold >= tokensSold
    require tokensPerWei * msg.value / msg.value == tokensPerWei
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    require tokensSold <= ext_call.return_data[0]
    require tokensPerWei * msg.value <= ext_call.return_data[0] - tokensSold
    require (tokensPerWei * msg.value) + participants[address(msg.sender)].field_256 >= participants[address(msg.sender)].field_256
    participants[address(msg.sender)].field_256 += tokensPerWei * msg.value
    require msg.value + amountRaisedInWei >= amountRaisedInWei
    amountRaisedInWei += msg.value
    require (tokensPerWei * msg.value) + tokensSold >= tokensSold
    tokensSold += tokensPerWei * msg.value
}



}
