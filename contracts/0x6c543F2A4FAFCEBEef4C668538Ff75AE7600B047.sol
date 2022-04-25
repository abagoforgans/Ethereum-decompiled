contract main {


// =======================  Init code  ======================


address stor1;
address stor2;
uint256 stor3;
address stor6;

function _fallback() {
    stor1 = msg.sender
    emit LogSetOwner(msg.sender);
    require code.data[3343 len 32]
    require code.data[3387 len 20]
    require code.data[3419 len 20]
    stor3 = code.data[3343 len 32]
    stor2 = code.data[3387 len 20]
    stor6 = code.data[3419 len 20]
    return code.data[255 len 3088]
}



// =====================  Runtime code  =====================


const yearlyRewardPercentage = 10

const time = block.timestamp


address authorityAddress;
uint8 stor1; offset 160
address owner;
address keyAddress;
uint256 rewardStartTime;
uint256 totalRewardThisYear;
uint256 collectedTokens;
address withdrawerAddress;

function rewardStartTime() {
    return rewardStartTime
}

function key() {
    return keyAddress
}

function totalRewardThisYear() {
    return totalRewardThisYear
}

function stopped() {
    return bool(stor1)
}

function collectedTokens() {
    return collectedTokens
}

function owner() {
    return owner
}

function authority() {
    return authorityAddress
}

function withdrawer() {
    return withdrawerAddress
}

function _fallback() payable {
    revert
}

function yearFor(uint256 arg1) {
    if arg1 < rewardStartTime:
        return 0
    require arg1 - rewardStartTime <= arg1
    return (arg1 - rewardStartTime / 8760 * 24 * 3600)
}

function setOwner(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    owner = arg1
    emit LogSetOwner(arg1);
}

function setAuthority(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function setWithdrawer(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    withdrawerAddress = arg1
    emit LogSetWithdrawer(arg1);
}

function stop() {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    stor1 = 1
}

function start() {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    stor1 = 0
}

function transferTokens(address arg1, uint256 arg2, address arg3) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require keyAddress != arg3
    if arg2 > 0:
        require ext_code.size(arg3)
        call arg3.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), arg2
        require ext_call.success
}

function collectToken() {
    require not stor1
    require withdrawerAddress == msg.sender
    require block.timestamp > rewardStartTime
    require ext_code.size(keyAddress)
    call keyAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require collectedTokens + ext_call.return_data[0] >= collectedTokens
    if block.timestamp < rewardStartTime:
        if collectedTokens + ext_call.return_data[0]:
            require collectedTokens + ext_call.return_data[0]
            require (10 * collectedTokens) + (10 * ext_call.return_data[0]) / collectedTokens + ext_call.return_data[0] == 10
        totalRewardThisYear = (10 * collectedTokens) + (10 * ext_call.return_data[0]) / 100
        if (10 * collectedTokens) + (10 * ext_call.return_data[0]) / 100:
            require (10 * collectedTokens) + (10 * ext_call.return_data[0]) / 100
            require block.timestamp - rewardStartTime % 8760 * 24 * 3600 * (10 * collectedTokens) + (10 * ext_call.return_data[0]) / 100 / (10 * collectedTokens) + (10 * ext_call.return_data[0]) / 100 == block.timestamp - rewardStartTime % 8760 * 24 * 3600
        require (block.timestamp - rewardStartTime % 8760 * 24 * 3600 * (10 * collectedTokens) + (10 * ext_call.return_data[0]) / 100 / 8760 * 24 * 3600) - collectedTokens <= block.timestamp - rewardStartTime % 8760 * 24 * 3600 * (10 * collectedTokens) + (10 * ext_call.return_data[0]) / 100 / 8760 * 24 * 3600
        if (block.timestamp - rewardStartTime % 8760 * 24 * 3600 * (10 * collectedTokens) + (10 * ext_call.return_data[0]) / 100 / 8760 * 24 * 3600) - collectedTokens <= ext_call.return_data[0]:
            require block.timestamp - rewardStartTime % 8760 * 24 * 3600 * (10 * collectedTokens) + (10 * ext_call.return_data[0]) / 100 / 8760 * 24 * 3600 >= collectedTokens
            collectedTokens = block.timestamp - rewardStartTime % 8760 * 24 * 3600 * (10 * collectedTokens) + (10 * ext_call.return_data[0]) / 100 / 8760 * 24 * 3600
            require ext_code.size(keyAddress)
            call keyAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args withdrawerAddress, (block.timestamp - rewardStartTime % 8760 * 24 * 3600 * (10 * collectedTokens) + (10 * ext_call.return_data[0]) / 100 / 8760 * 24 * 3600) - collectedTokens
            require ext_call.success
            require ext_call.return_data[0]
            emit TokensWithdrawn(((block.timestamp - rewardStartTime % 8760 * 24 * 3600 * (10 * collectedTokens) + (10 * ext_call.return_data[0]) / 100 / 8760 * 24 * 3600) - collectedTokens), withdrawerAddress);
        else:
            require collectedTokens + ext_call.return_data[0] >= collectedTokens
            collectedTokens += ext_call.return_data[0]
            require ext_code.size(keyAddress)
            call keyAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args withdrawerAddress, ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            emit TokensWithdrawn(ext_call.return_data[0], withdrawerAddress);
    else:
        require block.timestamp - rewardStartTime <= block.timestamp
        idx = 0
        s = collectedTokens + ext_call.return_data[0]
        while idx < block.timestamp - rewardStartTime / 8760 * 24 * 3600:
            if not s:
                idx = idx + 1
                s = 90 * s / 100
                continue 
            require s
            require 90 * s / s == 90
            idx = idx + 1
            s = 90 * s / 100
            continue 
        if s:
            require s
            require 10 * s / s == 10
        totalRewardThisYear = 10 * s / 100
        if 10 * s / 100:
            require 10 * s / 100
            require block.timestamp - rewardStartTime % 8760 * 24 * 3600 * 10 * s / 100 / 10 * s / 100 == block.timestamp - rewardStartTime % 8760 * 24 * 3600
        require 0 <= collectedTokens
        if (block.timestamp - rewardStartTime % 8760 * 24 * 3600 * 10 * s / 100 / 8760 * 24 * 3600) + ext_call.return_data[0] - s <= ext_call.return_data[0]:
            require collectedTokens + (block.timestamp - rewardStartTime % 8760 * 24 * 3600 * 10 * s / 100 / 8760 * 24 * 3600) + ext_call.return_data[0] - s >= collectedTokens
            collectedTokens = collectedTokens + (block.timestamp - rewardStartTime % 8760 * 24 * 3600 * 10 * s / 100 / 8760 * 24 * 3600) + ext_call.return_data[0] - s
            require ext_code.size(keyAddress)
            call keyAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args withdrawerAddress, (block.timestamp - rewardStartTime % 8760 * 24 * 3600 * 10 * s / 100 / 8760 * 24 * 3600) + ext_call.return_data[0] - s
            require ext_call.success
            require ext_call.return_data[0]
            emit TokensWithdrawn(((block.timestamp - rewardStartTime % 8760 * 24 * 3600 * 10 * s / 100 / 8760 * 24 * 3600) + ext_call.return_data[0] - s), withdrawerAddress);
        else:
            require collectedTokens + ext_call.return_data[0] >= collectedTokens
            collectedTokens += ext_call.return_data[0]
            require ext_code.size(keyAddress)
            call keyAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args withdrawerAddress, ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            emit TokensWithdrawn(ext_call.return_data[0], withdrawerAddress);
}



}
