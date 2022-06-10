contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint8 stor6; offset 8

function mintingFinished() {
    return bool(stor6)
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function paused() {
    return bool(stor3)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require stor3
    stor3 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor3
    stor3 = 1
    emit Pause()
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function finishMinting() {
    require msg.sender == owner
    require not stor6
    stor6 = 1
    emit MintFinished()
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require not stor3
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit code.data[5183 len 32]: arg1, msg.sender, 0
}

function increaseApproval(address arg1, uint256 arg2) {
    require not stor3
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not stor3
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not stor6
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit code.data[5183 len 32]: arg2, 0, arg1
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor3
    require calldata.size < 68
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit code.data[5183 len 32]: arg2, msg.sender, arg1
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require arg2 <= allowance[address(arg1)][msg.sender]
    require arg2 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg2
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    emit code.data[5183 len 32]: arg2, arg1, 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor3
    require calldata.size < 68
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit code.data[5183 len 32]: arg3, arg1, arg2
    return 1
}

function mintTimelocked(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require not stor6
    create contract with 0 wei
                    code: code.data[4342 len 841], address(this.address), address(arg1), arg3
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    require not stor6
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(create.new_address)] >= balanceOf[address(create.new_address)]
    balanceOf[address(create.new_address)] += arg2
    emit Mint(arg2, address(create.new_address));
    emit code.data[5183 len 32]: arg2, 0, address(create.new_address)
    return address(create.new_address)
}



}
