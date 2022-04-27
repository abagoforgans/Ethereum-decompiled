contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor7;
mapping of uint256 stor8;

function _fallback() payable {
    stor0 = 5000000 * 10^18
    stor1 = 0
    stor2 = 2
    stor3 = 90
    stor4 = 10^18 * stor2 / 700 * stor3 / 100
    stor5 = 420360 * 24 * 3600
    stor6 = 422520 * 24 * 3600
    require not msg.value
    stor7 = code.data[4059 len 20]
    stor5 = block.timestamp
    stor6 = stor5 + (2160 * 24 * 3600)
    stor8[stor7] = 0
    return code.data[332 len 3715]
}



// =====================  Runtime code  =====================


const name = 'Mitio token'

const decimals = 18

const symbol = 'MITIO'


uint256 stor0;
uint256 totalSupply;
uint256 stor4;
uint256 stor5;
uint256 stor6;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function getOwner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw() payable {
    require msg.sender == owner
    require eth.balance(this.address)
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        return 0
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require block.timestamp >= stor5
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
    require block.timestamp >= stor5
    require block.timestamp <= stor6
    require totalSupply < stor0
    require msg.value >= stor4
    require stor4
    require msg.value / stor4 > 0
    require totalSupply + (msg.value / stor4) <= stor0
    require totalSupply + (msg.value / stor4) >= totalSupply
    totalSupply += msg.value / stor4
    require balanceOf[address(msg.sender)] + (msg.value / stor4) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value / stor4
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require block.timestamp >= stor5
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
