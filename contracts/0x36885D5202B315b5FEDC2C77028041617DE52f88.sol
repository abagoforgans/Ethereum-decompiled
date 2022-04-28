contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    require code.data[2054 len 20]
    stor1 = code.data[2054 len 20]
    stor2 = 0
    return code.data[154 len 1888]
}



// =====================  Runtime code  =====================


const name = 'HyperQuant Presale Token'

const decimals = 18

const sub_4f153fe8(?) = 10000000 * 10^18

const symbol = 'HQPreSale'

const sub_de5c4721(?) = 10000000 * 10^18

const PRESALE_PRICE = 28570


uint8 stor0; offset 160
address owner;
address stor1;
uint256 stor2;
mapping of uint256 stor3;
array of address stor4;

function paused() {
    return bool(stor0)
}

function owner() {
    return owner
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

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function finalize() {
    require not stor0
    require owner == msg.sender
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor0 = 1
}

function _fallback() payable {
    require not stor0
    require stor2 <= 10000000 * 10^18
    require msg.value
    require 28570 * msg.value / msg.value == 28570
    require 28570 * msg.value > 1
    require (28570 * msg.value) + stor2 >= stor2
    stor2 += 28570 * msg.value
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        idx = stor4.length + 1
        while stor4.length > idx:
            uint256(stor4[idx]) = 0
            idx = idx + 1
            continue 
    address(stor4[stor4.length]) = msg.sender
    require (28570 * msg.value) + stor3[address(msg.sender)] >= stor3[address(msg.sender)]
    stor3[address(msg.sender)] += 28570 * msg.value
    emit CreatePreSale((28570 * msg.value), msg.sender);
}



}
