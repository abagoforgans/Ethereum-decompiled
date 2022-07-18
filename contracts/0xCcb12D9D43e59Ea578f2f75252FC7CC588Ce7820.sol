contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint8 stor7;
uint8 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint8 stor19;

function _fallback() payable {
    stor3 = 0
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor10 = 2
    stor11 = 5 * 10^16
    stor12 = 5 * 10^16
    stor15 = 0
    stor16 = 0
    stor17 = 15
    stor18 = 0
    stor19 = 1
    stor2 = msg.sender
    require msg.sender == stor2
    require -1 >= stor3
    if 50000000 * 10^18 <= -stor3 - 1:
        require stor0[address(msg.sender)] <= 0xffffffffffffffffffffffffffffffffffffffffffd6a416919bf9968dffffff
        stor0[address(msg.sender)] += 50000000 * 10^18
        require stor3 <= 0xffffffffffffffffffffffffffffffffffffffffffd6a416919bf9968dffffff
        stor3 += 50000000 * 10^18
    stor5 = 5000000 * 10^18
    stor4 = 1000000 * 10^18
    require stor5 <= -stor4 - 1
    require stor3 >= stor5 + stor4
    stor6 = stor3 - stor5 - stor4
    return code.data[883 len 9255]
}



// =====================  Runtime code  =====================


const name = 'PetjaToken'

const decimals = 18

const _decimals = 10^18

const symbol = 'PT'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint256 totalSupply;
uint256 sub_e895cfef;
uint256 sub_e2fa046e;
uint256 sub_572960a1;
uint8 stor7;
array of address stor8;
mapping of uint256 stor9;
uint8 currentState;
uint256 tokenPrice;
uint256 _minAmount;
address beneficiaryAddress;
uint256 totalSold;
uint256 sub_ca36c38c;
uint256 sub_1feb4d52;
uint256 sub_d943c702;
uint8 stor19;

function _minAmount() {
    return _minAmount
}

function currentState() {
    require currentState <= 2
    return currentState
}

function totalSupply() {
    return totalSupply
}

function sub_1feb4d52(?) {
    return sub_1feb4d52
}

function beneficiary() {
    return beneficiaryAddress
}

function sub_572960a1(?) {
    return sub_572960a1
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function tokenPrice() {
    return tokenPrice
}

function owner() {
    return owner
}

function totalSold() {
    return totalSold
}

function sub_ca36c38c(?) {
    return sub_ca36c38c
}

function sub_d943c702(?) {
    return sub_d943c702
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_e2fa046e(?) {
    return sub_e2fa046e
}

function sub_e895cfef(?) {
    return sub_e895cfef
}

function stopTransfers() {
    require owner == msg.sender
    stor19 = 0
}

function allowTransfers() {
    require owner == msg.sender
    stor19 = 1
}

function TokenSale() {
    owner = msg.sender
    beneficiaryAddress = msg.sender
}

function setOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function sub_d348ec77(?) {
    require owner == msg.sender
    sub_1feb4d52 = arg1
}

function setMinAmount(uint256 arg1) {
    require owner == msg.sender
    _minAmount = arg1
}

function setTokenPrice(uint256 arg1) {
    require owner == msg.sender
    tokenPrice = arg1
}

function setDiscountPercent(uint256 arg1) {
    require owner == msg.sender
    sub_d943c702 = arg1
}

function setBeneficiaryAddress(address arg1) {
    require owner == msg.sender
    beneficiaryAddress = arg1
}

function setState(uint8 arg1) {
    require owner == msg.sender
    require arg1 <= 2
    currentState = arg1
}

function freezeTransfers() {
    require msg.sender == owner
    if not stor7:
        stor7 = 1
        emit Freeze()
}

function unfreezeTransfers() {
    require msg.sender == owner
    if stor7:
        stor7 = 0
        emit Unfreeze()
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2, uint256 arg3) {
    if allowance[address(msg.sender)][address(arg1)] != arg2:
        return 0
    allowance[address(msg.sender)][address(arg1)] = arg3
    emit Approval(arg3, msg.sender, arg1);
    return 1
}

function burnTokens(uint256 arg1) {
    if arg1 > balanceOf[address(msg.sender)]:
        return 0
    if arg1 > 0:
        require balanceOf[address(msg.sender)] >= arg1
        balanceOf[address(msg.sender)] -= arg1
        require totalSupply >= arg1
        totalSupply -= arg1
    return 1
}

function createTokens(uint256 arg1) {
    require msg.sender == owner
    if arg1 > 0:
        require -1 >= totalSupply
        if arg1 > -totalSupply - 1:
            return 0
        require balanceOf[address(msg.sender)] <= -arg1 - 1
        balanceOf[address(msg.sender)] += arg1
        require totalSupply <= -arg1 - 1
        totalSupply += arg1
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if stor7:
        return 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 > 0:
        if arg1 != msg.sender:
            require balanceOf[address(msg.sender)] >= arg2
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(arg1)] <= -arg2 - 1
            balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function refund() {
    require owner == msg.sender
    s = 0
    s = 0
    idx = 0
    while idx < stor8.length:
        stor9[address(stor8[idx])] = 0
        mem[0] = address(stor8[idx])
        mem[32] = 0
        balanceOf[address(stor8[idx])] = 0
        call address(stor8[idx]) with:
           value stor9[address(stor8[idx])] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        s = stor9[address(stor8[idx])]
        s = address(stor8[idx])
        idx = idx + 1
        continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if stor7:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg1)] < arg3:
        return 0
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if arg3 > 0:
        if arg1 != arg2:
            require balanceOf[address(arg1)] >= arg3
            balanceOf[address(arg1)] -= arg3
            require balanceOf[address(arg2)] <= -arg3 - 1
            balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function buy() payable {
    require currentState <= 2
    require currentState != 2
    require totalSold < sub_572960a1
    require msg.value >= _minAmount
    require msg.value <= 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21
    require tokenPrice
    require totalSold <= -(10^18 * msg.value / tokenPrice) - 1
    totalSold += 10^18 * msg.value / tokenPrice
    require currentState <= 2
    if not currentState:
        require sub_ca36c38c < sub_e895cfef
        require sub_1feb4d52 <= 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f
        require sub_ca36c38c <= -(100 * 10^18 * msg.value / tokenPrice * sub_1feb4d52 / 10000) - 1
        sub_ca36c38c += 100 * 10^18 * msg.value / tokenPrice * sub_1feb4d52 / 10000
        require 10^18 * msg.value / tokenPrice <= -(100 * 10^18 * msg.value / tokenPrice * sub_1feb4d52 / 10000) - 1
        require balanceOf[address(msg.sender)] <= -(10^18 * msg.value / tokenPrice) + -(100 * 10^18 * msg.value / tokenPrice * sub_1feb4d52 / 10000) - 1
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (10^18 * msg.value / tokenPrice) + (100 * 10^18 * msg.value / tokenPrice * sub_1feb4d52 / 10000)
        require balanceOf[stor2] >= (10^18 * msg.value / tokenPrice) + (100 * 10^18 * msg.value / tokenPrice * sub_1feb4d52 / 10000)
        balanceOf[stor2] = balanceOf[stor2] - (10^18 * msg.value / tokenPrice) - (100 * 10^18 * msg.value / tokenPrice * sub_1feb4d52 / 10000)
        require totalSold <= -(10^18 * msg.value / tokenPrice) + -(100 * 10^18 * msg.value / tokenPrice * sub_1feb4d52 / 10000) - 1
        totalSold = totalSold + (10^18 * msg.value / tokenPrice) + (100 * 10^18 * msg.value / tokenPrice * sub_1feb4d52 / 10000)
    else:
        require currentState <= 2
        if currentState != 1:
            require balanceOf[address(msg.sender)] <= -(10^18 * msg.value / tokenPrice) - 1
            balanceOf[address(msg.sender)] += 10^18 * msg.value / tokenPrice
            require balanceOf[stor2] >= 10^18 * msg.value / tokenPrice
            balanceOf[stor2] -= 10^18 * msg.value / tokenPrice
            require totalSold <= -(10^18 * msg.value / tokenPrice) - 1
            totalSold += 10^18 * msg.value / tokenPrice
        else:
            require sub_ca36c38c < sub_e895cfef
            require sub_d943c702 <= 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f
            require sub_ca36c38c <= -(100 * 10^18 * msg.value / tokenPrice * sub_d943c702 / 10000) - 1
            sub_ca36c38c += 100 * 10^18 * msg.value / tokenPrice * sub_d943c702 / 10000
            require 10^18 * msg.value / tokenPrice <= -(100 * 10^18 * msg.value / tokenPrice * sub_d943c702 / 10000) - 1
            require balanceOf[address(msg.sender)] <= -(10^18 * msg.value / tokenPrice) + -(100 * 10^18 * msg.value / tokenPrice * sub_d943c702 / 10000) - 1
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (10^18 * msg.value / tokenPrice) + (100 * 10^18 * msg.value / tokenPrice * sub_d943c702 / 10000)
            require balanceOf[stor2] >= (10^18 * msg.value / tokenPrice) + (100 * 10^18 * msg.value / tokenPrice * sub_d943c702 / 10000)
            balanceOf[stor2] = balanceOf[stor2] - (10^18 * msg.value / tokenPrice) - (100 * 10^18 * msg.value / tokenPrice * sub_d943c702 / 10000)
            require totalSold <= -(10^18 * msg.value / tokenPrice) + -(100 * 10^18 * msg.value / tokenPrice * sub_d943c702 / 10000) - 1
            totalSold = totalSold + (10^18 * msg.value / tokenPrice) + (100 * 10^18 * msg.value / tokenPrice * sub_d943c702 / 10000)
    if stor19:
        call beneficiaryAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require stor9[address(msg.sender)] <= -msg.value - 1
        stor9[address(msg.sender)] += msg.value
        stor8.length++
        if not stor8.length <= stor8.length + 1:
            idx = stor8.length + 1
            while stor8.length > idx:
                uint256(stor8[idx]) = 0
                idx = idx + 1
                continue 
        address(stor8[stor8.length]) = msg.sender
}

function _fallback() payable {
    require currentState <= 2
    require currentState != 2
    require totalSold < sub_572960a1
    require msg.value >= _minAmount
    require msg.value <= 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21
    require tokenPrice
    require totalSold <= -(10^18 * msg.value / tokenPrice) - 1
    totalSold += 10^18 * msg.value / tokenPrice
    require currentState <= 2
    if not currentState:
        require sub_ca36c38c < sub_e895cfef
        require sub_1feb4d52 <= 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f
        require sub_ca36c38c <= -(100 * 10^18 * msg.value / tokenPrice * sub_1feb4d52 / 10000) - 1
        sub_ca36c38c += 100 * 10^18 * msg.value / tokenPrice * sub_1feb4d52 / 10000
        require 10^18 * msg.value / tokenPrice <= -(100 * 10^18 * msg.value / tokenPrice * sub_1feb4d52 / 10000) - 1
        require balanceOf[address(msg.sender)] <= -(10^18 * msg.value / tokenPrice) + -(100 * 10^18 * msg.value / tokenPrice * sub_1feb4d52 / 10000) - 1
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (10^18 * msg.value / tokenPrice) + (100 * 10^18 * msg.value / tokenPrice * sub_1feb4d52 / 10000)
        require balanceOf[stor2] >= (10^18 * msg.value / tokenPrice) + (100 * 10^18 * msg.value / tokenPrice * sub_1feb4d52 / 10000)
        balanceOf[stor2] = balanceOf[stor2] - (10^18 * msg.value / tokenPrice) - (100 * 10^18 * msg.value / tokenPrice * sub_1feb4d52 / 10000)
        require totalSold <= -(10^18 * msg.value / tokenPrice) + -(100 * 10^18 * msg.value / tokenPrice * sub_1feb4d52 / 10000) - 1
        totalSold = totalSold + (10^18 * msg.value / tokenPrice) + (100 * 10^18 * msg.value / tokenPrice * sub_1feb4d52 / 10000)
    else:
        require currentState <= 2
        if currentState != 1:
            require balanceOf[address(msg.sender)] <= -(10^18 * msg.value / tokenPrice) - 1
            balanceOf[address(msg.sender)] += 10^18 * msg.value / tokenPrice
            require balanceOf[stor2] >= 10^18 * msg.value / tokenPrice
            balanceOf[stor2] -= 10^18 * msg.value / tokenPrice
            require totalSold <= -(10^18 * msg.value / tokenPrice) - 1
            totalSold += 10^18 * msg.value / tokenPrice
        else:
            require sub_ca36c38c < sub_e895cfef
            require sub_d943c702 <= 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f
            require sub_ca36c38c <= -(100 * 10^18 * msg.value / tokenPrice * sub_d943c702 / 10000) - 1
            sub_ca36c38c += 100 * 10^18 * msg.value / tokenPrice * sub_d943c702 / 10000
            require 10^18 * msg.value / tokenPrice <= -(100 * 10^18 * msg.value / tokenPrice * sub_d943c702 / 10000) - 1
            require balanceOf[address(msg.sender)] <= -(10^18 * msg.value / tokenPrice) + -(100 * 10^18 * msg.value / tokenPrice * sub_d943c702 / 10000) - 1
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (10^18 * msg.value / tokenPrice) + (100 * 10^18 * msg.value / tokenPrice * sub_d943c702 / 10000)
            require balanceOf[stor2] >= (10^18 * msg.value / tokenPrice) + (100 * 10^18 * msg.value / tokenPrice * sub_d943c702 / 10000)
            balanceOf[stor2] = balanceOf[stor2] - (10^18 * msg.value / tokenPrice) - (100 * 10^18 * msg.value / tokenPrice * sub_d943c702 / 10000)
            require totalSold <= -(10^18 * msg.value / tokenPrice) + -(100 * 10^18 * msg.value / tokenPrice * sub_d943c702 / 10000) - 1
            totalSold = totalSold + (10^18 * msg.value / tokenPrice) + (100 * 10^18 * msg.value / tokenPrice * sub_d943c702 / 10000)
    if stor19:
        call beneficiaryAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require stor9[address(msg.sender)] <= -msg.value - 1
        stor9[address(msg.sender)] += msg.value
        stor8.length++
        if not stor8.length <= stor8.length + 1:
            idx = stor8.length + 1
            while stor8.length > idx:
                uint256(stor8[idx]) = 0
                idx = idx + 1
                continue 
        address(stor8[stor8.length]) = msg.sender
}



}
