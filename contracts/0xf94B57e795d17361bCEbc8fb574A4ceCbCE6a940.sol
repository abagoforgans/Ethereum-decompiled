contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[4604 len 20]
    stor2 = code.data[4624 len 32]
    stor3 = code.data[4656 len 32]
    stor4 = code.data[4688 len 32]
    stor5 = code.data[4720 len 32]
    stor6 = code.data[4752 len 32]
    return code.data[273 len 4319]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 inRate;
uint256 outRate;
uint256 minRate;
uint256 minLot;
uint256 leveRage;

function minRate() {
    return minRate
}

function outRate() {
    return outRate
}

function inRate() {
    return inRate
}

function owner() {
    return owner
}

function minLot() {
    return minLot
}

function leveRage() {
    return leveRage
}

function token() {
    return tokenAddress
}

function SetInRate(uint256 arg1) {
    require msg.sender == owner
    inRate = arg1
}

function SetOutRate(uint256 arg1) {
    require msg.sender == owner
    outRate = arg1
}

function SetLot(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    minLot = arg1
}

function ChangeToken(address arg1) {
    require msg.sender == owner
    require arg1
    tokenAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function WithdrawEther(uint256 arg1) {
    require msg.sender == owner
    require eth.balance(this.address) >= arg1
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function WithdrawToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg2
    require ext_call.success
    require ext_call.return_data[0]
}

function TokensOut() payable {
    require outRate
    require outRate
    require msg.value / outRate >= minLot
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    if msg.value > ext_call.return_data[0] * outRate:
        if msg.value - (ext_call.return_data[0] * outRate) > 0:
            call msg.sender with:
               value msg.value - (ext_call.return_data[0] * outRate) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / outRate
    require ext_call.success
    require ext_call.return_data[0]
    outRate += msg.value / outRate * leveRage
    inRate += msg.value / outRate * leveRage
    emit Sent(msg.value, msg.value / outRate, msg.sender);
}

function _fallback() payable {
    require outRate
    require outRate
    require msg.value / outRate >= minLot
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    if msg.value > ext_call.return_data[0] * outRate:
        if msg.value - (ext_call.return_data[0] * outRate) > 0:
            call msg.sender with:
               value msg.value - (ext_call.return_data[0] * outRate) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / outRate
    require ext_call.success
    require ext_call.return_data[0]
    outRate += msg.value / outRate * leveRage
    inRate += msg.value / outRate * leveRage
    emit Sent(msg.value, msg.value / outRate, msg.sender);
}

function TokensIn(uint256 arg1) {
    require inRate
    require inRate
    if arg1 <= eth.balance(this.address) / inRate:
        require arg1 >= minLot
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        require ext_call.return_data[0] >= arg1
        require ext_code.size(tokenAddress)
        call tokenAddress.approve(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(this.address), arg1
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, address(this.address), arg1
        require ext_call.success
        require ext_call.return_data[0]
        call msg.sender with:
           value arg1 * inRate wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if inRate - (arg1 * leveRage) >= minRate:
            inRate += -1 * arg1 * leveRage
            outRate += -1 * arg1 * leveRage
        emit Received(arg1 * inRate, arg1, msg.sender);
    else:
        require eth.balance(this.address) / inRate >= minLot
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        require ext_call.return_data[0] >= eth.balance(this.address) / inRate
        require ext_code.size(tokenAddress)
        call tokenAddress.approve(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(this.address), eth.balance(this.address) / inRate
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, address(this.address), eth.balance(this.address) / inRate
        require ext_call.success
        require ext_call.return_data[0]
        call msg.sender with:
           value eth.balance(this.address) / inRate * inRate wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if inRate - (eth.balance(this.address) / inRate * leveRage) >= minRate:
            inRate += -1 * eth.balance(this.address) / inRate * leveRage
            outRate += -1 * eth.balance(this.address) / inRate * leveRage
        emit Received(eth.balance(this.address) / inRate * inRate, eth.balance(this.address) / inRate, msg.sender);
}



}
