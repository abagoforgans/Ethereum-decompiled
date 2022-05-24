contract main {




// =====================  Runtime code  =====================


const name = 'Hedger'

const decimals = 18

const symbol = 'HDR'


uint256 totalsupply;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalsupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function Totalsupply() {
    return totalsupply
}

function allowance(address arg1, address arg2) {
    require arg1
    require arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burnTokens(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= balanceOf[msg.sender]
    require arg1 > 0
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    require arg1 <= totalsupply
    totalsupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    require balanceOf[stor1] + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[stor1] + balanceOf[arg1]
    balanceOf[stor1] = 0
    owner = arg1
    emit Transfer(balanceOf[stor1], msg.sender, arg1);
}

function mintTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 > 0
    require arg1
    require arg2 > 0
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 + totalsupply >= totalsupply
    totalsupply += arg2
    emit Transfer(arg2, 0, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 >= 0
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 >= 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
