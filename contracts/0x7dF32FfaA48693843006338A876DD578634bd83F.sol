contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = 0
    return code.data[60 len 1202]
}



// =====================  Runtime code  =====================


const name = ''

const decimals = 18

const symbol = ''


address owner;
uint256 totalSupply;
mapping of uint256 balances;

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function mint(uint256 arg1) {
    require owner == msg.sender
    totalSupply += arg1
    balances[stor0] += arg1
}

function transfer(address arg1, uint256 arg2) {
    require balances[address(msg.sender)] >= arg2
    balances[address(msg.sender)] -= arg2
    balances[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
