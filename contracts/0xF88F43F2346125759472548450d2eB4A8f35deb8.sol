contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
mapping of uint256 stor2;

function _fallback() payable {
    stor0 = 300000004
    require not msg.value
    stor1 = msg.sender
    stor2[stor1] = stor0
    emit 0xe3e4115e: Array(len=13, data='kewl coin! ;)')
    return code.data[314 len 3705]
}



// =====================  Runtime code  =====================


const name = 'KewlCoin'

const decimals = 0

const symbol = ';)'


uint256 totalSupply;
address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function Kill() {
    require msg.sender == stor1
    emit 0xe3e4115e: Array(len=12, data='cool kill ;)')
    selfdestruct(this.address)
}

function _fallback() payable {
    revert
}

function Donate() payable {
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    emit 0xe3e4115e: Array(len=17, data='kewl donation! ;)')
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    emit 0xe3e4115e: Array(len=16, data='kewl approval ;)')
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
    emit 0xe3e4115e: Array(len=16, data='kewl transfer ;)')
    return 1
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
    balanceOf[address(arg2)] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    emit 0xe3e4115e: Array(len=16, data='kewl transfer ;)')
    return 1
}



}
