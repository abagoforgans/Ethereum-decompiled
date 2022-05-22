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
uint8 isRunning;
uint8 sub_3da1cdec; offset 168
uint128 stor8; offset 168
address exchangerAddress; offset 8
uint256 sub_13a77d36;
uint8 stor10;
uint256 sub_8c6a039b;
uint8 sub_8c2335e8;
uint256 sub_6259a50d;
uint256 performanceFee;
uint256 sub_3d497ed1;
uint256 exitFee;
uint256 sub_6e98dd92;
uint256 sub_69dc272a;
uint256 sub_93213663;
uint256 stor20;
address stor21;
array of address sub_cdb77de5;
mapping of uint8 stor23;
mapping of uint256 stor24;
uint256 sub_5477a159;
uint256 day;
uint256 sub_b4ab0bbd;

function sub_08566cb9(?) {
    return bool(stor23[arg1])
}

function sub_13a77d36(?) {
    return sub_13a77d36
}

function isRunning() {
    return bool(isRunning)
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
    return bool(sub_3da1cdec)
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

function exchanger() {
    return exchangerAddress
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
    return bool(sub_8c2335e8)
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

function sub_cdb77de5(?) {
    require arg1 < sub_cdb77de5.length
    return sub_cdb77de5[arg1]
}

function admin() {
    return adminAddress
}

function transferEth(address arg1, uint256 arg2) payable {
    require msg.sender == sub_479a49d3Address
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferToken(address arg1, address arg2, uint256 arg3) payable {
    require msg.sender == adminAddress
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdraw() {
    if owner != msg.sender:
        require msg.sender == adminAddress
    require not stor10
    require not isRunning
    call adminAddress with:
       value 2 * eth.balance(this.address) * exitFee / 10000 / 10 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call managerAddress with:
       value (eth.balance(this.address) * exitFee / 10000) - (2 * eth.balance(this.address) * exitFee / 10000 / 10) wei
         gas 2300 * is_zero(value) wei
    emit Withdraw(eth.balance(this.address));
}

function sub_286b433c(?) {
    require msg.sender == sub_479a49d3Address
    emit 0xd25206a8: arg3, arg1, arg2
    sub_8c6a039b--
    if not sub_8c6a039b:
        stor10 = 0
        if sub_8c2335e8:
            call adminAddress with:
               value 2 * stor20 / 10 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call managerAddress with:
               value stor20 - (2 * stor20 / 10) wei
                 gas 2300 * is_zero(value) wei
            sub_8c2335e8 = 0
        emit 0xc4b4f2f1 
}

function sub_a06487bf(?) {
    require msg.sender == sub_479a49d3Address
    emit 0xd8a931ba: arg3, arg1, arg2
    sub_8c6a039b--
    if not sub_8c6a039b:
        stor10 = 0
        if sub_8c2335e8:
            call adminAddress with:
               value 2 * stor20 / 10 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call managerAddress with:
               value stor20 - (2 * stor20 / 10) wei
                 gas 2300 * is_zero(value) wei
            sub_8c2335e8 = 0
        emit 0xc4b4f2f1 
}

function sub_c455d569(?) {
    require msg.sender == sub_479a49d3Address
    emit 0xb7973bfb: arg3, arg4, arg1, arg2
    sub_8c6a039b--
    if not sub_8c6a039b:
        stor10 = 0
        if sub_8c2335e8:
            call adminAddress with:
               value 2 * stor20 / 10 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call managerAddress with:
               value stor20 - (2 * stor20 / 10) wei
                 gas 2300 * is_zero(value) wei
            sub_8c2335e8 = 0
        emit 0xc4b4f2f1 
}

function deposit() payable {
    if owner != msg.sender:
        require msg.sender == adminAddress
    require not sub_3da1cdec
    depositAmount = msg.value
    isRunning = 1
    stor8 = 1
    call adminAddress with:
       value 2 * msg.value * sub_3d497ed1 / 10000 / 10 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call managerAddress with:
       value (msg.value * sub_3d497ed1 / 10000) - (2 * msg.value * sub_3d497ed1 / 10000 / 10) wei
         gas 2300 * is_zero(value) wei
    sub_93213663 = msg.value - (msg.value * sub_3d497ed1 / 10000)
    emit Deposit(msg.value);
}

function _fallback() payable {
    if not isRunning:
        if owner != msg.sender:
            require msg.sender == adminAddress
        require not sub_3da1cdec
        depositAmount = msg.value
        isRunning = 1
        stor8 = 1
        call adminAddress with:
           value 2 * msg.value * sub_3d497ed1 / 10000 / 10 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call managerAddress with:
           value (msg.value * sub_3d497ed1 / 10000) - (2 * msg.value * sub_3d497ed1 / 10000 / 10) wei
             gas 2300 * is_zero(value) wei
        sub_93213663 = msg.value - (msg.value * sub_3d497ed1 / 10000)
        emit Deposit(msg.value);
}

function calculateRewards() {
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
    while idx < sub_cdb77de5.length:
        require ext_code.size(sub_cdb77de5[idx])
        call sub_cdb77de5[idx].0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < sub_cdb77de5.length
        mem[0] = 22
        mem[100] = sub_cdb77de5[idx]
        require ext_code.size(exchangerAddress)
        call exchangerAddress.getRewardRate(address arg1) with:
             gas gas_remaining wei
            args sub_cdb77de5[idx]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 <= s:
            sub_b4ab0bbd += ext_call.return_data[0] * ext_call.return_data[0] / 10^18
            s = ext_call.return_data[0] * ext_call.return_data[0] / 10^18
            s = ext_call.return_data[0]
            s = ext_call.return_data[0]
            s = sub_cdb77de5[idx]
            idx = idx + 1
            s = s
            t = t
            continue 
        require idx < sub_cdb77de5.length
        mem[0] = 22
        sub_b4ab0bbd += ext_call.return_data[0] * ext_call.return_data[0] / 10^18
        s = ext_call.return_data[0] * ext_call.return_data[0] / 10^18
        s = ext_call.return_data[0]
        s = ext_call.return_data[0]
        s = sub_cdb77de5[idx]
        idx = idx + 1
        s = ext_call.return_data[0] * ext_call.return_data[0] / 10^18
        t = sub_cdb77de5[idx]
        continue 
    sub_5477a159 += sub_b4ab0bbd * sub_6259a50d / 10000
    stor20 = 0
    require sub_6e98dd92
    if not day % sub_6e98dd92:
        stor20 += sub_5477a159
        sub_5477a159 = 0
    require sub_69dc272a
    if not day % sub_69dc272a:
        if sub_93213663 > sub_b4ab0bbd:
            stor20 += (sub_93213663 * performanceFee) - (sub_b4ab0bbd * performanceFee) / 10000
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
        else:
            require ext_code.size(exchangerAddress)
            call exchangerAddress.getRewardRate(address arg1) with:
                 gas gas_remaining wei
                args address(t)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            sub_8c2335e8 = 1
            mem[420 len 0] = None
            mem[484 len 0] = None
            mem[548 len 0] = None
            require ext_code.size(exchangerAddress)
            call exchangerAddress.0x32d5e78e with:
                 gas gas_remaining wei
                args 96, 160, 224, 1, mem[420], 1, 0, mem[484], 1, mem[548]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function sub_e815f150(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if msg.sender == managerAddress:
        require isRunning
        require arg1.length == arg2.length
        require arg2.length == arg3.length
        require arg1.length > 0
        require sub_13a77d36 < sub_346c4826
        require not stor10
        require block.timestamp < endTime
        stor10 = 1
        sub_8c6a039b = arg1.length
        sub_13a77d36++
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 16
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 512] = code.data[12706 len 512]
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < arg2.length
            require idx < arg1.length
            require mem[(32 * idx) + 140 len 20] != mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
            require idx < arg3.length
            require mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] > 0
            require idx < arg2.length
            if not stor23[mem[(32 * idx) + (32 * arg1.length) + 172 len 20]]:
                require idx < arg2.length
                sub_cdb77de5.length++
                sub_cdb77de5[sub_cdb77de5.length] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                require idx < arg2.length
                stor23[mem[(32 * idx) + (32 * arg1.length) + 172 len 20]] = 1
            require idx < arg1.length
            if stor24[mem[(32 * idx) + 140 len 20]]:
                require idx < arg3.length
                require idx < arg3.length
                require idx < arg1.length
                require stor24[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] >= mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                require idx < arg3.length
                require idx < arg1.length
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 24
                stor24[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                idx = idx + 1
                s = s
                continue 
            require idx < arg1.length
            require s < 16
            mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = mem[(32 * idx) + 140 len 20]
            require idx < arg3.length
            require idx < arg3.length
            require idx < arg1.length
            require stor24[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] >= mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            require idx < arg3.length
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 24
            stor24[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            idx = idx + 1
            s = s + 1
            continue 
        t = 0
        while t < s:
            require t < 16
            require t < 16
            if mem[(32 * t) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 236 len 20] == stor21:
                require eth.balance(this.address) >= stor24[mem[(32 * t) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 236 len 20]]
            else:
                _448 = mem[(32 * t) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                require t < 16
                mem[0] = mem[(32 * t) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 236 len 20]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 740] = this.address
                require ext_code.size(address(_448))
                call address(_448).0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 736] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= stor24[mem[0]]
                require t < 16
                mem[0] = mem[(32 * t) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 236 len 20]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 740] = sub_479a49d3Address
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 772] = stor24[mem[0]]
                require ext_code.size(address(_448))
                call address(_448).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_479a49d3Address, stor24[mem[0]]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 736] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
            require t < arg1.length
            mem[0] = mem[(32 * t) + 140 len 20]
            mem[32] = 24
            stor24[mem[(32 * t) + 140 len 20]] = 0
            t = t + 1
            continue 
    else:
        require msg.sender == adminAddress
        require isRunning
        require arg1.length == arg2.length
        require arg2.length == arg3.length
        require arg1.length > 0
        require sub_13a77d36 < sub_346c4826
        require not stor10
        require block.timestamp < endTime
        stor10 = 1
        sub_8c6a039b = arg1.length
        sub_13a77d36++
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 16
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 512] = code.data[12706 len 512]
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < arg2.length
            require idx < arg1.length
            require mem[(32 * idx) + 140 len 20] != mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
            require idx < arg3.length
            require mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] > 0
            require idx < arg2.length
            if not stor23[mem[(32 * idx) + (32 * arg1.length) + 172 len 20]]:
                require idx < arg2.length
                sub_cdb77de5.length++
                sub_cdb77de5[sub_cdb77de5.length] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                require idx < arg2.length
                stor23[mem[(32 * idx) + (32 * arg1.length) + 172 len 20]] = 1
            require idx < arg1.length
            if stor24[mem[(32 * idx) + 140 len 20]]:
                require idx < arg3.length
                require idx < arg3.length
                require idx < arg1.length
                require stor24[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] >= mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                require idx < arg3.length
                require idx < arg1.length
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 24
                stor24[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                idx = idx + 1
                s = s
                continue 
            require idx < arg1.length
            require s < 16
            mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = mem[(32 * idx) + 140 len 20]
            require idx < arg3.length
            require idx < arg3.length
            require idx < arg1.length
            require stor24[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] >= mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            require idx < arg3.length
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 24
            stor24[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            idx = idx + 1
            s = s + 1
            continue 
        t = 0
        while t < s:
            require t < 16
            require t < 16
            if mem[(32 * t) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 236 len 20] == stor21:
                require eth.balance(this.address) >= stor24[mem[(32 * t) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 236 len 20]]
            else:
                _452 = mem[(32 * t) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                require t < 16
                mem[0] = mem[(32 * t) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 236 len 20]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 740] = this.address
                require ext_code.size(address(_452))
                call address(_452).0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 736] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= stor24[mem[0]]
                require t < 16
                mem[0] = mem[(32 * t) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 236 len 20]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 740] = sub_479a49d3Address
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 772] = stor24[mem[0]]
                require ext_code.size(address(_452))
                call address(_452).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_479a49d3Address, stor24[mem[0]]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 736] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
            require t < arg1.length
            mem[0] = mem[(32 * t) + 140 len 20]
            mem[32] = 24
            stor24[mem[(32 * t) + 140 len 20]] = 0
            t = t + 1
            continue 
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 868 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(64 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 868] = arg2.length
    mem[(64 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 900 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(64 * arg2.length) + (64 * arg1.length) + (32 * arg3.length) + 900] = arg3.length
    mem[(64 * arg2.length) + (64 * arg1.length) + (32 * arg3.length) + 932 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    require ext_code.size(exchangerAddress)
    call exchangerAddress.0x32d5e78e with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg1.length) + 868 len (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + -floor32(arg1.length) + 64]), (32 * arg1.length) + 128, (32 * arg2.length) + (32 * arg1.length) + 160
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xbdff1082: sub_13a77d36
}

function sub_55576a1c(?) {
    if msg.sender == owner:
        require not stor10
        stor10 = 1
        isRunning = 0
        mem[96] = sub_cdb77de5.length
        if not sub_cdb77de5.length:
            mem[(32 * sub_cdb77de5.length) + 128] = sub_cdb77de5.length
            s = 0
            s = 0
            idx = 0
            s = 0
            while idx < sub_cdb77de5.length:
                mem[0] = 22
                mem[(64 * sub_cdb77de5.length) + 164] = this.address
                require ext_code.size(sub_cdb77de5[idx])
                call sub_cdb77de5[idx].0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                mem[(64 * sub_cdb77de5.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    s = ext_call.return_data[0]
                    s = sub_cdb77de5[idx]
                    idx = idx + 1
                    s = s
                    continue 
                require idx < sub_cdb77de5.length
                mem[0] = 22
                require s < sub_cdb77de5.length
                mem[(32 * s) + 128] = sub_cdb77de5[idx]
                require s < mem[(32 * sub_cdb77de5.length) + 128]
                mem[(32 * s) + (32 * sub_cdb77de5.length) + 160] = ext_call.return_data[0]
                s = ext_call.return_data[0]
                s = sub_cdb77de5[idx]
                idx = idx + 1
                s = s + 1
                continue 
            if not s:
                mem[(64 * sub_cdb77de5.length) + (32 * s) + 192] = s
                mem[(64 * sub_cdb77de5.length) + (64 * s) + 224] = s
            else:
                mem[(64 * sub_cdb77de5.length) + 192 len 32 * s] = code.data[12706 len 32 * s]
                mem[(64 * sub_cdb77de5.length) + (32 * s) + 192] = s
                mem[(64 * sub_cdb77de5.length) + (32 * s) + 224 len 32 * s] = code.data[12706 len 32 * s]
                mem[(64 * sub_cdb77de5.length) + (64 * s) + 224] = s
                mem[(64 * sub_cdb77de5.length) + (64 * s) + 256 len 32 * s] = code.data[12706 len 32 * s]
            t = 0
            while t < s:
                require t < sub_cdb77de5.length
                require t < mem[(64 * sub_cdb77de5.length) + 160]
                mem[(32 * t) + (64 * sub_cdb77de5.length) + 192] = mem[(32 * t) + 140 len 20]
                require t < mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]
                mem[(32 * t) + (64 * sub_cdb77de5.length) + (32 * s) + 224] = 0
                require t < mem[(32 * sub_cdb77de5.length) + 128]
                require t < mem[(64 * sub_cdb77de5.length) + (64 * s) + 224]
                mem[(32 * t) + (64 * sub_cdb77de5.length) + (64 * s) + 256] = mem[(32 * t) + (32 * sub_cdb77de5.length) + 160]
                t = t + 1
                continue 
            mem[(64 * sub_cdb77de5.length) + (98 * s) + 256] = 0x32d5e78e00000000000000000000000000000000000000000000000000000000
            mem[(64 * sub_cdb77de5.length) + (98 * s) + 260] = 96
            mem[(64 * sub_cdb77de5.length) + (98 * s) + 356] = mem[(64 * sub_cdb77de5.length) + 160]
            mem[(64 * sub_cdb77de5.length) + (98 * s) + 388 len floor32(mem[(64 * sub_cdb77de5.length) + 160])] = mem[(64 * sub_cdb77de5.length) + 192 len floor32(mem[(64 * sub_cdb77de5.length) + 160])]
            mem[(64 * sub_cdb77de5.length) + (98 * s) + 292] = (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 128
            mem[(32 * mem[(64 * sub_cdb77de5.length) + 160]) + (64 * sub_cdb77de5.length) + (98 * s) + 388] = mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]
            mem[(32 * mem[(64 * sub_cdb77de5.length) + 160]) + (64 * sub_cdb77de5.length) + (98 * s) + 420 len floor32(mem[(64 * sub_cdb77de5.length) + (32 * s) + 192])] = mem[(64 * sub_cdb77de5.length) + (32 * s) + 224 len floor32(mem[(64 * sub_cdb77de5.length) + (32 * s) + 192])]
            mem[(64 * sub_cdb77de5.length) + (98 * s) + 324] = (32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 160
            mem[(32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + (64 * sub_cdb77de5.length) + (98 * s) + 420] = mem[(64 * sub_cdb77de5.length) + (64 * s) + 224]
            mem[(32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + (64 * sub_cdb77de5.length) + (98 * s) + 452 len floor32(mem[(64 * sub_cdb77de5.length) + (64 * s) + 224])] = mem[(64 * sub_cdb77de5.length) + (64 * s) + 256 len floor32(mem[(64 * sub_cdb77de5.length) + (64 * s) + 224])]
            require ext_code.size(exchangerAddress)
            call exchangerAddress.0x32d5e78e with:
                 gas gas_remaining wei
                args Array(len=mem[(64 * sub_cdb77de5.length) + 160], data=mem[(64 * sub_cdb77de5.length) + (98 * s) + 388 len (32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 32], mem[(64 * sub_cdb77de5.length) + (64 * s) + 224], mem[(64 * sub_cdb77de5.length) + (98 * s) + (32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 452 len 32 * mem[(64 * sub_cdb77de5.length) + (64 * s) + 224]]), (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 128, (32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 160
        else:
            mem[128 len 32 * sub_cdb77de5.length] = code.data[12706 len 32 * sub_cdb77de5.length]
            mem[(32 * sub_cdb77de5.length) + 128] = sub_cdb77de5.length
            mem[(32 * sub_cdb77de5.length) + 160 len 32 * sub_cdb77de5.length] = code.data[12706 len 32 * sub_cdb77de5.length]
            s = 0
            s = 0
            idx = 0
            s = 0
            while idx < sub_cdb77de5.length:
                mem[0] = 22
                mem[(64 * sub_cdb77de5.length) + 164] = this.address
                require ext_code.size(sub_cdb77de5[idx])
                call sub_cdb77de5[idx].0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                mem[(64 * sub_cdb77de5.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    s = ext_call.return_data[0]
                    s = sub_cdb77de5[idx]
                    idx = idx + 1
                    s = s
                    continue 
                require idx < sub_cdb77de5.length
                mem[0] = 22
                require s < sub_cdb77de5.length
                mem[(32 * s) + 128] = sub_cdb77de5[idx]
                require s < mem[(32 * sub_cdb77de5.length) + 128]
                mem[(32 * s) + (32 * sub_cdb77de5.length) + 160] = ext_call.return_data[0]
                s = ext_call.return_data[0]
                s = sub_cdb77de5[idx]
                idx = idx + 1
                s = s + 1
                continue 
            if not s:
                mem[(64 * sub_cdb77de5.length) + (32 * s) + 192] = s
                mem[(64 * sub_cdb77de5.length) + (64 * s) + 224] = s
                t = 0
                while t < s:
                    require t < sub_cdb77de5.length
                    require t < mem[(64 * sub_cdb77de5.length) + 160]
                    mem[(32 * t) + (64 * sub_cdb77de5.length) + 192] = mem[(32 * t) + 140 len 20]
                    require t < mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]
                    mem[(32 * t) + (64 * sub_cdb77de5.length) + (32 * s) + 224] = 0
                    require t < mem[(32 * sub_cdb77de5.length) + 128]
                    require t < mem[(64 * sub_cdb77de5.length) + (64 * s) + 224]
                    mem[(32 * t) + (64 * sub_cdb77de5.length) + (64 * s) + 256] = mem[(32 * t) + (32 * sub_cdb77de5.length) + 160]
                    t = t + 1
                    continue 
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 256] = 0x32d5e78e00000000000000000000000000000000000000000000000000000000
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 260] = 96
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 356] = mem[(64 * sub_cdb77de5.length) + 160]
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 388 len floor32(mem[(64 * sub_cdb77de5.length) + 160])] = mem[(64 * sub_cdb77de5.length) + 192 len floor32(mem[(64 * sub_cdb77de5.length) + 160])]
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 292] = (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 128
                mem[(32 * mem[(64 * sub_cdb77de5.length) + 160]) + (64 * sub_cdb77de5.length) + (98 * s) + 388] = mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]
                mem[(32 * mem[(64 * sub_cdb77de5.length) + 160]) + (64 * sub_cdb77de5.length) + (98 * s) + 420 len floor32(mem[(64 * sub_cdb77de5.length) + (32 * s) + 192])] = mem[(64 * sub_cdb77de5.length) + (32 * s) + 224 len floor32(mem[(64 * sub_cdb77de5.length) + (32 * s) + 192])]
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 324] = (32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 160
                mem[(32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + (64 * sub_cdb77de5.length) + (98 * s) + 420] = mem[(64 * sub_cdb77de5.length) + (64 * s) + 224]
                mem[(32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + (64 * sub_cdb77de5.length) + (98 * s) + 452 len floor32(mem[(64 * sub_cdb77de5.length) + (64 * s) + 224])] = mem[(64 * sub_cdb77de5.length) + (64 * s) + 256 len floor32(mem[(64 * sub_cdb77de5.length) + (64 * s) + 224])]
                require ext_code.size(exchangerAddress)
                call exchangerAddress.0x32d5e78e with:
                     gas gas_remaining wei
                    args Array(len=mem[(64 * sub_cdb77de5.length) + 160], data=mem[(64 * sub_cdb77de5.length) + (98 * s) + 388 len (32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 32], mem[(64 * sub_cdb77de5.length) + (64 * s) + 224], mem[(64 * sub_cdb77de5.length) + (98 * s) + (32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 452 len 32 * mem[(64 * sub_cdb77de5.length) + (64 * s) + 224]]), (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 128, (32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 160
            else:
                mem[(64 * sub_cdb77de5.length) + 192 len 32 * s] = code.data[12706 len 32 * s]
                mem[(64 * sub_cdb77de5.length) + (32 * s) + 192] = s
                mem[(64 * sub_cdb77de5.length) + (32 * s) + 224 len 32 * s] = code.data[12706 len 32 * s]
                mem[(64 * sub_cdb77de5.length) + (64 * s) + 224] = s
                mem[(64 * sub_cdb77de5.length) + (64 * s) + 256 len 32 * s] = code.data[12706 len 32 * s]
                t = 0
                while t < s:
                    require t < sub_cdb77de5.length
                    require t < mem[(64 * sub_cdb77de5.length) + 160]
                    mem[(32 * t) + (64 * sub_cdb77de5.length) + 192] = mem[(32 * t) + 140 len 20]
                    require t < mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]
                    mem[(32 * t) + (64 * sub_cdb77de5.length) + (32 * s) + 224] = 0
                    require t < mem[(32 * sub_cdb77de5.length) + 128]
                    require t < mem[(64 * sub_cdb77de5.length) + (64 * s) + 224]
                    mem[(32 * t) + (64 * sub_cdb77de5.length) + (64 * s) + 256] = mem[(32 * t) + (32 * sub_cdb77de5.length) + 160]
                    t = t + 1
                    continue 
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 256] = 0x32d5e78e00000000000000000000000000000000000000000000000000000000
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 260] = 96
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 356] = mem[(64 * sub_cdb77de5.length) + 160]
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 388 len floor32(mem[(64 * sub_cdb77de5.length) + 160])] = mem[(64 * sub_cdb77de5.length) + 192 len floor32(mem[(64 * sub_cdb77de5.length) + 160])]
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 292] = (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 128
                mem[(32 * mem[(64 * sub_cdb77de5.length) + 160]) + (64 * sub_cdb77de5.length) + (98 * s) + 388] = mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]
                mem[(32 * mem[(64 * sub_cdb77de5.length) + 160]) + (64 * sub_cdb77de5.length) + (98 * s) + 420 len floor32(mem[(64 * sub_cdb77de5.length) + (32 * s) + 192])] = mem[(64 * sub_cdb77de5.length) + (32 * s) + 224 len floor32(mem[(64 * sub_cdb77de5.length) + (32 * s) + 192])]
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 324] = (32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 160
                mem[(32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + (64 * sub_cdb77de5.length) + (98 * s) + 420] = mem[(64 * sub_cdb77de5.length) + (64 * s) + 224]
                mem[(32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + (64 * sub_cdb77de5.length) + (98 * s) + 452 len floor32(mem[(64 * sub_cdb77de5.length) + (64 * s) + 224])] = mem[(64 * sub_cdb77de5.length) + (64 * s) + 256 len floor32(mem[(64 * sub_cdb77de5.length) + (64 * s) + 224])]
                require ext_code.size(exchangerAddress)
                call exchangerAddress.0x32d5e78e with:
                     gas gas_remaining wei
                    args Array(len=mem[(64 * sub_cdb77de5.length) + 160], data=mem[(64 * sub_cdb77de5.length) + (98 * s) + 388 len (32 * mem[(64 * sub_cdb77de5.length) + (64 * s) + 224]) + (32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 64]), (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 128, (32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 160
    else:
        require msg.sender == adminAddress
        require not stor10
        stor10 = 1
        isRunning = 0
        mem[96] = sub_cdb77de5.length
        if not sub_cdb77de5.length:
            mem[(32 * sub_cdb77de5.length) + 128] = sub_cdb77de5.length
            s = 0
            s = 0
            idx = 0
            s = 0
            while idx < sub_cdb77de5.length:
                mem[0] = 22
                mem[(64 * sub_cdb77de5.length) + 164] = this.address
                require ext_code.size(sub_cdb77de5[idx])
                call sub_cdb77de5[idx].0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                mem[(64 * sub_cdb77de5.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    s = ext_call.return_data[0]
                    s = sub_cdb77de5[idx]
                    idx = idx + 1
                    s = s
                    continue 
                require idx < sub_cdb77de5.length
                mem[0] = 22
                require s < sub_cdb77de5.length
                mem[(32 * s) + 128] = sub_cdb77de5[idx]
                require s < mem[(32 * sub_cdb77de5.length) + 128]
                mem[(32 * s) + (32 * sub_cdb77de5.length) + 160] = ext_call.return_data[0]
                s = ext_call.return_data[0]
                s = sub_cdb77de5[idx]
                idx = idx + 1
                s = s + 1
                continue 
            if not s:
                mem[(64 * sub_cdb77de5.length) + (32 * s) + 192] = s
                mem[(64 * sub_cdb77de5.length) + (64 * s) + 224] = s
                t = 0
                while t < s:
                    require t < sub_cdb77de5.length
                    require t < mem[(64 * sub_cdb77de5.length) + 160]
                    mem[(32 * t) + (64 * sub_cdb77de5.length) + 192] = mem[(32 * t) + 140 len 20]
                    require t < mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]
                    mem[(32 * t) + (64 * sub_cdb77de5.length) + (32 * s) + 224] = 0
                    require t < mem[(32 * sub_cdb77de5.length) + 128]
                    require t < mem[(64 * sub_cdb77de5.length) + (64 * s) + 224]
                    mem[(32 * t) + (64 * sub_cdb77de5.length) + (64 * s) + 256] = mem[(32 * t) + (32 * sub_cdb77de5.length) + 160]
                    t = t + 1
                    continue 
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 256] = 0x32d5e78e00000000000000000000000000000000000000000000000000000000
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 260] = 96
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 356] = mem[(64 * sub_cdb77de5.length) + 160]
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 388 len floor32(mem[(64 * sub_cdb77de5.length) + 160])] = mem[(64 * sub_cdb77de5.length) + 192 len floor32(mem[(64 * sub_cdb77de5.length) + 160])]
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 292] = (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 128
                mem[(32 * mem[(64 * sub_cdb77de5.length) + 160]) + (64 * sub_cdb77de5.length) + (98 * s) + 388] = mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]
                mem[(32 * mem[(64 * sub_cdb77de5.length) + 160]) + (64 * sub_cdb77de5.length) + (98 * s) + 420 len floor32(mem[(64 * sub_cdb77de5.length) + (32 * s) + 192])] = mem[(64 * sub_cdb77de5.length) + (32 * s) + 224 len floor32(mem[(64 * sub_cdb77de5.length) + (32 * s) + 192])]
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 324] = (32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 160
                mem[(32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + (64 * sub_cdb77de5.length) + (98 * s) + 420] = mem[(64 * sub_cdb77de5.length) + (64 * s) + 224]
                _512 = mem[(64 * sub_cdb77de5.length) + (64 * s) + 224]
                mem[(32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + (64 * sub_cdb77de5.length) + (98 * s) + 452 len floor32(mem[(64 * sub_cdb77de5.length) + (64 * s) + 224])] = mem[(64 * sub_cdb77de5.length) + (64 * s) + 256 len floor32(mem[(64 * sub_cdb77de5.length) + (64 * s) + 224])]
                require ext_code.size(exchangerAddress)
                call exchangerAddress.0x32d5e78e with:
                     gas gas_remaining wei
                    args Array(len=mem[(64 * sub_cdb77de5.length) + 160], data=mem[(64 * sub_cdb77de5.length) + (98 * s) + 388 len (32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 32], mem[(64 * sub_cdb77de5.length) + (64 * s) + 224], mem[(64 * sub_cdb77de5.length) + (98 * s) + (32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 452 len 32 * _512]), (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 128, (32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 160
            else:
                mem[(64 * sub_cdb77de5.length) + 192 len 32 * s] = code.data[12706 len 32 * s]
                mem[(64 * sub_cdb77de5.length) + (32 * s) + 192] = s
                mem[(64 * sub_cdb77de5.length) + (32 * s) + 224 len 32 * s] = code.data[12706 len 32 * s]
                mem[(64 * sub_cdb77de5.length) + (64 * s) + 224] = s
                mem[(64 * sub_cdb77de5.length) + (64 * s) + 256 len 32 * s] = code.data[12706 len 32 * s]
                t = 0
                while t < s:
                    require t < sub_cdb77de5.length
                    require t < mem[(64 * sub_cdb77de5.length) + 160]
                    mem[(32 * t) + (64 * sub_cdb77de5.length) + 192] = mem[(32 * t) + 140 len 20]
                    require t < mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]
                    mem[(32 * t) + (64 * sub_cdb77de5.length) + (32 * s) + 224] = 0
                    require t < mem[(32 * sub_cdb77de5.length) + 128]
                    require t < mem[(64 * sub_cdb77de5.length) + (64 * s) + 224]
                    mem[(32 * t) + (64 * sub_cdb77de5.length) + (64 * s) + 256] = mem[(32 * t) + (32 * sub_cdb77de5.length) + 160]
                    t = t + 1
                    continue 
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 256] = 0x32d5e78e00000000000000000000000000000000000000000000000000000000
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 260] = 96
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 356] = mem[(64 * sub_cdb77de5.length) + 160]
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 388 len floor32(mem[(64 * sub_cdb77de5.length) + 160])] = mem[(64 * sub_cdb77de5.length) + 192 len floor32(mem[(64 * sub_cdb77de5.length) + 160])]
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 292] = (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 128
                mem[(32 * mem[(64 * sub_cdb77de5.length) + 160]) + (64 * sub_cdb77de5.length) + (98 * s) + 388] = mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]
                mem[(32 * mem[(64 * sub_cdb77de5.length) + 160]) + (64 * sub_cdb77de5.length) + (98 * s) + 420 len floor32(mem[(64 * sub_cdb77de5.length) + (32 * s) + 192])] = mem[(64 * sub_cdb77de5.length) + (32 * s) + 224 len floor32(mem[(64 * sub_cdb77de5.length) + (32 * s) + 192])]
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 324] = (32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 160
                mem[(32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + (64 * sub_cdb77de5.length) + (98 * s) + 420] = mem[(64 * sub_cdb77de5.length) + (64 * s) + 224]
                _515 = mem[(64 * sub_cdb77de5.length) + (64 * s) + 224]
                mem[(32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + (64 * sub_cdb77de5.length) + (98 * s) + 452 len floor32(mem[(64 * sub_cdb77de5.length) + (64 * s) + 224])] = mem[(64 * sub_cdb77de5.length) + (64 * s) + 256 len floor32(mem[(64 * sub_cdb77de5.length) + (64 * s) + 224])]
                require ext_code.size(exchangerAddress)
                call exchangerAddress.0x32d5e78e with:
                     gas gas_remaining wei
                    args 96, mem[(64 * sub_cdb77de5.length) + (98 * s) + 292 len (32 * _515) + (32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 160]
        else:
            mem[128 len 32 * sub_cdb77de5.length] = code.data[12706 len 32 * sub_cdb77de5.length]
            mem[(32 * sub_cdb77de5.length) + 128] = sub_cdb77de5.length
            mem[(32 * sub_cdb77de5.length) + 160 len 32 * sub_cdb77de5.length] = code.data[12706 len 32 * sub_cdb77de5.length]
            s = 0
            s = 0
            idx = 0
            s = 0
            while idx < sub_cdb77de5.length:
                mem[0] = 22
                mem[(64 * sub_cdb77de5.length) + 164] = this.address
                require ext_code.size(sub_cdb77de5[idx])
                call sub_cdb77de5[idx].0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                mem[(64 * sub_cdb77de5.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    s = ext_call.return_data[0]
                    s = sub_cdb77de5[idx]
                    idx = idx + 1
                    s = s
                    continue 
                require idx < sub_cdb77de5.length
                mem[0] = 22
                require s < sub_cdb77de5.length
                mem[(32 * s) + 128] = sub_cdb77de5[idx]
                require s < mem[(32 * sub_cdb77de5.length) + 128]
                mem[(32 * s) + (32 * sub_cdb77de5.length) + 160] = ext_call.return_data[0]
                s = ext_call.return_data[0]
                s = sub_cdb77de5[idx]
                idx = idx + 1
                s = s + 1
                continue 
            if not s:
                mem[(64 * sub_cdb77de5.length) + (32 * s) + 192] = s
                mem[(64 * sub_cdb77de5.length) + (64 * s) + 224] = s
                t = 0
                while t < s:
                    require t < sub_cdb77de5.length
                    require t < mem[(64 * sub_cdb77de5.length) + 160]
                    mem[(32 * t) + (64 * sub_cdb77de5.length) + 192] = mem[(32 * t) + 140 len 20]
                    require t < mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]
                    mem[(32 * t) + (64 * sub_cdb77de5.length) + (32 * s) + 224] = 0
                    require t < mem[(32 * sub_cdb77de5.length) + 128]
                    require t < mem[(64 * sub_cdb77de5.length) + (64 * s) + 224]
                    mem[(32 * t) + (64 * sub_cdb77de5.length) + (64 * s) + 256] = mem[(32 * t) + (32 * sub_cdb77de5.length) + 160]
                    t = t + 1
                    continue 
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 256] = 0x32d5e78e00000000000000000000000000000000000000000000000000000000
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 260] = 96
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 356] = mem[(64 * sub_cdb77de5.length) + 160]
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 388 len floor32(mem[(64 * sub_cdb77de5.length) + 160])] = mem[(64 * sub_cdb77de5.length) + 192 len floor32(mem[(64 * sub_cdb77de5.length) + 160])]
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 292] = (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 128
                mem[(32 * mem[(64 * sub_cdb77de5.length) + 160]) + (64 * sub_cdb77de5.length) + (98 * s) + 388] = mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]
                mem[(32 * mem[(64 * sub_cdb77de5.length) + 160]) + (64 * sub_cdb77de5.length) + (98 * s) + 420 len floor32(mem[(64 * sub_cdb77de5.length) + (32 * s) + 192])] = mem[(64 * sub_cdb77de5.length) + (32 * s) + 224 len floor32(mem[(64 * sub_cdb77de5.length) + (32 * s) + 192])]
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 324] = (32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 160
                mem[(32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + (64 * sub_cdb77de5.length) + (98 * s) + 420] = mem[(64 * sub_cdb77de5.length) + (64 * s) + 224]
                mem[(32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + (64 * sub_cdb77de5.length) + (98 * s) + 452 len floor32(mem[(64 * sub_cdb77de5.length) + (64 * s) + 224])] = mem[(64 * sub_cdb77de5.length) + (64 * s) + 256 len floor32(mem[(64 * sub_cdb77de5.length) + (64 * s) + 224])]
                require ext_code.size(exchangerAddress)
                call exchangerAddress.0x32d5e78e with:
                     gas gas_remaining wei
                    args Array(len=mem[(64 * sub_cdb77de5.length) + 160], data=mem[(64 * sub_cdb77de5.length) + (98 * s) + 388 len (32 * mem[(64 * sub_cdb77de5.length) + (64 * s) + 224]) + (32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 64]), (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 128, (32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 160
            else:
                mem[(64 * sub_cdb77de5.length) + 192 len 32 * s] = code.data[12706 len 32 * s]
                mem[(64 * sub_cdb77de5.length) + (32 * s) + 192] = s
                mem[(64 * sub_cdb77de5.length) + (32 * s) + 224 len 32 * s] = code.data[12706 len 32 * s]
                mem[(64 * sub_cdb77de5.length) + (64 * s) + 224] = s
                mem[(64 * sub_cdb77de5.length) + (64 * s) + 256 len 32 * s] = code.data[12706 len 32 * s]
                t = 0
                while t < s:
                    require t < sub_cdb77de5.length
                    require t < mem[(64 * sub_cdb77de5.length) + 160]
                    mem[(32 * t) + (64 * sub_cdb77de5.length) + 192] = mem[(32 * t) + 140 len 20]
                    require t < mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]
                    mem[(32 * t) + (64 * sub_cdb77de5.length) + (32 * s) + 224] = 0
                    require t < mem[(32 * sub_cdb77de5.length) + 128]
                    require t < mem[(64 * sub_cdb77de5.length) + (64 * s) + 224]
                    mem[(32 * t) + (64 * sub_cdb77de5.length) + (64 * s) + 256] = mem[(32 * t) + (32 * sub_cdb77de5.length) + 160]
                    t = t + 1
                    continue 
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 256] = 0x32d5e78e00000000000000000000000000000000000000000000000000000000
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 260] = 96
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 356] = mem[(64 * sub_cdb77de5.length) + 160]
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 388 len floor32(mem[(64 * sub_cdb77de5.length) + 160])] = mem[(64 * sub_cdb77de5.length) + 192 len floor32(mem[(64 * sub_cdb77de5.length) + 160])]
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 292] = (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 128
                mem[(32 * mem[(64 * sub_cdb77de5.length) + 160]) + (64 * sub_cdb77de5.length) + (98 * s) + 388] = mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]
                mem[(32 * mem[(64 * sub_cdb77de5.length) + 160]) + (64 * sub_cdb77de5.length) + (98 * s) + 420 len floor32(mem[(64 * sub_cdb77de5.length) + (32 * s) + 192])] = mem[(64 * sub_cdb77de5.length) + (32 * s) + 224 len floor32(mem[(64 * sub_cdb77de5.length) + (32 * s) + 192])]
                mem[(64 * sub_cdb77de5.length) + (98 * s) + 324] = (32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 160
                mem[(32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + (64 * sub_cdb77de5.length) + (98 * s) + 420] = mem[(64 * sub_cdb77de5.length) + (64 * s) + 224]
                mem[(32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + (64 * sub_cdb77de5.length) + (98 * s) + 452 len floor32(mem[(64 * sub_cdb77de5.length) + (64 * s) + 224])] = mem[(64 * sub_cdb77de5.length) + (64 * s) + 256 len floor32(mem[(64 * sub_cdb77de5.length) + (64 * s) + 224])]
                require ext_code.size(exchangerAddress)
                call exchangerAddress.0x32d5e78e with:
                     gas gas_remaining wei
                    args Array(len=mem[(64 * sub_cdb77de5.length) + 160], data=mem[(64 * sub_cdb77de5.length) + (98 * s) + 388 len (32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 32], mem[(64 * sub_cdb77de5.length) + (64 * s) + 224], mem[(64 * sub_cdb77de5.length) + (98 * s) + (32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 452 len 32 * mem[(64 * sub_cdb77de5.length) + (64 * s) + 224]]), (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 128, (32 * mem[(64 * sub_cdb77de5.length) + (32 * s) + 192]) + (32 * mem[(64 * sub_cdb77de5.length) + 160]) + 160
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
