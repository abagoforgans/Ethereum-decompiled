contract main {




// =====================  Runtime code  =====================


address owner;
address managerAddress;
address sub_479a49d3Address;
address adminAddress;
uint256 startTime;
uint256 endTime;
uint256 sub_346c4826;
uint256 depositAmount;
uint8 stor8;
uint8 stor8; offset 8
uint256 stor8; offset 16
uint256 stor8; offset 8
uint256 sub_13a77d36;
uint8 stor10;
uint256 sub_8c6a039b;
uint8 stor12;
uint256 sub_6259a50d;
uint256 performanceFee;
uint256 sub_3d497ed1;
uint256 exitFee;
uint256 sub_6e98dd92;
uint256 sub_69dc272a;
uint256 sub_93213663;
uint256 stor20;
uint256 sub_5477a159;
uint256 day;
uint256 sub_b4ab0bbd;

function sub_13a77d36(?) {
    return sub_13a77d36
}

function isRunning() {
    return bool(uint8(stor8.field_0))
}

function endTime() {
    return endTime
}

function sub_346c4826(?) {
    return sub_346c4826
}

function sub_3d497ed1(?) {
    return sub_3d497ed1
}

function sub_3da1cdec(?) {
    return bool(uint8(stor8.field_8))
}

function depositAmount() {
    return depositAmount
}

function sub_479a49d3(?) {
    return sub_479a49d3Address
}

function manager() {
    return managerAddress
}

function sub_5477a159(?) {
    return sub_5477a159
}

function sub_6259a50d(?) {
    return sub_6259a50d
}

function exitFee() {
    return exitFee
}

function sub_69dc272a(?) {
    return sub_69dc272a
}

function sub_6e98dd92(?) {
    return sub_6e98dd92
}

function startTime() {
    return startTime
}

function day() {
    return day
}

function performanceFee() {
    return performanceFee
}

function sub_8c2335e8(?) {
    return bool(stor12)
}

function sub_8c6a039b(?) {
    return sub_8c6a039b
}

function owner() {
    return owner
}

function sub_93213663(?) {
    return sub_93213663
}

function sub_b15513a7(?) {
    return bool(stor10)
}

function sub_b4ab0bbd(?) {
    return sub_b4ab0bbd
}

function admin() {
    return adminAddress
}

function transferEth() {
    require msg.sender == sub_479a49d3Address
    call sub_479a49d3Address with:
       value 95 * eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdraw() {
    require msg.sender == owner
    require not stor10
    require not uint8(stor8.field_0)
    call adminAddress with:
       value 2 * eth.balance(this.address) * exitFee / 100 / 10 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call managerAddress with:
       value (eth.balance(this.address) * exitFee / 100) - (2 * eth.balance(this.address) * exitFee / 100 / 10) wei
         gas 2300 * is_zero(value) wei
    emit Reward(((eth.balance(this.address) * exitFee / 100) - (2 * eth.balance(this.address) * exitFee / 100 / 10)));
    emit Withdraw(eth.balance(this.address));
}

function deposit() payable {
    require msg.sender == owner
    require not uint8(stor8.field_8)
    depositAmount = msg.value
    uint8(stor8.field_0) = 1
    Mask(248, 0, stor8.field_8) = 1
    Mask(240, 0, stor8.field_16) = 0
    call adminAddress with:
       value 2 * msg.value * sub_3d497ed1 / 100 / 10 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call managerAddress with:
       value (msg.value * sub_3d497ed1 / 100) - (2 * msg.value * sub_3d497ed1 / 100 / 10) wei
         gas 2300 * is_zero(value) wei
    emit Reward(((msg.value * sub_3d497ed1 / 100) - (2 * msg.value * sub_3d497ed1 / 100 / 10)));
    sub_93213663 = msg.value - (msg.value * sub_3d497ed1 / 100)
    emit Deposit(msg.value);
}

function _fallback() payable {
    if not uint8(stor8.field_0):
        require msg.sender == owner
        require not uint8(stor8.field_8)
        depositAmount = msg.value
        uint8(stor8.field_0) = 1
        Mask(248, 0, stor8.field_8) = 1
        Mask(240, 0, stor8.field_16) = 0
        call adminAddress with:
           value 2 * msg.value * sub_3d497ed1 / 100 / 10 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call managerAddress with:
           value (msg.value * sub_3d497ed1 / 100) - (2 * msg.value * sub_3d497ed1 / 100 / 10) wei
             gas 2300 * is_zero(value) wei
        emit Reward(((msg.value * sub_3d497ed1 / 100) - (2 * msg.value * sub_3d497ed1 / 100 / 10)));
        sub_93213663 = msg.value - (msg.value * sub_3d497ed1 / 100)
        emit Deposit(msg.value);
}

function sub_9883e139(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == adminAddress
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _14 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = this.address
        require ext_code.size(address(_14))
        call address(_14).0x70a08231 with:
             gas gas_remaining wei
            args this.address
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            mem[(32 * arg1.length) + 132] = sub_479a49d3Address
            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
            require ext_code.size(address(_14))
            call address(_14).0xa9059cbb with:
                 gas gas_remaining wei
                args sub_479a49d3Address, ext_call.return_data[0]
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        s = ext_call.return_data[0]
        s = _14
        idx = idx + 1
        continue 
}

function sub_571768bb(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    require not stor10
    stor10 = 1
    uint8(stor8.field_0) = 0
    require msg.sender == adminAddress
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _14 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = this.address
        require ext_code.size(address(_14))
        call address(_14).0x70a08231 with:
             gas gas_remaining wei
            args this.address
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            mem[(32 * arg1.length) + 132] = sub_479a49d3Address
            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
            require ext_code.size(address(_14))
            call address(_14).0xa9059cbb with:
                 gas gas_remaining wei
                args sub_479a49d3Address, ext_call.return_data[0]
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        s = ext_call.return_data[0]
        s = _14
        idx = idx + 1
        continue 
}

function sub_b5d5cde3(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == adminAddress
    require not stor10
    day++
    sub_b4ab0bbd = eth.balance(this.address)
    s = 0
    s = 0
    s = 0
    s = 0
    idx = 0
    s = 0
    t = 0
    while idx < arg1.length:
        require idx < arg1.length
        _52 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = this.address
        require ext_code.size(address(_52))
        call address(_52).0x70a08231 with:
             gas gas_remaining wei
            args this.address
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg2.length
        if mem[(32 * arg1.length) + (32 * idx) + 160] * ext_call.return_data[0] <= s:
            sub_b4ab0bbd += mem[(32 * arg1.length) + (32 * idx) + 160] * ext_call.return_data[0]
            s = mem[(32 * arg1.length) + (32 * idx) + 160] * ext_call.return_data[0]
            s = mem[(32 * arg1.length) + (32 * idx) + 160]
            s = ext_call.return_data[0]
            s = _52
            idx = idx + 1
            s = s
            t = t
            continue 
        require idx < arg1.length
        sub_b4ab0bbd += mem[(32 * arg1.length) + (32 * idx) + 160] * ext_call.return_data[0]
        s = mem[(32 * arg1.length) + (32 * idx) + 160] * ext_call.return_data[0]
        s = mem[(32 * arg1.length) + (32 * idx) + 160]
        s = ext_call.return_data[0]
        s = _52
        idx = idx + 1
        s = mem[(32 * arg1.length) + (32 * idx) + 160] * ext_call.return_data[0]
        t = mem[(32 * idx) + 128]
        continue 
    sub_5477a159 += sub_b4ab0bbd * sub_6259a50d / 100
    stor20 = 0
    require sub_6e98dd92
    if 0 == day % sub_6e98dd92:
        stor20 += sub_5477a159
        sub_5477a159 = 0
    require sub_69dc272a
    if 0 == day % sub_69dc272a:
        if sub_93213663 > sub_b4ab0bbd:
            stor20 += (sub_93213663 * performanceFee) - (sub_b4ab0bbd * performanceFee) / 100
            sub_93213663 = sub_b4ab0bbd
    if stor20 > 0:
        if eth.balance(this.address) > stor20:
            call adminAddress with:
               value 2 * stor20 / 10 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call managerAddress with:
               value stor20 - (2 * stor20 / 10) wei
                 gas 2300 * is_zero(value) wei
            emit Reward((stor20 - (2 * stor20 / 10)));
}



}
