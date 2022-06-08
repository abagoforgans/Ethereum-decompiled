contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 freezeOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function freezeOf(address arg1) {
    require calldata.size - 4 >= 32
    return freezeOf[arg1]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function _fallback() payable {
  stop
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 <= 0:
        revert with 0, 'approve'
    allowance[msg.sender][address(arg1)] = arg2
    return 1
}

function withdrawEther(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'withdrawEther'
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > balanceOf[msg.sender]:
        revert with 0, 'burn'
    if arg1 <= 0:
        revert with 0, 'burn'
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function freeze(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > balanceOf[msg.sender]:
        revert with 0, 'freeze'
    if arg1 <= 0:
        revert with 0, 'freeze'
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    require arg1 + freezeOf[msg.sender] >= freezeOf[msg.sender]
    require arg1 + freezeOf[msg.sender] >= arg1
    freezeOf[msg.sender] += arg1
    emit Freeze(arg1, msg.sender);
    return 1
}

function unfreeze(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > freezeOf[msg.sender]:
        revert with 0, 'unfreeze'
    if arg1 <= 0:
        revert with 0, 'unfreeze'
    require arg1 <= freezeOf[msg.sender]
    freezeOf[msg.sender] -= arg1
    require arg1 + balanceOf[msg.sender] >= balanceOf[msg.sender]
    require arg1 + balanceOf[msg.sender] >= arg1
    balanceOf[msg.sender] += arg1
    emit Unfreeze(arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'transfer'
    if arg2 <= 0:
        revert with 0, 'transfer'
    if arg2 > balanceOf[msg.sender]:
        revert with 0, 'transfer'
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'transfer'
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg2:
        revert with 0, 32, 12, 0xfe7472616e7366657246726f6d00000000000000000000000000000000000000
    if arg3 <= 0:
        revert with 0, 32, 12, 0xfe7472616e7366657246726f6d00000000000000000000000000000000000000
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 12, 0xfe7472616e7366657246726f6d00000000000000000000000000000000000000
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 32, 12, 0xfe7472616e7366657246726f6d00000000000000000000000000000000000000
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 32, 12, 0xfe7472616e7366657246726f6d00000000000000000000000000000000000000
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    require arg3 + balanceOf[arg2] >= arg3
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
