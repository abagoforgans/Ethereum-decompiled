contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor4;
address stor5;
uint256 stor8; offset 8

function _fallback() payable {
    stor8 = 1
    require not msg.value
    stor0 = msg.sender
    require code.data[5043 len 20]
    stor4 = code.data[5043 len 20]
    require code.data[5075 len 20]
    stor5 = code.data[5075 len 20]
    require code.data[5095 len 32] > 0
    require code.data[5127 len 32] > 0
    stor2 = code.data[5095 len 32]
    stor3 = code.data[5095 len 32]
    stor1 = code.data[5127 len 32]
    return code.data[478 len 4553]
}



// =====================  Runtime code  =====================


address owner;
uint256 rate;
uint256 total;
uint256 remain;
address tokenAddress;
address walletAddress;
mapping of uint256 balances;
mapping of uint256 sub_6e072380;
uint8 withdrawable;
uint8 pauseFlag; offset 8
uint256 stor8; offset 8

function pauseFlag() {
    return bool(pauseFlag)
}

function balances(address arg1) {
    return balances[arg1]
}

function rate() {
    return rate
}

function total() {
    return total
}

function withdrawable() {
    return bool(withdrawable)
}

function wallet() {
    return walletAddress
}

function remain() {
    return remain
}

function sub_6e072380(?) {
    return sub_6e072380[arg1]
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function pause() {
    require msg.sender == owner
    stor8 = 1
}

function resume() {
    require msg.sender == owner
    stor8 = 0
}

function sub_11dffc1a(?) payable {
    require msg.sender == owner
}

function enableWithdraw() {
    require msg.sender == owner
    withdrawable = 1
}

function getTokenSold() {
    require remain <= total
    return (total - remain)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_a2dced08(?) {
    require msg.sender == owner
    require arg1 > 0
    call walletAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_185f69c6(?) {
    require msg.sender == owner
    require arg1 > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args walletAddress, arg1
    require ext_call.success
    require ext_call.return_data[0]
}

function withdraw() {
    require withdrawable
    require balances[address(msg.sender)] > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, balances[address(msg.sender)]
    require ext_call.success
    require ext_call.return_data[0]
    balances[address(msg.sender)] = 0
    sub_6e072380[address(msg.sender)] = 0
    emit TokenWithdrawed(balances[address(msg.sender)], msg.sender);
    return 0
}

function refund() {
    require not withdrawable
    require not pauseFlag
    require balances[address(msg.sender)] > 0
    require sub_6e072380[address(msg.sender)] > 0
    balances[address(msg.sender)] = 0
    sub_6e072380[address(msg.sender)] = 0
    require remain + balances[address(msg.sender)] >= remain
    remain += balances[address(msg.sender)]
    call msg.sender with:
       value sub_6e072380[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Refunded(sub_6e072380[address(msg.sender)], balances[address(msg.sender)], msg.sender);
}

function _fallback() payable {
    require not withdrawable
    require not pauseFlag
    require msg.value > 0
    require remain > 0
    if not msg.value:
        require remain >= 0
        require balances[address(msg.sender)] >= balances[address(msg.sender)]
        require sub_6e072380[address(msg.sender)] + msg.value >= sub_6e072380[address(msg.sender)]
        sub_6e072380[address(msg.sender)] += msg.value
        require 0 <= remain
        emit TokenPurchase(msg.value, 0, msg.sender);
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require remain >= msg.value * rate
        require balances[address(msg.sender)] + (msg.value * rate) >= balances[address(msg.sender)]
        balances[address(msg.sender)] += msg.value * rate
        require sub_6e072380[address(msg.sender)] + msg.value >= sub_6e072380[address(msg.sender)]
        sub_6e072380[address(msg.sender)] += msg.value
        require msg.value * rate <= remain
        remain += -1 * msg.value * rate
        emit TokenPurchase(msg.value, msg.value * rate, msg.sender);
}



}
