contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
uint256 stor1;
address stor2;
address stor3;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    stor1 = 421416 * 24 * 3600
    require not msg.value
    address(stor0.field_0) = msg.sender
    require code.data[1913 len 20]
    require code.data[1945 len 20]
    require stor1 > block.timestamp
    stor2 = code.data[1913 len 20]
    stor3 = code.data[1945 len 20]
    return code.data[202 len 1699]
}



// =====================  Runtime code  =====================


const rate = 680

const cap = 7352941176470588235294


uint8 stor0; offset 160
address owner;
uint256 endTime;
address tokenAddress;
address walletAddress;
uint256 weiRaised;

function endTime() {
    return endTime
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function isFinalized() {
    return bool(stor0)
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function hasEnded() {
    return (block.timestamp > endTime)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function finalize() {
    require owner == msg.sender
    require not stor0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    endTime = block.timestamp
    emit Finalized()
    stor0 = 1
}

function buyTokens(address arg1) payable {
    require arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.mintingFinished() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.value + weiRaised >= weiRaised
    require not ext_call.return_data[0]
    require msg.value + weiRaised <= 7352941176470588235294
    require block.timestamp <= endTime
    require msg.value != 0
    if not msg.value:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), 0
        require ext_call.success
        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
    else:
        require 680 * msg.value / msg.value == 680
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), 680 * msg.value
        require ext_call.success
        emit TokenPurchase(msg.value, 680 * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.mintingFinished() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.value + weiRaised >= weiRaised
    require not ext_call.return_data[0]
    require msg.value + weiRaised <= 7352941176470588235294
    require block.timestamp <= endTime
    require msg.value != 0
    if not msg.value:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 0
        require ext_call.success
        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
    else:
        require 680 * msg.value / msg.value == 680
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 680 * msg.value
        require ext_call.success
        emit TokenPurchase(msg.value, 680 * msg.value, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
