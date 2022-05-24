contract main {




// =====================  Runtime code  =====================


address owner;
uint32 stor1;
address tokenSenderAddress;
address tokenAddress;
uint256 currentSale;
uint256 totalSale;
uint256 minFunding;
uint256 maxFunding;
uint256 tokenPerETH;
uint8 stor8; offset 160
uint128 stor8; offset 160
address adminAddress;

function minFunding() {
    return minFunding
}

function maxFunding() {
    return maxFunding
}

function owner() {
    return owner
}

function tokenSender() {
    return address(tokenSenderAddress)
}

function currentSale() {
    return currentSale
}

function state() {
    return bool(uint8(stor8.field_160))
}

function tokenPerETH() {
    return tokenPerETH
}

function totalSale() {
    return totalSale
}

function admin() {
    return adminAddress
}

function token() {
    return tokenAddress
}

function changeAdmin(address arg1) {
    require msg.sender == adminAddress
    require arg1
    adminAddress = arg1
}

function changeState(bool arg1) {
    require msg.sender == adminAddress
    Mask(96, 0, stor8.field_160) = Mask(96, 0, arg1)
}

function _fallback() payable {
    require currentSale < totalSale
    require msg.value >= minFunding
    require msg.value <= maxFunding
    require 1 == bool(uint8(stor8.field_160))
    if msg.value + currentSale <= totalSale:
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(tokenAddress)
        call tokenAddress.transferFromAndLock(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, uint32(stor1), msg.sender, msg.value * tokenPerETH, 6 * msg.value * tokenPerETH / 10, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        currentSale += msg.value
        emit Payment(msg.value, msg.sender);
    else:
        call msg.sender with:
           value msg.value - totalSale + currentSale wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call owner with:
           value totalSale - currentSale wei
             gas 2300 * is_zero(value) wei
        require ext_code.size(tokenAddress)
        call tokenAddress.transferFromAndLock(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, uint32(stor1), msg.sender, (totalSale * tokenPerETH) - (currentSale * tokenPerETH), (6 * totalSale * tokenPerETH) - (6 * currentSale * tokenPerETH) / 10, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        currentSale = totalSale
        emit Payment(msg.value, msg.sender);
        emit LastFund(msg.value, msg.value - totalSale + currentSale);
}



}
