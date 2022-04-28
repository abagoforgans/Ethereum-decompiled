contract main {


// =======================  Init code  ======================


uint8 stor2; offset 160
address stor2;
address stor3;
uint256 stor4;

function _fallback() payable {
    uint8(stor2.field_160) = 0
    require not msg.value
    address(stor2.field_0) = msg.sender
    require code.data[2475 len 20]
    stor3 = code.data[2475 len 20]
    stor4 = 0
    return code.data[154 len 2309]
}



// =====================  Runtime code  =====================


const name = 'HyperQuant Presale Token'

const decimals = 18

const sub_4f153fe8(?) = 10000000 * 10^18

const symbol = 'HQPreSale'

const sub_de5c4721(?) = 10000000 * 10^18

const PRESALE_PRICE = 28570


uint256 totalSupply;
mapping of uint256 balanceOf;
uint8 stor2; offset 160
address owner;
address stor3;
uint256 stor4;
mapping of uint256 stor5;
array of address stor6;

function totalSupply() {
    return totalSupply
}

function paused() {
    return bool(stor2)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function unpause() {
    require owner == msg.sender
    require stor2
    stor2 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor2
    stor2 = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function finalize() {
    require not stor2
    require owner == msg.sender
    call stor3 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor2 = 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require not stor2
    require stor4 <= 10000000 * 10^18
    require msg.value
    require 28570 * msg.value / msg.value == 28570
    require 28570 * msg.value > 1
    require (28570 * msg.value) + stor4 >= stor4
    stor4 += 28570 * msg.value
    call stor3 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor6.length++
    if not stor6.length <= stor6.length + 1:
        idx = stor6.length + 1
        while stor6.length > idx:
            uint256(stor6[idx]) = 0
            idx = idx + 1
            continue 
    address(stor6[stor6.length]) = msg.sender
    require (28570 * msg.value) + stor5[address(msg.sender)] >= stor5[address(msg.sender)]
    stor5[address(msg.sender)] += 28570 * msg.value
    emit CreatePreSale((28570 * msg.value), msg.sender);
}



}
