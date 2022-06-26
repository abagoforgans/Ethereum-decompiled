contract main {




// =====================  Runtime code  =====================


address owner;
uint256 raisedAmount;
mapping of uint8 stor2;
mapping of uint8 stor3;
uint256 stor4;
uint256 privateSaleAmount;
mapping of uint8 stor6;
uint8 state;
address tokenAddress; offset 8
address sub_c598b3f8Address;
mapping of uint256 balances;
uint256 sub_8dc06ecb;
uint256 sub_b07de2a0;
uint256 sub_137d3c7b;
uint256 refundStartTime;
uint256 softCap;
uint256 sub_92507734;
uint8 stor16;
uint8 stor16; offset 8
address sub_9b3bab0bAddress; offset 16

function sub_137d3c7b(?) {
    return sub_137d3c7b
}

function balances(address arg1) {
    return balances[arg1]
}

function sub_38a5244b(?) {
    return bool(stor3[arg1])
}

function sub_3a5986bf(?) {
    return bool(stor6[arg1])
}

function refundStartTime() {
    return refundStartTime
}

function sub_815c664a(?) {
    return bool(uint8(stor16.field_0))
}

function privateSaleAmount() {
    return privateSaleAmount
}

function owner() {
    return owner
}

function sub_8dc06ecb(?) {
    return sub_8dc06ecb
}

function softCap() {
    return softCap
}

function sub_92507734(?) {
    return sub_92507734
}

function sub_9b3bab0b(?) {
    return sub_9b3bab0bAddress
}

function sub_b07de2a0(?) {
    return sub_b07de2a0
}

function state() {
    require state <= 2
    return state
}

function sub_c598b3f8(?) {
    return sub_c598b3f8Address
}

function raisedAmount() {
    return raisedAmount
}

function sub_d0e65999(?) {
    return bool(stor2[arg1])
}

function token() {
    return tokenAddress
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

function _fallback() payable {
    require 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_c598b3f8Address
    require state <= 2
    if state:
        require state <= 2
        require state == 1
}

function sub_d0c420e3(?) {
    require stor2[msg.sender]
    if arg2 > 0:
        require arg2 + raisedAmount >= raisedAmount
        raisedAmount += arg2
        emit 0xbad75e24: msg.sender, address(arg1), arg2, arg2 + raisedAmount
}

function sub_abf1b6c3(?) {
    require stor6[msg.sender]
    if arg2 > 0:
        require arg2 + privateSaleAmount >= privateSaleAmount
        privateSaleAmount += arg2
        emit 0x46e44561: msg.sender, address(arg1), arg2, arg2 + privateSaleAmount
}

function sub_3c2d0710(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        idx = idx + 1
        continue 
}

function sub_d897365b(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        stor6[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        idx = idx + 1
        continue 
}

function sub_e89fb6b1(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        idx = idx + 1
        continue 
}

function sub_e3e897a1(?) {
    if uint8(stor16.field_0):
        return bool(uint8(stor16.field_8))
    require ext_code.size(sub_9b3bab0bAddress)
    call sub_9b3bab0bAddress.0xc59ee1dc with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require raisedAmount + ext_call.return_data[0] >= ext_call.return_data[0]
    require privateSaleAmount >= 0
    return privateSaleAmount + raisedAmount + ext_call.return_data[0] >= softCap
}

function sub_5d9ba67b(?) {
    require msg.sender == owner
    mem[(32 * arg1.length) + 228 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(sub_9b3bab0bAddress)
    call sub_9b3bab0bAddress.0x7dba2919 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 228 len (32 * arg1.length) - floor32(arg1.length)]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_08bbfcd4(?) {
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_c598b3f8Address:
        require sub_8dc06ecb <= eth.balance(this.address)
        return (eth.balance(this.address) - sub_8dc06ecb)
    require ext_code.size(sub_c598b3f8Address)
    call sub_c598b3f8Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_8dc06ecb <= ext_call.return_data[0]
    return (ext_call.return_data[0] - sub_8dc06ecb)
}

function sub_f6f995fb(?) {
    if block.timestamp >= sub_92507734:
        return block.timestamp >= sub_92507734
    if uint8(stor16.field_0):
        return bool(uint8(stor16.field_8))
    require ext_code.size(sub_9b3bab0bAddress)
    call sub_9b3bab0bAddress.0xc59ee1dc with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require raisedAmount + ext_call.return_data[0] >= ext_call.return_data[0]
    require privateSaleAmount >= 0
    return privateSaleAmount + raisedAmount + ext_call.return_data[0] >= softCap
}

function sub_11bef76c(?) {
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_c598b3f8Address:
        require sub_137d3c7b + eth.balance(this.address) >= eth.balance(this.address)
        return (sub_137d3c7b + eth.balance(this.address))
    require ext_code.size(sub_c598b3f8Address)
    call sub_c598b3f8Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_137d3c7b + ext_call.return_data[0] >= ext_call.return_data[0]
    return (sub_137d3c7b + ext_call.return_data[0])
}

function sub_57127ab9(?) {
    if block.timestamp >= sub_92507734:
        if uint8(stor16.field_0):
            if uint8(stor16.field_8):
                return 1
    else:
        if uint8(stor16.field_0):
            if uint8(stor16.field_8):
                if uint8(stor16.field_0):
                    if uint8(stor16.field_8):
                        return 1
        else:
            require ext_code.size(sub_9b3bab0bAddress)
            call sub_9b3bab0bAddress.0xc59ee1dc with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require raisedAmount + ext_call.return_data[0] >= ext_call.return_data[0]
            require privateSaleAmount >= 0
            if privateSaleAmount + raisedAmount + ext_call.return_data[0] >= softCap:
                if uint8(stor16.field_0):
                    if uint8(stor16.field_8):
                        return 1
    return 0
}

function claim() {
    stor4++
    if balances[msg.sender] > 0:
        require balances[msg.sender] <= sub_8dc06ecb
        sub_8dc06ecb -= balances[msg.sender]
        balances[msg.sender] = 0
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_c598b3f8Address:
            call msg.sender with:
               value balances[msg.sender] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(sub_c598b3f8Address)
            call sub_c598b3f8Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, balances[msg.sender]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        require balances[msg.sender] + sub_137d3c7b >= sub_137d3c7b
        sub_137d3c7b += balances[msg.sender]
    emit Transfer(balances[msg.sender], msg.sender);
    require stor4 + 1 == stor4
}

function sub_06c39be5(?) {
    require stor3[msg.sender]
    if block.timestamp < sub_92507734:
        if uint8(stor16.field_0):
            require uint8(stor16.field_8)
        else:
            require ext_code.size(sub_9b3bab0bAddress)
            call sub_9b3bab0bAddress.0xc59ee1dc with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require raisedAmount + ext_call.return_data[0] >= ext_call.return_data[0]
            require privateSaleAmount >= 0
            require privateSaleAmount + raisedAmount + ext_call.return_data[0] >= softCap
    require uint8(stor16.field_0)
    require uint8(stor16.field_8)
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_c598b3f8Address:
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(sub_c598b3f8Address)
        call sub_c598b3f8Address.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require arg2 + sub_137d3c7b >= sub_137d3c7b
    sub_137d3c7b += arg2
}

function sub_64bbcfc7(?) {
    stor4++
    if block.timestamp < sub_92507734:
        if uint8(stor16.field_0):
            if not uint8(stor16.field_8):
                revert with 0, 'Not expired'
        else:
            require ext_code.size(sub_9b3bab0bAddress)
            call sub_9b3bab0bAddress.0xc59ee1dc with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require raisedAmount + ext_call.return_data[0] >= ext_call.return_data[0]
            require privateSaleAmount >= 0
            if privateSaleAmount + raisedAmount + ext_call.return_data[0] < softCap:
                revert with 0, 'Not expired'
    if uint8(stor16.field_0):
        revert with 0, 'Already finalized'
    require ext_code.size(sub_9b3bab0bAddress)
    call sub_9b3bab0bAddress.0xc59ee1dc with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require raisedAmount + ext_call.return_data[0] >= ext_call.return_data[0]
    require privateSaleAmount >= 0
    if privateSaleAmount + raisedAmount + ext_call.return_data[0] < softCap:
        uint8(stor16.field_8) = 0
        require ext_code.size(sub_9b3bab0bAddress)
        call sub_9b3bab0bAddress.enableRefunds() with:
             gas gas_remaining wei
    else:
        uint8(stor16.field_8) = 1
        require ext_code.size(sub_9b3bab0bAddress or 0 or 0)
        call sub_9b3bab0bAddress or 0 or 0.close() with:
             gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor16.field_0) = 1
    require stor4 + 1 == stor4
}

function sub_b08e1429(?) payable {
    mem[64] = 96
    require not msg.value
    mem[96] = 0x5e5aae8400000000000000000000000000000000000000000000000000000000
    require ext_code.size(tokenAddress)
    call tokenAddress.mem[var16004 len 4] with:
         gas gas_remaining wei
        args mem[var16004 + 4 len var16005 - 4]
    mem[var16006] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        if not mem[var20002]:
        mem[96] = 0x4000851f00000000000000000000000000000000000000000000000000000000
        require ext_code.size(tokenAddress)
        call tokenAddress.mem[var24004 len 4] with:
             gas gas_remaining wei
            args mem[var24004 + 4 len var24005 - 4]
        mem[var24006] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            _72 = mem[var28002]
            require mem[var28002 + 12 len 20]
            require tokenAddress != mem[var28002 + 12 len 20]
            tokenAddress = mem[var28002 + 12 len 20]
            require ext_code.size(tokenAddress)
            call tokenAddress.0x5e5aae84 with:
                 gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            s = _72
            while ext_call.success:
                require return_data.size >= 32
                if not mem[96]:
                require ext_code.size(tokenAddress)
                call tokenAddress.migratedAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[12 len 20]
                require tokenAddress != ext_call.return_data[12 len 20]
                tokenAddress = address(ext_call.return_data[0])
                require ext_code.size(tokenAddress)
                call tokenAddress.0x5e5aae84 with:
                     gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                s = ext_call.return_data[0]
                continue 
    revert with ext_call.return_data[0 len return_data.size]
}

function sub_f9e76e95(?) {
    require state <= 2
    if state != 2:
        return 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x771282f6 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_c598b3f8Address:
        require sub_8dc06ecb <= eth.balance(this.address)
        if not eth.balance(this.address) - sub_8dc06ecb:
            require ext_call.return_data[0] > 0
            if ext_call.return_data[0]:
                return (0 / ext_call.return_data[0])
        else:
            require (eth.balance(this.address) * 10^ext_call.return_data[31 len 1]) - (sub_8dc06ecb * 10^ext_call.return_data[31 len 1]) / eth.balance(this.address) - sub_8dc06ecb == 10^ext_call.return_data[31 len 1]
            require ext_call.return_data[0] > 0
            if ext_call.return_data[0]:
                return ((eth.balance(this.address) * 10^ext_call.return_data[31 len 1]) - (sub_8dc06ecb * 10^ext_call.return_data[31 len 1]) / ext_call.return_data[0])
    else:
        require ext_code.size(sub_c598b3f8Address)
        call sub_c598b3f8Address.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require sub_8dc06ecb <= ext_call.return_data[0]
        if not ext_call.return_data[0] - sub_8dc06ecb:
            require ext_call.return_data[0] > 0
            if ext_call.return_data[0]:
                return (0 / ext_call.return_data[0])
        else:
            require (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) - (sub_8dc06ecb * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] - sub_8dc06ecb == 10^uint8(ext_call.return_data[0])
            require ext_call.return_data[0] > 0
            if ext_call.return_data[0]:
                return ((ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) - (sub_8dc06ecb * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0])
    ('iszero', ('ext_call.return_data', 0, 32))
    revert
}

function sub_f20c3696(?) payable {
    mem[64] = 96
    require not msg.value
    mem[96] = 0x5e5aae8400000000000000000000000000000000000000000000000000000000
    require ext_code.size(tokenAddress)
    call tokenAddress.mem[var17004 len 4] with:
         gas gas_remaining wei
        args mem[var17004 + 4 len var17005 - 4]
    mem[var17006] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        if not mem[var21002]:
            if owner != msg.sender:
                require msg.sender == tokenAddress
            require state <= 2
            if not state:
                state = 1
        mem[96] = 0x4000851f00000000000000000000000000000000000000000000000000000000
        require ext_code.size(tokenAddress)
        call tokenAddress.mem[var25004 len 4] with:
             gas gas_remaining wei
            args mem[var25004 + 4 len var25005 - 4]
        mem[var25006] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            _72 = mem[var29002]
            require mem[var29002 + 12 len 20]
            require tokenAddress != mem[var29002 + 12 len 20]
            tokenAddress = mem[var29002 + 12 len 20]
            require ext_code.size(tokenAddress)
            call tokenAddress.0x5e5aae84 with:
                 gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            s = _72
            while ext_call.success:
                require return_data.size >= 32
                if not mem[96]:
                    if owner != msg.sender:
                        require msg.sender == tokenAddress
                    require state <= 2
                    if not state:
                        state = 1
                require ext_code.size(tokenAddress)
                call tokenAddress.migratedAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[12 len 20]
                require tokenAddress != ext_call.return_data[12 len 20]
                tokenAddress = address(ext_call.return_data[0])
                require ext_code.size(tokenAddress)
                call tokenAddress.0x5e5aae84 with:
                     gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                s = ext_call.return_data[0]
                continue 
    revert with ext_call.return_data[0 len return_data.size]
}

function sub_481319a6(?) {
    require state <= 2
    if state != 2:
        return 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x771282f6 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_c598b3f8Address:
        require sub_8dc06ecb <= eth.balance(this.address)
        if not eth.balance(this.address) - sub_8dc06ecb:
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            require balances[msg.sender] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]
            return (balances[msg.sender] + (0 / ext_call.return_data[0]))
        require (eth.balance(this.address) * ext_call.return_data[0]) - (sub_8dc06ecb * ext_call.return_data[0]) / eth.balance(this.address) - sub_8dc06ecb == ext_call.return_data[0]
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0]
        require balances[msg.sender] + ((eth.balance(this.address) * ext_call.return_data[0]) - (sub_8dc06ecb * ext_call.return_data[0]) / ext_call.return_data[0]) >= (eth.balance(this.address) * ext_call.return_data[0]) - (sub_8dc06ecb * ext_call.return_data[0]) / ext_call.return_data[0]
        return (balances[msg.sender] + ((eth.balance(this.address) * ext_call.return_data[0]) - (sub_8dc06ecb * ext_call.return_data[0]) / ext_call.return_data[0]))
    require ext_code.size(sub_c598b3f8Address)
    call sub_c598b3f8Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_8dc06ecb <= ext_call.return_data[0]
    if not ext_call.return_data[0] - sub_8dc06ecb:
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0]
        require balances[msg.sender] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]
        return (balances[msg.sender] + (0 / ext_call.return_data[0]))
    require (ext_call.return_data[0] * ext_call.return_data[0]) - (sub_8dc06ecb * ext_call.return_data[0]) / ext_call.return_data[0] - sub_8dc06ecb == ext_call.return_data[0]
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0]
    require balances[msg.sender] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (sub_8dc06ecb * ext_call.return_data[0]) / ext_call.return_data[0]) >= (ext_call.return_data[0] * ext_call.return_data[0]) - (sub_8dc06ecb * ext_call.return_data[0]) / ext_call.return_data[0]
    return (balances[msg.sender] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (sub_8dc06ecb * ext_call.return_data[0]) / ext_call.return_data[0]))
}

function claimRefund() {
    stor4++
    require state <= 2
    if state != 2:
        revert with 0, 'Must in refund state'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Must own token'
    require state <= 2
    require ext_code.size(tokenAddress)
    if state != 2:
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x42966c68 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        balances[msg.sender] = 0
    else:
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        call tokenAddress.0x771282f6 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_c598b3f8Address:
            require sub_8dc06ecb <= eth.balance(this.address)
            if not eth.balance(this.address) - sub_8dc06ecb:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                require balances[msg.sender] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x42966c68 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                balances[msg.sender] = 0
                if balances[msg.sender] + (0 / ext_call.return_data[0]) > 0:
                    require balances[msg.sender] <= sub_8dc06ecb
                    sub_8dc06ecb -= balances[msg.sender]
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_c598b3f8Address:
                        call msg.sender with:
                           value balances[msg.sender] + (0 / ext_call.return_data[0]) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(sub_c598b3f8Address)
                        call sub_c598b3f8Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, balances[msg.sender] + (0 / ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                    require balances[msg.sender] + (0 / ext_call.return_data[0]) + sub_137d3c7b >= sub_137d3c7b
                    sub_137d3c7b = balances[msg.sender] + (0 / ext_call.return_data[0]) + sub_137d3c7b
            else:
                require (eth.balance(this.address) * ext_call.return_data[0]) - (sub_8dc06ecb * ext_call.return_data[0]) / eth.balance(this.address) - sub_8dc06ecb == ext_call.return_data[0]
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                require balances[msg.sender] + ((eth.balance(this.address) * ext_call.return_data[0]) - (sub_8dc06ecb * ext_call.return_data[0]) / ext_call.return_data[0]) >= (eth.balance(this.address) * ext_call.return_data[0]) - (sub_8dc06ecb * ext_call.return_data[0]) / ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x42966c68 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                balances[msg.sender] = 0
                if balances[msg.sender] + ((eth.balance(this.address) * ext_call.return_data[0]) - (sub_8dc06ecb * ext_call.return_data[0]) / ext_call.return_data[0]) > 0:
                    require balances[msg.sender] <= sub_8dc06ecb
                    sub_8dc06ecb -= balances[msg.sender]
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_c598b3f8Address:
                        call msg.sender with:
                           value balances[msg.sender] + ((eth.balance(this.address) * ext_call.return_data[0]) - (sub_8dc06ecb * ext_call.return_data[0]) / ext_call.return_data[0]) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(sub_c598b3f8Address)
                        call sub_c598b3f8Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, balances[msg.sender] + ((eth.balance(this.address) * ext_call.return_data[0]) - (sub_8dc06ecb * ext_call.return_data[0]) / ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                    require balances[msg.sender] + ((eth.balance(this.address) * ext_call.return_data[0]) - (sub_8dc06ecb * ext_call.return_data[0]) / ext_call.return_data[0]) + sub_137d3c7b >= sub_137d3c7b
                    sub_137d3c7b = balances[msg.sender] + ((eth.balance(this.address) * ext_call.return_data[0]) - (sub_8dc06ecb * ext_call.return_data[0]) / ext_call.return_data[0]) + sub_137d3c7b
        else:
            require ext_code.size(sub_c598b3f8Address)
            call sub_c598b3f8Address.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require sub_8dc06ecb <= ext_call.return_data[0]
            if not ext_call.return_data[0] - sub_8dc06ecb:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                require balances[msg.sender] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x42966c68 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                balances[msg.sender] = 0
                if balances[msg.sender] + (0 / ext_call.return_data[0]) > 0:
                    require balances[msg.sender] <= sub_8dc06ecb
                    sub_8dc06ecb -= balances[msg.sender]
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_c598b3f8Address:
                        call msg.sender with:
                           value balances[msg.sender] + (0 / ext_call.return_data[0]) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(sub_c598b3f8Address)
                        call sub_c598b3f8Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, balances[msg.sender] + (0 / ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                    require balances[msg.sender] + (0 / ext_call.return_data[0]) + sub_137d3c7b >= sub_137d3c7b
                    sub_137d3c7b = balances[msg.sender] + (0 / ext_call.return_data[0]) + sub_137d3c7b
            else:
                require (ext_call.return_data[0] * ext_call.return_data[0]) - (sub_8dc06ecb * ext_call.return_data[0]) / ext_call.return_data[0] - sub_8dc06ecb == ext_call.return_data[0]
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                require balances[msg.sender] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (sub_8dc06ecb * ext_call.return_data[0]) / ext_call.return_data[0]) >= (ext_call.return_data[0] * ext_call.return_data[0]) - (sub_8dc06ecb * ext_call.return_data[0]) / ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x42966c68 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                balances[msg.sender] = 0
                if balances[msg.sender] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (sub_8dc06ecb * ext_call.return_data[0]) / ext_call.return_data[0]) > 0:
                    require balances[msg.sender] <= sub_8dc06ecb
                    sub_8dc06ecb -= balances[msg.sender]
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_c598b3f8Address:
                        call msg.sender with:
                           value balances[msg.sender] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (sub_8dc06ecb * ext_call.return_data[0]) / ext_call.return_data[0]) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(sub_c598b3f8Address)
                        call sub_c598b3f8Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, balances[msg.sender] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (sub_8dc06ecb * ext_call.return_data[0]) / ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                    require balances[msg.sender] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (sub_8dc06ecb * ext_call.return_data[0]) / ext_call.return_data[0]) + sub_137d3c7b >= sub_137d3c7b
                    sub_137d3c7b = balances[msg.sender] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (sub_8dc06ecb * ext_call.return_data[0]) / ext_call.return_data[0]) + sub_137d3c7b
    require stor4 + 1 == stor4
}



}
