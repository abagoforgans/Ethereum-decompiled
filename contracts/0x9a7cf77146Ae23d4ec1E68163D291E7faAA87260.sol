contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
array of uint256 version;
uint8 decimals;
uint256 sold;
uint256 stor9;
uint256 probability;
uint256 stor11;
uint256 stor12;
uint256 rate;
uint256 stor14;

function sold() {
    return sold
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function rate() {
    return rate
}

function decimals() {
    return decimals
}

function probability() {
    return probability
}

function version() {
    return version[0 len version.length]
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

function unpause() {
    require msg.sender == owner
    require uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withDraw() payable {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require arg1
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor3.field_160)
    require arg2
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function batchTransfer(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require not uint8(stor3.field_160)
    if not arg1.length:
        require arg1.length > 0
        require arg1.length <= 20
        require arg2 > 0
        require balanceOf[address(msg.sender)] >= arg1.length * arg2
        require arg1.length * arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += -1 * arg1.length * arg2
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require balanceOf[mem[(32 * idx) + 140 len 20]] + arg2 >= balanceOf[mem[(32 * idx) + 140 len 20]]
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 1
            balanceOf[mem[(32 * idx) + 140 len 20]] += arg2
            require idx < arg1.length
            _51 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 128] = arg2
            emit Transfer(arg2, msg.sender, address(_51));
            idx = idx + 1
            continue 
    else:
        require arg1.length
        require arg1.length * arg2 / arg1.length == arg2
        require arg1.length > 0
        require arg1.length <= 20
        require arg2 > 0
        require balanceOf[address(msg.sender)] >= arg1.length * arg2
        require arg1.length * arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += -1 * arg1.length * arg2
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require balanceOf[mem[(32 * idx) + 140 len 20]] + arg2 >= balanceOf[mem[(32 * idx) + 140 len 20]]
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 1
            balanceOf[mem[(32 * idx) + 140 len 20]] += arg2
            require idx < arg1.length
            _54 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 128] = arg2
            emit Transfer(arg2, msg.sender, address(_54));
            idx = idx + 1
            continue 
    return 1
}

function _fallback() payable {
    require sold <= 4 * 10^9 * stor14
    require not msg.value % 10^15
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    require stor14
    require msg.value * rate / stor14 > 0
    require msg.value * rate / stor14 < probability
    if stor11 > stor9:
        if stor11 + (msg.value * rate / stor14) <= probability:
            stor11 += msg.value * rate / stor14
            if stor12:
                require stor12
                require stor12 * stor14 / stor12 == stor14
            require not uint8(stor3.field_160)
            require balanceOf[address(msg.sender)] + (msg.value * rate) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += msg.value * rate
            emit Transfer((msg.value * rate), 0, msg.sender);
            require 1848 * stor14
            emit Invested(msg.sender, sold / 1848 * stor14, msg.value * rate);
            require sold + (msg.value * rate) >= sold
            sold += msg.value * rate
            require totalSupply + (msg.value * rate) >= totalSupply
            totalSupply += msg.value * rate
        else:
            require stor11 + (msg.value * rate / stor14) >= stor11
            require probability <= stor11 + (msg.value * rate / stor14)
            require probability
            stor9 = (sha3(block.difficulty + block.timestamp) % probability) + 1
            stor11 = 0
            stor11 = stor11 + (msg.value * rate / stor14) - probability
            if stor12:
                require stor12
                require stor12 * stor14 / stor12 == stor14
            require not uint8(stor3.field_160)
            require balanceOf[address(msg.sender)] + (msg.value * rate) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += msg.value * rate
            emit Transfer((msg.value * rate), 0, msg.sender);
            require 1848 * stor14
            emit Invested(msg.sender, sold / 1848 * stor14, msg.value * rate);
            require sold + (msg.value * rate) >= sold
            sold += msg.value * rate
            require totalSupply + (msg.value * rate) >= totalSupply
            totalSupply += msg.value * rate
            if stor11 > stor9:
            else:
                if stor9 >= (2 * stor11) + (msg.value * rate / stor14) - probability:
                else:
                    idx = 0
                    while uint8(idx) < 1:
                        require balanceOf[address(msg.sender)] + (stor12 * stor14) >= balanceOf[address(msg.sender)]
                        mem[0] = msg.sender
                        mem[32] = 1
                        balanceOf[address(msg.sender)] += stor12 * stor14
                        emit Transfer((stor12 * stor14), 0, msg.sender);
                        mem[160] = stor12 * stor14
                        emit 0x26a22289: (stor12 * stor14), msg.sender
                        idx = idx + 1
                        continue 
    else:
        if stor9 >= stor11 + (msg.value * rate / stor14):
            if stor11 + (msg.value * rate / stor14) <= probability:
                stor11 += msg.value * rate / stor14
                if stor12:
                    require stor12
                    require stor12 * stor14 / stor12 == stor14
                require not uint8(stor3.field_160)
                require balanceOf[address(msg.sender)] + (msg.value * rate) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += msg.value * rate
                emit Transfer((msg.value * rate), 0, msg.sender);
                require 1848 * stor14
                emit Invested(msg.sender, sold / 1848 * stor14, msg.value * rate);
                require sold + (msg.value * rate) >= sold
                sold += msg.value * rate
                require totalSupply + (msg.value * rate) >= totalSupply
                totalSupply += msg.value * rate
            else:
                require stor11 + (msg.value * rate / stor14) >= stor11
                require probability <= stor11 + (msg.value * rate / stor14)
                require probability
                stor9 = (sha3(block.difficulty + block.timestamp) % probability) + 1
                stor11 = 0
                stor11 = stor11 + (msg.value * rate / stor14) - probability
                if stor12:
                    require stor12
                    require stor12 * stor14 / stor12 == stor14
                require not uint8(stor3.field_160)
                require balanceOf[address(msg.sender)] + (msg.value * rate) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += msg.value * rate
                emit Transfer((msg.value * rate), 0, msg.sender);
                require 1848 * stor14
                emit Invested(msg.sender, sold / 1848 * stor14, msg.value * rate);
                require sold + (msg.value * rate) >= sold
                sold += msg.value * rate
                require totalSupply + (msg.value * rate) >= totalSupply
                totalSupply += msg.value * rate
                if stor11 > stor9:
                else:
                    if stor9 >= (2 * stor11) + (msg.value * rate / stor14) - probability:
                    else:
                        idx = 0
                        while uint8(idx) < 1:
                            require balanceOf[address(msg.sender)] + (stor12 * stor14) >= balanceOf[address(msg.sender)]
                            mem[0] = msg.sender
                            mem[32] = 1
                            balanceOf[address(msg.sender)] += stor12 * stor14
                            emit Transfer((stor12 * stor14), 0, msg.sender);
                            mem[160] = stor12 * stor14
                            emit 0x26a22289: (stor12 * stor14), msg.sender
                            idx = idx + 1
                            continue 
        else:
            if stor11 + (msg.value * rate / stor14) <= probability:
                stor11 += msg.value * rate / stor14
                if stor12:
                    require stor12
                    require stor12 * stor14 / stor12 == stor14
                require not uint8(stor3.field_160)
                require balanceOf[address(msg.sender)] + (msg.value * rate) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += msg.value * rate
                emit Transfer((msg.value * rate), 0, msg.sender);
                require 1848 * stor14
                emit Invested(msg.sender, sold / 1848 * stor14, msg.value * rate);
                require sold + (msg.value * rate) >= sold
                sold += msg.value * rate
                require totalSupply + (msg.value * rate) >= totalSupply
                totalSupply += msg.value * rate
                idx = 0
                while uint8(idx) < 1:
                    require balanceOf[address(msg.sender)] + (stor12 * stor14) >= balanceOf[address(msg.sender)]
                    mem[0] = msg.sender
                    mem[32] = 1
                    balanceOf[address(msg.sender)] += stor12 * stor14
                    emit Transfer((stor12 * stor14), 0, msg.sender);
                    mem[96] = stor12 * stor14
                    emit 0x26a22289: (stor12 * stor14), msg.sender
                    idx = idx + 1
                    continue 
            else:
                require stor11 + (msg.value * rate / stor14) >= stor11
                require probability <= stor11 + (msg.value * rate / stor14)
                require probability
                stor9 = (sha3(block.difficulty + block.timestamp) % probability) + 1
                stor11 = 0
                stor11 = stor11 + (msg.value * rate / stor14) - probability
                if stor12:
                    require stor12
                    require stor12 * stor14 / stor12 == stor14
                require not uint8(stor3.field_160)
                require balanceOf[address(msg.sender)] + (msg.value * rate) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += msg.value * rate
                emit Transfer((msg.value * rate), 0, msg.sender);
                require 1848 * stor14
                emit Invested(msg.sender, sold / 1848 * stor14, msg.value * rate);
                require sold + (msg.value * rate) >= sold
                sold += msg.value * rate
                require totalSupply + (msg.value * rate) >= totalSupply
                totalSupply += msg.value * rate
                if stor11 > stor9:
                    idx = 0
                    while uint8(idx) < 1:
                        require balanceOf[address(msg.sender)] + (stor12 * stor14) >= balanceOf[address(msg.sender)]
                        mem[0] = msg.sender
                        mem[32] = 1
                        balanceOf[address(msg.sender)] += stor12 * stor14
                        emit Transfer((stor12 * stor14), 0, msg.sender);
                        mem[160] = stor12 * stor14
                        emit 0x26a22289: (stor12 * stor14), msg.sender
                        idx = idx + 1
                        continue 
                else:
                    if stor9 >= (2 * stor11) + (msg.value * rate / stor14) - probability:
                        idx = 0
                        while uint8(idx) < 1:
                            require balanceOf[address(msg.sender)] + (stor12 * stor14) >= balanceOf[address(msg.sender)]
                            mem[0] = msg.sender
                            mem[32] = 1
                            balanceOf[address(msg.sender)] += stor12 * stor14
                            emit Transfer((stor12 * stor14), 0, msg.sender);
                            mem[160] = stor12 * stor14
                            emit 0x26a22289: (stor12 * stor14), msg.sender
                            idx = idx + 1
                            continue 
                    else:
                        idx = 0
                        while uint8(idx) < 2:
                            require balanceOf[address(msg.sender)] + (stor12 * stor14) >= balanceOf[address(msg.sender)]
                            mem[0] = msg.sender
                            mem[32] = 1
                            balanceOf[address(msg.sender)] += stor12 * stor14
                            emit Transfer((stor12 * stor14), 0, msg.sender);
                            mem[160] = stor12 * stor14
                            emit 0x26a22289: (stor12 * stor14), msg.sender
                            idx = idx + 1
                            continue 
}



}
