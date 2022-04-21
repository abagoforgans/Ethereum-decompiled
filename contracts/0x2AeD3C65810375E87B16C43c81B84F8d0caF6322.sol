contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor7; offset 8
address stor8;

function _fallback() {
    stor3 = 419653 * 3600
    stor4 = 420085 * 3600
    stor0 = 0x6a620a92ec2d11a70428b45a795909bd28aeda45
    stor1 = 0x15656715068ab0dbdf0ab00748a8a19e40f28192
    stor5 = 10
    stor6 = 100000000 * 10^18
    stor7 = code.data[8792 len 20]
    stor8 = code.data[8824 len 20]
    return code.data[416 len 8364]
}



// =====================  Runtime code  =====================


address rootAddress;
address payoutAddress;
uint256 sub_f7bb3f3e;
uint256 startTime;
uint256 endTime;
uint256 baseCost;
uint256 limit;
uint8 stor7;
address balancesAddress; offset 8
address pricesAddress;
mapping of uint8 stor9;
mapping of uint8 stor10;

function endTime() {
    return endTime
}

function admins(address arg1) {
    return bool(stor9[arg1])
}

function payout() {
    return payoutAddress
}

function startTime() {
    return startTime
}

function balances() {
    return balancesAddress
}

function isFinalized() {
    return bool(stor7)
}

function baseCost() {
    return baseCost
}

function sub_980883d0(?) {
    return bool(stor10[arg1][arg2])
}

function limit() {
    return limit
}

function prices() {
    return pricesAddress
}

function root() {
    return rootAddress
}

function sub_f7bb3f3e(?) {
    return sub_f7bb3f3e
}

function kill() {
    require rootAddress == msg.sender
    selfdestruct(payoutAddress)
}

function transferRoot(address arg1) {
    require rootAddress == msg.sender
    rootAddress = arg1
}

function setAdmin(address arg1, bool arg2) {
    require rootAddress == msg.sender
    stor9[address(arg1)] = uint8(arg2)
}

function sub_486581ea(?) {
    require rootAddress == msg.sender
    call payoutAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function finalize() {
    require rootAddress == msg.sender
    require block.timestamp > endTime
    stor7 = 1
    call payoutAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function estimateTokens(uint256 arg1) {
    require baseCost
    idx = 10000
    s = 0
    while arg1 / 10^18 > idx:
        idx = 10 * idx
        s = s + 1
        continue 
    if s <= 0:
        return (arg1 / baseCost)
    return ((arg1 / baseCost) + (5 * arg1 / baseCost * s / 100))
}

function _fallback() payable {
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require ext_code.size(pricesAddress)
    call pricesAddress.getPrice() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require baseCost
    idx = 10000
    s = 0
    while msg.value * ext_call.return_data[0] / 10^18 / 10^18 > idx:
        idx = 10 * idx
        s = s + 1
        continue 
    require ext_code.size(balancesAddress)
    call balancesAddress.0xc4e41b22 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if s <= 0:
        require (msg.value * ext_call.return_data[0] / 10^18 / baseCost) + ext_call.return_data[0] <= limit
        require ext_code.size(balancesAddress)
        call balancesAddress.0x66e7ea0f with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value * ext_call.return_data[0] / 10^18 / baseCost
        require ext_call.success
        require ext_code.size(balancesAddress)
        call balancesAddress.0xecfc5964 with:
             gas gas_remaining - 710 wei
            args (msg.value * ext_call.return_data[0] / 10^18 / baseCost)
        require ext_call.success
        if not stor10[stor1][address(msg.sender)]:
            if msg.value * ext_call.return_data[0] / 10^18 / baseCost > 200 * 10^18:
                if payoutAddress != payoutAddress:
                    require ext_code.size(balancesAddress)
                    call balancesAddress.0x66e7ea0f with:
                         gas gas_remaining - 710 wei
                        args payoutAddress, 100 * 10^18
                    require ext_call.success
                    require ext_code.size(balancesAddress)
                    call balancesAddress.0xecfc5964 with:
                         gas gas_remaining - 710 wei
                        args 100 * 10^18
                    require ext_call.success
        emit 0xc4b201a5: ext_call.return_data[0], msg.value * ext_call.return_data[0] / 10^18 / baseCost, ext_call.return_data[0] / 10^18, 4, 'mint', msg.sender
    else:
        require (msg.value * ext_call.return_data[0] / 10^18 / baseCost) + (5 * msg.value * ext_call.return_data[0] / 10^18 / baseCost * s / 100) + ext_call.return_data[0] <= limit
        require ext_code.size(balancesAddress)
        call balancesAddress.0x66e7ea0f with:
             gas gas_remaining - 710 wei
            args msg.sender, (msg.value * ext_call.return_data[0] / 10^18 / baseCost) + (5 * msg.value * ext_call.return_data[0] / 10^18 / baseCost * s / 100)
        require ext_call.success
        require ext_code.size(balancesAddress)
        call balancesAddress.0xecfc5964 with:
             gas gas_remaining - 710 wei
            args ((msg.value * ext_call.return_data[0] / 10^18 / baseCost) + (5 * msg.value * ext_call.return_data[0] / 10^18 / baseCost * s / 100))
        require ext_call.success
        if not stor10[stor1][address(msg.sender)]:
            if (msg.value * ext_call.return_data[0] / 10^18 / baseCost) + (5 * msg.value * ext_call.return_data[0] / 10^18 / baseCost * s / 100) > 200 * 10^18:
                if payoutAddress != payoutAddress:
                    require ext_code.size(balancesAddress)
                    call balancesAddress.0x66e7ea0f with:
                         gas gas_remaining - 710 wei
                        args payoutAddress, 100 * 10^18
                    require ext_call.success
                    require ext_code.size(balancesAddress)
                    call balancesAddress.0xecfc5964 with:
                         gas gas_remaining - 710 wei
                        args 100 * 10^18
                    require ext_call.success
        emit 0xc4b201a5: ext_call.return_data[0], (msg.value * ext_call.return_data[0] / 10^18 / baseCost) + (5 * msg.value * ext_call.return_data[0] / 10^18 / baseCost * s / 100), ext_call.return_data[0] / 10^18, 4, 'mint', msg.sender
}

function createTokens(address arg1) payable {
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require ext_code.size(pricesAddress)
    call pricesAddress.getPrice() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require baseCost
    idx = 10000
    s = 0
    while msg.value * ext_call.return_data[0] / 10^18 / 10^18 > idx:
        idx = 10 * idx
        s = s + 1
        continue 
    require ext_code.size(balancesAddress)
    call balancesAddress.0xc4e41b22 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if s <= 0:
        require (msg.value * ext_call.return_data[0] / 10^18 / baseCost) + ext_call.return_data[0] <= limit
        require ext_code.size(balancesAddress)
        call balancesAddress.0x66e7ea0f with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value * ext_call.return_data[0] / 10^18 / baseCost
        require ext_call.success
        require ext_code.size(balancesAddress)
        call balancesAddress.0xecfc5964 with:
             gas gas_remaining - 710 wei
            args (msg.value * ext_call.return_data[0] / 10^18 / baseCost)
        require ext_call.success
        if not stor10[address(arg1)][address(msg.sender)]:
            if msg.value * ext_call.return_data[0] / 10^18 / baseCost > 200 * 10^18:
                if arg1 != payoutAddress:
                    require ext_code.size(balancesAddress)
                    call balancesAddress.0x66e7ea0f with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 100 * 10^18
                    require ext_call.success
                    require ext_code.size(balancesAddress)
                    call balancesAddress.0xecfc5964 with:
                         gas gas_remaining - 710 wei
                        args 100 * 10^18
                    require ext_call.success
        emit 0xc4b201a5: ext_call.return_data[0], msg.value * ext_call.return_data[0] / 10^18 / baseCost, ext_call.return_data[0] / 10^18, 4, 'mint', msg.sender
    else:
        require (msg.value * ext_call.return_data[0] / 10^18 / baseCost) + (5 * msg.value * ext_call.return_data[0] / 10^18 / baseCost * s / 100) + ext_call.return_data[0] <= limit
        require ext_code.size(balancesAddress)
        call balancesAddress.0x66e7ea0f with:
             gas gas_remaining - 710 wei
            args msg.sender, (msg.value * ext_call.return_data[0] / 10^18 / baseCost) + (5 * msg.value * ext_call.return_data[0] / 10^18 / baseCost * s / 100)
        require ext_call.success
        require ext_code.size(balancesAddress)
        call balancesAddress.0xecfc5964 with:
             gas gas_remaining - 710 wei
            args ((msg.value * ext_call.return_data[0] / 10^18 / baseCost) + (5 * msg.value * ext_call.return_data[0] / 10^18 / baseCost * s / 100))
        require ext_call.success
        if not stor10[address(arg1)][address(msg.sender)]:
            if (msg.value * ext_call.return_data[0] / 10^18 / baseCost) + (5 * msg.value * ext_call.return_data[0] / 10^18 / baseCost * s / 100) > 200 * 10^18:
                if arg1 != payoutAddress:
                    require ext_code.size(balancesAddress)
                    call balancesAddress.0x66e7ea0f with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 100 * 10^18
                    require ext_call.success
                    require ext_code.size(balancesAddress)
                    call balancesAddress.0xecfc5964 with:
                         gas gas_remaining - 710 wei
                        args 100 * 10^18
                    require ext_call.success
        emit 0xc4b201a5: ext_call.return_data[0], (msg.value * ext_call.return_data[0] / 10^18 / baseCost) + (5 * msg.value * ext_call.return_data[0] / 10^18 / baseCost * s / 100), ext_call.return_data[0] / 10^18, 4, 'mint', msg.sender
    return 1
}

function sub_32f9b7cf(?) payable {
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require ext_code.size(pricesAddress)
    call pricesAddress.getPrice() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require baseCost
    idx = 10000
    s = 0
    while msg.value * ext_call.return_data[0] / 10^18 / 10^18 > idx:
        idx = 10 * idx
        s = s + 1
        continue 
    require ext_code.size(balancesAddress)
    call balancesAddress.0xc4e41b22 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if s <= 0:
        require (msg.value * ext_call.return_data[0] / 10^18 / baseCost) + ext_call.return_data[0] <= limit
        require ext_code.size(balancesAddress)
        call balancesAddress.0x66e7ea0f with:
             gas gas_remaining - 710 wei
            args address(arg2), msg.value * ext_call.return_data[0] / 10^18 / baseCost
        require ext_call.success
        require ext_code.size(balancesAddress)
        call balancesAddress.0xecfc5964 with:
             gas gas_remaining - 710 wei
            args (msg.value * ext_call.return_data[0] / 10^18 / baseCost)
        require ext_call.success
        if msg.value * ext_call.return_data[0] / 10^18 / baseCost > 10^18:
            require ext_code.size(balancesAddress)
            call balancesAddress.0x66e7ea0f with:
                 gas gas_remaining - 710 wei
                args address(arg1), 5 * msg.value * ext_call.return_data[0] / 10^18 / baseCost / 100
            require ext_call.success
            require ext_code.size(balancesAddress)
            call balancesAddress.0xecfc5964 with:
                 gas gas_remaining - 710 wei
                args (5 * msg.value * ext_call.return_data[0] / 10^18 / baseCost / 100)
            require ext_call.success
            emit 0xc4b201a5: ext_call.return_data[0], msg.value * ext_call.return_data[0] / 10^18 / baseCost, ext_call.return_data[0] / 10^18, 14, 'mint-affiliate', arg1
        emit 0xc4b201a5: ext_call.return_data[0], msg.value * ext_call.return_data[0] / 10^18 / baseCost, ext_call.return_data[0] / 10^18, 4, 'mint', arg2
    else:
        require (msg.value * ext_call.return_data[0] / 10^18 / baseCost) + (5 * msg.value * ext_call.return_data[0] / 10^18 / baseCost * s / 100) + ext_call.return_data[0] <= limit
        require ext_code.size(balancesAddress)
        call balancesAddress.0x66e7ea0f with:
             gas gas_remaining - 710 wei
            args address(arg2), (msg.value * ext_call.return_data[0] / 10^18 / baseCost) + (5 * msg.value * ext_call.return_data[0] / 10^18 / baseCost * s / 100)
        require ext_call.success
        require ext_code.size(balancesAddress)
        call balancesAddress.0xecfc5964 with:
             gas gas_remaining - 710 wei
            args ((msg.value * ext_call.return_data[0] / 10^18 / baseCost) + (5 * msg.value * ext_call.return_data[0] / 10^18 / baseCost * s / 100))
        require ext_call.success
        if (msg.value * ext_call.return_data[0] / 10^18 / baseCost) + (5 * msg.value * ext_call.return_data[0] / 10^18 / baseCost * s / 100) > 10^18:
            require ext_code.size(balancesAddress)
            call balancesAddress.0x66e7ea0f with:
                 gas gas_remaining - 710 wei
                args address(arg1), (5 * msg.value * ext_call.return_data[0] / 10^18 / baseCost) + (5 * 5 * msg.value * ext_call.return_data[0] / 10^18 / baseCost * s / 100) / 100
            require ext_call.success
            require ext_code.size(balancesAddress)
            call balancesAddress.0xecfc5964 with:
                 gas gas_remaining - 710 wei
                args ((5 * msg.value * ext_call.return_data[0] / 10^18 / baseCost) + (5 * 5 * msg.value * ext_call.return_data[0] / 10^18 / baseCost * s / 100) / 100)
            require ext_call.success
            emit 0xc4b201a5: ext_call.return_data[0], (msg.value * ext_call.return_data[0] / 10^18 / baseCost) + (5 * msg.value * ext_call.return_data[0] / 10^18 / baseCost * s / 100), ext_call.return_data[0] / 10^18, 14, 'mint-affiliate', arg1
        emit 0xc4b201a5: ext_call.return_data[0], (msg.value * ext_call.return_data[0] / 10^18 / baseCost) + (5 * msg.value * ext_call.return_data[0] / 10^18 / baseCost * s / 100), ext_call.return_data[0] / 10^18, 4, 'mint', arg2
    return 1
}

function sub_ad939793(?) payable {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    if rootAddress != msg.sender:
        require bool(stor9[address(msg.sender)]) == 1
    require baseCost
    idx = 10000
    s = 0
    while 10^18 * arg5 / 10^18 > idx:
        idx = 10 * idx
        s = s + 1
        continue 
    require ext_code.size(balancesAddress)
    call balancesAddress.0xc4e41b22 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if s <= 0:
        require (10^18 * arg5 / baseCost) + ext_call.return_data[0] <= limit
        require ext_code.size(balancesAddress)
        call balancesAddress.0x66e7ea0f with:
             gas gas_remaining - 710 wei
            args address(arg2), 10^18 * arg5 / baseCost
        require ext_call.success
        require ext_code.size(balancesAddress)
        call balancesAddress.0xecfc5964 with:
             gas gas_remaining - 710 wei
            args (10^18 * arg5 / baseCost)
        require ext_call.success
        if not stor10[address(arg1)][address(arg2)]:
            if 10^18 * arg5 / baseCost > 200 * 10^18:
                require ext_code.size(balancesAddress)
                call balancesAddress.0x66e7ea0f with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 100 * 10^18
                require ext_call.success
                require ext_code.size(balancesAddress)
                call balancesAddress.0xecfc5964 with:
                     gas gas_remaining - 710 wei
                    args 100 * 10^18
                require ext_call.success
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = 160
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 416 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 416] = arg4.length
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 448 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                emit 0xa973af36: 160, 224, arg3.length + 256, 10^18 * arg5, 10^18 * arg5 / baseCost, 5, 'admin', arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 416 len arg4.length + arg3.length + -ceil32(arg3.length) + 32], arg2
            else:
                mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 448] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 480 len arg4.length % 32]
                emit 0xa973af36: 160, 224, arg3.length + 256, 10^18 * arg5, 10^18 * arg5 / baseCost, 5, 'admin', arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 416 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64], arg2
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 416] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 448 len arg3.length % 32]
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448] = arg4.length
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                emit 0xa973af36: 160, 224, floor32(arg3.length) + 288, 10^18 * arg5, 10^18 * arg5 / baseCost, 5, 'admin', arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 416 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64], arg2
            else:
                mem[floor32(arg4.length) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = mem[floor32(arg4.length) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 512 len arg4.length % 32]
                emit 0xa973af36: 160, 224, floor32(arg3.length) + 288, 10^18 * arg5, 10^18 * arg5 / baseCost, 5, 'admin', arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 416 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96], arg2
    else:
        require (10^18 * arg5 / baseCost) + (5 * 10^18 * arg5 / baseCost * s / 100) + ext_call.return_data[0] <= limit
        require ext_code.size(balancesAddress)
        call balancesAddress.0x66e7ea0f with:
             gas gas_remaining - 710 wei
            args address(arg2), (10^18 * arg5 / baseCost) + (5 * 10^18 * arg5 / baseCost * s / 100)
        require ext_call.success
        require ext_code.size(balancesAddress)
        call balancesAddress.0xecfc5964 with:
             gas gas_remaining - 710 wei
            args ((10^18 * arg5 / baseCost) + (5 * 10^18 * arg5 / baseCost * s / 100))
        require ext_call.success
        if not stor10[address(arg1)][address(arg2)]:
            if (10^18 * arg5 / baseCost) + (5 * 10^18 * arg5 / baseCost * s / 100) > 200 * 10^18:
                require ext_code.size(balancesAddress)
                call balancesAddress.0x66e7ea0f with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 100 * 10^18
                require ext_call.success
                require ext_code.size(balancesAddress)
                call balancesAddress.0xecfc5964 with:
                     gas gas_remaining - 710 wei
                    args 100 * 10^18
                require ext_call.success
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = 160
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 416 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 416] = arg4.length
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 448 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                emit 0xa973af36: 160, 224, arg3.length + 256, 10^18 * arg5, (10^18 * arg5 / baseCost) + (5 * 10^18 * arg5 / baseCost * s / 100), 5, 'admin', arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 416 len arg4.length + arg3.length + -ceil32(arg3.length) + 32], arg2
            else:
                mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 448] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 480 len arg4.length % 32]
                emit 0xa973af36: 160, 224, arg3.length + 256, 10^18 * arg5, (10^18 * arg5 / baseCost) + (5 * 10^18 * arg5 / baseCost * s / 100), 5, 'admin', arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 416 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64], arg2
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 416] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 448 len arg3.length % 32]
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448] = arg4.length
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                emit 0xa973af36: 160, 224, floor32(arg3.length) + 288, 10^18 * arg5, (10^18 * arg5 / baseCost) + (5 * 10^18 * arg5 / baseCost * s / 100), 5, 'admin', arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 416 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64], arg2
            else:
                mem[floor32(arg4.length) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = mem[floor32(arg4.length) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 512 len arg4.length % 32]
                emit 0xa973af36: 160, 224, floor32(arg3.length) + 288, 10^18 * arg5, (10^18 * arg5 / baseCost) + (5 * 10^18 * arg5 / baseCost * s / 100), 5, 'admin', arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 416 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96], arg2
    return 1
}



}
