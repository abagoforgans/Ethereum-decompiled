contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor3;
address stor4;
address stor5;
address stor6;

function _fallback() payable {
    stor3 = 0
    stor4 = 0
    stor5 = 0x55d34b686aa8c04921397c5807db9ecedba00a4c
    stor6 = 0
    stor0 = msg.sender
    return code.data[112 len 2136]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
uint8 stor2;
uint256 totalBalance;
address stor4;
address saleAddress;
address tokenAddress;
address tokenContractAddress;

function getTokenAddress() {
    return tokenAddress
}

function getSaleAddress() {
    return saleAddress
}

function tokenContract() {
    return tokenContractAddress
}

function boughtTokens() {
    return bool(stor2)
}

function sale() {
    return saleAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
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
    require not stor2
    balanceOf[address(msg.sender)] += msg.value
    totalBalance += msg.value
}

function sub_8f8eec4d(?) {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function buy() {
    require stor4 != saleAddress
    require not stor2
    call saleAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor2 = 1
}

function withdrawETH() payable {
    require balanceOf[address(msg.sender)]
    require not stor2
    call msg.sender with:
       value balanceOf[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    totalBalance -= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
}

function sub_9a5c8bde(?) {
    require owner == msg.sender
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
}

function sub_4b136ba0(?) payable {
    require balanceOf[address(msg.sender)]
    require stor2
    require stor4 != tokenAddress
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
        require not stor2
        balanceOf[address(msg.sender)] += msg.value
        totalBalance += msg.value
    else:
        require balanceOf[address(msg.sender)]
        require stor2
        require stor4 != tokenAddress
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
