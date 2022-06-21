contract main {




// =====================  Runtime code  =====================


array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 _totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint8 stor7; offset 160
address newOwner;
uint256 feeRate;
address feeAccount;
uint256 sub_774e4cd4;
array of address stor11;
array of uint256 stor12;
array of uint256 stor13;
mapping of uint256 stor99;

function name() {
    return name[0 len name.length]
}

function stop() {
    return bool(stor7)
}

function sub_307de24f(?) {
    require 0 <= arg1
    require arg1 < sub_774e4cd4
    require arg1 < 2
    return stor[(4 * arg1) + 14][address(arg2)]
}

function decimals() {
    return decimals
}

function _totalSupply() {
    return _totalSupply
}

function feeAccount() {
    return feeAccount
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_774e4cd4(?) {
    return sub_774e4cd4
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function feeRate() {
    return feeRate
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function totalSupply() {
    return (_totalSupply - balanceOf[0])
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function tokens(uint256 arg1) {
    require arg1 < 2
    return stor11[arg1], stor12[arg1], stor13[arg1]
}

function changeFeeRate(uint256 arg1) {
    require msg.sender == owner
    feeRate = arg1
    emit 0xdd72d287: arg1
    return 1
}

function changeFeeAccount(address arg1) {
    require msg.sender == owner
    feeAccount = arg1
    emit 0x206fb440: arg1
    return 1
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

function sub_9a7204be(?) {
    require msg.sender == owner
    if not stor7:
        stor7 = 1
        emit 0x7cf8ba63: 1
    else:
        stor7 = 0
        emit 0x7cf8ba63: 0
    return 1
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
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_24ee4e78(?) {
    require not stor7
    require 0 <= arg1
    require arg1 < sub_774e4cd4
    require arg1 < 2
    require stor[(4 * arg1) + 14][address(msg.sender)] >= arg2
    require arg2 <= stor[(4 * arg1) + 14][msg.sender]
    stor[(4 * arg1) + 14][msg.sender] -= arg2
    require ext_code.size(stor11[arg1])
    call stor11[arg1].0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x73c32cee: arg1, stor11[arg1], arg2, msg.sender
    return 1
}

function depositToken(uint256 arg1, uint256 arg2) {
    require 0 <= arg1
    require arg1 < sub_774e4cd4
    require arg1 < 2
    require ext_code.size(stor11[arg1])
    call stor11[arg1].0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if 1 == stor13[arg1]:
        require arg2 + stor[(4 * arg1) + 14][msg.sender] >= stor[(4 * arg1) + 14][msg.sender]
        stor[(4 * arg1) + 14][msg.sender] += arg2
        emit 0xb6999f5b: arg1, stor11[arg1], arg2, msg.sender
    else:
        require stor13[arg1] > 0
        require stor13[arg1]
        if arg2 / stor13[arg1]:
            require arg2 / stor13[arg1]
            require stor13[arg1] * arg2 / stor13[arg1] / arg2 / stor13[arg1] == stor13[arg1]
        require stor13[arg1] * arg2 / stor13[arg1] <= arg2
        if arg2 - (stor13[arg1] * arg2 / stor13[arg1]):
            require arg2 - (stor13[arg1] * arg2 / stor13[arg1]) + stor[(4 * arg1) + 14][stor9] >= stor[(4 * arg1) + 14][stor9]
            stor[(4 * arg1) + 14][stor9] = arg2 - (stor13[arg1] * arg2 / stor13[arg1]) + stor[(4 * arg1) + 14][stor9]
            emit 0x34325415: arg1, stor11[arg1], arg2 - (stor13[arg1] * arg2 / stor13[arg1]), msg.sender
        require (stor13[arg1] * arg2 / stor13[arg1]) + stor[(4 * arg1) + 14][msg.sender] >= stor[(4 * arg1) + 14][msg.sender]
        stor[(4 * arg1) + 14][msg.sender] += stor13[arg1] * arg2 / stor13[arg1]
        emit 0xb6999f5b: arg1, stor11[arg1], stor13[arg1] * arg2 / stor13[arg1], msg.sender
    return 1
}

function sub_ccd11c44(?) {
    s = 0
    idx = 0
    while idx < sub_774e4cd4:
        require idx < 2
        if arg1:
            require arg1
            require stor12[idx] * arg1 / arg1 == stor12[idx]
        if stor12[idx] * arg1:
            require stor12[idx] * arg1
            require stor13[idx] * stor12[idx] * arg1 / stor12[idx] * arg1 == stor13[idx]
        mem[0] = msg.sender
        mem[32] = (4 * idx) + 14
        require stor[(4 * idx) + 14][msg.sender] >= stor13[idx] * stor12[idx] * arg1
        s = (4 * idx) + 11
        idx = idx + 1
        continue 
    t = s
    idx = 0
    while idx < sub_774e4cd4:
        require idx < 2
        if arg1:
            require arg1
            require stor12[idx] * arg1 / arg1 == stor12[idx]
        if stor12[idx] * arg1:
            require stor12[idx] * arg1
            require stor13[idx] * stor12[idx] * arg1 / stor12[idx] * arg1 == stor13[idx]
        require stor13[idx] * stor12[idx] * arg1 <= stor[(4 * idx) + 14][msg.sender]
        mem[0] = msg.sender
        mem[32] = (4 * idx) + 14
        stor[(4 * idx) + 14][msg.sender] += -1 * stor13[idx] * stor12[idx] * arg1
        t = (4 * idx) + 11
        idx = idx + 1
        continue 
    require arg1 + _totalSupply >= _totalSupply
    _totalSupply += arg1
    require feeRate > 0
    require feeRate
    require arg1 / feeRate <= arg1
    require arg1 - (arg1 / feeRate) + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[msg.sender] = arg1 - (arg1 / feeRate) + balanceOf[msg.sender]
    require (arg1 / feeRate) + balanceOf[stor9] >= balanceOf[stor9]
    balanceOf[stor9] += arg1 / feeRate
    emit 0xa1cc4e76: arg1, msg.sender
    emit Transfer((arg1 - (arg1 / feeRate)), 0, msg.sender);
    emit Transfer((arg1 / feeRate), msg.sender, feeAccount);
    return 1
}

function withdrawTokens(uint256 arg1) {
    require not stor7
    require arg1 <= balanceOf[msg.sender]
    if msg.sender == feeAccount:
        s = 0
        idx = 0
        while idx < sub_774e4cd4:
            require idx < 2
            if arg1:
                require arg1
                require stor12[idx] * arg1 / arg1 == stor12[idx]
            if stor12[idx] * arg1:
                require stor12[idx] * arg1
                require stor13[idx] * stor12[idx] * arg1 / stor12[idx] * arg1 == stor13[idx]
            mem[100] = msg.sender
            mem[132] = stor13[idx] * stor12[idx] * arg1
            require ext_code.size(stor11[idx])
            call stor11[idx].0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, stor13[idx] * stor12[idx] * arg1
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            s = (4 * idx) + 11
            idx = idx + 1
            continue 
        require arg1 <= balanceOf[msg.sender]
        balanceOf[msg.sender] -= arg1
        require arg1 <= _totalSupply
        _totalSupply -= arg1
        emit 0x45b89f05: arg1, msg.sender
        emit Transfer(arg1, msg.sender, 0);
    else:
        require feeRate > 0
        require feeRate
        require arg1 / feeRate <= arg1
        require (arg1 / feeRate) + balanceOf[stor9] >= balanceOf[stor9]
        balanceOf[stor9] += arg1 / feeRate
        emit Transfer((arg1 / feeRate), msg.sender, feeAccount);
        s = 0
        idx = 0
        while idx < sub_774e4cd4:
            require idx < 2
            if arg1 - (arg1 / feeRate):
                require arg1 - (arg1 / feeRate)
                require (arg1 * stor12[idx]) - (arg1 / feeRate * stor12[idx]) / arg1 - (arg1 / feeRate) == stor12[idx]
            if (arg1 * stor12[idx]) - (arg1 / feeRate * stor12[idx]):
                require (arg1 * stor12[idx]) - (arg1 / feeRate * stor12[idx])
                require (arg1 * stor12[idx] * stor13[idx]) - (arg1 / feeRate * stor12[idx] * stor13[idx]) / (arg1 * stor12[idx]) - (arg1 / feeRate * stor12[idx]) == stor13[idx]
            mem[100] = msg.sender
            mem[132] = (arg1 * stor12[idx] * stor13[idx]) - (arg1 / feeRate * stor12[idx] * stor13[idx])
            require ext_code.size(stor11[idx])
            call stor11[idx].0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (arg1 * stor12[idx] * stor13[idx]) - (arg1 / feeRate * stor12[idx] * stor13[idx])
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            s = (4 * idx) + 11
            idx = idx + 1
            continue 
        require arg1 <= balanceOf[msg.sender]
        balanceOf[msg.sender] -= arg1
        require arg1 - (arg1 / feeRate) <= _totalSupply
        _totalSupply = _totalSupply - arg1 + (arg1 / feeRate)
        emit 0x45b89f05: (arg1 - (arg1 / feeRate)), msg.sender
        emit Transfer((arg1 - (arg1 / feeRate)), msg.sender, 0);
    return 1
}



}
