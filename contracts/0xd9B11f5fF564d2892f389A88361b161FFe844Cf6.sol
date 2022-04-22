contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor4;
address stor6;

function _fallback() payable {
    stor4 = 4
    require not msg.value
    stor0 = msg.sender
    stor6 = code.data[2372 len 20]
    return code.data[99 len 2261]
}



// =====================  Runtime code  =====================


address owner;
uint256 playerBalance;
mapping of uint256 balanceOf;
mapping of uint256 withdrawAfter;
uint256 gasPrice;
mapping of uint256 avgGas;
address stor6;
uint256 closeAt;

function withdrawAfter(address arg1) {
    return withdrawAfter[arg1]
}

function playerBalance() {
    return playerBalance
}

function avgGas(address arg1) {
    return avgGas[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function closeAt() {
    return closeAt
}

function gasPrice() {
    return gasPrice
}

function close() {
    require owner == msg.sender
    if not playerBalance:
        selfdestruct(owner)
    if closeAt:
        if closeAt >= block.timestamp:
        selfdestruct(owner)
    closeAt = block.timestamp + (720 * 24 * 3600)
}

function _fallback() payable {
    revert
}

function open() {
    require owner == msg.sender
    closeAt = 0
}

function cancelWithdrawalRequest() {
    withdrawAfter[address(msg.sender)] = 0
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function requestWithdrawal() {
    withdrawAfter[address(msg.sender)] = block.timestamp + 420
}

function bankroll() {
    require ext_code.size(stor6)
    call stor6.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require playerBalance / 10000 <= ext_call.return_data[0]
    return (ext_call.return_data[0] - (playerBalance / 10000))
}

function withdrawBankroll(uint256 arg1) {
    require owner == msg.sender
    require ext_code.size(stor6)
    call stor6.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require playerBalance / 10000 <= ext_call.return_data[0]
    require arg1 <= ext_call.return_data[0] - (playerBalance / 10000)
    require ext_code.size(stor6)
    call stor6.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg1
    require ext_call.success
    require ext_call.return_data[0]
}

function withdraw(uint256 arg1) {
    if closeAt > 0:
        closeAt = block.timestamp + (720 * 24 * 3600)
    require withdrawAfter[address(msg.sender)] > 0
    require block.timestamp > withdrawAfter[address(msg.sender)]
    withdrawAfter[address(msg.sender)] = 0
    if arg1:
        require arg1
        require 10000 * arg1 / arg1 == 10000
    require 10000 * arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += -10000 * arg1
    require 10000 * arg1 <= playerBalance
    playerBalance += -10000 * arg1
    require ext_code.size(stor6)
    call stor6.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    require ext_call.return_data[0]
    emit Withdrawal(msg.sender, msg.sender, arg1);
}

function deposit(address arg1, uint256 arg2, bool arg3) {
    require not closeAt
    require arg2 > 0
    if arg2:
        require arg2
        require 10000 * arg2 / arg2 == 10000
    if not arg3:
        require ext_code.size(stor6)
        call stor6.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, address(this.address), arg2
        require ext_call.success
        require ext_call.return_data[0]
        require (10000 * arg2) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        require (10000 * arg2) + balanceOf[address(arg1)] >= 10000 * arg2
        balanceOf[address(arg1)] += 10000 * arg2
        require (10000 * arg2) + playerBalance >= playerBalance
        require (10000 * arg2) + playerBalance >= 10000 * arg2
        playerBalance += 10000 * arg2
    else:
        require gas_remaining / 1000 * gasPrice <= 10000 * arg2
        require ext_code.size(stor6)
        call stor6.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, address(this.address), arg2
        require ext_call.success
        require ext_call.return_data[0]
        require (10000 * arg2) - (gas_remaining / 1000 * gasPrice) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] >= 0
        balanceOf[address(arg1)] = (10000 * arg2) - (gas_remaining / 1000 * gasPrice) + balanceOf[address(arg1)]
        require (10000 * arg2) - (gas_remaining / 1000 * gasPrice) + playerBalance >= playerBalance
        require playerBalance >= 0
        playerBalance = (10000 * arg2) - (gas_remaining / 1000 * gasPrice) + playerBalance
    emit Deposit(address(arg1), arg2, arg3);
}



}
