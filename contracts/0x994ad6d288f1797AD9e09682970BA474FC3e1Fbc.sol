contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint8 stor3; offset 168
address owner;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

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
  stop
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 32, 19, code.data[4774 len 32]
    if arg1:
        owner = arg1
}

function finishMinting() {
    if owner != msg.sender:
        revert with 0, 32, 19, code.data[4774 len 32]
    uint8(stor3.field_168) = 1
    emit MintFinished()
    return 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function pause() {
    if owner != msg.sender:
        revert with 0, 32, 19, code.data[4774 len 32]
    if uint8(stor3.field_160):
        revert with 0, 'contract not paused'
    uint8(stor3.field_160) = 1
    emit Pause()
    return 1
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 32, 19, code.data[4774 len 32]
    if not uint8(stor3.field_160):
        revert with 0, 'contract paused'
    uint8(stor3.field_160) = 0
    emit Unpause()
    return 1
}

function withdrawEther(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 32, 19, code.data[4774 len 32]
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    if uint8(stor3.field_160):
        revert with 0, 'contract not paused'
    if calldata.size != 68:
        revert with 0, 'payload size does not match'
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function mint(address arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0, 32, 19, code.data[4774 len 32]
    if uint8(stor3.field_168):
        revert with 0, 'mint finished.'
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if uint8(stor3.field_160):
        revert with 0, 'contract not paused'
    if calldata.size != 100:
        revert with 0, 'payload size does not match'
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
}

function mintTimelocked(address arg1, uint256 arg2, uint256 arg3) {
    if owner != msg.sender:
        revert with 0, 32, 19, code.data[4774 len 32]
    if uint8(stor3.field_168):
        revert with 0, 'mint finished.'
    create contract with 0 wei
                    code: code.data[4134 len 640], address(this.address), address(arg1), arg3
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    if owner != msg.sender:
        revert with 0, 32, 19, code.data[4774 len 32]
    if uint8(stor3.field_168):
        revert with 0, 'mint finished.'
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(create.new_address)] >= balanceOf[address(create.new_address)]
    balanceOf[address(create.new_address)] += arg2
    emit Mint(arg2, address(create.new_address));
    emit Transfer(arg2, 0, address(create.new_address));
    return address(create.new_address)
}



}
