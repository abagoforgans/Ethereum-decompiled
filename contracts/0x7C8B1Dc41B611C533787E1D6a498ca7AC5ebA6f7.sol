contract main {




// =====================  Runtime code  =====================


address _owner;
address stor1;
array of uint256 symbol;
array of uint256 name;
array of uint256 description;
uint8 decimals;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor11;
uint256 stor12;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor15;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function description() {
    return description[0 len description.length]
}

function isFreezed(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor15[address(arg1)])
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _owner() {
    return _owner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require not stor15[address(arg2)]
    return allowance[address(arg1)][address(arg2)]
}

function totalSupply() {
    return (stor12 - balanceOf[0])
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == _owner
    stor1 = arg1
}

function acceptOwnership() {
    require msg.sender == stor1
    emit OwnershipTransferred(_owner, stor1);
    _owner = stor1
    stor1 = 0
}

function freeze(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == _owner
    require _owner != arg1
    require arg1
    stor15[address(arg1)] = 1
    return 1
}

function unfreeze(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == _owner
    require _owner != arg1
    require arg1
    stor15[address(arg1)] = 0
    return 1
}

function withdraw() {
    require msg.sender == _owner
    call _owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require block.timestamp >= stor9
    require stor12 >= stor11
    require not stor15[address(arg1)]
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == _owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args _owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require block.timestamp >= stor9
    require stor12 >= stor11
    require not stor15[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require block.timestamp >= stor9
    require stor12 >= stor11
    require not stor15[address(arg1)]
    require not stor15[address(arg2)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require block.timestamp >= stor9
    require stor12 >= stor11
    require not stor15[address(arg1)]
    allowance[msg.sender][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args msg.sender, arg2, _owner, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Approval(address arg1, address arg2, uint256 arg3):
                  0,
                  Mask(224, 0, arg2),
                  msg.sender,
                  arg1,
    return 0, 1
}

function purchase() payable {
    require block.timestamp >= stor6
    require block.timestamp <= stor9
    if msg.value:
        require msg.value
        require msg.value / msg.value == 1
    if block.timestamp <= stor7:
        if msg.value:
            require msg.value
            require 15 * msg.value / msg.value == 15
        stor15[msg.sender] = 0
        require (15 * msg.value / 10) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[msg.sender] += 15 * msg.value / 10
        require (15 * msg.value / 10) + stor12 >= stor12
        stor12 += 15 * msg.value / 10
        emit Transfer((15 * msg.value / 10), 0, msg.sender);
    else:
        if block.timestamp > stor8:
            stor15[msg.sender] = 0
            require msg.value + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[msg.sender] += msg.value
            require msg.value + stor12 >= stor12
            stor12 += msg.value
            emit Transfer(msg.value, 0, msg.sender);
        else:
            if msg.value:
                require msg.value
                require 12 * msg.value / msg.value == 12
            stor15[msg.sender] = 0
            require (12 * msg.value / 10) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[msg.sender] += 12 * msg.value / 10
            require (12 * msg.value / 10) + stor12 >= stor12
            stor12 += 12 * msg.value / 10
            emit Transfer((12 * msg.value / 10), 0, msg.sender);
}

function _fallback() payable {
    require block.timestamp >= stor6
    require block.timestamp <= stor9
    if msg.value:
        require msg.value
        require msg.value / msg.value == 1
    if block.timestamp <= stor7:
        if msg.value:
            require msg.value
            require 15 * msg.value / msg.value == 15
        stor15[msg.sender] = 0
        require (15 * msg.value / 10) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[msg.sender] += 15 * msg.value / 10
        require (15 * msg.value / 10) + stor12 >= stor12
        stor12 += 15 * msg.value / 10
        emit Transfer((15 * msg.value / 10), 0, msg.sender);
    else:
        if block.timestamp > stor8:
            stor15[msg.sender] = 0
            require msg.value + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[msg.sender] += msg.value
            require msg.value + stor12 >= stor12
            stor12 += msg.value
            emit Transfer(msg.value, 0, msg.sender);
        else:
            if msg.value:
                require msg.value
                require 12 * msg.value / msg.value == 12
            stor15[msg.sender] = 0
            require (12 * msg.value / 10) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[msg.sender] += 12 * msg.value / 10
            require (12 * msg.value / 10) + stor12 >= stor12
            stor12 += 12 * msg.value / 10
            emit Transfer((12 * msg.value / 10), 0, msg.sender);
}



}
