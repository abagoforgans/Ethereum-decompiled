contract main {


// =======================  Init code  ======================


uint8 stor1;

function _fallback() payable {
    stor1 = 0
    require not msg.value
    return code.data[58 len 2033]
}



// =====================  Runtime code  =====================


const name = 'SGlobalCoin'

const totalSupply = 500000000 * 10^18

const decimals = 18

const symbol = 'SGC'

const tokenCreationRate = 70000


uint256 stor0;
uint8 stor1;
mapping of uint256 balanceOf;

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_20999af8(?) {
    return (stor0 / 10^18)
}

function sub_113f93d5(?) {
    if not stor1:
        balanceOf[0x2ab3d3009221dfbee3b85d0169d95d66386755d7] += 300000000 * 10^18
        stor1 = 1
}

function finalize() {
    call 0x2ab3d3009221dfbee3b85d0169d95d66386755d7 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function create() payable {
    if stor0 + (70000 * msg.value) <= 200000000 * 10^18:
        stor0 += 70000 * msg.value
        balanceOf[address(msg.sender)] += 70000 * msg.value
    call 0x2ab3d3009221dfbee3b85d0169d95d66386755d7 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer((70000 * msg.value), 0, msg.sender);
}

function _fallback() payable {
    if stor0 + (70000 * msg.value) <= 200000000 * 10^18:
        stor0 += 70000 * msg.value
        balanceOf[address(msg.sender)] += 70000 * msg.value
    call 0x2ab3d3009221dfbee3b85d0169d95d66386755d7 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer((70000 * msg.value), 0, msg.sender);
}



}
