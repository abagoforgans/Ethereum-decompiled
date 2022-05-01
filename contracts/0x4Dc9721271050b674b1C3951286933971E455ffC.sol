contract main {


// =======================  Init code  ======================


uint8 stor1;
mapping of uint256 stor2;

function _fallback() payable {
    stor1 = 0
    require not msg.value
    stor2[0x695aec1b5de61d687dba181a8b11b622e609e13a] += 200000000 * 10^18
    stor2[0xf93f2bbd9753f0a54ae89ec3634f0e2f5b4bf1b6] += 100000000 * 10^18
    return code.data[287 len 1830]
}



// =====================  Runtime code  =====================


const name = 'testkk'

const totalSupply = 500000000 * 10^18

const decimals = 18

const symbol = 'TKK'

const tokenCreationRate = 70000


uint256 stor0;
mapping of uint256 balanceOf;

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_20999af8(?) {
    return (stor0 / 10^18)
}

function finalize() {
    call 0x695aec1b5de61d687dba181a8b11b622e609e13a with:
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
    call 0x695aec1b5de61d687dba181a8b11b622e609e13a with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer((70000 * msg.value), 0, msg.sender);
}

function _fallback() payable {
    if stor0 + (70000 * msg.value) <= 200000000 * 10^18:
        stor0 += 70000 * msg.value
        balanceOf[address(msg.sender)] += 70000 * msg.value
    call 0x695aec1b5de61d687dba181a8b11b622e609e13a with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer((70000 * msg.value), 0, msg.sender);
}



}
