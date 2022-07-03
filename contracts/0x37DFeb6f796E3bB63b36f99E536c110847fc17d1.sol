contract main {


// =======================  Init code  ======================


uint8 stor0;
address stor0; offset 8
uint256 stor1;
uint256 stor5;
address stor6;
address stor7;

function _fallback() payable {
    uint8(stor0.field_0) = 0
    stor5 = 0
    require not msg.value
    address(stor0.field_8) = code.data[2640 len 20]
    stor6 = msg.sender
    stor7 = code.data[2672 len 20]
    stor1 = code.data[2692 len 32]
    return code.data[156 len 2472]
}



// =====================  Runtime code  =====================


uint8 stor0;
address tokenAddress; offset 8
uint256 hardCap;
uint256 sold;
uint256 etherCollected;
mapping of struct ownerOf;
uint256 stor5;
address stor7;

function sold() {
    return sold
}

function active() {
    return bool(stor0)
}

function etherCollected() {
    return etherCollected
}

function ownerOf(uint256 arg1) {
    return ownerOf[arg1].field_0
}

function tokenAddress() {
    return tokenAddress
}

function isClaimed(uint256 arg1) {
    return bool(ownerOf[arg1].field_768)
}

function lockupOf(uint256 arg1) {
    return ownerOf[arg1].field_512
}

function amountOf(uint256 arg1) {
    return ownerOf[arg1].field_256
}

function hardCap() {
    return hardCap
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    require tokenAddress == msg.sender
    require not stor0
    require arg2 == hardCap
    stor0 = 1
    emit Activated(block.timestamp);
}

function endPresale() {
    require stor7 == msg.sender
    require stor0
    if sold < hardCap:
        require sold <= hardCap
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor7, hardCap - sold
        require ext_call.success
    stor0 = 0
    emit Finished(block.timestamp);
}

function redeem(uint256 arg1) {
    require arg1 <= stor5
    require ownerOf[arg1].field_0 == msg.sender
    require block.timestamp >= ownerOf[arg1].field_512
    require not ownerOf[arg1].field_768
    ownerOf[arg1].field_768 = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args ownerOf[arg1].field_0, ownerOf[arg1].field_256
    require ext_call.success
    emit Claim(ownerOf[arg1].field_0, arg1, ownerOf[arg1].field_256);
}

function _fallback() payable {
    require stor0
    require msg.value
    require msg.value / 10^9
    require msg.value / 10^9 <= hardCap - sold
    etherCollected += msg.value
    sold += msg.value / 10^9
    call stor7 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / 10^9
    require ext_call.success
    emit 0xdc6ab1a6: address(msg.sender), msg.value / 10^9, msg.value, block.timestamp
}

function shortBuy() payable {
    require stor0
    require msg.value
    stor5++
    require msg.value / 909090909
    require msg.value / 909090909 <= hardCap - sold
    ownerOf[stor5].field_0 = msg.sender
    ownerOf[stor5].field_256 = msg.value / 909090909
    ownerOf[stor5].field_512 = block.timestamp + (2016 * 24 * 3600)
    ownerOf[stor5].field_768 = 0
    etherCollected += msg.value
    sold += msg.value / 909090909
    call stor7 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0xce9f9735: msg.sender, stor5, msg.value / 909090909, msg.value, block.timestamp, block.timestamp + (2016 * 24 * 3600)
}

function longBuy() payable {
    require stor0
    require msg.value
    stor5++
    require msg.value / 800 * 10^6
    require msg.value / 800 * 10^6 <= hardCap - sold
    ownerOf[stor5].field_0 = msg.sender
    ownerOf[stor5].field_256 = msg.value / 800 * 10^6
    ownerOf[stor5].field_512 = block.timestamp + (4032 * 24 * 3600)
    ownerOf[stor5].field_768 = 0
    etherCollected += msg.value
    sold += msg.value / 800 * 10^6
    call stor7 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0xce9f9735: msg.sender, stor5, msg.value / 800 * 10^6, msg.value, block.timestamp, block.timestamp + (4032 * 24 * 3600)
}



}
