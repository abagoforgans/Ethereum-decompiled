contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 maxSupply;
uint256 _totalSupply;
array of uint256 sub_e938ad69;
array of uint256 sub_df9b0593;
uint256 bonus1Ends;
uint256 bonus2Ends;
uint256 endDate;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return _totalSupply
}

function sub_24b1c93e(?) {
    return sub_e938ad69[0 len sub_e938ad69.length]
}

function decimals() {
    return decimals
}

function _totalSupply() {
    return _totalSupply
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

function endDate() {
    return endDate
}

function sub_c468e052(?) {
    return sub_df9b0593[0 len sub_df9b0593.length]
}

function newOwner() {
    return newOwner
}

function maxSupply() {
    return maxSupply
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_df9b0593(?) {
    return sub_df9b0593[0 len sub_df9b0593.length]
}

function bonus1Ends() {
    return bonus1Ends
}

function sub_e938ad69(?) {
    return sub_e938ad69[0 len sub_e938ad69.length]
}

function bonus2Ends() {
    return bonus2Ends
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[msg.sender]
    require arg1
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_3d710f5e(?) payable {
    require arg1
    require msg.sender == owner
    require arg2 + _totalSupply >= _totalSupply
    require arg2 + _totalSupply < maxSupply
    if msg.sender == owner:
        require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        require arg2 + _totalSupply >= _totalSupply
        _totalSupply += arg2
        emit Transfer(arg2, 0, arg1);
}

function _fallback() payable {
    require block.timestamp <= endDate
    if block.timestamp <= bonus1Ends:
        require (800 * msg.value) + _totalSupply >= _totalSupply
        require (800 * msg.value) + _totalSupply < maxSupply
        require (800 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[msg.sender] += 800 * msg.value
        require (800 * msg.value) + _totalSupply >= _totalSupply
        _totalSupply += 800 * msg.value
        emit Transfer((800 * msg.value), 0, msg.sender);
    else:
        if block.timestamp > bonus2Ends:
            require (475 * msg.value) + _totalSupply >= _totalSupply
            require (475 * msg.value) + _totalSupply < maxSupply
            require (475 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[msg.sender] += 475 * msg.value
            require (475 * msg.value) + _totalSupply >= _totalSupply
            _totalSupply += 475 * msg.value
            emit Transfer((475 * msg.value), 0, msg.sender);
        else:
            require (600 * msg.value) + _totalSupply >= _totalSupply
            require (600 * msg.value) + _totalSupply < maxSupply
            require (600 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[msg.sender] += 600 * msg.value
            require (600 * msg.value) + _totalSupply >= _totalSupply
            _totalSupply += 600 * msg.value
            emit Transfer((600 * msg.value), 0, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
