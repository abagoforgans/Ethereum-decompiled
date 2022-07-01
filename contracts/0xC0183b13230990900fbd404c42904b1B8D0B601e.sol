contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 _totalSupply;
uint256 fundsRaised;
uint256 stor9;
address stor10;
array of address stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
array of uint256 hardCap;
array of uint256 softCap;
mapping of uint256 balanceOf;
mapping of uint8 stor19;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function _totalSupply() {
    return _totalSupply
}

function HardCap() {
    return hardCap[0 len hardCap.length]
}

function fundsRaised() {
    return fundsRaised
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function SoftCap() {
    return softCap[0 len softCap.length]
}

function totalSupply() {
    return (_totalSupply * 10^decimals)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
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
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require stor19[address(arg1)]
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    if not balanceOf[address(arg1)]:
        stor11.length++
        stor11[stor11.length] = arg1
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require balanceOf[address(arg1)] >= arg3
    require stor19[address(arg2)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    if not balanceOf[address(arg2)]:
        stor11.length++
        stor11[stor11.length] = arg2
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_9508f34d(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 19
        if not stor19[mem[(32 * idx) + 140 len 20]]:
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 19
            stor19[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function sub_fa3905fe(?) {
    require msg.sender == owner
    if balanceOf[address(this.address)]:
        require balanceOf[address(this.address)]
        require 80 * balanceOf[address(this.address)] / balanceOf[address(this.address)] == 80
    require 80 * balanceOf[address(this.address)] / 100 <= balanceOf[address(this.address)]
    require stor11.length > 0
    require stor11.length
    idx = 0
    while idx < stor11.length:
        require balanceOf[stor11[idx]] + (80 * balanceOf[address(this.address)] / 100 / stor11.length) >= balanceOf[stor11[idx]]
        mem[0] = stor11[idx]
        mem[32] = 18
        balanceOf[stor11[idx]] += 80 * balanceOf[address(this.address)] / 100 / stor11.length
        mem[96] = 80 * balanceOf[address(this.address)] / 100 / stor11.length
        emit Transfer((80 * balanceOf[address(this.address)] / 100 / stor11.length), this.address, stor11[idx]);
        idx = idx + 1
        continue 
    balanceOf[0x687abe81c44c982394eed1b0fc6911e5338a6421] = balanceOf[address(this.address)] - (80 * balanceOf[address(this.address)] / 100)
    emit Transfer((balanceOf[address(this.address)] - (80 * balanceOf[address(this.address)] / 100)), this.address, 0x687abe81c44c982394eed1b0fc6911e5338a6421);
    balanceOf[address(this.address)] = 0
}

function buyTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require block.timestamp >= stor12
    require block.timestamp <= stor15
    require fundsRaised != stor9
    require arg1
    require msg.value
    require msg.value >= 5 * 10^16
    require msg.value <= 1000 * 10^18
    require stor19[address(arg1)]
    if not msg.value:
        if block.timestamp < stor12:
            if block.timestamp < stor13:
                if block.timestamp < stor14:
                    if not 20000 * msg.value / 10^18:
                        require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                        require fundsRaised + msg.value >= fundsRaised
                        fundsRaised += msg.value
                        require arg1
                        require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                        require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                        require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                        if balanceOf[address(arg1)]:
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                            emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                        else:
                            stor11.length++
                            stor11[stor11.length] = arg1
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                            emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                    else:
                        require 20000 * msg.value / 10^18
                        require not 0 / 20000 * msg.value / 10^18
                        require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                        require fundsRaised + msg.value >= fundsRaised
                        fundsRaised += msg.value
                        require arg1
                        require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                        require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                        require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                        if balanceOf[address(arg1)]:
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                            emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                        else:
                            stor11.length++
                            stor11[stor11.length] = arg1
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                            emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                else:
                    if block.timestamp >= stor15:
                        if not 20000 * msg.value / 10^18:
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require arg1
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(arg1)]:
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                            else:
                                stor11.length++
                                stor11[stor11.length] = arg1
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                        else:
                            require 20000 * msg.value / 10^18
                            require not 0 / 20000 * msg.value / 10^18
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require arg1
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(arg1)]:
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                            else:
                                stor11.length++
                                stor11[stor11.length] = arg1
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                    else:
                        if not 20000 * msg.value / 10^18:
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require arg1
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(arg1)]:
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                            else:
                                stor11.length++
                                stor11[stor11.length] = arg1
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                        else:
                            require 20000 * msg.value / 10^18
                            require not 0 / 20000 * msg.value / 10^18
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require arg1
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(arg1)]:
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                            else:
                                stor11.length++
                                stor11[stor11.length] = arg1
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
            else:
                if block.timestamp >= stor14:
                    if block.timestamp >= stor15:
                        if not 20000 * msg.value / 10^18:
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require arg1
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(arg1)]:
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                            else:
                                stor11.length++
                                stor11[stor11.length] = arg1
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                        else:
                            require 20000 * msg.value / 10^18
                            require not 0 / 20000 * msg.value / 10^18
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require arg1
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(arg1)]:
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                            else:
                                stor11.length++
                                stor11[stor11.length] = arg1
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                    else:
                        if not 20000 * msg.value / 10^18:
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require arg1
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(arg1)]:
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                            else:
                                stor11.length++
                                stor11[stor11.length] = arg1
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                        else:
                            require 20000 * msg.value / 10^18
                            require not 0 / 20000 * msg.value / 10^18
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require arg1
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(arg1)]:
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                            else:
                                stor11.length++
                                stor11[stor11.length] = arg1
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                else:
                    if not 20000 * msg.value / 10^18:
                        require (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= 20000 * msg.value / 10^18
                        require fundsRaised + msg.value >= fundsRaised
                        fundsRaised += msg.value
                        require arg1
                        require balanceOf[address(this.address)] >= (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                        require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                        require (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (20000 * msg.value / 10^18) - (2000 * 20000 * msg.value / 10^18 / 10000)
                        if balanceOf[address(arg1)]:
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                            emit Transfer(((20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)), this.address, arg1);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000), this.address, arg1);
                        else:
                            stor11.length++
                            stor11[stor11.length] = arg1
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                            emit Transfer(((20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)), this.address, arg1);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000), this.address, arg1);
                    else:
                        require 20000 * msg.value / 10^18
                        require 2000 * 20000 * msg.value / 10^18 / 20000 * msg.value / 10^18 == 2000
                        require (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= 20000 * msg.value / 10^18
                        require fundsRaised + msg.value >= fundsRaised
                        fundsRaised += msg.value
                        require arg1
                        require balanceOf[address(this.address)] >= (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                        require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                        require (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (20000 * msg.value / 10^18) - (2000 * 20000 * msg.value / 10^18 / 10000)
                        if balanceOf[address(arg1)]:
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                            emit Transfer(((20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)), this.address, arg1);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000), this.address, arg1);
                        else:
                            stor11.length++
                            stor11[stor11.length] = arg1
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                            emit Transfer(((20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)), this.address, arg1);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000), this.address, arg1);
        else:
            if block.timestamp >= stor13:
                if block.timestamp >= stor14:
                    if block.timestamp >= stor15:
                        if not 20000 * msg.value / 10^18:
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require arg1
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(arg1)]:
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                            else:
                                stor11.length++
                                stor11[stor11.length] = arg1
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                        else:
                            require 20000 * msg.value / 10^18
                            require not 0 / 20000 * msg.value / 10^18
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require arg1
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(arg1)]:
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                            else:
                                stor11.length++
                                stor11[stor11.length] = arg1
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                    else:
                        if not 20000 * msg.value / 10^18:
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require arg1
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(arg1)]:
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                            else:
                                stor11.length++
                                stor11[stor11.length] = arg1
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                        else:
                            require 20000 * msg.value / 10^18
                            require not 0 / 20000 * msg.value / 10^18
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require arg1
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(arg1)]:
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                            else:
                                stor11.length++
                                stor11[stor11.length] = arg1
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                else:
                    if not 20000 * msg.value / 10^18:
                        require (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= 20000 * msg.value / 10^18
                        require fundsRaised + msg.value >= fundsRaised
                        fundsRaised += msg.value
                        require arg1
                        require balanceOf[address(this.address)] >= (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                        require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                        require (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (20000 * msg.value / 10^18) - (2000 * 20000 * msg.value / 10^18 / 10000)
                        if balanceOf[address(arg1)]:
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                            emit Transfer(((20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)), this.address, arg1);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000), this.address, arg1);
                        else:
                            stor11.length++
                            stor11[stor11.length] = arg1
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                            emit Transfer(((20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)), this.address, arg1);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000), this.address, arg1);
                    else:
                        require 20000 * msg.value / 10^18
                        require 2000 * 20000 * msg.value / 10^18 / 20000 * msg.value / 10^18 == 2000
                        require (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= 20000 * msg.value / 10^18
                        require fundsRaised + msg.value >= fundsRaised
                        fundsRaised += msg.value
                        require arg1
                        require balanceOf[address(this.address)] >= (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                        require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                        require (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (20000 * msg.value / 10^18) - (2000 * 20000 * msg.value / 10^18 / 10000)
                        if balanceOf[address(arg1)]:
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                            emit Transfer(((20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)), this.address, arg1);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000), this.address, arg1);
                        else:
                            stor11.length++
                            stor11[stor11.length] = arg1
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                            emit Transfer(((20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)), this.address, arg1);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000), this.address, arg1);
            else:
                if not 20000 * msg.value / 10^18:
                    require (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) >= 20000 * msg.value / 10^18
                    require fundsRaised + msg.value >= fundsRaised
                    fundsRaised += msg.value
                    require arg1
                    require balanceOf[address(this.address)] >= (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)
                    require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                    require (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (20000 * msg.value / 10^18) - (3000 * 20000 * msg.value / 10^18 / 10000)
                    if balanceOf[address(arg1)]:
                        require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)
                        emit Transfer(((20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)), this.address, arg1);
                        call stor10 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000), this.address, arg1);
                    else:
                        stor11.length++
                        stor11[stor11.length] = arg1
                        require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)
                        emit Transfer(((20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)), this.address, arg1);
                        call stor10 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000), this.address, arg1);
                else:
                    require 20000 * msg.value / 10^18
                    require 3000 * 20000 * msg.value / 10^18 / 20000 * msg.value / 10^18 == 3000
                    require (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) >= 20000 * msg.value / 10^18
                    require fundsRaised + msg.value >= fundsRaised
                    fundsRaised += msg.value
                    require arg1
                    require balanceOf[address(this.address)] >= (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)
                    require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                    require (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (20000 * msg.value / 10^18) - (3000 * 20000 * msg.value / 10^18 / 10000)
                    if balanceOf[address(arg1)]:
                        require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)
                        emit Transfer(((20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)), this.address, arg1);
                        call stor10 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000), this.address, arg1);
                    else:
                        stor11.length++
                        stor11[stor11.length] = arg1
                        require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)
                        emit Transfer(((20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)), this.address, arg1);
                        call stor10 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000), this.address, arg1);
    else:
        require msg.value
        require 20000 * msg.value / msg.value == 20000
        if block.timestamp < stor12:
            if block.timestamp < stor13:
                if block.timestamp < stor14:
                    if not 20000 * msg.value / 10^18:
                        require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                        require fundsRaised + msg.value >= fundsRaised
                        fundsRaised += msg.value
                        require arg1
                        require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                        require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                        require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                        if balanceOf[address(arg1)]:
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                            emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                        else:
                            stor11.length++
                            stor11[stor11.length] = arg1
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                            emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                    else:
                        require 20000 * msg.value / 10^18
                        require not 0 / 20000 * msg.value / 10^18
                        require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                        require fundsRaised + msg.value >= fundsRaised
                        fundsRaised += msg.value
                        require arg1
                        require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                        require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                        require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                        if balanceOf[address(arg1)]:
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                            emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                        else:
                            stor11.length++
                            stor11[stor11.length] = arg1
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                            emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                else:
                    if block.timestamp >= stor15:
                        if not 20000 * msg.value / 10^18:
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require arg1
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(arg1)]:
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                            else:
                                stor11.length++
                                stor11[stor11.length] = arg1
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                        else:
                            require 20000 * msg.value / 10^18
                            require not 0 / 20000 * msg.value / 10^18
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require arg1
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(arg1)]:
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                            else:
                                stor11.length++
                                stor11[stor11.length] = arg1
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                    else:
                        if not 20000 * msg.value / 10^18:
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require arg1
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(arg1)]:
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                            else:
                                stor11.length++
                                stor11[stor11.length] = arg1
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                        else:
                            require 20000 * msg.value / 10^18
                            require not 0 / 20000 * msg.value / 10^18
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require arg1
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(arg1)]:
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                            else:
                                stor11.length++
                                stor11[stor11.length] = arg1
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
            else:
                if block.timestamp >= stor14:
                    if block.timestamp >= stor15:
                        if not 20000 * msg.value / 10^18:
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require arg1
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(arg1)]:
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                            else:
                                stor11.length++
                                stor11[stor11.length] = arg1
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                        else:
                            require 20000 * msg.value / 10^18
                            require not 0 / 20000 * msg.value / 10^18
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require arg1
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(arg1)]:
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                            else:
                                stor11.length++
                                stor11[stor11.length] = arg1
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                    else:
                        if not 20000 * msg.value / 10^18:
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require arg1
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(arg1)]:
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                            else:
                                stor11.length++
                                stor11[stor11.length] = arg1
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                        else:
                            require 20000 * msg.value / 10^18
                            require not 0 / 20000 * msg.value / 10^18
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require arg1
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(arg1)]:
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                            else:
                                stor11.length++
                                stor11[stor11.length] = arg1
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                else:
                    if not 20000 * msg.value / 10^18:
                        require (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= 20000 * msg.value / 10^18
                        require fundsRaised + msg.value >= fundsRaised
                        fundsRaised += msg.value
                        require arg1
                        require balanceOf[address(this.address)] >= (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                        require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                        require (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (20000 * msg.value / 10^18) - (2000 * 20000 * msg.value / 10^18 / 10000)
                        if balanceOf[address(arg1)]:
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                            emit Transfer(((20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)), this.address, arg1);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000), this.address, arg1);
                        else:
                            stor11.length++
                            stor11[stor11.length] = arg1
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                            emit Transfer(((20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)), this.address, arg1);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000), this.address, arg1);
                    else:
                        require 20000 * msg.value / 10^18
                        require 2000 * 20000 * msg.value / 10^18 / 20000 * msg.value / 10^18 == 2000
                        require (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= 20000 * msg.value / 10^18
                        require fundsRaised + msg.value >= fundsRaised
                        fundsRaised += msg.value
                        require arg1
                        require balanceOf[address(this.address)] >= (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                        require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                        require (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (20000 * msg.value / 10^18) - (2000 * 20000 * msg.value / 10^18 / 10000)
                        if balanceOf[address(arg1)]:
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                            emit Transfer(((20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)), this.address, arg1);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000), this.address, arg1);
                        else:
                            stor11.length++
                            stor11[stor11.length] = arg1
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                            emit Transfer(((20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)), this.address, arg1);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000), this.address, arg1);
        else:
            if block.timestamp >= stor13:
                if block.timestamp >= stor14:
                    if block.timestamp >= stor15:
                        if not 20000 * msg.value / 10^18:
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require arg1
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(arg1)]:
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                            else:
                                stor11.length++
                                stor11[stor11.length] = arg1
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                        else:
                            require 20000 * msg.value / 10^18
                            require not 0 / 20000 * msg.value / 10^18
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require arg1
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(arg1)]:
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                            else:
                                stor11.length++
                                stor11[stor11.length] = arg1
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                    else:
                        if not 20000 * msg.value / 10^18:
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require arg1
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(arg1)]:
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                            else:
                                stor11.length++
                                stor11[stor11.length] = arg1
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                        else:
                            require 20000 * msg.value / 10^18
                            require not 0 / 20000 * msg.value / 10^18
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require arg1
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(arg1)]:
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                            else:
                                stor11.length++
                                stor11[stor11.length] = arg1
                                require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, arg1);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, arg1);
                else:
                    if not 20000 * msg.value / 10^18:
                        require (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= 20000 * msg.value / 10^18
                        require fundsRaised + msg.value >= fundsRaised
                        fundsRaised += msg.value
                        require arg1
                        require balanceOf[address(this.address)] >= (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                        require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                        require (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (20000 * msg.value / 10^18) - (2000 * 20000 * msg.value / 10^18 / 10000)
                        if balanceOf[address(arg1)]:
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                            emit Transfer(((20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)), this.address, arg1);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000), this.address, arg1);
                        else:
                            stor11.length++
                            stor11[stor11.length] = arg1
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                            emit Transfer(((20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)), this.address, arg1);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000), this.address, arg1);
                    else:
                        require 20000 * msg.value / 10^18
                        require 2000 * 20000 * msg.value / 10^18 / 20000 * msg.value / 10^18 == 2000
                        require (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= 20000 * msg.value / 10^18
                        require fundsRaised + msg.value >= fundsRaised
                        fundsRaised += msg.value
                        require arg1
                        require balanceOf[address(this.address)] >= (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                        require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                        require (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (20000 * msg.value / 10^18) - (2000 * 20000 * msg.value / 10^18 / 10000)
                        if balanceOf[address(arg1)]:
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                            emit Transfer(((20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)), this.address, arg1);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000), this.address, arg1);
                        else:
                            stor11.length++
                            stor11[stor11.length] = arg1
                            require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                            emit Transfer(((20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)), this.address, arg1);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000), this.address, arg1);
            else:
                if not 20000 * msg.value / 10^18:
                    require (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) >= 20000 * msg.value / 10^18
                    require fundsRaised + msg.value >= fundsRaised
                    fundsRaised += msg.value
                    require arg1
                    require balanceOf[address(this.address)] >= (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)
                    require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                    require (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (20000 * msg.value / 10^18) - (3000 * 20000 * msg.value / 10^18 / 10000)
                    if balanceOf[address(arg1)]:
                        require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)
                        emit Transfer(((20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)), this.address, arg1);
                        call stor10 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000), this.address, arg1);
                    else:
                        stor11.length++
                        stor11[stor11.length] = arg1
                        require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)
                        emit Transfer(((20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)), this.address, arg1);
                        call stor10 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000), this.address, arg1);
                else:
                    require 20000 * msg.value / 10^18
                    require 3000 * 20000 * msg.value / 10^18 / 20000 * msg.value / 10^18 == 3000
                    require (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) >= 20000 * msg.value / 10^18
                    require fundsRaised + msg.value >= fundsRaised
                    fundsRaised += msg.value
                    require arg1
                    require balanceOf[address(this.address)] >= (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)
                    require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                    require (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (20000 * msg.value / 10^18) - (3000 * 20000 * msg.value / 10^18 / 10000)
                    if balanceOf[address(arg1)]:
                        require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)
                        emit Transfer(((20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)), this.address, arg1);
                        call stor10 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000), this.address, arg1);
                    else:
                        stor11.length++
                        stor11[stor11.length] = arg1
                        require balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)
                        emit Transfer(((20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)), this.address, arg1);
                        call stor10 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000), this.address, arg1);
}

function _fallback() payable {
    require block.timestamp >= stor12
    require block.timestamp <= stor15
    require fundsRaised != stor9
    require msg.sender
    require msg.value
    require msg.value >= 5 * 10^16
    require msg.value <= 1000 * 10^18
    require stor19[address(msg.sender)]
    if not msg.value:
        if block.timestamp < stor12:
            if block.timestamp < stor13:
                if block.timestamp < stor14:
                    if not 20000 * msg.value / 10^18:
                        require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                        require fundsRaised + msg.value >= fundsRaised
                        fundsRaised += msg.value
                        require msg.sender
                        require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                        require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                        require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                        if balanceOf[address(msg.sender)]:
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                            emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                        else:
                            stor11.length++
                            stor11[stor11.length] = msg.sender
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                            emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                    else:
                        require 20000 * msg.value / 10^18
                        require not 0 / 20000 * msg.value / 10^18
                        require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                        require fundsRaised + msg.value >= fundsRaised
                        fundsRaised += msg.value
                        require msg.sender
                        require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                        require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                        require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                        if balanceOf[address(msg.sender)]:
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                            emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                        else:
                            stor11.length++
                            stor11[stor11.length] = msg.sender
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                            emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                else:
                    if block.timestamp >= stor15:
                        if not 20000 * msg.value / 10^18:
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require msg.sender
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(msg.sender)]:
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                            else:
                                stor11.length++
                                stor11[stor11.length] = msg.sender
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                        else:
                            require 20000 * msg.value / 10^18
                            require not 0 / 20000 * msg.value / 10^18
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require msg.sender
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(msg.sender)]:
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                            else:
                                stor11.length++
                                stor11[stor11.length] = msg.sender
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                    else:
                        if not 20000 * msg.value / 10^18:
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require msg.sender
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(msg.sender)]:
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                            else:
                                stor11.length++
                                stor11[stor11.length] = msg.sender
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                        else:
                            require 20000 * msg.value / 10^18
                            require not 0 / 20000 * msg.value / 10^18
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require msg.sender
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(msg.sender)]:
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                            else:
                                stor11.length++
                                stor11[stor11.length] = msg.sender
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
            else:
                if block.timestamp >= stor14:
                    if block.timestamp >= stor15:
                        if not 20000 * msg.value / 10^18:
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require msg.sender
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(msg.sender)]:
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                            else:
                                stor11.length++
                                stor11[stor11.length] = msg.sender
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                        else:
                            require 20000 * msg.value / 10^18
                            require not 0 / 20000 * msg.value / 10^18
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require msg.sender
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(msg.sender)]:
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                            else:
                                stor11.length++
                                stor11[stor11.length] = msg.sender
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                    else:
                        if not 20000 * msg.value / 10^18:
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require msg.sender
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(msg.sender)]:
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                            else:
                                stor11.length++
                                stor11[stor11.length] = msg.sender
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                        else:
                            require 20000 * msg.value / 10^18
                            require not 0 / 20000 * msg.value / 10^18
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require msg.sender
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(msg.sender)]:
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                            else:
                                stor11.length++
                                stor11[stor11.length] = msg.sender
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                else:
                    if not 20000 * msg.value / 10^18:
                        require (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= 20000 * msg.value / 10^18
                        require fundsRaised + msg.value >= fundsRaised
                        fundsRaised += msg.value
                        require msg.sender
                        require balanceOf[address(this.address)] >= (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                        require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                        require (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (20000 * msg.value / 10^18) - (2000 * 20000 * msg.value / 10^18 / 10000)
                        if balanceOf[address(msg.sender)]:
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                            emit Transfer(((20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)), this.address, msg.sender);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000), this.address, msg.sender);
                        else:
                            stor11.length++
                            stor11[stor11.length] = msg.sender
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                            emit Transfer(((20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)), this.address, msg.sender);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000), this.address, msg.sender);
                    else:
                        require 20000 * msg.value / 10^18
                        require 2000 * 20000 * msg.value / 10^18 / 20000 * msg.value / 10^18 == 2000
                        require (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= 20000 * msg.value / 10^18
                        require fundsRaised + msg.value >= fundsRaised
                        fundsRaised += msg.value
                        require msg.sender
                        require balanceOf[address(this.address)] >= (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                        require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                        require (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (20000 * msg.value / 10^18) - (2000 * 20000 * msg.value / 10^18 / 10000)
                        if balanceOf[address(msg.sender)]:
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                            emit Transfer(((20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)), this.address, msg.sender);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000), this.address, msg.sender);
                        else:
                            stor11.length++
                            stor11[stor11.length] = msg.sender
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                            emit Transfer(((20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)), this.address, msg.sender);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000), this.address, msg.sender);
        else:
            if block.timestamp >= stor13:
                if block.timestamp >= stor14:
                    if block.timestamp >= stor15:
                        if not 20000 * msg.value / 10^18:
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require msg.sender
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(msg.sender)]:
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                            else:
                                stor11.length++
                                stor11[stor11.length] = msg.sender
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                        else:
                            require 20000 * msg.value / 10^18
                            require not 0 / 20000 * msg.value / 10^18
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require msg.sender
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(msg.sender)]:
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                            else:
                                stor11.length++
                                stor11[stor11.length] = msg.sender
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                    else:
                        if not 20000 * msg.value / 10^18:
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require msg.sender
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(msg.sender)]:
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                            else:
                                stor11.length++
                                stor11[stor11.length] = msg.sender
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                        else:
                            require 20000 * msg.value / 10^18
                            require not 0 / 20000 * msg.value / 10^18
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require msg.sender
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(msg.sender)]:
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                            else:
                                stor11.length++
                                stor11[stor11.length] = msg.sender
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                else:
                    if not 20000 * msg.value / 10^18:
                        require (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= 20000 * msg.value / 10^18
                        require fundsRaised + msg.value >= fundsRaised
                        fundsRaised += msg.value
                        require msg.sender
                        require balanceOf[address(this.address)] >= (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                        require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                        require (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (20000 * msg.value / 10^18) - (2000 * 20000 * msg.value / 10^18 / 10000)
                        if balanceOf[address(msg.sender)]:
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                            emit Transfer(((20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)), this.address, msg.sender);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000), this.address, msg.sender);
                        else:
                            stor11.length++
                            stor11[stor11.length] = msg.sender
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                            emit Transfer(((20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)), this.address, msg.sender);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000), this.address, msg.sender);
                    else:
                        require 20000 * msg.value / 10^18
                        require 2000 * 20000 * msg.value / 10^18 / 20000 * msg.value / 10^18 == 2000
                        require (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= 20000 * msg.value / 10^18
                        require fundsRaised + msg.value >= fundsRaised
                        fundsRaised += msg.value
                        require msg.sender
                        require balanceOf[address(this.address)] >= (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                        require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                        require (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (20000 * msg.value / 10^18) - (2000 * 20000 * msg.value / 10^18 / 10000)
                        if balanceOf[address(msg.sender)]:
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                            emit Transfer(((20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)), this.address, msg.sender);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000), this.address, msg.sender);
                        else:
                            stor11.length++
                            stor11[stor11.length] = msg.sender
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                            emit Transfer(((20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)), this.address, msg.sender);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000), this.address, msg.sender);
            else:
                if not 20000 * msg.value / 10^18:
                    require (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) >= 20000 * msg.value / 10^18
                    require fundsRaised + msg.value >= fundsRaised
                    fundsRaised += msg.value
                    require msg.sender
                    require balanceOf[address(this.address)] >= (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)
                    require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                    require (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (20000 * msg.value / 10^18) - (3000 * 20000 * msg.value / 10^18 / 10000)
                    if balanceOf[address(msg.sender)]:
                        require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)
                        emit Transfer(((20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)), this.address, msg.sender);
                        call stor10 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000), this.address, msg.sender);
                    else:
                        stor11.length++
                        stor11[stor11.length] = msg.sender
                        require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)
                        emit Transfer(((20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)), this.address, msg.sender);
                        call stor10 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000), this.address, msg.sender);
                else:
                    require 20000 * msg.value / 10^18
                    require 3000 * 20000 * msg.value / 10^18 / 20000 * msg.value / 10^18 == 3000
                    require (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) >= 20000 * msg.value / 10^18
                    require fundsRaised + msg.value >= fundsRaised
                    fundsRaised += msg.value
                    require msg.sender
                    require balanceOf[address(this.address)] >= (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)
                    require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                    require (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (20000 * msg.value / 10^18) - (3000 * 20000 * msg.value / 10^18 / 10000)
                    if balanceOf[address(msg.sender)]:
                        require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)
                        emit Transfer(((20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)), this.address, msg.sender);
                        call stor10 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000), this.address, msg.sender);
                    else:
                        stor11.length++
                        stor11[stor11.length] = msg.sender
                        require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)
                        emit Transfer(((20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)), this.address, msg.sender);
                        call stor10 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000), this.address, msg.sender);
    else:
        require msg.value
        require 20000 * msg.value / msg.value == 20000
        if block.timestamp < stor12:
            if block.timestamp < stor13:
                if block.timestamp < stor14:
                    if not 20000 * msg.value / 10^18:
                        require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                        require fundsRaised + msg.value >= fundsRaised
                        fundsRaised += msg.value
                        require msg.sender
                        require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                        require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                        require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                        if balanceOf[address(msg.sender)]:
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                            emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                        else:
                            stor11.length++
                            stor11[stor11.length] = msg.sender
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                            emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                    else:
                        require 20000 * msg.value / 10^18
                        require not 0 / 20000 * msg.value / 10^18
                        require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                        require fundsRaised + msg.value >= fundsRaised
                        fundsRaised += msg.value
                        require msg.sender
                        require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                        require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                        require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                        if balanceOf[address(msg.sender)]:
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                            emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                        else:
                            stor11.length++
                            stor11[stor11.length] = msg.sender
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                            emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                else:
                    if block.timestamp >= stor15:
                        if not 20000 * msg.value / 10^18:
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require msg.sender
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(msg.sender)]:
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                            else:
                                stor11.length++
                                stor11[stor11.length] = msg.sender
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                        else:
                            require 20000 * msg.value / 10^18
                            require not 0 / 20000 * msg.value / 10^18
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require msg.sender
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(msg.sender)]:
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                            else:
                                stor11.length++
                                stor11[stor11.length] = msg.sender
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                    else:
                        if not 20000 * msg.value / 10^18:
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require msg.sender
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(msg.sender)]:
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                            else:
                                stor11.length++
                                stor11[stor11.length] = msg.sender
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                        else:
                            require 20000 * msg.value / 10^18
                            require not 0 / 20000 * msg.value / 10^18
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require msg.sender
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(msg.sender)]:
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                            else:
                                stor11.length++
                                stor11[stor11.length] = msg.sender
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
            else:
                if block.timestamp >= stor14:
                    if block.timestamp >= stor15:
                        if not 20000 * msg.value / 10^18:
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require msg.sender
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(msg.sender)]:
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                            else:
                                stor11.length++
                                stor11[stor11.length] = msg.sender
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                        else:
                            require 20000 * msg.value / 10^18
                            require not 0 / 20000 * msg.value / 10^18
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require msg.sender
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(msg.sender)]:
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                            else:
                                stor11.length++
                                stor11[stor11.length] = msg.sender
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                    else:
                        if not 20000 * msg.value / 10^18:
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require msg.sender
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(msg.sender)]:
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                            else:
                                stor11.length++
                                stor11[stor11.length] = msg.sender
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                        else:
                            require 20000 * msg.value / 10^18
                            require not 0 / 20000 * msg.value / 10^18
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require msg.sender
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(msg.sender)]:
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                            else:
                                stor11.length++
                                stor11[stor11.length] = msg.sender
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                else:
                    if not 20000 * msg.value / 10^18:
                        require (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= 20000 * msg.value / 10^18
                        require fundsRaised + msg.value >= fundsRaised
                        fundsRaised += msg.value
                        require msg.sender
                        require balanceOf[address(this.address)] >= (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                        require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                        require (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (20000 * msg.value / 10^18) - (2000 * 20000 * msg.value / 10^18 / 10000)
                        if balanceOf[address(msg.sender)]:
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                            emit Transfer(((20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)), this.address, msg.sender);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000), this.address, msg.sender);
                        else:
                            stor11.length++
                            stor11[stor11.length] = msg.sender
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                            emit Transfer(((20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)), this.address, msg.sender);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000), this.address, msg.sender);
                    else:
                        require 20000 * msg.value / 10^18
                        require 2000 * 20000 * msg.value / 10^18 / 20000 * msg.value / 10^18 == 2000
                        require (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= 20000 * msg.value / 10^18
                        require fundsRaised + msg.value >= fundsRaised
                        fundsRaised += msg.value
                        require msg.sender
                        require balanceOf[address(this.address)] >= (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                        require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                        require (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (20000 * msg.value / 10^18) - (2000 * 20000 * msg.value / 10^18 / 10000)
                        if balanceOf[address(msg.sender)]:
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                            emit Transfer(((20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)), this.address, msg.sender);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000), this.address, msg.sender);
                        else:
                            stor11.length++
                            stor11[stor11.length] = msg.sender
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                            emit Transfer(((20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)), this.address, msg.sender);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000), this.address, msg.sender);
        else:
            if block.timestamp >= stor13:
                if block.timestamp >= stor14:
                    if block.timestamp >= stor15:
                        if not 20000 * msg.value / 10^18:
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require msg.sender
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(msg.sender)]:
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                            else:
                                stor11.length++
                                stor11[stor11.length] = msg.sender
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                        else:
                            require 20000 * msg.value / 10^18
                            require not 0 / 20000 * msg.value / 10^18
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require msg.sender
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(msg.sender)]:
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                            else:
                                stor11.length++
                                stor11[stor11.length] = msg.sender
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                    else:
                        if not 20000 * msg.value / 10^18:
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require msg.sender
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(msg.sender)]:
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                            else:
                                stor11.length++
                                stor11[stor11.length] = msg.sender
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                        else:
                            require 20000 * msg.value / 10^18
                            require not 0 / 20000 * msg.value / 10^18
                            require 20000 * msg.value / 10^18 >= 20000 * msg.value / 10^18
                            require fundsRaised + msg.value >= fundsRaised
                            fundsRaised += msg.value
                            require msg.sender
                            require balanceOf[address(this.address)] >= 20000 * msg.value / 10^18
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            require 20000 * msg.value / 10^18 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 20000 * msg.value / 10^18
                            if balanceOf[address(msg.sender)]:
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                            else:
                                stor11.length++
                                stor11[stor11.length] = msg.sender
                                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 10^18
                                emit Transfer((20000 * msg.value / 10^18), this.address, msg.sender);
                                call stor10 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit TokenPurchase(msg.value, 20000 * msg.value / 10^18, this.address, msg.sender);
                else:
                    if not 20000 * msg.value / 10^18:
                        require (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= 20000 * msg.value / 10^18
                        require fundsRaised + msg.value >= fundsRaised
                        fundsRaised += msg.value
                        require msg.sender
                        require balanceOf[address(this.address)] >= (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                        require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                        require (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (20000 * msg.value / 10^18) - (2000 * 20000 * msg.value / 10^18 / 10000)
                        if balanceOf[address(msg.sender)]:
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                            emit Transfer(((20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)), this.address, msg.sender);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000), this.address, msg.sender);
                        else:
                            stor11.length++
                            stor11[stor11.length] = msg.sender
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                            emit Transfer(((20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)), this.address, msg.sender);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000), this.address, msg.sender);
                    else:
                        require 20000 * msg.value / 10^18
                        require 2000 * 20000 * msg.value / 10^18 / 20000 * msg.value / 10^18 == 2000
                        require (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= 20000 * msg.value / 10^18
                        require fundsRaised + msg.value >= fundsRaised
                        fundsRaised += msg.value
                        require msg.sender
                        require balanceOf[address(this.address)] >= (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                        require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                        require (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (20000 * msg.value / 10^18) - (2000 * 20000 * msg.value / 10^18 / 10000)
                        if balanceOf[address(msg.sender)]:
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                            emit Transfer(((20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)), this.address, msg.sender);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000), this.address, msg.sender);
                        else:
                            stor11.length++
                            stor11[stor11.length] = msg.sender
                            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)
                            emit Transfer(((20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000)), this.address, msg.sender);
                            call stor10 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (2000 * 20000 * msg.value / 10^18 / 10000), this.address, msg.sender);
            else:
                if not 20000 * msg.value / 10^18:
                    require (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) >= 20000 * msg.value / 10^18
                    require fundsRaised + msg.value >= fundsRaised
                    fundsRaised += msg.value
                    require msg.sender
                    require balanceOf[address(this.address)] >= (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)
                    require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                    require (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (20000 * msg.value / 10^18) - (3000 * 20000 * msg.value / 10^18 / 10000)
                    if balanceOf[address(msg.sender)]:
                        require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)
                        emit Transfer(((20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)), this.address, msg.sender);
                        call stor10 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000), this.address, msg.sender);
                    else:
                        stor11.length++
                        stor11[stor11.length] = msg.sender
                        require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)
                        emit Transfer(((20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)), this.address, msg.sender);
                        call stor10 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000), this.address, msg.sender);
                else:
                    require 20000 * msg.value / 10^18
                    require 3000 * 20000 * msg.value / 10^18 / 20000 * msg.value / 10^18 == 3000
                    require (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) >= 20000 * msg.value / 10^18
                    require fundsRaised + msg.value >= fundsRaised
                    fundsRaised += msg.value
                    require msg.sender
                    require balanceOf[address(this.address)] >= (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)
                    require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                    require (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (20000 * msg.value / 10^18) - (3000 * 20000 * msg.value / 10^18 / 10000)
                    if balanceOf[address(msg.sender)]:
                        require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)
                        emit Transfer(((20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)), this.address, msg.sender);
                        call stor10 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000), this.address, msg.sender);
                    else:
                        stor11.length++
                        stor11[stor11.length] = msg.sender
                        require balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)
                        emit Transfer(((20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000)), this.address, msg.sender);
                        call stor10 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit TokenPurchase(msg.value, (20000 * msg.value / 10^18) + (3000 * 20000 * msg.value / 10^18 / 10000), this.address, msg.sender);
}



}
