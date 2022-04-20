contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor0 = 0xeeda60d0c81836747f684ce48d53137d08392448
    create contract with 0 wei
                    code: code.data[3043 len 7030], stor0
    require create.new_address
    stor1 = address(create.new_address)
    return code.data[385 len 2658]
}



// =====================  Runtime code  =====================


address owner;
address b2bcTokenAddress;
uint256 startTime;
uint256 endTime;
uint256 weiCrowded;

function endTime() {
    return endTime
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function b2bcToken() {
    return b2bcTokenAddress
}

function weiCrowded() {
    return weiCrowded
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setStartEndTime(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1 >= block.timestamp
    require arg2 >= arg1
    startTime = arg1
    endTime = arg2
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    require ext_code.size(b2bcTokenAddress)
    call b2bcTokenAddress.isSoleout() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function buyTokens(address arg1) payable {
    require arg1
    if block.timestamp > endTime:
        require msg.value
        require block.timestamp <= endTime
    else:
        require ext_code.size(b2bcTokenAddress)
        call b2bcTokenAddress.isSoleout() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require msg.value
        require not ext_call.return_data[0]
    require weiCrowded + msg.value >= weiCrowded
    weiCrowded += msg.value
    if block.timestamp < startTime:
        if msg.value:
            require msg.value
            require 3000 * msg.value / msg.value == 3000
            if msg.value:
                require msg.value
                require 2000 * msg.value / msg.value == 2000
        require ext_code.size(b2bcTokenAddress)
        call b2bcTokenAddress.mintB2BC(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(arg1), 3000 * msg.value
        require ext_call.success
        emit TokenPurchase(msg.value, 3000 * msg.value, msg.sender, arg1);
    else:
        if block.timestamp - startTime / 24 * 3600 >= 11:
            if msg.value < 1000 * 10^18:
                if msg.value:
                    require msg.value
                    require 2000 * msg.value / msg.value == 2000
                    if msg.value:
                        require msg.value
                        require 2000 * msg.value / msg.value == 2000
                require ext_code.size(b2bcTokenAddress)
                call b2bcTokenAddress.mintB2BC(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 2000 * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, 2000 * msg.value, msg.sender, arg1);
            else:
                if msg.value:
                    require msg.value
                    require 2900 * msg.value / msg.value == 2900
                    if msg.value:
                        require msg.value
                        require 2000 * msg.value / msg.value == 2000
                require ext_code.size(b2bcTokenAddress)
                call b2bcTokenAddress.mintB2BC(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 2900 * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, 2900 * msg.value, msg.sender, arg1);
        else:
            if msg.value < 1000 * 10^18:
                if msg.value:
                    require msg.value
                    require 2300 * msg.value / msg.value == 2300
                    if msg.value:
                        require msg.value
                        require 2000 * msg.value / msg.value == 2000
                require ext_code.size(b2bcTokenAddress)
                call b2bcTokenAddress.mintB2BC(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 2300 * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, 2300 * msg.value, msg.sender, arg1);
            else:
                if msg.value:
                    require msg.value
                    require 2900 * msg.value / msg.value == 2900
                    if msg.value:
                        require msg.value
                        require 2000 * msg.value / msg.value == 2000
                require ext_code.size(b2bcTokenAddress)
                call b2bcTokenAddress.mintB2BC(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 2900 * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, 2900 * msg.value, msg.sender, arg1);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require msg.sender
    if block.timestamp > endTime:
        require msg.value
        require block.timestamp <= endTime
    else:
        require ext_code.size(b2bcTokenAddress)
        call b2bcTokenAddress.isSoleout() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require msg.value
        require not ext_call.return_data[0]
    require weiCrowded + msg.value >= weiCrowded
    weiCrowded += msg.value
    if block.timestamp < startTime:
        if msg.value:
            require msg.value
            require 3000 * msg.value / msg.value == 3000
            if msg.value:
                require msg.value
                require 2000 * msg.value / msg.value == 2000
        require ext_code.size(b2bcTokenAddress)
        call b2bcTokenAddress.mintB2BC(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, 3000 * msg.value
        require ext_call.success
        emit TokenPurchase(msg.value, 3000 * msg.value, msg.sender, msg.sender);
    else:
        if block.timestamp - startTime / 24 * 3600 >= 11:
            if msg.value < 1000 * 10^18:
                if msg.value:
                    require msg.value
                    require 2000 * msg.value / msg.value == 2000
                    if msg.value:
                        require msg.value
                        require 2000 * msg.value / msg.value == 2000
                require ext_code.size(b2bcTokenAddress)
                call b2bcTokenAddress.mintB2BC(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 2000 * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, 2000 * msg.value, msg.sender, msg.sender);
            else:
                if msg.value:
                    require msg.value
                    require 2900 * msg.value / msg.value == 2900
                    if msg.value:
                        require msg.value
                        require 2000 * msg.value / msg.value == 2000
                require ext_code.size(b2bcTokenAddress)
                call b2bcTokenAddress.mintB2BC(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 2900 * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, 2900 * msg.value, msg.sender, msg.sender);
        else:
            if msg.value < 1000 * 10^18:
                if msg.value:
                    require msg.value
                    require 2300 * msg.value / msg.value == 2300
                    if msg.value:
                        require msg.value
                        require 2000 * msg.value / msg.value == 2000
                require ext_code.size(b2bcTokenAddress)
                call b2bcTokenAddress.mintB2BC(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 2300 * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, 2300 * msg.value, msg.sender, msg.sender);
            else:
                if msg.value:
                    require msg.value
                    require 2900 * msg.value / msg.value == 2900
                    if msg.value:
                        require msg.value
                        require 2000 * msg.value / msg.value == 2000
                require ext_code.size(b2bcTokenAddress)
                call b2bcTokenAddress.mintB2BC(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 2900 * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, 2900 * msg.value, msg.sender, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
