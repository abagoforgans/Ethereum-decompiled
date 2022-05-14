contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address erc20ContractAddress;
uint256 netAmountBought;
uint256 buyCost;
uint256 sellValue;

function sellValue() {
    return sellValue
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
}

function netAmountBought() {
    return netAmountBought
}

function erc20Contract() {
    return erc20ContractAddress
}

function buyCost() {
    return buyCost
}

function close() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    require ext_code.size(erc20ContractAddress)
    call erc20ContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(erc20ContractAddress)
    call erc20ContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function getSellValue(uint256 arg1) {
    require sellValue
    return (arg1 / sellValue)
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

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function lacksFunds() {
    require sellValue
    require (netAmountBought / sellValue) + 1 >= netAmountBought / sellValue
    return (eth.balance(this.address) < (netAmountBought / sellValue) + 1)
}

function getBuyCost(uint256 arg1) {
    require buyCost
    if not arg1 % buyCost:
        return (arg1 / buyCost)
    require (arg1 / buyCost) + 1 >= arg1 / buyCost
    return ((arg1 / buyCost) + 1)
}

function amountAvailableToCashout() {
    require msg.sender == owner
    require sellValue
    require (netAmountBought / sellValue) + 1 >= netAmountBought / sellValue
    require (netAmountBought / sellValue) + 1 <= eth.balance(this.address)
    return (eth.balance(this.address) + -(netAmountBought / sellValue) - 1)
}

function amountForSale() {
    require ext_code.size(erc20ContractAddress)
    call erc20ContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function extraBalanceNeeded(uint256 arg1) {
    require msg.sender == owner
    require arg1
    require (netAmountBought / arg1) + 1 >= netAmountBought / arg1
    if (netAmountBought / arg1) + 1 <= eth.balance(this.address):
        return 0
    require eth.balance(this.address) <= (netAmountBought / arg1) + 1
    return ((netAmountBought / arg1) + -eth.balance(this.address) + 1)
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1 != erc20ContractAddress
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function adjustPrices(uint256 arg1, uint256 arg2) payable {
    require msg.sender == owner
    require uint8(stor0.field_160)
    if arg1:
        buyCost = arg1
    if arg2:
        sellValue = arg2
    require sellValue
    require (netAmountBought / sellValue) + 1 >= netAmountBought / sellValue
    require msg.value + eth.balance(this.address) >= msg.value
    require msg.value + eth.balance(this.address) >= (netAmountBought / sellValue) + 1
    emit LogPriceChanged(buyCost, sellValue);
}

function cashout() {
    require msg.sender == owner
    require sellValue
    require (netAmountBought / sellValue) + 1 >= netAmountBought / sellValue
    require eth.balance(this.address) >= (netAmountBought / sellValue) + 1
    require (netAmountBought / sellValue) + 1 <= eth.balance(this.address)
    call owner with:
       value eth.balance(this.address) + -(netAmountBought / sellValue) - 1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function tokenName() {
    mem[96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(erc20ContractAddress)
    call erc20ContractAddress.name() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + mem[mem[96] + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_4 + 96]
    _8 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 160 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
    if not _8 % 32:
        return 32, mem[ceil32(return_data.size) + 128 len _8 + 32]
    mem[floor32(_8) + ceil32(return_data.size) + 160] = mem[floor32(_8) + ceil32(return_data.size) + -(_8 % 32) + 192 len _8 % 32]
    return 32, mem[ceil32(return_data.size) + 128 len floor32(_8) + 64]
}

function tokenSymbol() {
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(erc20ContractAddress)
    call erc20ContractAddress.0x95d89b41 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + mem[mem[96] + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_4 + 96]
    _8 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 160 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
    if not _8 % 32:
        return 32, mem[ceil32(return_data.size) + 128 len _8 + 32]
    mem[floor32(_8) + ceil32(return_data.size) + 160] = mem[floor32(_8) + ceil32(return_data.size) + -(_8 % 32) + 192 len _8 % 32]
    return 32, mem[ceil32(return_data.size) + 128 len floor32(_8) + 64]
}

function sell(uint256 arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    require netAmountBought >= arg1
    require ext_code.size(erc20ContractAddress)
    call erc20ContractAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg1
    require sellValue
    require arg1 / sellValue >= arg2
    require eth.balance(this.address) >= arg1 / sellValue
    if not arg1 / sellValue:
        require 0 <= netAmountBought
        emit LogSold(sellValue, 0, msg.sender);
        require ext_code.size(erc20ContractAddress)
        call erc20ContractAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 0
    else:
        require arg1 / sellValue
        require arg1 / sellValue * sellValue / arg1 / sellValue == sellValue
        require arg1 / sellValue * sellValue <= netAmountBought
        netAmountBought += -1 * arg1 / sellValue * sellValue
        emit LogSold(sellValue, arg1 / sellValue * sellValue, msg.sender);
        require ext_code.size(erc20ContractAddress)
        call erc20ContractAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1 / sellValue * sellValue
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    call msg.sender with:
       value arg1 / sellValue wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buy(uint256 arg1) payable {
    require not uint8(stor0.field_160)
    if not msg.value:
        require ext_code.size(erc20ContractAddress)
        call erc20ContractAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= 0
        require 0 >= arg1
        require netAmountBought >= netAmountBought
        emit LogBought(buyCost, 0, msg.sender);
        require ext_code.size(erc20ContractAddress)
        call erc20ContractAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        require msg.value
        require msg.value * buyCost / msg.value == buyCost
        require ext_code.size(erc20ContractAddress)
        call erc20ContractAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= msg.value * buyCost
        require msg.value * buyCost >= arg1
        require netAmountBought + (msg.value * buyCost) >= netAmountBought
        netAmountBought += msg.value * buyCost
        emit LogBought(buyCost, msg.value * buyCost, msg.sender);
        require ext_code.size(erc20ContractAddress)
        call erc20ContractAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, msg.value * buyCost
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}



}
