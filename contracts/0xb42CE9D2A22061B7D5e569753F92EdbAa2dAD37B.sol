contract main {




// =====================  Runtime code  =====================


address creatorAddress;
uint256 commission;
mapping of uint8 stor2;
uint8 stor3;
address tokenContractAddress; offset 8
uint32 stor4;
uint32 weight; offset 160
address formulaContractAddress;

function creator() {
    return creatorAddress
}

function enabled() {
    return bool(stor3)
}

function admins(address arg1) {
    return bool(stor2[arg1])
}

function tokenContract() {
    return tokenContractAddress
}

function formulaContract() {
    return formulaContractAddress
}

function weight() {
    return weight
}

function commission() {
    return commission
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
    stor2[address(arg1)] = 1
}

function revokeAdminStatus(address arg1) {
    require creatorAddress == msg.sender
    stor2[address(arg1)] = 0
}

function enable() {
    if not stor2[address(msg.sender)]:
        require creatorAddress == msg.sender
    stor3 = 1
}

function disable() {
    if not stor2[address(msg.sender)]:
        require creatorAddress == msg.sender
    stor3 = 0
}

function setReserveWeight(uint32 arg1) {
    if not stor2[address(msg.sender)]:
        require creatorAddress == msg.sender
    require arg1 > 0
    require arg1 <= 10^6
    weight = arg1
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

function getReserveBalances() {
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], eth.balance(this.address)
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

function getQuotePrice() {
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(formulaContractAddress)
    call formulaContractAddress.0x29a00e7c with:
         gas gas_remaining wei
        args 0, ext_call.return_data[28 len 4], eth.balance(this.address), stor4, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getSalePrice(uint256 arg1) {
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(formulaContractAddress)
    call formulaContractAddress.0x49f9b0f7 with:
         gas gas_remaining wei
        args 0, ext_call.return_data[28 len 4], eth.balance(this.address), stor4, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] - (ext_call.return_data[0] * commission / 100))
}

function getPurchasePrice(uint256 arg1) {
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(formulaContractAddress)
    call formulaContractAddress.0x29a00e7c with:
         gas gas_remaining wei
        args 0, ext_call.return_data[28 len 4], eth.balance(this.address), stor4, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] - (ext_call.return_data[0] * commission / 100))
}

function sell(uint256 arg1, uint256 arg2) {
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(formulaContractAddress)
    call formulaContractAddress.0x49f9b0f7 with:
         gas gas_remaining wei
        args 0, ext_call.return_data[28 len 4], eth.balance(this.address), stor4, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor3
    require ext_call.return_data[0] >= arg2
    require ext_call.return_data[0] <= eth.balance(this.address)
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Sell(arg1, ext_call.return_data[0], msg.sender);
    call msg.sender with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buy(uint256 arg1) payable {
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(formulaContractAddress)
    call formulaContractAddress.0x29a00e7c with:
         gas gas_remaining wei
        args 0, ext_call.return_data[28 len 4], eth.balance(this.address) - msg.value, stor4, msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor3
    require ext_call.return_data[0] >= arg1
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= ext_call.return_data[0]
    emit Buy(msg.value, ext_call.return_data[0], msg.sender);
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
