contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor4;

function _fallback() payable {
    stor4 = 0
    require not msg.value
    stor1 = msg.sender
    stor0 = 200000000 * 10^18
    return code.data[118 len 3862]
}



// =====================  Runtime code  =====================


const name = 'HODL Religion Token'

const decimals = 18

const symbol = 'HODL'


uint256 totalSupply;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 minted;

function totalSupply() {
    return totalSupply
}

function minted() {
    return minted
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    require minted <= totalSupply
    if msg.value > 0:
        balanceOf[address(msg.sender)] += 10^18
        minted += 10^18
}

function getFund() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    if arg1 != this.address:
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        require balanceOf[stor1] + arg2 >= balanceOf[stor1]
        balanceOf[stor1] += arg2
        emit Transfer(arg2, msg.sender, owner);
}



}
