contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor2;
mapping of uint256 stor3;

function _fallback() payable {
    stor0 = 100000 * 10^18
    require not msg.value
    stor2 = msg.sender
    stor3[stor2] = stor0
    return code.data[213 len 3857]
}



// =====================  Runtime code  =====================


const name = 'StromaCn'

const decimals = 18

const unitsOneEthCanBuy = 200

const symbol = 'STRC'


uint256 totalSupply;
uint256 totalEthInWei;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function totalEthInWei() {
    return totalEthInWei
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
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
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    totalEthInWei += msg.value
    if balanceOf[stor2] >= 200 * msg.value:
        balanceOf[stor2] += -200 * msg.value
        balanceOf[address(msg.sender)] += 200 * msg.value
        emit Transfer((200 * msg.value), owner, msg.sender);
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
