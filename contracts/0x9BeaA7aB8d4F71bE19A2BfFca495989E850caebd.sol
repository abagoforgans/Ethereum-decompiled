contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 stor1;
uint256 creationTime;
uint256 expectedAmount;
uint256 raisedAmount;
uint256 raisedEther;
uint256 endDate;
array of uint256 sub_2818553f;
uint256 stor8;
uint256 stor9;
array of uint256 sub_050f8dfa;
uint256 stor11;
array of uint256 sale;
uint256 stor14;
array of uint256 sub_daac2350;
uint256 stor16;
uint256 stor17;

function sub_050f8dfa(?) {
    require arg1 < 3
    return sub_050f8dfa[arg1]
}

function sub_2818553f(?) {
    require arg1 < 3
    return sub_2818553f[arg1]
}

function expectedAmount() {
    return expectedAmount
}

function getRaisedEther() {
    return raisedEther
}

function owner() {
    return owner
}

function sale(uint256 arg1) {
    require arg1 < 2
    return sale[arg1]
}

function raisedEther() {
    return raisedEther
}

function endDate() {
    return endDate
}

function raisedAmount() {
    return raisedAmount
}

function creationTime() {
    return creationTime
}

function sub_daac2350(?) {
    require arg1 < 3
    return sub_daac2350[arg1]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function goalReached() {
    if raisedAmount < expectedAmount:
        return raisedAmount >= expectedAmount
    return bool(expectedAmount)
}

function tokensAvailable(uint256 arg1) {
    if arg1 < sale.length:
        return sub_daac2350.length
    if arg1 >= stor14:
        return stor17
    return stor16
}

function getSalePrice() {
    idx = 192
    s = 7
    while 288 > idx + 32:
        mem[idx + 32] = uint256(stor1[s])
        idx = idx + 32
        s = s + 1
        continue 
    return sub_2818553f.length, mem[224 len 64]
}

function sub_30fc7f4f(?) {
    idx = 224
    s = 11
    while 288 > idx + 32:
        mem[idx + 32] = uint256(stor1[s])
        idx = idx + 32
        s = s + 1
        continue 
    return sub_050f8dfa.length, stor11, mem[256]
}

function sub_36785f37(?) {
    idx = 192
    s = 15
    while 288 > idx + 32:
        mem[idx + 32] = uint256(stor1[s])
        idx = idx + 32
        s = s + 1
        continue 
    return mem[224 len 64] >> 512, expectedAmount
}

function timestamp() {
    idx = 160
    s = 13
    while 224 > idx + 32:
        mem[idx + 32] = uint256(stor1[s])
        idx = idx + 32
        s = s + 1
        continue 
    return creationTime, endDate, sale.length, mem[192]
}

function sub_405c0943(?) payable {
    if block.timestamp < sale.length:
        sub_daac2350.length -= arg1
        return sub_daac2350.length
    if block.timestamp < stor14:
        stor16 -= arg1
        return stor16
    stor17 -= arg1
    return stor17
}

function tokenbalanceOf(address arg1) {
    require ext_code.size(address(stor1.length))
    call address(stor1.length).0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_8ccb2d9e(?) {
    require block.timestamp >= creationTime
    require block.timestamp <= endDate
    if block.timestamp < sale.length:
        require sub_daac2350.length > 0
    else:
        if block.timestamp >= stor14:
            require stor17 > 0
        else:
            require stor16 > 0
    require sub_2818553f.length
    if block.timestamp < sale.length:
        return 0
    if block.timestamp < stor14:
        return 1
    return 2
}

function isActive() {
    if block.timestamp < creationTime:
        return block.timestamp >= creationTime
    if block.timestamp > endDate:
        return block.timestamp <= endDate
    if block.timestamp < sale.length:
        if sub_daac2350.length <= 0:
            return (sub_daac2350.length > 0)
    else:
        if block.timestamp >= stor14:
            if stor17 <= 0:
                return (stor17 > 0)
        else:
            if stor16 <= 0:
                return (stor16 > 0)
    return bool(sub_2818553f.length)
}

function sub_318fdb7f(?) {
    mem[96 len 96] = call.data[4 len 96]
    if block.timestamp >= creationTime:
        if block.timestamp <= endDate:
            if block.timestamp < sale.length:
                if sub_daac2350.length > 0:
                    require not sub_2818553f.length
            else:
                if block.timestamp >= stor14:
                    if stor17 > 0:
                        require not sub_2818553f.length
                else:
                    if stor16 > 0:
                        require not sub_2818553f.length
    s = 7
    idx = 96
    while 192 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 10
    while 10 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
}

function sub_f1167d25(?) {
    mem[96 len 64] = call.data[68 len 64]
    if block.timestamp >= creationTime:
        if block.timestamp <= endDate:
            if block.timestamp < sale.length:
                if sub_daac2350.length > 0:
                    require not sub_2818553f.length
            else:
                if block.timestamp >= stor14:
                    if stor17 > 0:
                        require not sub_2818553f.length
                else:
                    if stor16 > 0:
                        require not sub_2818553f.length
    creationTime = arg1
    endDate = arg2
    sale.length = call.data[68]
    s = 14
    idx = 128
    while 160 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 15
    while 15 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
}

function sub_56a695a7(?) {
    mem[96 len 96] = call.data[36 len 96]
    if block.timestamp >= creationTime:
        if block.timestamp <= endDate:
            if block.timestamp < sale.length:
                if sub_daac2350.length > 0:
                    require not sub_2818553f.length
            else:
                if block.timestamp >= stor14:
                    if stor17 > 0:
                        require not sub_2818553f.length
                else:
                    if stor16 > 0:
                        require not sub_2818553f.length
    expectedAmount = arg1
    s = 15
    idx = 96
    while 192 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 18
    while 18 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    s = 10
    idx = 96
    while 192 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 13
    while 13 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
}

function buyTokens(uint256 arg1) payable {
    require block.timestamp >= creationTime
    require block.timestamp <= endDate
    if block.timestamp < sale.length:
        require sub_daac2350.length > 0
    else:
        if block.timestamp >= stor14:
            require stor17 > 0
        else:
            require stor16 > 0
    require sub_2818553f.length
    if sale.length < sale.length:
        require sub_daac2350.length >= arg1
    else:
        if sale.length >= stor14:
            require stor17 >= arg1
        else:
            require stor16 >= arg1
    require block.timestamp >= creationTime
    require block.timestamp <= endDate
    if block.timestamp < sale.length:
        require sub_daac2350.length > 0
    else:
        if block.timestamp >= stor14:
            require stor17 > 0
        else:
            require stor16 > 0
    require sub_2818553f.length
    if block.timestamp < sale.length:
        require msg.value >= arg1 * sub_2818553f.length
        emit BoughtTokens(arg1, msg.sender);
        require arg1 + raisedAmount >= raisedAmount
        raisedAmount += arg1
        require (arg1 * sub_2818553f.length) + raisedEther >= raisedEther
        raisedEther += arg1 * sub_2818553f.length
        require ext_code.size(address(stor1.length))
        call address(stor1.length).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call owner with:
           value arg1 * sub_2818553f.length wei
             gas 2300 * is_zero(value) wei
    else:
        if block.timestamp < stor14:
            require msg.value >= arg1 * stor8
            emit BoughtTokens(arg1, msg.sender);
            require arg1 + raisedAmount >= raisedAmount
            raisedAmount += arg1
            require (arg1 * stor8) + raisedEther >= raisedEther
            raisedEther += arg1 * stor8
            require ext_code.size(address(stor1.length))
            call address(stor1.length).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call owner with:
               value arg1 * stor8 wei
                 gas 2300 * is_zero(value) wei
        else:
            require msg.value >= arg1 * stor9
            emit BoughtTokens(arg1, msg.sender);
            require arg1 + raisedAmount >= raisedAmount
            raisedAmount += arg1
            require (arg1 * stor9) + raisedEther >= raisedEther
            raisedEther += arg1 * stor9
            require ext_code.size(address(stor1.length))
            call address(stor1.length).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call owner with:
               value arg1 * stor9 wei
                 gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if block.timestamp < sale.length:
        sub_daac2350.length -= arg1
    else:
        if block.timestamp < stor14:
            stor16 -= arg1
        else:
            stor17 -= arg1
}



}
