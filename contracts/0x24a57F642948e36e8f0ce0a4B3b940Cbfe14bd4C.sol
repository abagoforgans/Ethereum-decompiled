contract main {


// =======================  Init code  ======================


uint8 stor1; offset 160
uint256 stor2;
uint256 stor3;
address stor4;
mapping of uint8 stor5;
uint256 stor7;
uint256 stor9;

function _fallback() payable {
    stor1 = 0
    stor7 = 0
    stor9 = 0
    require not msg.value
    stor4 = msg.sender
    stor5[address(msg.sender)] = 1
    stor2 = 0
    stor3 = 0
    mem[96] = stor2
    mem[128] = block.number
    mem[160] = block.timestamp
    s = 0x54cdd369e4e8a8515e52ca72ec816c2101831ad1f18bf44102ed171459c9b4f8
    idx = 96
    while 192 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 0x54cdd369e4e8a8515e52ca72ec816c2101831ad1f18bf44102ed171459c9b4fb
    while 0x54cdd369e4e8a8515e52ca72ec816c2101831ad1f18bf44102ed171459c9b4fb > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    return code.data[362 len 4166]
}



// =====================  Runtime code  =====================


address stor0;
uint8 stor1; offset 160
address erc20TokensContractAddress;
uint256 priceToBuyInFinney;
uint256 stor3;
address owner;
mapping of uint8 stor5;
array of struct priceChange;
uint256 currentPriceChangeNumber;
array of uint256 deals;
uint256 dealsNumber;

function priceChange(uint256 arg1, uint256 arg2) {
    require arg2 < 3
    return priceChange[arg1][arg2].field_0
}

function erc20TokensContractAddress() {
    return erc20TokensContractAddress
}

function dealsNumber() {
    return dealsNumber
}

function deals(uint256 arg1, uint256 arg2) {
    require arg2 < 4
    return deals[arg1][arg2]
}

function priceToBuyInFinney() {
    return priceToBuyInFinney
}

function owner() {
    return owner
}

function currentPriceChangeNumber() {
    return currentPriceChangeNumber
}

function isManager(address arg1) {
    return bool(stor5[arg1])
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
    stor5[address(arg1)] = 1
    emit OwnerChanged(msg.sender, owner);
    return 1
}

function setManager(address arg1) {
    require owner == msg.sender
    stor5[address(arg1)] = 1
    emit ManagersChanged(Array(len=13, data='manager added'), address(arg1));
    return 1
}

function removeManager(address arg1) {
    require owner == msg.sender
    stor5[address(arg1)] = 0
    emit ManagersChanged(Array(len=15, data='manager removed'), address(arg1));
    return 1
}

function setErc20TokensContract(address arg1) {
    require owner == msg.sender
    require not stor1
    stor0 = arg1
    erc20TokensContractAddress = arg1
    stor1 = 1
    emit TokensContractAddressSet(address(arg1), msg.sender);
    return 1
}

function getPriceChange(uint256 arg1) {
    idx = 192
    s = 0
    while 288 > idx + 32:
        mem[idx + 32] = priceChange[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return priceChange[arg1].field_0, mem[224 len 64]
}

function withdraw(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    require eth.balance(this.address) >= 10^15 * arg1
    if owner != msg.sender:
        return 0
    call msg.sender with:
       value 10^15 * arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        return 0
    emit Withdrawal(address(msg.sender), arg1, Array(len=19, data='withdrawal: success'));
    return 1
}

function withdrawAllToOwner() {
    require owner == msg.sender
    require eth.balance(this.address) > 0
    require eth.balance(this.address) >= 10^15 * eth.balance(this.address)
    if owner != msg.sender:
        return 0
    call msg.sender with:
       value 10^15 * eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        return 0
    emit Withdrawal(address(msg.sender), eth.balance(this.address), Array(len=19, data='withdrawal: success'));
    return 1
}

function transferTokensToContractOwner(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] >= arg1
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    emit TokensTransfer(msg.sender, msg.sender, arg1);
    return 1
}

function transferTokensTo(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2 > 0
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] >= arg2
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    emit TokensTransfer(msg.sender, address(arg1), arg2);
    return 1
}

function setNewPriceInFinney(uint256 arg1) {
    require owner == msg.sender
    require stor5[address(msg.sender)]
    priceToBuyInFinney = arg1
    stor3 = 10^15 * arg1
    currentPriceChangeNumber++
    mem[96] = priceToBuyInFinney
    mem[128] = block.number
    mem[160] = block.timestamp
    s = 0
    idx = 96
    while 192 > idx:
        priceChange[stor7 + 1][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 3
    while 3 > idx:
        priceChange[stor7 + 1][idx].field_0 = 0
        idx = idx + 1
        continue 
    emit PriceChanged(priceToBuyInFinney, msg.sender);
    return 1
}

function transferAllTokensToOwner() {
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require owner == msg.sender
    require ext_call.return_data[0] > 0
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
    emit TokensTransfer(msg.sender, owner, ext_call.return_data[0]);
    return 1
}

function buyTokens(uint256 arg1, uint256 arg2) payable {
    require priceToBuyInFinney > 0
    require arg2 == priceToBuyInFinney
    require stor3
    require msg.value / stor3 == arg1
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] >= arg1
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] != ext_call.return_data[0]
    dealsNumber++
    mem[128] = arg1
    mem[160] = block.number
    mem[192] = block.timestamp
    deals[stor9 + 1] = arg2
    s = 1
    idx = 128
    while 224 > idx:
        deals[stor9 + 1][s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 4
    while 4 > idx:
        deals[stor9 + 1][idx] = 0
        idx = idx + 1
        continue 
    emit Deal(msg.sender, arg2, arg1);
    return 1
}



}
