contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 _totalSupply;
uint256 _maxSupply;
uint256 sub_e1bd616d;
uint256 tokenPerETH;
uint256 startDate;
uint256 bonusEnds1;
uint256 bonusEnds2;
uint256 bonusEnds3;
uint256 bonusEnds4;
uint256 bonusEnds5;
uint256 sub_42b0c17b;
uint256 endDate;
address stor17;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function bonusEnds3() {
    return bonusEnds3
}

function name() {
    return name[0 len name.length]
}

function startDate() {
    return startDate
}

function _maxSupply() {
    return _maxSupply
}

function decimals() {
    return decimals
}

function bonusEnds1() {
    return bonusEnds1
}

function _totalSupply() {
    return _totalSupply
}

function sub_42b0c17b(?) {
    return sub_42b0c17b
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

function bonusEnds5() {
    return bonusEnds5
}

function bonusEnds4() {
    return bonusEnds4
}

function endDate() {
    return endDate
}

function tokenPerETH() {
    return tokenPerETH
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_e1bd616d(?) {
    return sub_e1bd616d
}

function bonusEnds2() {
    return bonusEnds2
}

function totalSupply() {
    return (_totalSupply - balanceOf[0])
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
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
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
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_1fa39919(?) {
    require block.timestamp > endDate
    require _totalSupply <= _maxSupply
    require msg.sender == stor17
    require balanceOf[address(msg.sender)] + _maxSupply - _totalSupply >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + _maxSupply - _totalSupply
    emit Transfer((_maxSupply - _totalSupply), 0, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _totalSupply = _maxSupply
    return 1
}

function _fallback() payable {
    require block.timestamp >= startDate
    require block.timestamp <= endDate
    if block.timestamp <= bonusEnds1:
        require _totalSupply + (106 * msg.value / 10^18 * tokenPerETH / 100) <= _maxSupply
        require balanceOf[address(msg.sender)] + (106 * msg.value / 10^18 * tokenPerETH / 100) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 106 * msg.value / 10^18 * tokenPerETH / 100
        require _totalSupply + (106 * msg.value / 10^18 * tokenPerETH / 100) >= _totalSupply
        _totalSupply += 106 * msg.value / 10^18 * tokenPerETH / 100
        emit Transfer((106 * msg.value / 10^18 * tokenPerETH / 100), 0, msg.sender);
    else:
        if block.timestamp <= bonusEnds2:
            require _totalSupply + (105 * msg.value / 10^18 * tokenPerETH / 100) <= _maxSupply
            require balanceOf[address(msg.sender)] + (105 * msg.value / 10^18 * tokenPerETH / 100) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 105 * msg.value / 10^18 * tokenPerETH / 100
            require _totalSupply + (105 * msg.value / 10^18 * tokenPerETH / 100) >= _totalSupply
            _totalSupply += 105 * msg.value / 10^18 * tokenPerETH / 100
            emit Transfer((105 * msg.value / 10^18 * tokenPerETH / 100), 0, msg.sender);
        else:
            if block.timestamp <= bonusEnds3:
                require _totalSupply + (104 * msg.value / 10^18 * tokenPerETH / 100) <= _maxSupply
                require balanceOf[address(msg.sender)] + (104 * msg.value / 10^18 * tokenPerETH / 100) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 104 * msg.value / 10^18 * tokenPerETH / 100
                require _totalSupply + (104 * msg.value / 10^18 * tokenPerETH / 100) >= _totalSupply
                _totalSupply += 104 * msg.value / 10^18 * tokenPerETH / 100
                emit Transfer((104 * msg.value / 10^18 * tokenPerETH / 100), 0, msg.sender);
            else:
                if block.timestamp <= bonusEnds4:
                    require _totalSupply + (103 * msg.value / 10^18 * tokenPerETH / 100) <= _maxSupply
                    require balanceOf[address(msg.sender)] + (103 * msg.value / 10^18 * tokenPerETH / 100) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 103 * msg.value / 10^18 * tokenPerETH / 100
                    require _totalSupply + (103 * msg.value / 10^18 * tokenPerETH / 100) >= _totalSupply
                    _totalSupply += 103 * msg.value / 10^18 * tokenPerETH / 100
                    emit Transfer((103 * msg.value / 10^18 * tokenPerETH / 100), 0, msg.sender);
                else:
                    if block.timestamp <= bonusEnds5:
                        require _totalSupply + (102 * msg.value / 10^18 * tokenPerETH / 100) <= _maxSupply
                        require balanceOf[address(msg.sender)] + (102 * msg.value / 10^18 * tokenPerETH / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 102 * msg.value / 10^18 * tokenPerETH / 100
                        require _totalSupply + (102 * msg.value / 10^18 * tokenPerETH / 100) >= _totalSupply
                        _totalSupply += 102 * msg.value / 10^18 * tokenPerETH / 100
                        emit Transfer((102 * msg.value / 10^18 * tokenPerETH / 100), 0, msg.sender);
                    else:
                        if block.timestamp > sub_42b0c17b:
                            require _totalSupply + (msg.value / 10^18 * tokenPerETH) <= _maxSupply
                            require balanceOf[address(msg.sender)] + (msg.value / 10^18 * tokenPerETH) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value / 10^18 * tokenPerETH
                            require _totalSupply + (msg.value / 10^18 * tokenPerETH) >= _totalSupply
                            _totalSupply += msg.value / 10^18 * tokenPerETH
                            emit Transfer((msg.value / 10^18 * tokenPerETH), 0, msg.sender);
                        else:
                            require _totalSupply + (101 * msg.value / 10^18 * tokenPerETH / 100) <= _maxSupply
                            require balanceOf[address(msg.sender)] + (101 * msg.value / 10^18 * tokenPerETH / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 101 * msg.value / 10^18 * tokenPerETH / 100
                            require _totalSupply + (101 * msg.value / 10^18 * tokenPerETH / 100) >= _totalSupply
                            _totalSupply += 101 * msg.value / 10^18 * tokenPerETH / 100
                            emit Transfer((101 * msg.value / 10^18 * tokenPerETH / 100), 0, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
