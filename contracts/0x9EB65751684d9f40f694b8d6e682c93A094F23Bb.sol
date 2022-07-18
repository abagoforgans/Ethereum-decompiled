contract main {


// =======================  Init code  ======================


uint32 stor0; offset 160
uint32 stor0; offset 192
address stor0;
address stor1;
uint256 stor4;
uint8 stor5; offset 160
address stor5;
address stor6;

function _fallback() payable {
    uint8(stor5.field_160) = 0
    require not msg.value
    require code.data[14162 len 32] >= code.data[14130 len 32]
    require 10^18 * code.data[14194 len 32] > 0
    create contract with 0 wei
                    code: code.data[10246 len 3884]
    require create.new_address
    address(stor0.field_0) = address(create.new_address)
    uint32(stor0.field_160) = code.data[14158 len 4]
    uint32(stor0.field_192) = code.data[14190 len 4]
    stor4 = 10^18 * code.data[14194 len 32]
    stor1 = 0x439415b03708bde585856b46666f34b65af6a5c3
    address(stor5.field_0) = msg.sender
    require ext_code.size(address(create.new_address))
    call address(create.new_address).mint(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args 0x78cd8f794686ee8f6644447e961ef52776edf0cb, 0
    require ext_call.success
    require ext_code.size(address(stor0.field_0))
    call address(stor0.field_0).mint(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args 0xff823588500d3ecd7777a1cfa198958df4deea11, 10^18
    require ext_call.success
    require ext_code.size(address(stor0.field_0))
    call address(stor0.field_0).mint(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args 0xff823588500d3ecd7777a1cfa198958df4deea11, 0
    require ext_call.success
    require ext_code.size(address(stor0.field_0))
    call address(stor0.field_0).addExcluded(address arg1) with:
         gas gas_remaining - 710 wei
        args 0x78cd8f794686ee8f6644447e961ef52776edf0cb
    require ext_call.success
    require ext_code.size(address(stor0.field_0))
    call address(stor0.field_0).addExcluded(address arg1) with:
         gas gas_remaining - 710 wei
        args 0xff823588500d3ecd7777a1cfa198958df4deea11
    require ext_call.success
    require ext_code.size(address(stor0.field_0))
    call address(stor0.field_0).addExcluded(address arg1) with:
         gas gas_remaining - 710 wei
        args 0xff823588500d3ecd7777a1cfa198958df4deea11
    require ext_call.success
    create contract with 0 wei
                    code: code.data[8673 len 1573]
    require create.new_address
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining - 710 wei
        args address(stor5.field_0)
    require ext_call.success
    stor6 = address(create.new_address)
    return code.data[1605 len 7068]
}



// =====================  Runtime code  =====================


uint32 stor0; offset 160
uint32 stor0; offset 192
address tokenAddress;
address walletAddress;
uint256 weiRaised;
uint256 soldTokens;
uint256 stor4;
uint8 stor5; offset 160
address owner;
address rateProviderAddress;

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function soldTokens() {
    return soldTokens
}

function isFinalized() {
    return bool(stor5)
}

function owner() {
    return owner
}

function rateProvider() {
    return rateProviderAddress
}

function token() {
    return tokenAddress
}

function hasStarted() {
    return block.timestamp >= uint32(stor0.field_160)
}

function setRateProvider(address arg1) {
    require owner == msg.sender
    require arg1
    rateProviderAddress = arg1
}

function setHardCap(uint256 arg1) {
    require owner == msg.sender
    require not stor5
    require 10^18 * arg1 > stor4
    stor4 = 10^18 * arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setEndTime(uint256 arg1) {
    require owner == msg.sender
    require not stor5
    require arg1 > uint32(stor0.field_160)
    uint32(stor0.field_192) = uint32(arg1)
}

function setStartTime(uint256 arg1) {
    require owner == msg.sender
    require not stor5
    require arg1 < uint32(stor0.field_192)
    uint32(stor0.field_160) = uint32(arg1)
}

function addExcluded(address arg1) {
    require owner == msg.sender
    require not stor5
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9321573 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function hasEnded() {
    if block.timestamp > uint32(stor0.field_192):
        return (block.timestamp > uint32(stor0.field_192))
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return (ext_call.return_data[0] > stor4)
}

function finalize() {
    require owner == msg.sender
    require not stor5
    require ext_code.size(tokenAddress)
    if block.timestamp <= uint32(stor0.field_192):
        call tokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0] > stor4
    call tokenAddress.finishMinting() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.crowdsaleFinished() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    emit Finalized()
    stor5 = 1
}

function _fallback() payable {
    require msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(rateProviderAddress)
    call rateProviderAddress.getRate(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, soldTokens, msg.value
    require ext_call.success
    require ext_code.size(rateProviderAddress)
    call rateProviderAddress.getRateScale() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.value >= 10^13
    require block.timestamp >= uint32(stor0.field_160)
    require block.timestamp <= uint32(stor0.field_192)
    require msg.value != 0
    require ext_call.return_data[0] <= stor4
    if msg.value:
        require msg.value
        require ext_call.return_data[0] * msg.value / msg.value == ext_call.return_data[0]
    require ext_call.return_data[0]
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require (ext_call.return_data[0] * msg.value / ext_call.return_data[0]) + soldTokens >= soldTokens
    soldTokens += ext_call.return_data[0] * msg.value / ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0] * msg.value / ext_call.return_data[0]
    require ext_call.success
    emit TokenPurchase(msg.value, ext_call.return_data[0] * msg.value / ext_call.return_data[0], msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
