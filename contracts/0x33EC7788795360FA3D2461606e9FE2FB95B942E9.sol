contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 initialSupply;
uint256 totalSupply;
address marketingReserveAddress;
address bountyReserveAddress;
address teamReserveAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 freezed;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function initialSupply() {
    return initialSupply
}

function marketingReserve() {
    return marketingReserveAddress
}

function freezed(address arg1) {
    return freezed[arg1]
}

function teamReserve() {
    return teamReserveAddress
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function balanceOf(address arg1) {
    if uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Contract Paused. Events/Transaction Paused until Further Notice'
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function bountyReserve() {
    return bountyReserveAddress
}

function allowance(address arg1, address arg2) {
    if uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Contract Paused. Events/Transaction Paused until Further Notice'
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
  stop
}

function unpause() {
    require msg.sender == owner
    if not uint8(stor0.field_160):
        revert with 0, 'Contract Functionality Resumed'
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    if uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Contract Paused. Events/Transaction Paused until Further Notice'
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function approve(address arg1, uint256 arg2) {
    if uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Contract Paused. Events/Transaction Paused until Further Notice'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    if uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Contract Paused. Events/Transaction Paused until Further Notice'
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    if uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Contract Paused. Events/Transaction Paused until Further Notice'
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function unfreeze(address arg1, uint256 arg2) {
    require msg.sender == owner
    if uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Contract Paused. Events/Transaction Paused until Further Notice'
    require freezed[address(arg1)] < arg2
    require arg2 <= 0
    freezed[address(arg1)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Unfreeze(arg2, arg1);
    return 1
}

function burn(uint256 arg1) {
    require msg.sender == owner
    if uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Contract Paused. Events/Transaction Paused until Further Notice'
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function withdrawEther(address arg1) payable {
    require msg.sender == owner
    if uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Contract Paused. Events/Transaction Paused until Further Notice'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdraw(eth.balance(this.address), this.address, arg1);
    return 1
}

function freeze(address arg1, uint256 arg2) {
    require msg.sender == owner
    if uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Contract Paused. Events/Transaction Paused until Further Notice'
    require arg2 < balanceOf[address(arg1)]
    require arg2 >= 0
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require freezed[address(arg1)] + arg2 >= freezed[address(arg1)]
    freezed[address(arg1)] += arg2
    emit Freeze(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Contract Paused. Events/Transaction Paused until Further Notice'
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Contract Paused. Events/Transaction Paused until Further Notice'
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        require arg2 <= allowance[address(msg.sender)][address(arg1)]
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require msg.sender == owner
    if uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Contract Paused. Events/Transaction Paused until Further Notice'
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    emit Transfer(arg2, arg1, 0);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Contract Paused. Events/Transaction Paused until Further Notice'
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
