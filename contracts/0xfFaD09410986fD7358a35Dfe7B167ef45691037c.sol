contract main {




// =====================  Runtime code  =====================


const sub_5e572702(?) = 60


address owner;
array of uint256 name;
array of uint256 symbol;
uint32 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of struct stages;
array of struct orders;
mapping of uint256 sub_fa405eae;

function name() {
    return name[0 len name.length]
}

function getStageCount() {
    return stages.length
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function stages(uint256 arg1) {
    require arg1 < stages.length
    return stages[arg1].field_0, 
           stages[arg1].field_256,
           stages[arg1].field_512,
           stages[arg1].field_768,
           stages[arg1].field_1024,
           bool(stages[arg1].field_1280)
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function orders(uint256 arg1) {
    require arg1 < orders.length
    return orders[arg1].field_0, orders[arg1].field_256, orders[arg1].field_512
}

function getOrdersCount() {
    return orders.length
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_fa405eae(?) {
    return sub_fa405eae[arg1][arg2]
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_f5449791(?) {
    require msg.sender == owner
    require arg1 < stages.length
    require stages[arg1].field_512 >= stages[arg1].field_768
    require arg1 < stages.length
    require not stages[arg1].field_256
    require arg1 < stages.length
    stages[arg1].field_256 = block.timestamp
}

function increaseAllowance(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function sub_4ecc0c2f(?) {
    require msg.sender == owner
    require arg1 < stages.length
    require stages[arg1].field_1280
    require arg1 < stages.length
    require not stages[arg1].field_512
    require arg1 < stages.length
    stages[arg1].field_0 = 0
    stages[arg1].field_256 = 0
    stages[arg1].field_512 = 0
    stages[arg1].field_768 = 0
    stages[arg1].field_1024 = 0
    stages[arg1].field_1280 = 0
}

function getCurrentStage() {
    idx = 0
    while idx < stages.length:
        if stages[idx].field_256:
            require idx < stages.length
            mem[0] = 7
            require stages[idx].field_256 + stages[idx].field_0 >= stages[idx].field_256
            if block.timestamp >= stages[idx].field_256 + stages[idx].field_0:
                idx = idx + 1
                continue 
        return (idx + 1)
    return 0
}

function addStage(uint256 arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require arg1 >= 60
    require stages.length - 1 < stages.length
    require arg3 >= stages[stages.length].field_0
    stages.length++
    stages[stages.length].field_0 = arg1
    stages[stages.length].field_256 = 0
    stages[stages.length].field_512 = 0
    stages[stages.length].field_768 = arg2
    stages[stages.length].field_1024 = arg3
    stages[stages.length].field_1280 = 1
}

function createOrder(uint256 arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] > 0
    require balanceOf[address(msg.sender)] >= arg2
    require arg1 > 0
    require arg2 > 0
    orders.length++
    orders[orders.length].field_0 = msg.sender
    orders[orders.length].field_256 = arg1
    orders[orders.length].field_512 = arg2
    require this.address
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(this.address)] + arg2 >= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += arg2
    emit Transfer(arg2, msg.sender, this.address);
    emit 0xaf1b9133: msg.sender, arg2, arg1
}

function removeOrder(uint256 arg1) {
    require arg1 < orders.length
    require orders[arg1].field_0 == msg.sender
    require arg1 < orders.length
    require orders[arg1].field_512 > 0
    require arg1 < orders.length
    require orders[arg1].field_0
    require orders[arg1].field_512 <= balanceOf[address(this.address)]
    require orders[arg1].field_512 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= orders[arg1].field_512
    require balanceOf[stor8[arg1].field_0] + orders[arg1].field_512 >= balanceOf[stor8[arg1].field_0]
    balanceOf[stor8[arg1].field_0] += orders[arg1].field_512
    emit Transfer(orders[arg1].field_512, this.address, orders[arg1].field_0);
    require arg1 < orders.length
    orders[arg1].field_0 = 0
    orders[arg1].field_256 = 0
    orders[arg1].field_512 = 0
}

function sub_fa90639c(?) payable {
    require arg1 < orders.length
    require orders[arg1].field_256
    require not msg.value % orders[arg1].field_256
    require arg1 < orders.length
    require orders[arg1].field_256
    require arg1 < orders.length
    require 10^18 * msg.value / orders[arg1].field_256 <= orders[arg1].field_512
    require arg1 < orders.length
    call orders[arg1].field_0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender
    require 10^18 * msg.value / orders[arg1].field_256 <= balanceOf[address(this.address)]
    require 10^18 * msg.value / orders[arg1].field_256 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += -1 * 10^18 * msg.value / orders[arg1].field_256
    require balanceOf[address(msg.sender)] + (10^18 * msg.value / orders[arg1].field_256) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 10^18 * msg.value / orders[arg1].field_256
    emit Transfer((10^18 * msg.value / orders[arg1].field_256), this.address, msg.sender);
    require arg1 < orders.length
    require 10^18 * msg.value / orders[arg1].field_256 <= orders[arg1].field_512
    require arg1 < orders.length
    orders[arg1].field_512 += -1 * 10^18 * msg.value / orders[arg1].field_256
}

function withdraw(uint256 arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    idx = 0
    while idx < stages.length:
        if stages[idx].field_256:
            require idx < stages.length
            mem[0] = 7
            require stages[idx].field_256 + stages[idx].field_0 >= stages[idx].field_256
            if block.timestamp >= stages[idx].field_256 + stages[idx].field_0:
                idx = idx + 1
                continue 
        if idx + 1 < 2:
            idx = 0
            while idx < stages.length:
                if stages[idx].field_256:
                    require idx < stages.length
                    mem[0] = 7
                    require stages[idx].field_256 + stages[idx].field_0 >= stages[idx].field_256
                    if block.timestamp >= stages[idx].field_256 + stages[idx].field_0:
                        idx = idx + 1
                        continue 
                require not idx + 1
                require arg3 < stages.length
                require arg1 <= stages[arg3].field_512
                require arg3 < stages.length
                require stages[arg3].field_256
                require arg3 < stages.length
                require stages[arg3].field_256 + stages[arg3].field_0 >= stages[arg3].field_256
                require block.timestamp > stages[arg3].field_256 + stages[arg3].field_0
                call arg2 with:
                   value arg1 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg3 < stages.length
                require arg1 <= stages[arg3].field_512
                require arg3 < stages.length
                stages[arg3].field_512 -= arg1
        require arg3 < stages.length
        require arg1 <= stages[arg3].field_512
        require arg3 < stages.length
        require stages[arg3].field_256
        require arg3 < stages.length
        require stages[arg3].field_256 + stages[arg3].field_0 >= stages[arg3].field_256
        require block.timestamp > stages[arg3].field_256 + stages[arg3].field_0
        call arg2 with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require arg3 < stages.length
        require arg1 <= stages[arg3].field_512
        require arg3 < stages.length
        stages[arg3].field_512 -= arg1
    idx = 0
    while idx < stages.length:
        if stages[idx].field_256:
            require idx < stages.length
            mem[0] = 7
            require stages[idx].field_256 + stages[idx].field_0 >= stages[idx].field_256
            if block.timestamp >= stages[idx].field_256 + stages[idx].field_0:
                idx = idx + 1
                continue 
        require not idx + 1
        require arg3 < stages.length
        require arg1 <= stages[arg3].field_512
        require arg3 < stages.length
        require stages[arg3].field_256
        require arg3 < stages.length
        require stages[arg3].field_256 + stages[arg3].field_0 >= stages[arg3].field_256
        require block.timestamp > stages[arg3].field_256 + stages[arg3].field_0
        call arg2 with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require arg3 < stages.length
        require arg1 <= stages[arg3].field_512
        require arg3 < stages.length
        stages[arg3].field_512 -= arg1
    require arg3 < stages.length
    require arg1 <= stages[arg3].field_512
    require arg3 < stages.length
    require stages[arg3].field_256
    require arg3 < stages.length
    require stages[arg3].field_256 + stages[arg3].field_0 >= stages[arg3].field_256
    require block.timestamp > stages[arg3].field_256 + stages[arg3].field_0
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg3 < stages.length
    require arg1 <= stages[arg3].field_512
    require arg3 < stages.length
    stages[arg3].field_512 -= arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if arg2 != this.address:
        require arg2
        require arg3 <= balanceOf[address(arg1)]
        require arg3 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg3
        require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        idx = 0
        while idx < stages.length:
            require idx < stages.length
            if stages[idx].field_256:
                mem[0] = 7
                require stages[idx].field_256 + stages[idx].field_0 >= stages[idx].field_256
                if block.timestamp >= stages[idx].field_256 + stages[idx].field_0:
                    idx = idx + 1
                    continue 
            if not arg3 / 10^18:
                require sub_fa405eae[address(arg1)][idx] >= arg3
                require idx < stages.length
                require stages[idx].field_512 >= 0
                require idx < stages.length
                require 0 <= stages[idx].field_512
                s = 0
                while s < stages.length:
                    require s < stages.length
                    if stages[s].field_256:
                        mem[0] = 7
                        require stages[s].field_256 + stages[s].field_0 >= stages[s].field_256
                        if block.timestamp >= stages[s].field_256 + stages[s].field_0:
                            s = s + 1
                            continue 
                    stages[s].field_512 = stages[idx].field_512
                    call arg1 with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require arg1
                    require arg3 <= totalSupply
                    totalSupply -= arg3
                    require arg3 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] -= arg3
                    emit Transfer(arg3, arg1, 0);
                    require arg3 <= sub_fa405eae[address(arg1)][idx]
                    sub_fa405eae[address(arg1)][idx] -= arg3
                    return 1
                require -1 < stages.length
                uint256(stages.field_0) = stages[idx].field_512
                call arg1 with:
                     gas 2300 wei
            else:
                require arg3 / 10^18
                require arg3 / 10^18 * stages[idx].field_1024 / arg3 / 10^18 == stages[idx].field_1024
                require sub_fa405eae[address(arg1)][idx] >= arg3
                require idx < stages.length
                require stages[idx].field_512 >= arg3 / 10^18 * stages[idx].field_1024
                require idx < stages.length
                require arg3 / 10^18 * stages[idx].field_1024 <= stages[idx].field_512
                s = 0
                while s < stages.length:
                    require s < stages.length
                    if stages[s].field_256:
                        mem[0] = 7
                        require stages[s].field_256 + stages[s].field_0 >= stages[s].field_256
                        if block.timestamp >= stages[s].field_256 + stages[s].field_0:
                            s = s + 1
                            continue 
                    stages[s].field_512 = stages[idx].field_512 - (arg3 / 10^18 * stages[idx].field_1024)
                    call arg1 with:
                       value arg3 / 10^18 * stages[idx].field_1024 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require arg1
                    require arg3 <= totalSupply
                    totalSupply -= arg3
                    require arg3 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] -= arg3
                    emit Transfer(arg3, arg1, 0);
                    require arg3 <= sub_fa405eae[address(arg1)][idx]
                    sub_fa405eae[address(arg1)][idx] -= arg3
                    return 1
                require -1 < stages.length
                uint256(stages.field_0) = stages[idx].field_512 - (arg3 / 10^18 * stages[idx].field_1024)
                call arg1 with:
                   value arg3 / 10^18 * stages[idx].field_1024 wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require arg1
            require arg3 <= totalSupply
            totalSupply -= arg3
            require arg3 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg3
            emit Transfer(arg3, arg1, 0);
            require arg3 <= sub_fa405eae[address(arg1)][idx]
            sub_fa405eae[address(arg1)][idx] -= arg3
            return 1
        require -1 < stages.length
        if not arg3 / 10^18:
            require sub_fa405eae[address(arg1)][-1] >= arg3
            require -1 < stages.length
            require uint256(stages.field_0) >= 0
            require -1 < stages.length
            require 0 <= uint256(stages.field_0)
            idx = 0
            while idx < stages.length:
                require idx < stages.length
                if stages[idx].field_256:
                    mem[0] = 7
                    require stages[idx].field_256 + stages[idx].field_0 >= stages[idx].field_256
                    if block.timestamp >= stages[idx].field_256 + stages[idx].field_0:
                        idx = idx + 1
                        continue 
                stages[idx].field_512 = uint256(stages.field_0)
                call arg1 with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg1
                require arg3 <= totalSupply
                totalSupply -= arg3
                require arg3 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg3
                emit Transfer(arg3, arg1, 0);
                require arg3 <= sub_fa405eae[address(arg1)][-1]
                sub_fa405eae[address(arg1)][-1] -= arg3
                return 1
            require -1 < stages.length
            call arg1 with:
                 gas 2300 wei
        else:
            require arg3 / 10^18
            require arg3 / 10^18 * uint256(stages.field_0) / arg3 / 10^18 == uint256(stages.field_0)
            require sub_fa405eae[address(arg1)][-1] >= arg3
            require -1 < stages.length
            require uint256(stages.field_0) >= arg3 / 10^18 * uint256(stages.field_0)
            require -1 < stages.length
            require arg3 / 10^18 * uint256(stages.field_0) <= uint256(stages.field_0)
            idx = 0
            while idx < stages.length:
                require idx < stages.length
                if stages[idx].field_256:
                    mem[0] = 7
                    require stages[idx].field_256 + stages[idx].field_0 >= stages[idx].field_256
                    if block.timestamp >= stages[idx].field_256 + stages[idx].field_0:
                        idx = idx + 1
                        continue 
                stages[idx].field_512 = uint256(stages.field_0) - (arg3 / 10^18 * uint256(stages.field_0))
                call arg1 with:
                   value arg3 / 10^18 * uint256(stages.field_0) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg1
                require arg3 <= totalSupply
                totalSupply -= arg3
                require arg3 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg3
                emit Transfer(arg3, arg1, 0);
                require arg3 <= sub_fa405eae[address(arg1)][-1]
                sub_fa405eae[address(arg1)][-1] -= arg3
                return 1
            require -1 < stages.length
            uint256(stages.field_0) += -1 * arg3 / 10^18 * uint256(stages.field_0)
            call arg1 with:
               value arg3 / 10^18 * uint256(stages.field_0) wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require arg1
        require arg3 <= totalSupply
        totalSupply -= arg3
        require arg3 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg3
        emit Transfer(arg3, arg1, 0);
        require arg3 <= sub_fa405eae[address(arg1)][-1]
        sub_fa405eae[address(arg1)][-1] -= arg3
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if arg1 != this.address:
        require arg1
        require arg2 <= balanceOf[address(msg.sender)]
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        idx = 0
        while idx < stages.length:
            require idx < stages.length
            if stages[idx].field_256:
                mem[0] = 7
                require stages[idx].field_256 + stages[idx].field_0 >= stages[idx].field_256
                if block.timestamp >= stages[idx].field_256 + stages[idx].field_0:
                    idx = idx + 1
                    continue 
            if not arg2 / 10^18:
                require sub_fa405eae[address(msg.sender)][idx] >= arg2
                require idx < stages.length
                require stages[idx].field_512 >= 0
                require idx < stages.length
                require 0 <= stages[idx].field_512
                s = 0
                while s < stages.length:
                    require s < stages.length
                    if stages[s].field_256:
                        mem[0] = 7
                        require stages[s].field_256 + stages[s].field_0 >= stages[s].field_256
                        if block.timestamp >= stages[s].field_256 + stages[s].field_0:
                            s = s + 1
                            continue 
                    stages[s].field_512 = stages[idx].field_512
                    call msg.sender with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require msg.sender
                    require arg2 <= totalSupply
                    totalSupply -= arg2
                    require arg2 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                    require arg2 <= sub_fa405eae[address(msg.sender)][idx]
                    sub_fa405eae[address(msg.sender)][idx] -= arg2
                    return 1
                require -1 < stages.length
                uint256(stages.field_0) = stages[idx].field_512
                call msg.sender with:
                     gas 2300 wei
            else:
                require arg2 / 10^18
                require arg2 / 10^18 * stages[idx].field_1024 / arg2 / 10^18 == stages[idx].field_1024
                require sub_fa405eae[address(msg.sender)][idx] >= arg2
                require idx < stages.length
                require stages[idx].field_512 >= arg2 / 10^18 * stages[idx].field_1024
                require idx < stages.length
                require arg2 / 10^18 * stages[idx].field_1024 <= stages[idx].field_512
                s = 0
                while s < stages.length:
                    require s < stages.length
                    if stages[s].field_256:
                        mem[0] = 7
                        require stages[s].field_256 + stages[s].field_0 >= stages[s].field_256
                        if block.timestamp >= stages[s].field_256 + stages[s].field_0:
                            s = s + 1
                            continue 
                    stages[s].field_512 = stages[idx].field_512 - (arg2 / 10^18 * stages[idx].field_1024)
                    call msg.sender with:
                       value arg2 / 10^18 * stages[idx].field_1024 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require msg.sender
                    require arg2 <= totalSupply
                    totalSupply -= arg2
                    require arg2 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                    require arg2 <= sub_fa405eae[address(msg.sender)][idx]
                    sub_fa405eae[address(msg.sender)][idx] -= arg2
                    return 1
                require -1 < stages.length
                uint256(stages.field_0) = stages[idx].field_512 - (arg2 / 10^18 * stages[idx].field_1024)
                call msg.sender with:
                   value arg2 / 10^18 * stages[idx].field_1024 wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require msg.sender
            require arg2 <= totalSupply
            totalSupply -= arg2
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            emit Transfer(arg2, msg.sender, 0);
            require arg2 <= sub_fa405eae[address(msg.sender)][idx]
            sub_fa405eae[address(msg.sender)][idx] -= arg2
            return 1
        require -1 < stages.length
        if not arg2 / 10^18:
            require sub_fa405eae[address(msg.sender)][-1] >= arg2
            require -1 < stages.length
            require uint256(stages.field_0) >= 0
            require -1 < stages.length
            require 0 <= uint256(stages.field_0)
            idx = 0
            while idx < stages.length:
                require idx < stages.length
                if stages[idx].field_256:
                    mem[0] = 7
                    require stages[idx].field_256 + stages[idx].field_0 >= stages[idx].field_256
                    if block.timestamp >= stages[idx].field_256 + stages[idx].field_0:
                        idx = idx + 1
                        continue 
                stages[idx].field_512 = uint256(stages.field_0)
                call msg.sender with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require msg.sender
                require arg2 <= totalSupply
                totalSupply -= arg2
                require arg2 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2
                emit Transfer(arg2, msg.sender, 0);
                require arg2 <= sub_fa405eae[address(msg.sender)][-1]
                sub_fa405eae[address(msg.sender)][-1] -= arg2
                return 1
            require -1 < stages.length
            call msg.sender with:
                 gas 2300 wei
        else:
            require arg2 / 10^18
            require arg2 / 10^18 * uint256(stages.field_0) / arg2 / 10^18 == uint256(stages.field_0)
            require sub_fa405eae[address(msg.sender)][-1] >= arg2
            require -1 < stages.length
            require uint256(stages.field_0) >= arg2 / 10^18 * uint256(stages.field_0)
            require -1 < stages.length
            require arg2 / 10^18 * uint256(stages.field_0) <= uint256(stages.field_0)
            idx = 0
            while idx < stages.length:
                require idx < stages.length
                if stages[idx].field_256:
                    mem[0] = 7
                    require stages[idx].field_256 + stages[idx].field_0 >= stages[idx].field_256
                    if block.timestamp >= stages[idx].field_256 + stages[idx].field_0:
                        idx = idx + 1
                        continue 
                stages[idx].field_512 = uint256(stages.field_0) - (arg2 / 10^18 * uint256(stages.field_0))
                call msg.sender with:
                   value arg2 / 10^18 * uint256(stages.field_0) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require msg.sender
                require arg2 <= totalSupply
                totalSupply -= arg2
                require arg2 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2
                emit Transfer(arg2, msg.sender, 0);
                require arg2 <= sub_fa405eae[address(msg.sender)][-1]
                sub_fa405eae[address(msg.sender)][-1] -= arg2
                return 1
            require -1 < stages.length
            uint256(stages.field_0) += -1 * arg2 / 10^18 * uint256(stages.field_0)
            call msg.sender with:
               value arg2 / 10^18 * uint256(stages.field_0) wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require msg.sender
        require arg2 <= totalSupply
        totalSupply -= arg2
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        emit Transfer(arg2, msg.sender, 0);
        require arg2 <= sub_fa405eae[address(msg.sender)][-1]
        sub_fa405eae[address(msg.sender)][-1] -= arg2
    return 1
}

function buy() payable {
    require 0 < stages.length
    idx = 0
    while stages[idx].field_256:
        require idx < stages.length
        require stages[idx].field_256 + stages[idx].field_0 >= stages[idx].field_256
        if block.timestamp >= stages[idx].field_256 + stages[idx].field_0:
            require idx + 1 < stages.length
            mem[0] = 7
            idx = idx + 1
            continue 
        require idx + 1 > 0
        s = 0
        while s < stages.length:
            require s < stages.length
            if stages[s].field_256:
                require stages[s].field_256 + stages[s].field_0 >= stages[s].field_256
                if block.timestamp >= stages[s].field_256 + stages[s].field_0:
                    require idx < stages.length
                    mem[0] = 7
                    s = s + 1
                    continue 
            require stages[s].field_1024
            require not msg.value % stages[s].field_1024
            require s < stages.length
            require msg.value >= stages[s].field_1024
            require s < stages.length
            require stages[s].field_512 + msg.value >= stages[s].field_512
            require stages[s].field_512 + msg.value <= stages[s].field_768
            require s < stages.length
            require stages[s].field_1024
            require this.address
            require totalSupply + (10^18 * msg.value / stages[s].field_1024) >= totalSupply
            totalSupply += 10^18 * msg.value / stages[s].field_1024
            require balanceOf[address(this.address)] + (10^18 * msg.value / stages[s].field_1024) >= balanceOf[address(this.address)]
            balanceOf[address(this.address)] += 10^18 * msg.value / stages[s].field_1024
            emit Transfer((10^18 * msg.value / stages[s].field_1024), 0, this.address);
            require msg.sender
            require 10^18 * msg.value / stages[s].field_1024 <= balanceOf[address(this.address)]
            require 10^18 * msg.value / stages[s].field_1024 <= balanceOf[address(this.address)]
            balanceOf[address(this.address)] += -1 * 10^18 * msg.value / stages[s].field_1024
            require balanceOf[address(msg.sender)] + (10^18 * msg.value / stages[s].field_1024) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 10^18 * msg.value / stages[s].field_1024
            emit Transfer((10^18 * msg.value / stages[s].field_1024), this.address, msg.sender);
            require s < stages.length
            require stages[s].field_512 + msg.value >= stages[s].field_512
            require s < stages.length
            stages[s].field_512 += msg.value
            require sub_fa405eae[address(msg.sender)][s] + (10^18 * msg.value / stages[s].field_1024) >= sub_fa405eae[address(msg.sender)][s]
            sub_fa405eae[address(msg.sender)][s] += 10^18 * msg.value / stages[s].field_1024
            require s < stages.length
            if stages[s].field_512 == stages[s].field_768:
                require s < stages.length
                if not stages[s].field_256:
                    require s < stages.length
                    require stages[s].field_512 >= stages[s].field_768
                    require s < stages.length
                    require not stages[s].field_256
                    require s < stages.length
                    stages[s].field_256 = block.timestamp
        require -1 < stages.length
        require uint256(stages.field_0)
        require not msg.value % uint256(stages.field_0)
        require -1 < stages.length
        require msg.value >= uint256(stages.field_0)
        require -1 < stages.length
        require uint256(stages.field_0) + msg.value >= uint256(stages.field_0)
        require uint256(stages.field_0) + msg.value <= uint256(stages.field_0)
        require -1 < stages.length
        require uint256(stages.field_0)
        require this.address
        require totalSupply + (10^18 * msg.value / uint256(stages.field_0)) >= totalSupply
        totalSupply += 10^18 * msg.value / uint256(stages.field_0)
        require balanceOf[address(this.address)] + (10^18 * msg.value / uint256(stages.field_0)) >= balanceOf[address(this.address)]
        balanceOf[address(this.address)] += 10^18 * msg.value / uint256(stages.field_0)
        emit Transfer((10^18 * msg.value / uint256(stages.field_0)), 0, this.address);
        require msg.sender
        require 10^18 * msg.value / uint256(stages.field_0) <= balanceOf[address(this.address)]
        require 10^18 * msg.value / uint256(stages.field_0) <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] += -1 * 10^18 * msg.value / uint256(stages.field_0)
        require balanceOf[address(msg.sender)] + (10^18 * msg.value / uint256(stages.field_0)) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 10^18 * msg.value / uint256(stages.field_0)
        emit Transfer((10^18 * msg.value / uint256(stages.field_0)), this.address, msg.sender);
        require -1 < stages.length
        require uint256(stages.field_0) + msg.value >= uint256(stages.field_0)
        require -1 < stages.length
        uint256(stages.field_0) += msg.value
        require sub_fa405eae[address(msg.sender)][-1] + (10^18 * msg.value / uint256(stages.field_0)) >= sub_fa405eae[address(msg.sender)][-1]
        sub_fa405eae[address(msg.sender)][-1] += 10^18 * msg.value / uint256(stages.field_0)
        require -1 < stages.length
        if uint256(stages.field_0) == uint256(stages.field_0):
            require -1 < stages.length
            if not uint256(stages.field_0):
                require -1 < stages.length
                require uint256(stages.field_0) >= uint256(stages.field_0)
                require -1 < stages.length
                require not uint256(stages.field_0)
                require -1 < stages.length
                uint256(stages.field_0) = block.timestamp
    require idx + 1 > 0
    idx = 0
    while idx < stages.length:
        require idx < stages.length
        if stages[idx].field_256:
            mem[0] = 7
            require stages[idx].field_256 + stages[idx].field_0 >= stages[idx].field_256
            if block.timestamp >= stages[idx].field_256 + stages[idx].field_0:
                idx = idx + 1
                continue 
        require stages[idx].field_1024
        require not msg.value % stages[idx].field_1024
        require idx < stages.length
        require msg.value >= stages[idx].field_1024
        require idx < stages.length
        require stages[idx].field_512 + msg.value >= stages[idx].field_512
        require stages[idx].field_512 + msg.value <= stages[idx].field_768
        require idx < stages.length
        require stages[idx].field_1024
        require this.address
        require totalSupply + (10^18 * msg.value / stages[idx].field_1024) >= totalSupply
        totalSupply += 10^18 * msg.value / stages[idx].field_1024
        require balanceOf[address(this.address)] + (10^18 * msg.value / stages[idx].field_1024) >= balanceOf[address(this.address)]
        balanceOf[address(this.address)] += 10^18 * msg.value / stages[idx].field_1024
        emit Transfer((10^18 * msg.value / stages[idx].field_1024), 0, this.address);
        require msg.sender
        require 10^18 * msg.value / stages[idx].field_1024 <= balanceOf[address(this.address)]
        require 10^18 * msg.value / stages[idx].field_1024 <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] += -1 * 10^18 * msg.value / stages[idx].field_1024
        require balanceOf[address(msg.sender)] + (10^18 * msg.value / stages[idx].field_1024) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 10^18 * msg.value / stages[idx].field_1024
        emit Transfer((10^18 * msg.value / stages[idx].field_1024), this.address, msg.sender);
        require idx < stages.length
        require stages[idx].field_512 + msg.value >= stages[idx].field_512
        require idx < stages.length
        stages[idx].field_512 += msg.value
        require sub_fa405eae[address(msg.sender)][idx] + (10^18 * msg.value / stages[idx].field_1024) >= sub_fa405eae[address(msg.sender)][idx]
        sub_fa405eae[address(msg.sender)][idx] += 10^18 * msg.value / stages[idx].field_1024
        require idx < stages.length
        if stages[idx].field_512 == stages[idx].field_768:
            require idx < stages.length
            if not stages[idx].field_256:
                require idx < stages.length
                require stages[idx].field_512 >= stages[idx].field_768
                require idx < stages.length
                require not stages[idx].field_256
                require idx < stages.length
                stages[idx].field_256 = block.timestamp
    require -1 < stages.length
    require uint256(stages.field_0)
    require not msg.value % uint256(stages.field_0)
    require -1 < stages.length
    require msg.value >= uint256(stages.field_0)
    require -1 < stages.length
    require uint256(stages.field_0) + msg.value >= uint256(stages.field_0)
    require uint256(stages.field_0) + msg.value <= uint256(stages.field_0)
    require -1 < stages.length
    require uint256(stages.field_0)
    require this.address
    require totalSupply + (10^18 * msg.value / uint256(stages.field_0)) >= totalSupply
    totalSupply += 10^18 * msg.value / uint256(stages.field_0)
    require balanceOf[address(this.address)] + (10^18 * msg.value / uint256(stages.field_0)) >= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += 10^18 * msg.value / uint256(stages.field_0)
    emit Transfer((10^18 * msg.value / uint256(stages.field_0)), 0, this.address);
    require msg.sender
    require 10^18 * msg.value / uint256(stages.field_0) <= balanceOf[address(this.address)]
    require 10^18 * msg.value / uint256(stages.field_0) <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += -1 * 10^18 * msg.value / uint256(stages.field_0)
    require balanceOf[address(msg.sender)] + (10^18 * msg.value / uint256(stages.field_0)) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 10^18 * msg.value / uint256(stages.field_0)
    emit Transfer((10^18 * msg.value / uint256(stages.field_0)), this.address, msg.sender);
    require -1 < stages.length
    require uint256(stages.field_0) + msg.value >= uint256(stages.field_0)
    require -1 < stages.length
    uint256(stages.field_0) += msg.value
    require sub_fa405eae[address(msg.sender)][-1] + (10^18 * msg.value / uint256(stages.field_0)) >= sub_fa405eae[address(msg.sender)][-1]
    sub_fa405eae[address(msg.sender)][-1] += 10^18 * msg.value / uint256(stages.field_0)
    require -1 < stages.length
    if uint256(stages.field_0) == uint256(stages.field_0):
        require -1 < stages.length
        if not uint256(stages.field_0):
            require -1 < stages.length
            require uint256(stages.field_0) >= uint256(stages.field_0)
            require -1 < stages.length
            require not uint256(stages.field_0)
            require -1 < stages.length
            uint256(stages.field_0) = block.timestamp
}

function _fallback() payable {
    require 0 < stages.length
    idx = 0
    while stages[idx].field_256:
        require idx < stages.length
        require stages[idx].field_256 + stages[idx].field_0 >= stages[idx].field_256
        if block.timestamp >= stages[idx].field_256 + stages[idx].field_0:
            require idx + 1 < stages.length
            mem[0] = 7
            idx = idx + 1
            continue 
        require idx + 1 > 0
        s = 0
        while s < stages.length:
            require s < stages.length
            if stages[s].field_256:
                require stages[s].field_256 + stages[s].field_0 >= stages[s].field_256
                if block.timestamp >= stages[s].field_256 + stages[s].field_0:
                    require idx < stages.length
                    mem[0] = 7
                    s = s + 1
                    continue 
            require stages[s].field_1024
            require not msg.value % stages[s].field_1024
            require s < stages.length
            require msg.value >= stages[s].field_1024
            require s < stages.length
            require stages[s].field_512 + msg.value >= stages[s].field_512
            require stages[s].field_512 + msg.value <= stages[s].field_768
            require s < stages.length
            require stages[s].field_1024
            require this.address
            require totalSupply + (10^18 * msg.value / stages[s].field_1024) >= totalSupply
            totalSupply += 10^18 * msg.value / stages[s].field_1024
            require balanceOf[address(this.address)] + (10^18 * msg.value / stages[s].field_1024) >= balanceOf[address(this.address)]
            balanceOf[address(this.address)] += 10^18 * msg.value / stages[s].field_1024
            emit Transfer((10^18 * msg.value / stages[s].field_1024), 0, this.address);
            require msg.sender
            require 10^18 * msg.value / stages[s].field_1024 <= balanceOf[address(this.address)]
            require 10^18 * msg.value / stages[s].field_1024 <= balanceOf[address(this.address)]
            balanceOf[address(this.address)] += -1 * 10^18 * msg.value / stages[s].field_1024
            require balanceOf[address(msg.sender)] + (10^18 * msg.value / stages[s].field_1024) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 10^18 * msg.value / stages[s].field_1024
            emit Transfer((10^18 * msg.value / stages[s].field_1024), this.address, msg.sender);
            require s < stages.length
            require stages[s].field_512 + msg.value >= stages[s].field_512
            require s < stages.length
            stages[s].field_512 += msg.value
            require sub_fa405eae[address(msg.sender)][s] + (10^18 * msg.value / stages[s].field_1024) >= sub_fa405eae[address(msg.sender)][s]
            sub_fa405eae[address(msg.sender)][s] += 10^18 * msg.value / stages[s].field_1024
            require s < stages.length
            if stages[s].field_512 == stages[s].field_768:
                require s < stages.length
                if not stages[s].field_256:
                    require s < stages.length
                    require stages[s].field_512 >= stages[s].field_768
                    require s < stages.length
                    require not stages[s].field_256
                    require s < stages.length
                    stages[s].field_256 = block.timestamp
        require -1 < stages.length
        require uint256(stages.field_0)
        require not msg.value % uint256(stages.field_0)
        require -1 < stages.length
        require msg.value >= uint256(stages.field_0)
        require -1 < stages.length
        require uint256(stages.field_0) + msg.value >= uint256(stages.field_0)
        require uint256(stages.field_0) + msg.value <= uint256(stages.field_0)
        require -1 < stages.length
        require uint256(stages.field_0)
        require this.address
        require totalSupply + (10^18 * msg.value / uint256(stages.field_0)) >= totalSupply
        totalSupply += 10^18 * msg.value / uint256(stages.field_0)
        require balanceOf[address(this.address)] + (10^18 * msg.value / uint256(stages.field_0)) >= balanceOf[address(this.address)]
        balanceOf[address(this.address)] += 10^18 * msg.value / uint256(stages.field_0)
        emit Transfer((10^18 * msg.value / uint256(stages.field_0)), 0, this.address);
        require msg.sender
        require 10^18 * msg.value / uint256(stages.field_0) <= balanceOf[address(this.address)]
        require 10^18 * msg.value / uint256(stages.field_0) <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] += -1 * 10^18 * msg.value / uint256(stages.field_0)
        require balanceOf[address(msg.sender)] + (10^18 * msg.value / uint256(stages.field_0)) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 10^18 * msg.value / uint256(stages.field_0)
        emit Transfer((10^18 * msg.value / uint256(stages.field_0)), this.address, msg.sender);
        require -1 < stages.length
        require uint256(stages.field_0) + msg.value >= uint256(stages.field_0)
        require -1 < stages.length
        uint256(stages.field_0) += msg.value
        require sub_fa405eae[address(msg.sender)][-1] + (10^18 * msg.value / uint256(stages.field_0)) >= sub_fa405eae[address(msg.sender)][-1]
        sub_fa405eae[address(msg.sender)][-1] += 10^18 * msg.value / uint256(stages.field_0)
        require -1 < stages.length
        if uint256(stages.field_0) == uint256(stages.field_0):
            require -1 < stages.length
            if not uint256(stages.field_0):
                require -1 < stages.length
                require uint256(stages.field_0) >= uint256(stages.field_0)
                require -1 < stages.length
                require not uint256(stages.field_0)
                require -1 < stages.length
                uint256(stages.field_0) = block.timestamp
    require idx + 1 > 0
    idx = 0
    while idx < stages.length:
        require idx < stages.length
        if stages[idx].field_256:
            mem[0] = 7
            require stages[idx].field_256 + stages[idx].field_0 >= stages[idx].field_256
            if block.timestamp >= stages[idx].field_256 + stages[idx].field_0:
                idx = idx + 1
                continue 
        require stages[idx].field_1024
        require not msg.value % stages[idx].field_1024
        require idx < stages.length
        require msg.value >= stages[idx].field_1024
        require idx < stages.length
        require stages[idx].field_512 + msg.value >= stages[idx].field_512
        require stages[idx].field_512 + msg.value <= stages[idx].field_768
        require idx < stages.length
        require stages[idx].field_1024
        require this.address
        require totalSupply + (10^18 * msg.value / stages[idx].field_1024) >= totalSupply
        totalSupply += 10^18 * msg.value / stages[idx].field_1024
        require balanceOf[address(this.address)] + (10^18 * msg.value / stages[idx].field_1024) >= balanceOf[address(this.address)]
        balanceOf[address(this.address)] += 10^18 * msg.value / stages[idx].field_1024
        emit Transfer((10^18 * msg.value / stages[idx].field_1024), 0, this.address);
        require msg.sender
        require 10^18 * msg.value / stages[idx].field_1024 <= balanceOf[address(this.address)]
        require 10^18 * msg.value / stages[idx].field_1024 <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] += -1 * 10^18 * msg.value / stages[idx].field_1024
        require balanceOf[address(msg.sender)] + (10^18 * msg.value / stages[idx].field_1024) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 10^18 * msg.value / stages[idx].field_1024
        emit Transfer((10^18 * msg.value / stages[idx].field_1024), this.address, msg.sender);
        require idx < stages.length
        require stages[idx].field_512 + msg.value >= stages[idx].field_512
        require idx < stages.length
        stages[idx].field_512 += msg.value
        require sub_fa405eae[address(msg.sender)][idx] + (10^18 * msg.value / stages[idx].field_1024) >= sub_fa405eae[address(msg.sender)][idx]
        sub_fa405eae[address(msg.sender)][idx] += 10^18 * msg.value / stages[idx].field_1024
        require idx < stages.length
        if stages[idx].field_512 == stages[idx].field_768:
            require idx < stages.length
            if not stages[idx].field_256:
                require idx < stages.length
                require stages[idx].field_512 >= stages[idx].field_768
                require idx < stages.length
                require not stages[idx].field_256
                require idx < stages.length
                stages[idx].field_256 = block.timestamp
    require -1 < stages.length
    require uint256(stages.field_0)
    require not msg.value % uint256(stages.field_0)
    require -1 < stages.length
    require msg.value >= uint256(stages.field_0)
    require -1 < stages.length
    require uint256(stages.field_0) + msg.value >= uint256(stages.field_0)
    require uint256(stages.field_0) + msg.value <= uint256(stages.field_0)
    require -1 < stages.length
    require uint256(stages.field_0)
    require this.address
    require totalSupply + (10^18 * msg.value / uint256(stages.field_0)) >= totalSupply
    totalSupply += 10^18 * msg.value / uint256(stages.field_0)
    require balanceOf[address(this.address)] + (10^18 * msg.value / uint256(stages.field_0)) >= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += 10^18 * msg.value / uint256(stages.field_0)
    emit Transfer((10^18 * msg.value / uint256(stages.field_0)), 0, this.address);
    require msg.sender
    require 10^18 * msg.value / uint256(stages.field_0) <= balanceOf[address(this.address)]
    require 10^18 * msg.value / uint256(stages.field_0) <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += -1 * 10^18 * msg.value / uint256(stages.field_0)
    require balanceOf[address(msg.sender)] + (10^18 * msg.value / uint256(stages.field_0)) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 10^18 * msg.value / uint256(stages.field_0)
    emit Transfer((10^18 * msg.value / uint256(stages.field_0)), this.address, msg.sender);
    require -1 < stages.length
    require uint256(stages.field_0) + msg.value >= uint256(stages.field_0)
    require -1 < stages.length
    uint256(stages.field_0) += msg.value
    require sub_fa405eae[address(msg.sender)][-1] + (10^18 * msg.value / uint256(stages.field_0)) >= sub_fa405eae[address(msg.sender)][-1]
    sub_fa405eae[address(msg.sender)][-1] += 10^18 * msg.value / uint256(stages.field_0)
    require -1 < stages.length
    if uint256(stages.field_0) == uint256(stages.field_0):
        require -1 < stages.length
        if not uint256(stages.field_0):
            require -1 < stages.length
            require uint256(stages.field_0) >= uint256(stages.field_0)
            require -1 < stages.length
            require not uint256(stages.field_0)
            require -1 < stages.length
            uint256(stages.field_0) = block.timestamp
}

function sell(uint256 arg1) {
    require 0 < stages.length
    idx = 0
    while stages[idx].field_256:
        require idx < stages.length
        require stages[idx].field_256 + stages[idx].field_0 >= stages[idx].field_256
        if block.timestamp >= stages[idx].field_256 + stages[idx].field_0:
            require idx + 1 < stages.length
            mem[0] = 7
            idx = idx + 1
            continue 
        require idx + 1 > 0
        s = 0
        while s < stages.length:
            require s < stages.length
            if stages[s].field_256:
                require stages[s].field_256 + stages[s].field_0 >= stages[s].field_256
                if block.timestamp >= stages[s].field_256 + stages[s].field_0:
                    require idx < stages.length
                    mem[0] = 7
                    s = s + 1
                    continue 
            if not arg1 / 10^18:
                require sub_fa405eae[address(msg.sender)][s] >= arg1
                require s < stages.length
                require stages[s].field_512 >= 0
                require s < stages.length
                require 0 <= stages[s].field_512
                t = 0
                while t < stages.length:
                    require t < stages.length
                    if stages[t].field_256:
                        require stages[t].field_256 + stages[t].field_0 >= stages[t].field_256
                        if block.timestamp >= stages[t].field_256 + stages[t].field_0:
                            require idx < stages.length
                            mem[0] = 7
                            t = t + 1
                            continue 
                    stages[t].field_512 = stages[s].field_512
                    call msg.sender with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require msg.sender
                    require arg1 <= totalSupply
                    totalSupply -= arg1
                    require arg1 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    require arg1 <= sub_fa405eae[address(msg.sender)][s]
                    sub_fa405eae[address(msg.sender)][s] -= arg1
                require -1 < stages.length
                uint256(stages.field_0) = stages[s].field_512
                call msg.sender with:
                     gas 2300 wei
            else:
                require arg1 / 10^18
                require arg1 / 10^18 * stages[s].field_1024 / arg1 / 10^18 == stages[s].field_1024
                require sub_fa405eae[address(msg.sender)][s] >= arg1
                require s < stages.length
                require stages[s].field_512 >= arg1 / 10^18 * stages[s].field_1024
                require s < stages.length
                require arg1 / 10^18 * stages[s].field_1024 <= stages[s].field_512
                t = 0
                while t < stages.length:
                    require t < stages.length
                    if stages[t].field_256:
                        require stages[t].field_256 + stages[t].field_0 >= stages[t].field_256
                        if block.timestamp >= stages[t].field_256 + stages[t].field_0:
                            require idx < stages.length
                            mem[0] = 7
                            t = t + 1
                            continue 
                    stages[t].field_512 = stages[s].field_512 - (arg1 / 10^18 * stages[s].field_1024)
                    call msg.sender with:
                       value arg1 / 10^18 * stages[s].field_1024 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require msg.sender
                    require arg1 <= totalSupply
                    totalSupply -= arg1
                    require arg1 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    require arg1 <= sub_fa405eae[address(msg.sender)][s]
                    sub_fa405eae[address(msg.sender)][s] -= arg1
                require -1 < stages.length
                uint256(stages.field_0) = stages[s].field_512 - (arg1 / 10^18 * stages[s].field_1024)
                call msg.sender with:
                   value arg1 / 10^18 * stages[s].field_1024 wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require msg.sender
            require arg1 <= totalSupply
            totalSupply -= arg1
            require arg1 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg1
            emit Transfer(arg1, msg.sender, 0);
            require arg1 <= sub_fa405eae[address(msg.sender)][s]
            sub_fa405eae[address(msg.sender)][s] -= arg1
        require -1 < stages.length
        if not arg1 / 10^18:
            require sub_fa405eae[address(msg.sender)][-1] >= arg1
            require -1 < stages.length
            require uint256(stages.field_0) >= 0
            require -1 < stages.length
            require 0 <= uint256(stages.field_0)
            s = 0
            while s < stages.length:
                require s < stages.length
                if stages[s].field_256:
                    require stages[s].field_256 + stages[s].field_0 >= stages[s].field_256
                    if block.timestamp >= stages[s].field_256 + stages[s].field_0:
                        require idx < stages.length
                        mem[0] = 7
                        s = s + 1
                        continue 
                stages[s].field_512 = uint256(stages.field_0)
                call msg.sender with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require msg.sender
                require arg1 <= totalSupply
                totalSupply -= arg1
                require arg1 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg1
                emit Transfer(arg1, msg.sender, 0);
                require arg1 <= sub_fa405eae[address(msg.sender)][-1]
                sub_fa405eae[address(msg.sender)][-1] -= arg1
            require -1 < stages.length
            call msg.sender with:
                 gas 2300 wei
        else:
            require arg1 / 10^18
            require arg1 / 10^18 * uint256(stages.field_0) / arg1 / 10^18 == uint256(stages.field_0)
            require sub_fa405eae[address(msg.sender)][-1] >= arg1
            require -1 < stages.length
            require uint256(stages.field_0) >= arg1 / 10^18 * uint256(stages.field_0)
            require -1 < stages.length
            require arg1 / 10^18 * uint256(stages.field_0) <= uint256(stages.field_0)
            s = 0
            while s < stages.length:
                require s < stages.length
                if stages[s].field_256:
                    require stages[s].field_256 + stages[s].field_0 >= stages[s].field_256
                    if block.timestamp >= stages[s].field_256 + stages[s].field_0:
                        require idx < stages.length
                        mem[0] = 7
                        s = s + 1
                        continue 
                stages[s].field_512 = uint256(stages.field_0) - (arg1 / 10^18 * uint256(stages.field_0))
                call msg.sender with:
                   value arg1 / 10^18 * uint256(stages.field_0) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require msg.sender
                require arg1 <= totalSupply
                totalSupply -= arg1
                require arg1 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg1
                emit Transfer(arg1, msg.sender, 0);
                require arg1 <= sub_fa405eae[address(msg.sender)][-1]
                sub_fa405eae[address(msg.sender)][-1] -= arg1
            require -1 < stages.length
            uint256(stages.field_0) += -1 * arg1 / 10^18 * uint256(stages.field_0)
            call msg.sender with:
               value arg1 / 10^18 * uint256(stages.field_0) wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require msg.sender
        require arg1 <= totalSupply
        totalSupply -= arg1
        require arg1 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg1
        emit Transfer(arg1, msg.sender, 0);
        require arg1 <= sub_fa405eae[address(msg.sender)][-1]
        sub_fa405eae[address(msg.sender)][-1] -= arg1
    require idx + 1 > 0
    idx = 0
    while idx < stages.length:
        require idx < stages.length
        if stages[idx].field_256:
            mem[0] = 7
            require stages[idx].field_256 + stages[idx].field_0 >= stages[idx].field_256
            if block.timestamp >= stages[idx].field_256 + stages[idx].field_0:
                idx = idx + 1
                continue 
        if not arg1 / 10^18:
            require sub_fa405eae[address(msg.sender)][idx] >= arg1
            require idx < stages.length
            require stages[idx].field_512 >= 0
            require idx < stages.length
            require 0 <= stages[idx].field_512
            s = 0
            while s < stages.length:
                require s < stages.length
                if stages[s].field_256:
                    mem[0] = 7
                    require stages[s].field_256 + stages[s].field_0 >= stages[s].field_256
                    if block.timestamp >= stages[s].field_256 + stages[s].field_0:
                        s = s + 1
                        continue 
                stages[s].field_512 = stages[idx].field_512
                call msg.sender with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require msg.sender
                require arg1 <= totalSupply
                totalSupply -= arg1
                require arg1 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg1
                emit Transfer(arg1, msg.sender, 0);
                require arg1 <= sub_fa405eae[address(msg.sender)][idx]
                sub_fa405eae[address(msg.sender)][idx] -= arg1
            require -1 < stages.length
            uint256(stages.field_0) = stages[idx].field_512
            call msg.sender with:
                 gas 2300 wei
        else:
            require arg1 / 10^18
            require arg1 / 10^18 * stages[idx].field_1024 / arg1 / 10^18 == stages[idx].field_1024
            require sub_fa405eae[address(msg.sender)][idx] >= arg1
            require idx < stages.length
            require stages[idx].field_512 >= arg1 / 10^18 * stages[idx].field_1024
            require idx < stages.length
            require arg1 / 10^18 * stages[idx].field_1024 <= stages[idx].field_512
            s = 0
            while s < stages.length:
                require s < stages.length
                if stages[s].field_256:
                    mem[0] = 7
                    require stages[s].field_256 + stages[s].field_0 >= stages[s].field_256
                    if block.timestamp >= stages[s].field_256 + stages[s].field_0:
                        s = s + 1
                        continue 
                stages[s].field_512 = stages[idx].field_512 - (arg1 / 10^18 * stages[idx].field_1024)
                call msg.sender with:
                   value arg1 / 10^18 * stages[idx].field_1024 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require msg.sender
                require arg1 <= totalSupply
                totalSupply -= arg1
                require arg1 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg1
                emit Transfer(arg1, msg.sender, 0);
                require arg1 <= sub_fa405eae[address(msg.sender)][idx]
                sub_fa405eae[address(msg.sender)][idx] -= arg1
            require -1 < stages.length
            uint256(stages.field_0) = stages[idx].field_512 - (arg1 / 10^18 * stages[idx].field_1024)
            call msg.sender with:
               value arg1 / 10^18 * stages[idx].field_1024 wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require msg.sender
        require arg1 <= totalSupply
        totalSupply -= arg1
        require arg1 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg1
        emit Transfer(arg1, msg.sender, 0);
        require arg1 <= sub_fa405eae[address(msg.sender)][idx]
        sub_fa405eae[address(msg.sender)][idx] -= arg1
    require -1 < stages.length
    if not arg1 / 10^18:
        require sub_fa405eae[address(msg.sender)][-1] >= arg1
        require -1 < stages.length
        require uint256(stages.field_0) >= 0
        require -1 < stages.length
        require 0 <= uint256(stages.field_0)
        idx = 0
        while idx < stages.length:
            require idx < stages.length
            if stages[idx].field_256:
                mem[0] = 7
                require stages[idx].field_256 + stages[idx].field_0 >= stages[idx].field_256
                if block.timestamp >= stages[idx].field_256 + stages[idx].field_0:
                    idx = idx + 1
                    continue 
            stages[idx].field_512 = uint256(stages.field_0)
            call msg.sender with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require msg.sender
            require arg1 <= totalSupply
            totalSupply -= arg1
            require arg1 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg1
            emit Transfer(arg1, msg.sender, 0);
            require arg1 <= sub_fa405eae[address(msg.sender)][-1]
            sub_fa405eae[address(msg.sender)][-1] -= arg1
        require -1 < stages.length
        call msg.sender with:
             gas 2300 wei
    else:
        require arg1 / 10^18
        require arg1 / 10^18 * uint256(stages.field_0) / arg1 / 10^18 == uint256(stages.field_0)
        require sub_fa405eae[address(msg.sender)][-1] >= arg1
        require -1 < stages.length
        require uint256(stages.field_0) >= arg1 / 10^18 * uint256(stages.field_0)
        require -1 < stages.length
        require arg1 / 10^18 * uint256(stages.field_0) <= uint256(stages.field_0)
        idx = 0
        while idx < stages.length:
            require idx < stages.length
            if stages[idx].field_256:
                mem[0] = 7
                require stages[idx].field_256 + stages[idx].field_0 >= stages[idx].field_256
                if block.timestamp >= stages[idx].field_256 + stages[idx].field_0:
                    idx = idx + 1
                    continue 
            stages[idx].field_512 = uint256(stages.field_0) - (arg1 / 10^18 * uint256(stages.field_0))
            call msg.sender with:
               value arg1 / 10^18 * uint256(stages.field_0) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require msg.sender
            require arg1 <= totalSupply
            totalSupply -= arg1
            require arg1 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg1
            emit Transfer(arg1, msg.sender, 0);
            require arg1 <= sub_fa405eae[address(msg.sender)][-1]
            sub_fa405eae[address(msg.sender)][-1] -= arg1
        require -1 < stages.length
        uint256(stages.field_0) += -1 * arg1 / 10^18 * uint256(stages.field_0)
        call msg.sender with:
           value arg1 / 10^18 * uint256(stages.field_0) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
    require arg1 <= sub_fa405eae[address(msg.sender)][-1]
    sub_fa405eae[address(msg.sender)][-1] -= arg1
}



}
