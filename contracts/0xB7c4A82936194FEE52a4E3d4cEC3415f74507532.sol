contract main {




// =====================  Runtime code  =====================


array of struct name;
array of struct symbol;
uint256 decimals;
uint256 _totalSupply;
uint256 _tokenLeft;
uint256 sub_365afa33;
uint256 sub_49b4f2d9;
uint256 sub_94a86dc5;
uint256 sub_0ee02d6d;
uint256 _endDate;
uint256 sub_4107c805;
uint256 sub_8fe444ea;
mapping of uint256 stor12;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;

function name() {
    return name[0 len name.length].field_0
}

function sub_0ee02d6d(?) {
    return sub_0ee02d6d
}

function totalSupply() {
    return _totalSupply
}

function decimals() {
    return decimals
}

function sub_365afa33(?) {
    return sub_365afa33
}

function _totalSupply() {
    return _totalSupply
}

function sub_4107c805(?) {
    return sub_4107c805
}

function sub_49b4f2d9(?) {
    return sub_49b4f2d9
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function sub_8fe444ea(?) {
    return sub_8fe444ea
}

function sub_94a86dc5(?) {
    return sub_94a86dc5
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function _tokenLeft() {
    return _tokenLeft
}

function _endDate() {
    return _endDate
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function getPrice() {
    if _totalSupply - _tokenLeft < sub_365afa33:
        return 650
    if _totalSupply - _tokenLeft < sub_49b4f2d9:
        return 500
    if _totalSupply - _tokenLeft >= sub_94a86dc5:
        return 0
    return 400
}

function destroyIBTCToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 > 0
    require _totalSupply >= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function sendIBTCToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 > 0
    require _tokenLeft >= arg2
    require arg2 <= balanceOf[stor15]
    balanceOf[stor15] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 <= _tokenLeft
    _tokenLeft -= arg2
    emit Transfer(arg2, owner, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg1)] >= arg3
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function sendIBTCTokenToMultiAddr(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20]
        require idx < arg2.length
        require idx < arg1.length
        require balanceOf[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg2.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[stor15]
        mem[0] = owner
        mem[32] = 13
        balanceOf[stor15] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        _44 = mem[(32 * idx) + 128]
        require idx < arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], owner, address(_44));
        require idx < arg2.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= _tokenLeft
        _tokenLeft -= mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
}

function getTokenDetail() {
    mem[96] = name.length
    mem[128] = uint256(name.field_0)
    idx = 128
    s = 0
    while name.length + 96 > idx:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(name.length) + ceil32(symbol.length) + 160
    mem[ceil32(name.length) + 128] = symbol.length
    mem[0] = 1
    mem[ceil32(name.length) + 160] = uint256(symbol.field_0)
    idx = ceil32(name.length) + 160
    s = 0
    while ceil32(name.length) + symbol.length + 128 > idx:
        mem[idx + 32] = symbol[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(name.length) + ceil32(symbol.length) + 224] = _totalSupply
    mem[ceil32(name.length) + ceil32(symbol.length) + 160] = 96
    mem[ceil32(name.length) + ceil32(symbol.length) + 256] = name.length
    mem[ceil32(name.length) + ceil32(symbol.length) + 288 len ceil32(name.length)] = mem[128 len ceil32(name.length)]
    mem[ceil32(name.length) + ceil32(symbol.length) + 192] = name.length + 128
    mem[name.length + ceil32(name.length) + ceil32(symbol.length) + 288] = symbol.length
    mem[name.length + ceil32(name.length) + ceil32(symbol.length) + 320 len ceil32(symbol.length)] = mem[ceil32(name.length) + 160 len ceil32(symbol.length)]
    if not symbol.length % 32:
        return Array(len=name.length, data=mem[128 len ceil32(name.length)], mem[(2 * ceil32(name.length)) + ceil32(symbol.length) + 288 len symbol.length + name.length + -ceil32(name.length) + 32]), 
               name.length + 128,
               _totalSupply
    mem[floor32(symbol.length) + name.length + ceil32(name.length) + ceil32(symbol.length) + 320] = mem[floor32(symbol.length) + name.length + ceil32(name.length) + ceil32(symbol.length) + -symbol.length % 32 + 352 len symbol.length % 32]
    return Array(len=name.length, data=mem[128 len ceil32(name.length)], mem[(2 * ceil32(name.length)) + ceil32(symbol.length) + 288 len floor32(symbol.length) + name.length + -ceil32(name.length) + 64]), 
           name.length + 128,
           _totalSupply
}

function tokensale(address arg1) payable {
    require arg1
    if _totalSupply - _tokenLeft < sub_365afa33:
        if msg.value:
            require msg.value
            require 650 * msg.value / msg.value == 650
        require stor12[address(msg.sender)] + msg.value >= stor12[address(msg.sender)]
        stor12[address(msg.sender)] += msg.value
        require msg.value >= sub_4107c805
        require stor12[address(msg.sender)] <= sub_8fe444ea
        require _tokenLeft >= (650 * msg.value) + sub_0ee02d6d
        require 650 * msg.value <= balanceOf[stor15]
        balanceOf[stor15] += -650 * msg.value
        require balanceOf[address(arg1)] + (650 * msg.value) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += 650 * msg.value
        require 650 * msg.value <= _tokenLeft
        _tokenLeft += -650 * msg.value
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit TokenPurchase(msg.value, 650 * msg.value, msg.sender, arg1);
    else:
        if _totalSupply - _tokenLeft < sub_49b4f2d9:
            if msg.value:
                require msg.value
                require 500 * msg.value / msg.value == 500
            require stor12[address(msg.sender)] + msg.value >= stor12[address(msg.sender)]
            stor12[address(msg.sender)] += msg.value
            require msg.value >= sub_4107c805
            require stor12[address(msg.sender)] <= sub_8fe444ea
            require _tokenLeft >= (500 * msg.value) + sub_0ee02d6d
            require 500 * msg.value <= balanceOf[stor15]
            balanceOf[stor15] += -500 * msg.value
            require balanceOf[address(arg1)] + (500 * msg.value) >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += 500 * msg.value
            require 500 * msg.value <= _tokenLeft
            _tokenLeft += -500 * msg.value
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit TokenPurchase(msg.value, 500 * msg.value, msg.sender, arg1);
        else:
            if _totalSupply - _tokenLeft >= sub_94a86dc5:
                if msg.value:
                    require msg.value
                    require not 0 / msg.value
                require stor12[address(msg.sender)] + msg.value >= stor12[address(msg.sender)]
                stor12[address(msg.sender)] += msg.value
                require msg.value >= sub_4107c805
                require stor12[address(msg.sender)] <= sub_8fe444ea
                require _tokenLeft >= sub_0ee02d6d
                require 0 <= balanceOf[stor15]
                require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                require 0 <= _tokenLeft
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit TokenPurchase(msg.value, 0, msg.sender, arg1);
            else:
                if msg.value:
                    require msg.value
                    require 400 * msg.value / msg.value == 400
                require stor12[address(msg.sender)] + msg.value >= stor12[address(msg.sender)]
                stor12[address(msg.sender)] += msg.value
                require msg.value >= sub_4107c805
                require stor12[address(msg.sender)] <= sub_8fe444ea
                require _tokenLeft >= (400 * msg.value) + sub_0ee02d6d
                require 400 * msg.value <= balanceOf[stor15]
                balanceOf[stor15] += -400 * msg.value
                require balanceOf[address(arg1)] + (400 * msg.value) >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += 400 * msg.value
                require 400 * msg.value <= _tokenLeft
                _tokenLeft += -400 * msg.value
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit TokenPurchase(msg.value, 400 * msg.value, msg.sender, arg1);
}

function _fallback() payable {
    require msg.sender
    if _totalSupply - _tokenLeft < sub_365afa33:
        if msg.value:
            require msg.value
            require 650 * msg.value / msg.value == 650
        require stor12[address(msg.sender)] + msg.value >= stor12[address(msg.sender)]
        stor12[address(msg.sender)] += msg.value
        require msg.value >= sub_4107c805
        require stor12[address(msg.sender)] <= sub_8fe444ea
        require _tokenLeft >= (650 * msg.value) + sub_0ee02d6d
        require 650 * msg.value <= balanceOf[stor15]
        balanceOf[stor15] += -650 * msg.value
        require balanceOf[address(msg.sender)] + (650 * msg.value) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 650 * msg.value
        require 650 * msg.value <= _tokenLeft
        _tokenLeft += -650 * msg.value
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit TokenPurchase(msg.value, 650 * msg.value, msg.sender, msg.sender);
    else:
        if _totalSupply - _tokenLeft < sub_49b4f2d9:
            if msg.value:
                require msg.value
                require 500 * msg.value / msg.value == 500
            require stor12[address(msg.sender)] + msg.value >= stor12[address(msg.sender)]
            stor12[address(msg.sender)] += msg.value
            require msg.value >= sub_4107c805
            require stor12[address(msg.sender)] <= sub_8fe444ea
            require _tokenLeft >= (500 * msg.value) + sub_0ee02d6d
            require 500 * msg.value <= balanceOf[stor15]
            balanceOf[stor15] += -500 * msg.value
            require balanceOf[address(msg.sender)] + (500 * msg.value) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 500 * msg.value
            require 500 * msg.value <= _tokenLeft
            _tokenLeft += -500 * msg.value
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit TokenPurchase(msg.value, 500 * msg.value, msg.sender, msg.sender);
        else:
            if _totalSupply - _tokenLeft >= sub_94a86dc5:
                if msg.value:
                    require msg.value
                    require not 0 / msg.value
                require stor12[address(msg.sender)] + msg.value >= stor12[address(msg.sender)]
                stor12[address(msg.sender)] += msg.value
                require msg.value >= sub_4107c805
                require stor12[address(msg.sender)] <= sub_8fe444ea
                require _tokenLeft >= sub_0ee02d6d
                require 0 <= balanceOf[stor15]
                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require 0 <= _tokenLeft
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
            else:
                if msg.value:
                    require msg.value
                    require 400 * msg.value / msg.value == 400
                require stor12[address(msg.sender)] + msg.value >= stor12[address(msg.sender)]
                stor12[address(msg.sender)] += msg.value
                require msg.value >= sub_4107c805
                require stor12[address(msg.sender)] <= sub_8fe444ea
                require _tokenLeft >= (400 * msg.value) + sub_0ee02d6d
                require 400 * msg.value <= balanceOf[stor15]
                balanceOf[stor15] += -400 * msg.value
                require balanceOf[address(msg.sender)] + (400 * msg.value) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 400 * msg.value
                require 400 * msg.value <= _tokenLeft
                _tokenLeft += -400 * msg.value
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit TokenPurchase(msg.value, 400 * msg.value, msg.sender, msg.sender);
}



}
