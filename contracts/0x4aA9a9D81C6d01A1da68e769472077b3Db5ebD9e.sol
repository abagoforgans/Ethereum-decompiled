contract main {




// =====================  Runtime code  =====================


address creatorAddress;
mapping of uint8 stor1;
uint8 stor2;
address tokenContractAddress; offset 8
uint32 stor3;
uint32 weight; offset 160
uint32 fee; offset 192
address formulaContractAddress;
uint256 uncirculatedSupplyCount;
uint256 collectedFees;
uint256 virtualReserveBalance;

function creator() {
    return creatorAddress
}

function enabled() {
    return bool(stor2)
}

function uncirculatedSupplyCount() {
    return uncirculatedSupplyCount
}

function admins(address arg1) {
    return bool(stor1[arg1])
}

function tokenContract() {
    return tokenContractAddress
}

function formulaContract() {
    return formulaContractAddress
}

function virtualReserveBalance() {
    return virtualReserveBalance
}

function collectedFees() {
    return collectedFees
}

function weight() {
    return weight
}

function fee() {
    return fee
}

function _fallback() payable {
    revert
}

function depositEther() payable {
    require creatorAddress == msg.sender
}

function changeOwner(address arg1) {
    require creatorAddress == msg.sender
    creatorAddress = arg1
}

function grantAdmin(address arg1) {
    require creatorAddress == msg.sender
    stor1[address(arg1)] = 1
}

function revokeAdminStatus(address arg1) {
    require creatorAddress == msg.sender
    stor1[address(arg1)] = 0
}

function enable() {
    if not stor1[address(msg.sender)]:
        require creatorAddress == msg.sender
    stor2 = 1
}

function disable() {
    if not stor1[address(msg.sender)]:
        require creatorAddress == msg.sender
    stor2 = 0
}

function setVirtualReserveBalance(uint256 arg1) {
    if not stor1[address(msg.sender)]:
        require creatorAddress == msg.sender
    virtualReserveBalance = arg1
}

function setFee(uint256 arg1) {
    if not stor1[address(msg.sender)]:
        require creatorAddress == msg.sender
    require arg1 >= 0
    require arg1 <= 10^6
    fee = uint32(arg1)
}

function setUncirculatedSupplyCount(uint256 arg1) {
    if not stor1[address(msg.sender)]:
        require creatorAddress == msg.sender
    require arg1 > 0
    uncirculatedSupplyCount = arg1
}

function setReserveWeight(uint256 arg1) {
    if not stor1[address(msg.sender)]:
        require creatorAddress == msg.sender
    require arg1 > 0
    require arg1 <= 10^6
    weight = uint32(arg1)
}

function withdrawEther(uint256 arg1) {
    require creatorAddress == msg.sender
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawTokens(uint256 arg1) {
    require creatorAddress == msg.sender
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function extractFees(uint256 arg1) {
    if not stor1[address(msg.sender)]:
        require creatorAddress == msg.sender
    require arg1 <= collectedFees
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function depositTokens(uint256 arg1) {
    require creatorAddress == msg.sender
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getReserveBalances() {
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], eth.balance(this.address) + virtualReserveBalance
}

function getSalePrice(uint256 arg1) {
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(formulaContractAddress)
    call formulaContractAddress.calculateSaleReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(-uncirculatedSupplyCount), eth.balance(this.address) + virtualReserveBalance, stor3, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] - (ext_call.return_data[0] * fee / 10^6) <= eth.balance(this.address):
        return (ext_call.return_data[0] - (ext_call.return_data[0] * fee / 10^6))
    return eth.balance(this.address)
}

function getPurchasePrice(uint256 arg1) {
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(formulaContractAddress)
    call formulaContractAddress.calculatePurchaseReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(-uncirculatedSupplyCount), eth.balance(this.address) + virtualReserveBalance, stor3, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] - (ext_call.return_data[0] * fee / 10^6) <= ext_call.return_data[0]:
        return (ext_call.return_data[0] - (ext_call.return_data[0] * fee / 10^6))
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function buy(uint256 arg1) payable {
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(formulaContractAddress)
    call formulaContractAddress.calculatePurchaseReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(-uncirculatedSupplyCount), eth.balance(this.address) + virtualReserveBalance - msg.value, stor3, msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor2
    require ext_call.return_data[0] - (ext_call.return_data[0] * fee / 10^6) >= arg1
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= ext_call.return_data[0] - (ext_call.return_data[0] * fee / 10^6)
    collectedFees += msg.value * fee / 10^6
    emit Buy(msg.value, ext_call.return_data[0] - (ext_call.return_data[0] * fee / 10^6), msg.sender);
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * fee / 10^6)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sell(uint256 arg1, uint256 arg2) {
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(formulaContractAddress)
    call formulaContractAddress.calculateSaleReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(-uncirculatedSupplyCount), eth.balance(this.address) + virtualReserveBalance, stor3, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor2
    require ext_call.return_data[0] - (ext_call.return_data[0] * fee / 10^6) >= arg2
    require ext_call.return_data[0] - (ext_call.return_data[0] * fee / 10^6) <= eth.balance(this.address)
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    collectedFees += (ext_call.return_data[0] * fee) - (ext_call.return_data[0] * fee / 10^6 * fee) / 10^6
    emit Sell(arg1, ext_call.return_data[0] - (ext_call.return_data[0] * fee / 10^6), msg.sender);
    call msg.sender with:
       value ext_call.return_data[0] - (ext_call.return_data[0] * fee / 10^6) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sellOneStep(uint256 arg1, uint256 arg2, address arg3) {
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(formulaContractAddress)
    call formulaContractAddress.calculateSaleReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(-uncirculatedSupplyCount), eth.balance(this.address) + virtualReserveBalance, stor3, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor2
    require ext_call.return_data[0] - (ext_call.return_data[0] * fee / 10^6) >= arg2
    require ext_call.return_data[0] - (ext_call.return_data[0] * fee / 10^6) <= eth.balance(this.address)
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(arg3), address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    collectedFees += (ext_call.return_data[0] * fee) - (ext_call.return_data[0] * fee / 10^6 * fee) / 10^6
    emit Sell(arg1, ext_call.return_data[0] - (ext_call.return_data[0] * fee / 10^6), arg3);
    call arg3 with:
       value ext_call.return_data[0] - (ext_call.return_data[0] * fee / 10^6) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(formulaContractAddress)
    call formulaContractAddress.calculateSaleReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(-uncirculatedSupplyCount), eth.balance(this.address) + virtualReserveBalance, stor3, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor2
    require ext_call.return_data[0] - (ext_call.return_data[0] * fee / 10^6) >= 0
    require ext_call.return_data[0] - (ext_call.return_data[0] * fee / 10^6) <= eth.balance(this.address)
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    collectedFees += (ext_call.return_data[0] * fee) - (ext_call.return_data[0] * fee / 10^6 * fee) / 10^6
    emit Sell(arg2, ext_call.return_data[0] - (ext_call.return_data[0] * fee / 10^6), arg1);
    call arg1 with:
       value ext_call.return_data[0] - (ext_call.return_data[0] * fee / 10^6) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
