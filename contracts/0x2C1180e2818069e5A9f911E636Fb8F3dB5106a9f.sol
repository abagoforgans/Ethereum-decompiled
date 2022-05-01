contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
uint256 stor3;

function _fallback() payable {
    stor3 = 10000000000 * 10^18
    require not msg.value
    stor1[code.data[2915 len 20]] = stor3
    emit Transfer(stor3, 0, code.data[2915 len 20]);
    return code.data[226 len 2677]
}



// =====================  Runtime code  =====================


const name = Array(len=33, data='Emergency Response Ethereum-Base', 'd', Mask(8, -256, 'Emergency Response Ethereum-Base', 'd') << 256)

const decimals = 18

const symbol = 'ERH'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
  stop
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
