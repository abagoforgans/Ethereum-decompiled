contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
address stor1;
address stor2;
uint256 stor3;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    require code.data[2048 len 20]
    stor1 = code.data[2080 len 20]
    stor2 = code.data[2048 len 20]
    stor3 = 0
    return code.data[175 len 1861]
}



// =====================  Runtime code  =====================


const sub_4f153fe8(?) = 10000000 * 10^18

const sub_de5c4721(?) = 10000000 * 10^18

const PRESALE_PRICE = 28570


uint8 stor0; offset 160
address owner;
address stor1;
address stor2;
uint256 totalUsedTokens;
array of address stor5;

function paused() {
    return bool(stor0)
}

function owner() {
    return owner
}

function totalUsedTokens() {
    return totalUsedTokens
}

function unpause() {
    require owner == msg.sender
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor0
    stor0 = 1
    emit Pause()
}

function numberOfTokensLeft() {
    require totalUsedTokens <= 10000000 * 10^18
    return (-totalUsedTokens + 10000000 * 10^18)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function finalize() {
    require not stor0
    require owner == msg.sender
    call stor2 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor0 = 1
}

function _fallback() payable {
    require not stor0
    require totalUsedTokens <= 10000000 * 10^18
    require msg.value
    require 28570 * msg.value / msg.value == 28570
    require 28570 * msg.value > 1
    require (28570 * msg.value) + totalUsedTokens >= totalUsedTokens
    totalUsedTokens += 28570 * msg.value
    require (28570 * msg.value) + totalUsedTokens <= 10000000 * 10^18
    call stor2 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor5.length++
    if not stor5.length <= stor5.length + 1:
        idx = stor5.length + 1
        while stor5.length > idx:
            uint256(stor5[idx]) = 0
            idx = idx + 1
            continue 
    address(stor5[stor5.length]) = msg.sender
    require ext_code.size(stor1)
    call stor1.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, 28570 * msg.value
    require ext_call.success
    emit CreatePreSale((28570 * msg.value), msg.sender);
}



}
