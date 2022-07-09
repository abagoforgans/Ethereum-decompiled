contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
uint256 sub_28a11948;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
address stor10;
array of address stor11;
mapping of uint256 balanceOf;
mapping of uint256 _allowance;
mapping of uint256 availableOf;
array of struct stor15;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_28a11948(?) {
    return sub_28a11948
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function availableOf(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < stor15[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 15)
        if stor15[address(arg1)][idx].field_1280:
            idx = idx + 1
            continue 
        require idx < stor15[address(arg1)].field_0
        if not stor15[address(arg1)][idx].field_1024:
            require idx < stor15[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 15)
            idx = idx + 1
            continue 
        require idx < stor15[address(arg1)].field_0
        if block.timestamp <= stor15[address(arg1)][idx].field_256:
            if idx < stor15[address(arg1)].field_0:
                mem[0] = sha3(address(arg1), 15)
                if block.timestamp <= stor15[address(arg1)][idx].field_256:
                    idx = idx + 1
                    continue 
                if block.timestamp < stor15[address(arg1)][idx].field_0 + (24 * 3600 * stor15[address(arg1)][idx].field_1024):
                    idx = idx + 1
                    continue 
                if idx < stor15[address(arg1)].field_0:
                    if idx < stor15[address(arg1)].field_0:
                        mem[0] = sha3(address(arg1), 15)
                        if stor15[address(arg1)][idx].field_1024:
                            idx = idx + 1
                            continue 
        else:
            if block.timestamp < stor15[address(arg1)][idx].field_0 + (24 * 3600 * stor15[address(arg1)][idx].field_1024):
                if idx < stor15[address(arg1)].field_0:
                    if idx < stor15[address(arg1)].field_0:
                        mem[0] = sha3(address(arg1), 15)
                        if stor15[address(arg1)][idx].field_1024:
                            idx = idx + 1
                            continue 
            else:
                if idx < stor15[address(arg1)].field_0:
                    mem[0] = sha3(address(arg1), 15)
                    if block.timestamp <= stor15[address(arg1)][idx].field_256:
                        idx = idx + 1
                        continue 
                    if block.timestamp < stor15[address(arg1)][idx].field_0 + (24 * 3600 * stor15[address(arg1)][idx].field_1024):
                        idx = idx + 1
                        continue 
                    if idx < stor15[address(arg1)].field_0:
                        if idx < stor15[address(arg1)].field_0:
                            mem[0] = sha3(address(arg1), 15)
                            if stor15[address(arg1)][idx].field_1024:
                                idx = idx + 1
                                continue 
        revert
    return availableOf[address(arg1)]
}

function _allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return _allowance[arg1][arg2]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return _allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_d37f3220(?) {
    return stor5, stor6, stor7, stor8, stor9
}

function sub_880ef978(?) {
    require calldata.size - 4 >= 160
    require msg.sender == stor10
    stor5 = arg1
    stor6 = arg2
    stor7 = arg3
    stor8 = arg4
    stor9 = arg5
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    _allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_450a6ac9(?) {
    require calldata.size - 4 >= 64
    require 0 < stor11.length
    idx = 0
    while stor11[idx] != msg.sender:
        require idx + 1 < stor11.length
        mem[0] = 11
        idx = idx + 1
        continue 
    availableOf[address(arg1)] -= arg2
}

function sub_b24e3f0d(?) {
    require calldata.size - 4 >= 64
    require 0 < stor11.length
    idx = 0
    while stor11[idx] != msg.sender:
        require idx + 1 < stor11.length
        mem[0] = 11
        idx = idx + 1
        continue 
    availableOf[address(arg1)] += arg2
}

function sub_7e2089a3(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor10
    idx = 0
    while idx < stor11.length:
        mem[0] = 11
        if stor11[idx] != arg1:
            idx = idx + 1
            continue 
    stor11.length++
    stor11[stor11.length] = arg1
}

function sub_8733cbd3(?) {
    require calldata.size - 4 >= 96
    require 0 < stor11.length
    idx = 0
    while stor11[idx] != msg.sender:
        require idx + 1 < stor11.length
        mem[0] = 11
        idx = idx + 1
        continue 
    require balanceOf[address(arg1)] >= arg3
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function sub_bf6e494a(?) payable {
    if block.timestamp <= stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exchange has not started or ended.'
    if block.timestamp >= stor8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exchange has not started or ended.'
    if balanceOf[address(this.address)] <= stor5 * msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The circulation has reached the upper limit.'
    if stor5 * msg.value <= 10^decimals:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The amount of exchange is too small.'
    balanceOf[address(this.address)] += -1 * stor5 * msg.value
    balanceOf[address(msg.sender)] += stor5 * msg.value
    stor15[address(msg.sender)].field_0++
    stor15[address(msg.sender)][stor15[address(msg.sender)].field_0].field_0 = 24 * 3600 * block.timestamp / 24 * 3600
    stor15[address(msg.sender)][stor15[address(msg.sender)].field_0].field_256 = 24 * 3600 * block.timestamp / 24 * 3600
    stor15[address(msg.sender)][stor15[address(msg.sender)].field_0].field_512 = stor5 * msg.value
    stor15[address(msg.sender)][stor15[address(msg.sender)].field_0].field_768 = msg.value
    stor15[address(msg.sender)][stor15[address(msg.sender)].field_0].field_1024 = stor9
    stor15[address(msg.sender)][stor15[address(msg.sender)].field_0].field_1280 = 0
    call stor10 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    idx = 0
    while idx < stor15[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 15)
        if stor15[address(msg.sender)][idx].field_1280:
            idx = idx + 1
            continue 
        require idx < stor15[address(msg.sender)].field_0
        if not stor15[address(msg.sender)][idx].field_1024:
            require idx < stor15[address(msg.sender)].field_0
            mem[0] = sha3(address(msg.sender), 15)
            idx = idx + 1
            continue 
        require idx < stor15[address(msg.sender)].field_0
        if block.timestamp <= stor15[address(msg.sender)][idx].field_256:
            if idx < stor15[address(msg.sender)].field_0:
                mem[0] = sha3(address(msg.sender), 15)
                if block.timestamp <= stor15[address(msg.sender)][idx].field_256:
                    idx = idx + 1
                    continue 
                if block.timestamp < stor15[address(msg.sender)][idx].field_0 + (24 * 3600 * stor15[address(msg.sender)][idx].field_1024):
                    idx = idx + 1
                    continue 
                if idx < stor15[address(msg.sender)].field_0:
                    if idx < stor15[address(msg.sender)].field_0:
                        mem[0] = sha3(address(msg.sender), 15)
                        if stor15[address(msg.sender)][idx].field_1024:
                            idx = idx + 1
                            continue 
        else:
            if block.timestamp < stor15[address(msg.sender)][idx].field_0 + (24 * 3600 * stor15[address(msg.sender)][idx].field_1024):
                if idx < stor15[address(msg.sender)].field_0:
                    if idx < stor15[address(msg.sender)].field_0:
                        mem[0] = sha3(address(msg.sender), 15)
                        if stor15[address(msg.sender)][idx].field_1024:
                            idx = idx + 1
                            continue 
            else:
                if idx < stor15[address(msg.sender)].field_0:
                    mem[0] = sha3(address(msg.sender), 15)
                    if block.timestamp <= stor15[address(msg.sender)][idx].field_256:
                        idx = idx + 1
                        continue 
                    if block.timestamp < stor15[address(msg.sender)][idx].field_0 + (24 * 3600 * stor15[address(msg.sender)][idx].field_1024):
                        idx = idx + 1
                        continue 
                    if idx < stor15[address(msg.sender)].field_0:
                        if idx < stor15[address(msg.sender)].field_0:
                            mem[0] = sha3(address(msg.sender), 15)
                            if stor15[address(msg.sender)][idx].field_1024:
                                idx = idx + 1
                                continue 
        revert
    if availableOf[address(msg.sender)] != availableOf[address(arg1)]:
        idx = 0
        while idx < stor15[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 15)
            if not stor15[address(arg1)][idx].field_1280:
                require idx < stor15[address(arg1)].field_0
                require idx < stor15[address(arg1)].field_0
                if not stor15[address(arg1)][idx].field_1024:
                    mem[32] = 14
                    availableOf[address(arg1)] += stor15[address(arg1)][idx].field_512
                    stor15[address(arg1)][idx].field_256 = stor15[address(arg1)][idx].field_0 + (24 * 3600 * stor15[address(arg1)][idx].field_1024)
                    mem[0] = sha3(address(arg1), 15)
                    stor15[address(arg1)][idx].field_1280 = 1
                else:
                    require idx < stor15[address(arg1)].field_0
                    if block.timestamp <= stor15[address(arg1)][idx].field_256:
                        mem[0] = sha3(address(arg1), 15)
                        if block.timestamp > stor15[address(arg1)][idx].field_256:
                            if block.timestamp >= stor15[address(arg1)][idx].field_0 + (24 * 3600 * stor15[address(arg1)][idx].field_1024):
                                require idx < stor15[address(arg1)].field_0
                                require idx < stor15[address(arg1)].field_0
                                stor15[address(arg1)][idx].field_256 = stor15[address(arg1)][idx].field_0 + (24 * 3600 * stor15[address(arg1)][idx].field_1024)
                                stor15[address(arg1)][idx].field_1280 = 1
                                require stor15[address(arg1)][idx].field_1024
                                mem[0] = arg1
                                mem[32] = 14
                                availableOf[address(arg1)] += stor15[address(arg1)][idx].field_512 / stor15[address(arg1)][idx].field_1024 * stor15[address(arg1)][idx].field_0 + (24 * 3600 * stor15[address(arg1)][idx].field_1024) - stor15[address(arg1)][idx].field_256 / 24 * 3600
                    else:
                        if block.timestamp < stor15[address(arg1)][idx].field_0 + (24 * 3600 * stor15[address(arg1)][idx].field_1024):
                            require idx < stor15[address(arg1)].field_0
                            stor15[address(arg1)][idx].field_256 = 24 * 3600 * block.timestamp / 24 * 3600
                            require stor15[address(arg1)][idx].field_1024
                            mem[0] = arg1
                            mem[32] = 14
                            availableOf[address(arg1)] += stor15[address(arg1)][idx].field_512 / stor15[address(arg1)][idx].field_1024 * block.timestamp - stor15[address(arg1)][idx].field_256 / 24 * 3600
                        else:
                            mem[0] = sha3(address(arg1), 15)
                            if block.timestamp > stor15[address(arg1)][idx].field_256:
                                if block.timestamp >= stor15[address(arg1)][idx].field_0 + (24 * 3600 * stor15[address(arg1)][idx].field_1024):
                                    require idx < stor15[address(arg1)].field_0
                                    require idx < stor15[address(arg1)].field_0
                                    stor15[address(arg1)][idx].field_256 = stor15[address(arg1)][idx].field_0 + (24 * 3600 * stor15[address(arg1)][idx].field_1024)
                                    stor15[address(arg1)][idx].field_1280 = 1
                                    require stor15[address(arg1)][idx].field_1024
                                    mem[0] = arg1
                                    mem[32] = 14
                                    availableOf[address(arg1)] += stor15[address(arg1)][idx].field_512 / stor15[address(arg1)][idx].field_1024 * stor15[address(arg1)][idx].field_0 + (24 * 3600 * stor15[address(arg1)][idx].field_1024) - stor15[address(arg1)][idx].field_256 / 24 * 3600
            idx = idx + 1
            continue 
    require _allowance[address(arg1)][address(msg.sender)] >= arg3
    _allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    availableOf[address(arg2)] += arg3
    availableOf[address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    idx = 0
    while idx < stor15[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 15)
        if stor15[address(msg.sender)][idx].field_1280:
            idx = idx + 1
            continue 
        require idx < stor15[address(msg.sender)].field_0
        if not stor15[address(msg.sender)][idx].field_1024:
            require idx < stor15[address(msg.sender)].field_0
            mem[0] = sha3(address(msg.sender), 15)
            idx = idx + 1
            continue 
        require idx < stor15[address(msg.sender)].field_0
        if block.timestamp <= stor15[address(msg.sender)][idx].field_256:
            if idx < stor15[address(msg.sender)].field_0:
                mem[0] = sha3(address(msg.sender), 15)
                if block.timestamp <= stor15[address(msg.sender)][idx].field_256:
                    idx = idx + 1
                    continue 
                if block.timestamp < stor15[address(msg.sender)][idx].field_0 + (24 * 3600 * stor15[address(msg.sender)][idx].field_1024):
                    idx = idx + 1
                    continue 
                if idx < stor15[address(msg.sender)].field_0:
                    if idx < stor15[address(msg.sender)].field_0:
                        mem[0] = sha3(address(msg.sender), 15)
                        if stor15[address(msg.sender)][idx].field_1024:
                            idx = idx + 1
                            continue 
        else:
            if block.timestamp < stor15[address(msg.sender)][idx].field_0 + (24 * 3600 * stor15[address(msg.sender)][idx].field_1024):
                if idx < stor15[address(msg.sender)].field_0:
                    if idx < stor15[address(msg.sender)].field_0:
                        mem[0] = sha3(address(msg.sender), 15)
                        if stor15[address(msg.sender)][idx].field_1024:
                            idx = idx + 1
                            continue 
            else:
                if idx < stor15[address(msg.sender)].field_0:
                    mem[0] = sha3(address(msg.sender), 15)
                    if block.timestamp <= stor15[address(msg.sender)][idx].field_256:
                        idx = idx + 1
                        continue 
                    if block.timestamp < stor15[address(msg.sender)][idx].field_0 + (24 * 3600 * stor15[address(msg.sender)][idx].field_1024):
                        idx = idx + 1
                        continue 
                    if idx < stor15[address(msg.sender)].field_0:
                        if idx < stor15[address(msg.sender)].field_0:
                            mem[0] = sha3(address(msg.sender), 15)
                            if stor15[address(msg.sender)][idx].field_1024:
                                idx = idx + 1
                                continue 
        revert
    if availableOf[address(msg.sender)] != availableOf[address(msg.sender)]:
        idx = 0
        while idx < stor15[address(msg.sender)].field_0:
            mem[0] = sha3(address(msg.sender), 15)
            if not stor15[address(msg.sender)][idx].field_1280:
                require idx < stor15[address(msg.sender)].field_0
                require idx < stor15[address(msg.sender)].field_0
                if not stor15[address(msg.sender)][idx].field_1024:
                    mem[32] = 14
                    availableOf[address(msg.sender)] += stor15[address(msg.sender)][idx].field_512
                    stor15[address(msg.sender)][idx].field_256 = stor15[address(msg.sender)][idx].field_0 + (24 * 3600 * stor15[address(msg.sender)][idx].field_1024)
                    mem[0] = sha3(address(msg.sender), 15)
                    stor15[address(msg.sender)][idx].field_1280 = 1
                else:
                    require idx < stor15[address(msg.sender)].field_0
                    if block.timestamp <= stor15[address(msg.sender)][idx].field_256:
                        mem[0] = sha3(address(msg.sender), 15)
                        if block.timestamp > stor15[address(msg.sender)][idx].field_256:
                            if block.timestamp >= stor15[address(msg.sender)][idx].field_0 + (24 * 3600 * stor15[address(msg.sender)][idx].field_1024):
                                require idx < stor15[address(msg.sender)].field_0
                                require idx < stor15[address(msg.sender)].field_0
                                stor15[address(msg.sender)][idx].field_256 = stor15[address(msg.sender)][idx].field_0 + (24 * 3600 * stor15[address(msg.sender)][idx].field_1024)
                                stor15[address(msg.sender)][idx].field_1280 = 1
                                require stor15[address(msg.sender)][idx].field_1024
                                mem[0] = msg.sender
                                mem[32] = 14
                                availableOf[address(msg.sender)] += stor15[address(msg.sender)][idx].field_512 / stor15[address(msg.sender)][idx].field_1024 * stor15[address(msg.sender)][idx].field_0 + (24 * 3600 * stor15[address(msg.sender)][idx].field_1024) - stor15[address(msg.sender)][idx].field_256 / 24 * 3600
                    else:
                        if block.timestamp < stor15[address(msg.sender)][idx].field_0 + (24 * 3600 * stor15[address(msg.sender)][idx].field_1024):
                            require idx < stor15[address(msg.sender)].field_0
                            stor15[address(msg.sender)][idx].field_256 = 24 * 3600 * block.timestamp / 24 * 3600
                            require stor15[address(msg.sender)][idx].field_1024
                            mem[0] = msg.sender
                            mem[32] = 14
                            availableOf[address(msg.sender)] += stor15[address(msg.sender)][idx].field_512 / stor15[address(msg.sender)][idx].field_1024 * block.timestamp - stor15[address(msg.sender)][idx].field_256 / 24 * 3600
                        else:
                            mem[0] = sha3(address(msg.sender), 15)
                            if block.timestamp > stor15[address(msg.sender)][idx].field_256:
                                if block.timestamp >= stor15[address(msg.sender)][idx].field_0 + (24 * 3600 * stor15[address(msg.sender)][idx].field_1024):
                                    require idx < stor15[address(msg.sender)].field_0
                                    require idx < stor15[address(msg.sender)].field_0
                                    stor15[address(msg.sender)][idx].field_256 = stor15[address(msg.sender)][idx].field_0 + (24 * 3600 * stor15[address(msg.sender)][idx].field_1024)
                                    stor15[address(msg.sender)][idx].field_1280 = 1
                                    require stor15[address(msg.sender)][idx].field_1024
                                    mem[0] = msg.sender
                                    mem[32] = 14
                                    availableOf[address(msg.sender)] += stor15[address(msg.sender)][idx].field_512 / stor15[address(msg.sender)][idx].field_1024 * stor15[address(msg.sender)][idx].field_0 + (24 * 3600 * stor15[address(msg.sender)][idx].field_1024) - stor15[address(msg.sender)][idx].field_256 / 24 * 3600
            idx = idx + 1
            continue 
    require availableOf[address(msg.sender)] >= arg2
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(arg1)] += arg2
    balanceOf[address(msg.sender)] -= arg2
    availableOf[address(arg1)] += arg2
    availableOf[address(msg.sender)] -= arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
