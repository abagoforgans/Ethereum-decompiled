contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor4;
uint256 stor5;
address stor6;
address stor7;
address stor8;

function _fallback() payable {
    stor2 = 0
    stor4 = 100
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor8 = 0
    stor0 = msg.sender
    return code.data[100 len 1950]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
uint256 reward;
uint8 stor3;
uint256 rewardFee;
uint256 totalBalance;
address stor6;
address saleAddress;
address tokenAddress;
address tokenContractAddress;

function getTokenAddress() {
    return tokenAddress
}

function reward() {
    return reward
}

function getSaleAddress() {
    return saleAddress
}

function tokenContract() {
    return tokenContractAddress
}

function boughtTokens() {
    return bool(stor3)
}

function sale() {
    return saleAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function rewardFee() {
    return rewardFee
}

function owner() {
    return owner
}

function totalBalance() {
    return totalBalance
}

function token() {
    return tokenAddress
}

function setSaleAddress(address arg1) {
    require owner == msg.sender
    saleAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function setTokenAddress(address arg1) {
    require owner == msg.sender
    tokenAddress = arg1
    tokenContractAddress = arg1
}

function deposit() payable {
    require not stor3
    reward += msg.value * rewardFee / 1000
    balanceOf[address(msg.sender)] = msg.value - (msg.value * rewardFee / 1000) + balanceOf[address(msg.sender)]
    totalBalance = msg.value - (msg.value * rewardFee / 1000) + totalBalance
}

function withdrawETH() payable {
    require not stor3
    call msg.sender with:
       value balanceOf[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    totalBalance -= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
}

function buy() {
    require stor6 != saleAddress
    call saleAddress with:
       value eth.balance(this.address) - reward wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call msg.sender with:
       value reward wei
         gas 2300 * is_zero(value) wei
    stor3 = 1
}

function sub_4b136ba0(?) payable {
    require stor3
    require stor6 != tokenAddress
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require totalBalance
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalBalance
    require ext_call.success
    balanceOf[address(msg.sender)] = 0
}

function _fallback() payable {
    if msg.value > 0:
        require not stor3
        reward += msg.value * rewardFee / 1000
        balanceOf[address(msg.sender)] = msg.value - (msg.value * rewardFee / 1000) + balanceOf[address(msg.sender)]
        totalBalance = msg.value - (msg.value * rewardFee / 1000) + totalBalance
    else:
        require stor3
        require stor6 != tokenAddress
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require totalBalance
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalBalance
        require ext_call.success
        balanceOf[address(msg.sender)] = 0
}



}
