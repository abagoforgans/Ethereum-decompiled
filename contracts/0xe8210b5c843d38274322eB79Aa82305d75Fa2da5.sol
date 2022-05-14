contract main {




// =====================  Runtime code  =====================


const name = 'SoarUSD'

const decimals = 18

const symbol = 'SoarUSD'


uint256 totalsupply;
address owner;
address central_account;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalsupply
}

function central_account() {
    return central_account
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

function set_centralAccount(address arg1) {
    require msg.sender == owner
    require arg1
    central_account = arg1
}

function approve(address arg1, uint256 arg2) {
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mintTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 > 0
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require totalsupply + arg2 >= totalsupply
    totalsupply += arg2
    emit Transfer(arg2, 0, arg1);
}

function burnTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require balanceOf[address(arg1)] >= arg2
    require arg1
    require arg2 > 0
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalsupply
    totalsupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 >= 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function TransferBy(address arg1, address arg2, uint256 arg3) {
    require msg.sender == central_account
    require arg2
    require arg1
    require balanceOf[address(arg1)] >= arg3
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 >= 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
