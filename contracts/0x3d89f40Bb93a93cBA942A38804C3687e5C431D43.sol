contract main {




// =====================  Runtime code  =====================


mapping of uint256 allowance;
mapping of uint256 balanceOf;
uint256 totalSupply;
uint256 decimals;
address owner;
uint256 symbol;

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
    revert
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function EthereumGold() {
    totalSupply = 10445070100 * 10^6
    symbol = 'HAAX'
    owner = 0xa300667d52c167d7547b4edaf4a7b8b94a178501
    balanceOf[0xa300667d52c167d7547b4edaf4a7b8b94a178501] = 10445070100 * 10^6
    decimals = 8
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
