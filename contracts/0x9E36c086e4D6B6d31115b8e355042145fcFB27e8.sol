contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint8 stor3; offset 168
uint128 stor3; offset 168
uint128 stor3; offset 160
address owner;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;

function mintingFinished() {
    return bool(uint8(stor3.field_168))
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
    return bool(uint8(stor3.field_160))
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

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function finishMinting() {
    require msg.sender == owner
    Mask(88, 0, stor3.field_168) = 1
    emit MintFinished()
    return 1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 0
    emit Unpause()
    return 1
}

function pause() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit Pause()
    return 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor3.field_168)
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor3.field_160)
    require calldata.size >= 100
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function mintTimelocked(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require not uint8(stor3.field_168)
    create contract with 0 wei
                    code: code.data[5503 len 1008], address(this.address), address(arg1), arg3
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    require not uint8(stor3.field_168)
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(create.new_address)] + arg2 >= balanceOf[address(create.new_address)]
    balanceOf[address(create.new_address)] += arg2
    emit Mint(arg2, address(create.new_address));
    return address(create.new_address)
}



}
