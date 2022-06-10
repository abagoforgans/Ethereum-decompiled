contract main {




// =====================  Runtime code  =====================


const name = 'GAMT'

const decimals = 18

const symbol = 'GAMT'


address owner;
uint256 totalSupply;
uint256 unmintedTokens;
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

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function unmintedTokens() {
    require msg.sender == owner
    return unmintedTokens
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burnUnmintedTokens(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= unmintedTokens
    unmintedTokens -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function burn(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Burn(arg2, arg1);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] -= arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function mintTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= unmintedTokens
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 <= unmintedTokens
    unmintedTokens -= arg2
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    emit Mint(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg2
    require msg.sender == owner
    require arg1
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Burn(arg2, arg1);
    emit Burn(arg2, arg1);
}

function mintTokensWithApproval(address arg1, uint256 arg2, address arg3) {
    require msg.sender == owner
    require arg2 <= unmintedTokens
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 <= unmintedTokens
    unmintedTokens -= arg2
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + allowance[address(arg1)][address(arg3)] >= allowance[address(arg1)][address(arg3)]
    allowance[address(arg1)][address(arg3)] += arg2
    emit Mint(arg2, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
