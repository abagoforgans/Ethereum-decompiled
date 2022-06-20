contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 allowance;
mapping of uint256 balanceOf;
address owner;
uint8 stor4; offset 160
uint128 stor4; offset 160
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 totalReleased;
uint256 tokensForSale;
uint256 vestingTokens;
uint256 bountyTokens;
mapping of uint8 stor12;
mapping of uint8 stor13;
uint256 icoStartTime;
uint256 sub_218c4182;
address saleContractAddress;
uint8 fundraising; offset 160
uint128 stor17; offset 160
address vestingContractAddress;
mapping of uint8 stor18;

function name() {
    return name[0 len name.length]
}

function tokensForSale() {
    return tokensForSale
}

function totalSupply() {
    return totalSupply
}

function bountyTokens() {
    return bountyTokens
}

function sub_218c4182(?) {
    return sub_218c4182
}

function sub_2b3e8eb3(?) {
    return bool(stor13[arg1])
}

function decimals() {
    return decimals
}

function paused() {
    return bool(uint8(stor4.field_160))
}

function vestingTokens() {
    return vestingTokens
}

function vestingContract() {
    return vestingContractAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function frozenAccounts(address arg1) {
    return bool(stor18[arg1])
}

function owner() {
    return owner
}

function sub_90bef664(?) {
    return bool(stor12[arg1])
}

function symbol() {
    return symbol[0 len symbol.length]
}

function fundraising() {
    return bool(fundraising)
}

function icoStartTime() {
    return icoStartTime
}

function newOwner() {
    return newOwner
}

function saleContract() {
    return saleContractAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function totalReleased() {
    return totalReleased
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor4.field_160)
    Mask(96, 0, stor4.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor4.field_160)
    Mask(96, 0, stor4.field_160) = 1
    emit Pause()
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    require arg1
    stor18[address(arg1)] = uint8(arg2)
    emit FrozenFund(address(arg1), arg2);
}

function finalize() {
    require not uint8(stor4.field_160)
    require fundraising
    require msg.sender == saleContractAddress
    Mask(96, 0, stor17.field_160) = 0
    sub_218c4182 = block.timestamp
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function changeApproval(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size >= 100
    require allowance[address(msg.sender)][address(arg1)] == arg2
    allowance[address(msg.sender)][address(arg1)] = arg3
    emit Approval(arg3, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require not uint8(stor4.field_160)
    require arg1 > 0
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= totalReleased
    totalReleased -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function burnTokensForSale() {
    require not uint8(stor4.field_160)
    require saleContractAddress
    require msg.sender == saleContractAddress
    require balanceOf[stor16] > 0
    require balanceOf[stor16] <= totalSupply
    balanceOf[stor16] = 0
    totalSupply -= balanceOf[stor16]
    require balanceOf[stor16] <= totalReleased
    totalReleased -= balanceOf[stor16]
    emit Burn(balanceOf[stor16], saleContractAddress);
    return 1
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require not uint8(stor4.field_160)
    require msg.sender == owner
    require arg1
    require ext_code.size(arg1) > 0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function activateSaleContract(address arg1) {
    require not uint8(stor4.field_160)
    require msg.sender == owner
    require arg1
    require not saleContractAddress
    saleContractAddress = arg1
    require balanceOf[stor16] + tokensForSale >= balanceOf[stor16]
    balanceOf[stor16] += tokensForSale
    require totalReleased + tokensForSale >= totalReleased
    totalReleased += tokensForSale
    tokensForSale = 0
    icoStartTime = block.timestamp
    require totalReleased <= totalSupply
    emit Transfer((50000 * 10^18 * 3600), this.address, saleContractAddress);
}

function activateVestingContract(address arg1) {
    require not uint8(stor4.field_160)
    require msg.sender == owner
    require arg1
    require not vestingContractAddress
    vestingContractAddress = arg1
    require balanceOf[address(stor17.field_0)] + vestingTokens >= balanceOf[address(stor17.field_0)]
    balanceOf[address(stor17.field_0)] += vestingTokens
    require totalReleased + vestingTokens >= totalReleased
    totalReleased += vestingTokens
    require totalReleased <= totalSupply
    emit Transfer(200000000 * 10^18, this.address, vestingContractAddress);
}

function sendBounty(address arg1, uint256 arg2) {
    require not uint8(stor4.field_160)
    require msg.sender == owner
    require arg1
    require arg2 > 0
    if arg2:
        require arg2
        require 10^18 * arg2 / arg2 == 10^18
    require bountyTokens >= 10^18 * arg2
    require totalReleased + (10^18 * arg2) >= totalReleased
    totalReleased += 10^18 * arg2
    require totalReleased <= totalSupply
    require balanceOf[address(arg1)] + (10^18 * arg2) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += 10^18 * arg2
    require 10^18 * arg2 <= bountyTokens
    bountyTokens += -1 * 10^18 * arg2
    emit Transfer((10^18 * arg2), this.address, arg1);
    return 1
}

function vestingTransfer(address arg1, uint256 arg2) {
    require not uint8(stor4.field_160)
    require not sub_218c4182
    require vestingContractAddress
    stor13[address(arg1)] = 1
    require msg.sender == vestingContractAddress
    require calldata.size >= 68
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_836cb5b1(?) {
    require not uint8(stor4.field_160)
    require saleContractAddress
    require msg.sender == saleContractAddress
    require not stor18[address(arg1)]
    if arg3 != 1:
        require bool(stor12[address(arg1)]) != 1
    else:
        stor12[address(arg1)] = 1
    require calldata.size >= 68
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if owner != msg.sender:
        require not fundraising
    require not uint8(stor4.field_160)
    require calldata.size >= 100
    require arg3 > 0
    require arg2
    require arg1
    require not stor18[address(arg1)]
    if bool(stor13[address(arg1)]) == 1:
        require sub_218c4182 + (4320 * 24 * 3600) >= sub_218c4182
        require block.timestamp >= sub_218c4182 + (4320 * 24 * 3600)
    else:
        if bool(stor12[address(arg1)]) == 1:
            require sub_218c4182 + (4320 * 24 * 3600) >= sub_218c4182
            require block.timestamp >= sub_218c4182 + (4320 * 24 * 3600)
    require calldata.size >= 100
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require not fundraising
    require not uint8(stor4.field_160)
    require calldata.size >= 68
    require arg2 > 0
    require arg1
    require not stor18[address(msg.sender)]
    if bool(stor13[address(msg.sender)]) == 1:
        require sub_218c4182 + (4320 * 24 * 3600) >= sub_218c4182
        require block.timestamp >= sub_218c4182 + (4320 * 24 * 3600)
    else:
        if bool(stor12[address(msg.sender)]) == 1:
            require sub_218c4182 + (4320 * 24 * 3600) >= sub_218c4182
            require block.timestamp >= sub_218c4182 + (4320 * 24 * 3600)
    require calldata.size >= 68
    if balanceOf[address(msg.sender)] >= arg2:
        if arg2 > 0:
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            if balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]:
                require arg2 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2
                require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
