contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
address stor3;

function _fallback() payable {
    stor1 = 60000
    require not msg.value
    stor0 = msg.sender
    require 420349 * 3600 >= block.timestamp
    create contract with 0 wei
                    code: code.data[2489 len 3042], address(this.address)
    require create.new_address
    stor3 = address(create.new_address)
    return code.data[180 len 2309]
}



// =====================  Runtime code  =====================


const endTime = 1514069999

const wallet = 0xf00d4ec8af332b0a5a9eb24bfce32cf158ab6a4a

const startTime = (420349 * 3600)

const chfCentsPerTokenWhileBonus = 1875

const bonusTime = 6000

const hasEnded = (block.timestamp > 1514069999)

const chfCentsPerToken = 2500


address owner;
uint256 chfCentsPerEth;
uint256 weiRaised;
address tokenAddress;

function weiRaised() {
    return weiRaised
}

function chfCentsPerEth() {
    return chfCentsPerEth
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function updateChfCentsPerEth(uint256 arg1) {
    require owner == msg.sender
    chfCentsPerEth = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function convertWeiToTokens(uint256 arg1) {
    if block.timestamp < 420349 * 3600:
        return (arg1 * chfCentsPerEth / 2500)
    if block.timestamp > 1513262400:
        return (arg1 * chfCentsPerEth / 2500)
    return (arg1 * chfCentsPerEth / 1875)
}

function giveTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] >= arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function allocateAllUnsoldTokens(address arg1) {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require block.timestamp > 1514069999
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), ext_call.return_data[0]
    require ext_call.success
}

function buyTokens(address arg1) payable {
    require arg1
    require block.timestamp >= 420349 * 3600
    require block.timestamp <= 1514069999
    require msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if block.timestamp < 420349 * 3600:
        require msg.value * chfCentsPerEth / 2500 <= ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), msg.value * chfCentsPerEth / 2500
        require ext_call.success
        emit TokenPurchase(msg.value, msg.value * chfCentsPerEth / 2500, msg.sender, arg1);
    else:
        if block.timestamp > 1513262400:
            require msg.value * chfCentsPerEth / 2500 <= ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), msg.value * chfCentsPerEth / 2500
            require ext_call.success
            emit TokenPurchase(msg.value, msg.value * chfCentsPerEth / 2500, msg.sender, arg1);
        else:
            require msg.value * chfCentsPerEth / 1875 <= ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), msg.value * chfCentsPerEth / 1875
            require ext_call.success
            emit TokenPurchase(msg.value, msg.value * chfCentsPerEth / 1875, msg.sender, arg1);
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    call 0xf00d4ec8af332b0a5a9eb24bfce32cf158ab6a4a with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require msg.sender
    require block.timestamp >= 420349 * 3600
    require block.timestamp <= 1514069999
    require msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if block.timestamp < 420349 * 3600:
        require msg.value * chfCentsPerEth / 2500 <= ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value * chfCentsPerEth / 2500
        require ext_call.success
        emit TokenPurchase(msg.value, msg.value * chfCentsPerEth / 2500, msg.sender, msg.sender);
    else:
        if block.timestamp > 1513262400:
            require msg.value * chfCentsPerEth / 2500 <= ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value * chfCentsPerEth / 2500
            require ext_call.success
            emit TokenPurchase(msg.value, msg.value * chfCentsPerEth / 2500, msg.sender, msg.sender);
        else:
            require msg.value * chfCentsPerEth / 1875 <= ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value * chfCentsPerEth / 1875
            require ext_call.success
            emit TokenPurchase(msg.value, msg.value * chfCentsPerEth / 1875, msg.sender, msg.sender);
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    call 0xf00d4ec8af332b0a5a9eb24bfce32cf158ab6a4a with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
