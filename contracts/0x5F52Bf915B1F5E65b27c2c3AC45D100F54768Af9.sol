contract main {




// =====================  Runtime code  =====================


const name = 'TerraEcoToken'

const decimals = 8

const _decimals = 100 * 10^6

const symbol = 'TET'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint256 totalSupply;
uint8 stor4;
uint8 currentState; offset 8
uint256 tokenPrice;
uint256 _minAmount;
address beneficiaryAddress;
uint256 totalSold;
uint8 stor11;

function _minAmount() {
    return _minAmount
}

function currentState() {
    require currentState <= 3
    return currentState
}

function totalSupply() {
    return totalSupply
}

function beneficiary() {
    return beneficiaryAddress
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

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function stopTransfers() {
    require owner == msg.sender
    stor11 = 0
}

function allowTransfers() {
    require owner == msg.sender
    stor11 = 1
}

function stopSale() {
    require owner == msg.sender
    currentState = 3
}

function setOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function setMinAmount(uint256 arg1) {
    require owner == msg.sender
    _minAmount = arg1
}

function setBeneficiaryAddress(address arg1) {
    require owner == msg.sender
    beneficiaryAddress = arg1
}

function freezeTransfers() {
    require msg.sender == owner
    if not stor4:
        stor4 = 1
        emit Freeze()
}

function unfreezeTransfers() {
    require msg.sender == owner
    if stor4:
        stor4 = 0
        emit Unfreeze()
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setState(uint8 arg1) {
    require owner == msg.sender
    require currentState <= 3
    require currentState != 3
    require arg1 <= 3
    currentState = arg1
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
    if stor4:
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if stor4:
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

function getTokens() payable {
    require currentState <= 3
    require currentState != 2
    require currentState <= 3
    require currentState != 3
    require msg.value >= _minAmount
    require msg.value <= 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b
    require tokenPrice
    require currentState <= 3
    require currentState <= 3
    if currentState:
        if currentState != 1:
            require 100 * 10^6 * msg.value / tokenPrice <= -1
            require balanceOf[address(msg.sender)] <= -(100 * 10^6 * msg.value / tokenPrice) - 1
            balanceOf[address(msg.sender)] += 100 * 10^6 * msg.value / tokenPrice
            require balanceOf[stor2] >= 100 * 10^6 * msg.value / tokenPrice
            balanceOf[stor2] -= 100 * 10^6 * msg.value / tokenPrice
            require totalSold <= -(100 * 10^6 * msg.value / tokenPrice) - 1
            totalSold += 100 * 10^6 * msg.value / tokenPrice
        else:
            require 100 * 10^6 * msg.value / tokenPrice <= -(30 * 100 * 10^6 * msg.value / tokenPrice / 100) - 1
            require balanceOf[address(msg.sender)] <= -(100 * 10^6 * msg.value / tokenPrice) + -(30 * 100 * 10^6 * msg.value / tokenPrice / 100) - 1
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (100 * 10^6 * msg.value / tokenPrice) + (30 * 100 * 10^6 * msg.value / tokenPrice / 100)
            require balanceOf[stor2] >= (100 * 10^6 * msg.value / tokenPrice) + (30 * 100 * 10^6 * msg.value / tokenPrice / 100)
            balanceOf[stor2] = balanceOf[stor2] - (100 * 10^6 * msg.value / tokenPrice) - (30 * 100 * 10^6 * msg.value / tokenPrice / 100)
            require totalSold <= -(100 * 10^6 * msg.value / tokenPrice) + -(30 * 100 * 10^6 * msg.value / tokenPrice / 100) - 1
            totalSold = totalSold + (100 * 10^6 * msg.value / tokenPrice) + (30 * 100 * 10^6 * msg.value / tokenPrice / 100)
    else:
        require 100 * 10^6 * msg.value / tokenPrice <= -(30 * 100 * 10^6 * msg.value / tokenPrice / 100) - 1
        require balanceOf[address(msg.sender)] <= -(100 * 10^6 * msg.value / tokenPrice) + -(30 * 100 * 10^6 * msg.value / tokenPrice / 100) - 1
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (100 * 10^6 * msg.value / tokenPrice) + (30 * 100 * 10^6 * msg.value / tokenPrice / 100)
        require balanceOf[stor2] >= (100 * 10^6 * msg.value / tokenPrice) + (30 * 100 * 10^6 * msg.value / tokenPrice / 100)
        balanceOf[stor2] = balanceOf[stor2] - (100 * 10^6 * msg.value / tokenPrice) - (30 * 100 * 10^6 * msg.value / tokenPrice / 100)
        require totalSold <= -(100 * 10^6 * msg.value / tokenPrice) + -(30 * 100 * 10^6 * msg.value / tokenPrice / 100) - 1
        totalSold = totalSold + (100 * 10^6 * msg.value / tokenPrice) + (30 * 100 * 10^6 * msg.value / tokenPrice / 100)
    if stor11:
        call beneficiaryAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require currentState <= 3
    require currentState != 2
    require currentState <= 3
    require currentState != 3
    require msg.value >= _minAmount
    require msg.value <= 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b
    require tokenPrice
    require currentState <= 3
    require currentState <= 3
    if currentState:
        if currentState != 1:
            require 100 * 10^6 * msg.value / tokenPrice <= -1
            require balanceOf[address(msg.sender)] <= -(100 * 10^6 * msg.value / tokenPrice) - 1
            balanceOf[address(msg.sender)] += 100 * 10^6 * msg.value / tokenPrice
            require balanceOf[stor2] >= 100 * 10^6 * msg.value / tokenPrice
            balanceOf[stor2] -= 100 * 10^6 * msg.value / tokenPrice
            require totalSold <= -(100 * 10^6 * msg.value / tokenPrice) - 1
            totalSold += 100 * 10^6 * msg.value / tokenPrice
        else:
            require 100 * 10^6 * msg.value / tokenPrice <= -(30 * 100 * 10^6 * msg.value / tokenPrice / 100) - 1
            require balanceOf[address(msg.sender)] <= -(100 * 10^6 * msg.value / tokenPrice) + -(30 * 100 * 10^6 * msg.value / tokenPrice / 100) - 1
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (100 * 10^6 * msg.value / tokenPrice) + (30 * 100 * 10^6 * msg.value / tokenPrice / 100)
            require balanceOf[stor2] >= (100 * 10^6 * msg.value / tokenPrice) + (30 * 100 * 10^6 * msg.value / tokenPrice / 100)
            balanceOf[stor2] = balanceOf[stor2] - (100 * 10^6 * msg.value / tokenPrice) - (30 * 100 * 10^6 * msg.value / tokenPrice / 100)
            require totalSold <= -(100 * 10^6 * msg.value / tokenPrice) + -(30 * 100 * 10^6 * msg.value / tokenPrice / 100) - 1
            totalSold = totalSold + (100 * 10^6 * msg.value / tokenPrice) + (30 * 100 * 10^6 * msg.value / tokenPrice / 100)
    else:
        require 100 * 10^6 * msg.value / tokenPrice <= -(30 * 100 * 10^6 * msg.value / tokenPrice / 100) - 1
        require balanceOf[address(msg.sender)] <= -(100 * 10^6 * msg.value / tokenPrice) + -(30 * 100 * 10^6 * msg.value / tokenPrice / 100) - 1
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (100 * 10^6 * msg.value / tokenPrice) + (30 * 100 * 10^6 * msg.value / tokenPrice / 100)
        require balanceOf[stor2] >= (100 * 10^6 * msg.value / tokenPrice) + (30 * 100 * 10^6 * msg.value / tokenPrice / 100)
        balanceOf[stor2] = balanceOf[stor2] - (100 * 10^6 * msg.value / tokenPrice) - (30 * 100 * 10^6 * msg.value / tokenPrice / 100)
        require totalSold <= -(100 * 10^6 * msg.value / tokenPrice) + -(30 * 100 * 10^6 * msg.value / tokenPrice / 100) - 1
        totalSold = totalSold + (100 * 10^6 * msg.value / tokenPrice) + (30 * 100 * 10^6 * msg.value / tokenPrice / 100)
    if stor11:
        call beneficiaryAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
