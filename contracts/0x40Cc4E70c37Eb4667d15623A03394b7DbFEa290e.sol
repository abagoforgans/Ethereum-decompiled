contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 1969]




// =====================  Runtime code  =====================


const name = 'FENGSHUBI'

const totalSupply = 500 * 10^6

const decimals = 18

const symbol = 'FSB'

const tokenCreationRate = 21240


uint256 sub_20999af8;
mapping of uint256 balanceOf;

function sub_20999af8(?) {
    return sub_20999af8
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_113f93d5(?) {
    balanceOf[0x11235a41ba01477f48833cf69983c48779ae6d1] = 447000000 * 10^18
}

function finalize() {
    call 0x011235a41ba01477f48833cf69983c48779ae6d1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function create() payable {
    if sub_20999af8 + (21240 * msg.value) <= 53000000 * 10^18:
        sub_20999af8 += 21240 * msg.value
        balanceOf[address(msg.sender)] += 21240 * msg.value
    emit Transfer((21240 * msg.value), 0, msg.sender);
}

function _fallback() payable {
    if sub_20999af8 + (21240 * msg.value) <= 53000000 * 10^18:
        sub_20999af8 += 21240 * msg.value
        balanceOf[address(msg.sender)] += 21240 * msg.value
    emit Transfer((21240 * msg.value), 0, msg.sender);
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



}
