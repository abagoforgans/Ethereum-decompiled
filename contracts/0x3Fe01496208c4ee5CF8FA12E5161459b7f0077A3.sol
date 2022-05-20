contract main {




// =====================  Runtime code  =====================


const name = 'Test main net sale token'

const decimals = 2

const symbol = 'SABCXYZ'

const MAX_TRANSFER = 2

const AML_THRESHOLD = 16500000


mapping of uint256 balanceOf;
uint256 totalSupply;
uint256 startTime;
uint256 endTime;
address stor4;
mapping of uint8 stor5;
array of address stor6;
uint256 noBonusTokenRecipients;
uint256 totalBonusToken;
mapping of uint8 stor9;
uint256 transferredIndex;
uint8 stor11;
uint256 totalCapInWei;
uint256 rate;
uint8 stor14;
array of address sub_86697527;
mapping of uint8 stor16;
mapping of struct sub_a5f6f054;

function isReachCapped() {
    return bool(stor11)
}

function getCapInWei() {
    return totalCapInWei
}

function totalSupply() {
    return totalSupply
}

function transferredIndex() {
    return transferredIndex
}

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function isStopped() {
    return bool(stor14)
}

function isCapped() {
    return bool(stor11)
}

function getRate() {
    return rate
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function startTime() {
    return startTime
}

function noBonusTokenRecipients() {
    return noBonusTokenRecipients
}

function sub_86697527(?) {
    require arg1 < sub_86697527.length
    return sub_86697527[arg1]
}

function whitelist(address arg1) {
    return bool(stor16[arg1])
}

function totalBonusToken() {
    return totalBonusToken
}

function sub_a5f6f054(?) {
    return sub_a5f6f054[arg1].field_0
}

function totalCapInWei() {
    return totalCapInWei
}

function getNoInvestor() {
    return sub_86697527.length
}

function _fallback() payable {
    revert
}

function sub_dfd19762(?) {
    require rate
    return (arg1 / rate)
}

function owner() {
    require ext_code.size(stor4)
    call stor4.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_cf3f252d(?) {
    require ext_code.size(stor4)
    call stor4.0xb8248dff with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    stor5[address(arg1)] = 0
}

function setStop() {
    require ext_code.size(stor4)
    call stor4.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require 1 == bool(stor5[address(msg.sender)])
    stor14 = 1
}

function setReachCapped() {
    require ext_code.size(stor4)
    call stor4.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require 1 == bool(stor5[address(msg.sender)])
    stor11 = 1
}

function setRate(uint256 arg1) {
    require ext_code.size(stor4)
    call stor4.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require 1 == bool(stor5[address(msg.sender)])
    rate = arg1
}

function isValidOwner(address arg1) {
    require ext_code.size(stor4)
    call stor4.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 != ext_call.return_data[12 len 20]:
        if bool(stor5[address(arg1)]) != 1:
            return 0
    return 1
}

function sub_563a4024(?) {
    require ext_code.size(stor4)
    call stor4.0xb8248dff with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    stor5[address(arg1)] = 1
    stor6.length++
    stor6[stor6.length] = arg1
}

function claim() {
    require block.timestamp >= endTime
    require balanceOf[address(msg.sender)] > 0
    balanceOf[address(msg.sender)] = 0
    require ext_code.size(stor4)
    call stor4.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, balanceOf[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function removeAddressFromWhitelist(address arg1) {
    require ext_code.size(stor4)
    call stor4.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require 1 == bool(stor5[address(msg.sender)])
    if not stor16[address(arg1)]:
        return 0
    stor16[address(arg1)] = 0
    return 1
}

function getUnsoldToken() {
    require ext_code.size(stor4)
    call stor4.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[0] = ext_call.return_data[12 len 20]
    mem[32] = 0
    idx = 0
    s = stor[sha3(mem[0 len 64])]
    while idx < stor6.length:
        mem[0] = stor6[idx]
        mem[32] = 0
        require balanceOf[stor6[idx]] + s >= s
        idx = idx + 1
        s = balanceOf[stor6[idx]] + s
        continue 
    return (stor[sha3(mem[0 len 64])] + (stor[_13] * stor6.length))
}

function sub_45deb696(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require ext_code.size(stor4)
    call stor4.0xb8248dff with:
         gas gas_remaining wei
        args msg.sender
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        stor5[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function getDistributedToken() {
    require ext_code.size(stor4)
    call stor4.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[0] = ext_call.return_data[12 len 20]
    mem[32] = 0
    idx = 0
    s = stor[sha3(mem[0 len 64])]
    while idx < stor6.length:
        mem[0] = stor6[idx]
        mem[32] = 0
        require balanceOf[stor6[idx]] + s >= s
        idx = idx + 1
        s = balanceOf[stor6[idx]] + s
        continue 
    if stor[sha3(mem[0 len 64])] + (stor[_11] * stor6.length) <= totalSupply:
        return (totalSupply - stor[sha3(mem[0 len 64])] - (stor[_11] * stor6.length))
    revert
}

function sub_4a1af1b5(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require ext_code.size(stor4)
    call stor4.0xb8248dff with:
         gas gas_remaining wei
        args msg.sender
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[32] = 5
        stor5[mem[(32 * idx) + 140 len 20]] = 1
        require idx < arg1.length
        stor6.length++
        mem[0] = 6
        stor6[stor6.length] = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
}

function removeAddressesFromWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require ext_code.size(stor4)
    call stor4.0x8da5cb5b with:
         gas gas_remaining wei
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.sender == ext_call.return_data[12 len 20]:
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < arg1.length
            _39 = mem[(32 * idx) + 128]
            require ext_code.size(stor4)
            call stor4.0x8da5cb5b with:
                 gas gas_remaining wei
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                require 1 == bool(stor5[address(msg.sender)])
            mem[0] = address(_39)
            mem[32] = 16
            if not stor16[address(_39)]:
                idx = idx + 1
                s = s
                continue 
            mem[0] = address(_39)
            mem[32] = 16
            stor16[address(_39)] = 0
            idx = idx + 1
            s = 1
            continue 
    else:
        require 1 == bool(stor5[address(msg.sender)])
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < arg1.length
            _42 = mem[(32 * idx) + 128]
            require ext_code.size(stor4)
            call stor4.0x8da5cb5b with:
                 gas gas_remaining wei
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                require 1 == bool(stor5[address(msg.sender)])
            mem[0] = address(_42)
            mem[32] = 16
            if not stor16[address(_42)]:
                idx = idx + 1
                s = s
                continue 
            mem[0] = address(_42)
            mem[32] = 16
            stor16[address(_42)] = 0
            idx = idx + 1
            s = 1
            continue 
    return bool(s)
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(stor4)
    call stor4.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 == ext_call.return_data[12 len 20]:
        if stor14:
            require arg1
            require arg2 <= balanceOf[address(msg.sender)]
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require arg2 + balanceOf[arg1] >= balanceOf[arg1]
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if stor16[address(arg1)]:
                require arg1
                require arg2 <= balanceOf[address(msg.sender)]
                require arg2 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2
                require arg2 + balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if arg2 + balanceOf[address(arg1)] > 16500000:
                    require arg2 + sub_a5f6f054[address(arg1)].field_0 >= sub_a5f6f054[address(arg1)].field_0
                    sub_a5f6f054[address(arg1)].field_0 += arg2
                else:
                    require arg1
                    require arg2 <= balanceOf[address(msg.sender)]
                    require arg2 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= arg2
                    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                    emit Transfer(arg2, msg.sender, arg1);
    else:
        if 1 == bool(stor5[address(arg1)]):
            if stor14:
                require arg1
                require arg2 <= balanceOf[address(msg.sender)]
                require arg2 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2
                require arg2 + balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if stor16[address(arg1)]:
                    require arg1
                    require arg2 <= balanceOf[address(msg.sender)]
                    require arg2 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= arg2
                    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if arg2 + balanceOf[address(arg1)] > 16500000:
                        require arg2 + sub_a5f6f054[address(arg1)].field_0 >= sub_a5f6f054[address(arg1)].field_0
                        sub_a5f6f054[address(arg1)].field_0 += arg2
                    else:
                        require arg1
                        require arg2 <= balanceOf[address(msg.sender)]
                        require arg2 <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] -= arg2
                        require arg2 + balanceOf[arg1] >= balanceOf[arg1]
                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                        emit Transfer(arg2, msg.sender, arg1);
        else:
            if stor14:
                require arg1
                require arg2 <= balanceOf[address(msg.sender)]
                require arg2 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2
                require arg2 + balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                emit Transfer(arg2, msg.sender, arg1);
                if balanceOf[address(arg1)] <= 0:
                    sub_86697527.length++
                    sub_86697527[sub_86697527.length] = arg1
            else:
                if stor16[address(arg1)]:
                    require arg1
                    require arg2 <= balanceOf[address(msg.sender)]
                    require arg2 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= arg2
                    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                    emit Transfer(arg2, msg.sender, arg1);
                    if balanceOf[address(arg1)] <= 0:
                        sub_86697527.length++
                        sub_86697527[sub_86697527.length] = arg1
                else:
                    if arg2 + balanceOf[address(arg1)] > 16500000:
                        require arg2 + sub_a5f6f054[address(arg1)].field_0 >= sub_a5f6f054[address(arg1)].field_0
                        sub_a5f6f054[address(arg1)].field_0 += arg2
                    else:
                        require arg1
                        require arg2 <= balanceOf[address(msg.sender)]
                        require arg2 <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] -= arg2
                        require arg2 + balanceOf[arg1] >= balanceOf[arg1]
                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                        emit Transfer(arg2, msg.sender, arg1);
                        if balanceOf[address(arg1)] <= 0:
                            sub_86697527.length++
                            sub_86697527[sub_86697527.length] = arg1
    return 1
}

function sub_7e190ab9(?) {
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require ext_code.size(stor4)
    call stor4.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        if bool(stor5[address(msg.sender)]) != 1:
            require ext_code.size(stor4)
            call stor4.0x8da5cb5b with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(msg.sender)
            call msg.sender.0x8da5cb5b with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[12 len 20] == address(ext_call.return_data[0])
    require ext_code.size(stor4)
    call stor4.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 == ext_call.return_data[12 len 20]:
        if stor14:
            require arg1
            require arg3 <= balanceOf[address(msg.sender)]
            require arg3 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg3
            require arg3 + balanceOf[arg1] >= balanceOf[arg1]
            balanceOf[address(arg1)] = arg3 + balanceOf[arg1]
            emit Transfer(arg3, msg.sender, arg1);
        else:
            if stor16[address(arg1)]:
                require arg1
                require arg3 <= balanceOf[address(msg.sender)]
                require arg3 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg3
                require arg3 + balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = arg3 + balanceOf[arg1]
                emit Transfer(arg3, msg.sender, arg1);
            else:
                if arg3 + balanceOf[address(arg1)] > 16500000:
                    require arg3 + sub_a5f6f054[address(arg1)].field_0 >= sub_a5f6f054[address(arg1)].field_0
                    sub_a5f6f054[address(arg1)].field_0 += arg3
                else:
                    require arg1
                    require arg3 <= balanceOf[address(msg.sender)]
                    require arg3 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= arg3
                    require arg3 + balanceOf[arg1] >= balanceOf[arg1]
                    balanceOf[address(arg1)] = arg3 + balanceOf[arg1]
                    emit Transfer(arg3, msg.sender, arg1);
    else:
        if 1 == bool(stor5[address(arg1)]):
            if stor14:
                require arg1
                require arg3 <= balanceOf[address(msg.sender)]
                require arg3 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg3
                require arg3 + balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = arg3 + balanceOf[arg1]
                emit Transfer(arg3, msg.sender, arg1);
            else:
                if stor16[address(arg1)]:
                    require arg1
                    require arg3 <= balanceOf[address(msg.sender)]
                    require arg3 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= arg3
                    require arg3 + balanceOf[arg1] >= balanceOf[arg1]
                    balanceOf[address(arg1)] = arg3 + balanceOf[arg1]
                    emit Transfer(arg3, msg.sender, arg1);
                else:
                    if arg3 + balanceOf[address(arg1)] > 16500000:
                        require arg3 + sub_a5f6f054[address(arg1)].field_0 >= sub_a5f6f054[address(arg1)].field_0
                        sub_a5f6f054[address(arg1)].field_0 += arg3
                    else:
                        require arg1
                        require arg3 <= balanceOf[address(msg.sender)]
                        require arg3 <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] -= arg3
                        require arg3 + balanceOf[arg1] >= balanceOf[arg1]
                        balanceOf[address(arg1)] = arg3 + balanceOf[arg1]
                        emit Transfer(arg3, msg.sender, arg1);
        else:
            if stor14:
                require arg1
                require arg3 <= balanceOf[address(msg.sender)]
                require arg3 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg3
                require arg3 + balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = arg3 + balanceOf[arg1]
                emit Transfer(arg3, msg.sender, arg1);
                if balanceOf[address(arg1)] <= 0:
                    sub_86697527.length++
                    sub_86697527[sub_86697527.length] = arg1
            else:
                if stor16[address(arg1)]:
                    require arg1
                    require arg3 <= balanceOf[address(msg.sender)]
                    require arg3 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= arg3
                    require arg3 + balanceOf[arg1] >= balanceOf[arg1]
                    balanceOf[address(arg1)] = arg3 + balanceOf[arg1]
                    emit Transfer(arg3, msg.sender, arg1);
                    if balanceOf[address(arg1)] <= 0:
                        sub_86697527.length++
                        sub_86697527[sub_86697527.length] = arg1
                else:
                    if arg3 + balanceOf[address(arg1)] > 16500000:
                        require arg3 + sub_a5f6f054[address(arg1)].field_0 >= sub_a5f6f054[address(arg1)].field_0
                        sub_a5f6f054[address(arg1)].field_0 += arg3
                    else:
                        require arg1
                        require arg3 <= balanceOf[address(msg.sender)]
                        require arg3 <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] -= arg3
                        require arg3 + balanceOf[arg1] >= balanceOf[arg1]
                        balanceOf[address(arg1)] = arg3 + balanceOf[arg1]
                        emit Transfer(arg3, msg.sender, arg1);
                        if balanceOf[address(arg1)] <= 0:
                            sub_86697527.length++
                            sub_86697527[sub_86697527.length] = arg1
    require arg2 + totalCapInWei >= totalCapInWei
    totalCapInWei += arg2
    return 1
}

function addAddressToWhitelist(address arg1) {
    require ext_code.size(stor4)
    call stor4.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require 1 == bool(stor5[address(msg.sender)])
    if stor16[address(arg1)]:
        return 0
    stor16[address(arg1)] = 1
    if sub_a5f6f054[address(arg1)].field_0 > 0:
        sub_a5f6f054[address(arg1)].field_0 = 0
        require ext_code.size(stor4)
        call stor4.0x8da5cb5b with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 == ext_call.return_data[12 len 20]:
            if stor14:
                require arg1
                require sub_a5f6f054[address(arg1)].field_0 <= balanceOf[address(msg.sender)]
                require sub_a5f6f054[address(arg1)].field_0 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= sub_a5f6f054[address(arg1)].field_0
                require sub_a5f6f054[address(arg1)].field_0 + balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = sub_a5f6f054[address(arg1)].field_0 + balanceOf[arg1]
                emit Transfer(sub_a5f6f054[address(arg1)].field_0, msg.sender, arg1);
            else:
                if stor16[address(arg1)]:
                    require arg1
                    require sub_a5f6f054[address(arg1)].field_0 <= balanceOf[address(msg.sender)]
                    require sub_a5f6f054[address(arg1)].field_0 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= sub_a5f6f054[address(arg1)].field_0
                    require sub_a5f6f054[address(arg1)].field_0 + balanceOf[arg1] >= balanceOf[arg1]
                    balanceOf[address(arg1)] = sub_a5f6f054[address(arg1)].field_0 + balanceOf[arg1]
                    emit Transfer(sub_a5f6f054[address(arg1)].field_0, msg.sender, arg1);
                else:
                    if sub_a5f6f054[address(arg1)].field_0 + balanceOf[address(arg1)] > 16500000:
                        require 2 * sub_a5f6f054[address(arg1)].field_0 >= sub_a5f6f054[address(arg1)].field_0
                        bool(sub_a5f6f054[address(arg1)].field_0) = 0
                        uint255(sub_a5f6f054[address(arg1)].field_1) = uint255(sub_a5f6f054[address(arg1)].field_0)
                    else:
                        require arg1
                        require sub_a5f6f054[address(arg1)].field_0 <= balanceOf[address(msg.sender)]
                        require sub_a5f6f054[address(arg1)].field_0 <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] -= sub_a5f6f054[address(arg1)].field_0
                        require sub_a5f6f054[address(arg1)].field_0 + balanceOf[arg1] >= balanceOf[arg1]
                        balanceOf[address(arg1)] = sub_a5f6f054[address(arg1)].field_0 + balanceOf[arg1]
                        emit Transfer(sub_a5f6f054[address(arg1)].field_0, msg.sender, arg1);
        else:
            if 1 == bool(stor5[address(arg1)]):
                if stor14:
                    require arg1
                    require sub_a5f6f054[address(arg1)].field_0 <= balanceOf[address(msg.sender)]
                    require sub_a5f6f054[address(arg1)].field_0 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= sub_a5f6f054[address(arg1)].field_0
                    require sub_a5f6f054[address(arg1)].field_0 + balanceOf[arg1] >= balanceOf[arg1]
                    balanceOf[address(arg1)] = sub_a5f6f054[address(arg1)].field_0 + balanceOf[arg1]
                    emit Transfer(sub_a5f6f054[address(arg1)].field_0, msg.sender, arg1);
                else:
                    if stor16[address(arg1)]:
                        require arg1
                        require sub_a5f6f054[address(arg1)].field_0 <= balanceOf[address(msg.sender)]
                        require sub_a5f6f054[address(arg1)].field_0 <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] -= sub_a5f6f054[address(arg1)].field_0
                        require sub_a5f6f054[address(arg1)].field_0 + balanceOf[arg1] >= balanceOf[arg1]
                        balanceOf[address(arg1)] = sub_a5f6f054[address(arg1)].field_0 + balanceOf[arg1]
                        emit Transfer(sub_a5f6f054[address(arg1)].field_0, msg.sender, arg1);
                    else:
                        if sub_a5f6f054[address(arg1)].field_0 + balanceOf[address(arg1)] > 16500000:
                            require 2 * sub_a5f6f054[address(arg1)].field_0 >= sub_a5f6f054[address(arg1)].field_0
                            bool(sub_a5f6f054[address(arg1)].field_0) = 0
                            uint255(sub_a5f6f054[address(arg1)].field_1) = uint255(sub_a5f6f054[address(arg1)].field_0)
                        else:
                            require arg1
                            require sub_a5f6f054[address(arg1)].field_0 <= balanceOf[address(msg.sender)]
                            require sub_a5f6f054[address(arg1)].field_0 <= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] -= sub_a5f6f054[address(arg1)].field_0
                            require sub_a5f6f054[address(arg1)].field_0 + balanceOf[arg1] >= balanceOf[arg1]
                            balanceOf[address(arg1)] = sub_a5f6f054[address(arg1)].field_0 + balanceOf[arg1]
                            emit Transfer(sub_a5f6f054[address(arg1)].field_0, msg.sender, arg1);
            else:
                if stor14:
                    require arg1
                    require sub_a5f6f054[address(arg1)].field_0 <= balanceOf[address(msg.sender)]
                    require sub_a5f6f054[address(arg1)].field_0 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= sub_a5f6f054[address(arg1)].field_0
                    require sub_a5f6f054[address(arg1)].field_0 + balanceOf[arg1] >= balanceOf[arg1]
                    balanceOf[address(arg1)] = sub_a5f6f054[address(arg1)].field_0 + balanceOf[arg1]
                    emit Transfer(sub_a5f6f054[address(arg1)].field_0, msg.sender, arg1);
                    if balanceOf[address(arg1)] <= 0:
                        sub_86697527.length++
                        sub_86697527[sub_86697527.length] = arg1
                else:
                    if stor16[address(arg1)]:
                        require arg1
                        require sub_a5f6f054[address(arg1)].field_0 <= balanceOf[address(msg.sender)]
                        require sub_a5f6f054[address(arg1)].field_0 <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] -= sub_a5f6f054[address(arg1)].field_0
                        require sub_a5f6f054[address(arg1)].field_0 + balanceOf[arg1] >= balanceOf[arg1]
                        balanceOf[address(arg1)] = sub_a5f6f054[address(arg1)].field_0 + balanceOf[arg1]
                        emit Transfer(sub_a5f6f054[address(arg1)].field_0, msg.sender, arg1);
                        if balanceOf[address(arg1)] <= 0:
                            sub_86697527.length++
                            sub_86697527[sub_86697527.length] = arg1
                    else:
                        if sub_a5f6f054[address(arg1)].field_0 + balanceOf[address(arg1)] > 16500000:
                            require 2 * sub_a5f6f054[address(arg1)].field_0 >= sub_a5f6f054[address(arg1)].field_0
                            bool(sub_a5f6f054[address(arg1)].field_0) = 0
                            uint255(sub_a5f6f054[address(arg1)].field_1) = uint255(sub_a5f6f054[address(arg1)].field_0)
                        else:
                            require arg1
                            require sub_a5f6f054[address(arg1)].field_0 <= balanceOf[address(msg.sender)]
                            require sub_a5f6f054[address(arg1)].field_0 <= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] -= sub_a5f6f054[address(arg1)].field_0
                            require sub_a5f6f054[address(arg1)].field_0 + balanceOf[arg1] >= balanceOf[arg1]
                            balanceOf[address(arg1)] = sub_a5f6f054[address(arg1)].field_0 + balanceOf[arg1]
                            emit Transfer(sub_a5f6f054[address(arg1)].field_0, msg.sender, arg1);
                            if balanceOf[address(arg1)] <= 0:
                                sub_86697527.length++
                                sub_86697527[sub_86697527.length] = arg1
    return 1
}

function release() {
    require ext_code.size(stor4)
    call stor4.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.sender == ext_call.return_data[12 len 20]:
        if sub_86697527.length < transferredIndex + 2:
            if stor11:
                s = 0
                s = 0
                idx = transferredIndex
                while idx < sub_86697527.length:
                    mem[0] = sub_86697527[idx]
                    mem[32] = 0
                    if balanceOf[stor15[idx]]:
                        mem[0] = sub_86697527[idx]
                        mem[32] = 0
                        balanceOf[stor15[idx]] = 0
                        mem[100] = sub_86697527[idx]
                        mem[132] = balanceOf[stor15[idx]]
                        require ext_code.size(stor4)
                        call stor4.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_86697527[idx], balanceOf[stor15[idx]]
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    s = balanceOf[stor15[idx]]
                    s = sub_86697527[idx]
                    idx = idx + 1
                    continue 
                transferredIndex = idx - 1
            else:
                require ext_code.size(stor4)
                call stor4.0x8da5cb5b with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[0] = ext_call.return_data[12 len 20]
                mem[32] = 0
                idx = 0
                s = stor[sha3(mem[0 len 64])]
                while idx < stor6.length:
                    mem[0] = stor6[idx]
                    mem[32] = 0
                    require balanceOf[stor6[idx]] + s >= s
                    idx = idx + 1
                    s = balanceOf[stor6[idx]] + s
                    continue 
                require stor[sha3(mem[0 len 64])] + (stor[_59] * stor6.length) <= totalSupply
                if totalSupply - stor[sha3(mem[0 len 64])] - (stor[_59] * stor6.length) > 0:
                    t = 0
                    t = 0
                    idx = transferredIndex
                    while idx < sub_86697527.length:
                        mem[0] = sub_86697527[idx]
                        mem[32] = 0
                        if not balanceOf[stor15[idx]]:
                            t = balanceOf[stor15[idx]]
                            t = sub_86697527[idx]
                            idx = idx + 1
                            continue 
                        require s * balanceOf[stor15[idx]] / balanceOf[stor15[idx]] == s
                        require totalSupply - s
                        require (s * balanceOf[stor15[idx]] / totalSupply - s) + balanceOf[stor15[idx]] >= balanceOf[stor15[idx]]
                        mem[0] = sub_86697527[idx]
                        mem[32] = 0
                        balanceOf[stor15[idx]] = 0
                        mem[100] = sub_86697527[idx]
                        mem[132] = (s * balanceOf[stor15[idx]] / totalSupply - s) + balanceOf[stor15[idx]]
                        require ext_code.size(stor4)
                        call stor4.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_86697527[idx], (s * balanceOf[stor15[idx]] / totalSupply - s) + balanceOf[stor15[idx]]
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        t = (s * balanceOf[stor15[idx]] / totalSupply - s) + balanceOf[stor15[idx]]
                        t = sub_86697527[idx]
                        idx = idx + 1
                        continue 
                    transferredIndex = idx - 1
        else:
            if stor11:
                s = 0
                s = 0
                idx = transferredIndex
                while idx < transferredIndex + 2:
                    require idx < sub_86697527.length
                    mem[0] = sub_86697527[idx]
                    mem[32] = 0
                    if balanceOf[stor15[idx]]:
                        mem[0] = sub_86697527[idx]
                        mem[32] = 0
                        balanceOf[stor15[idx]] = 0
                        mem[100] = sub_86697527[idx]
                        mem[132] = balanceOf[stor15[idx]]
                        require ext_code.size(stor4)
                        call stor4.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_86697527[idx], balanceOf[stor15[idx]]
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    s = balanceOf[stor15[idx]]
                    s = sub_86697527[idx]
                    idx = idx + 1
                    continue 
                transferredIndex = idx - 1
            else:
                require ext_code.size(stor4)
                call stor4.0x8da5cb5b with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[0] = ext_call.return_data[12 len 20]
                mem[32] = 0
                idx = 0
                s = stor[sha3(mem[0 len 64])]
                while idx < stor6.length:
                    mem[0] = stor6[idx]
                    mem[32] = 0
                    require balanceOf[stor6[idx]] + s >= s
                    idx = idx + 1
                    s = balanceOf[stor6[idx]] + s
                    continue 
                require stor[sha3(mem[0 len 64])] + (stor[_63] * stor6.length) <= totalSupply
                if totalSupply - stor[sha3(mem[0 len 64])] - (stor[_63] * stor6.length) > 0:
                    t = 0
                    t = 0
                    idx = transferredIndex
                    while idx < transferredIndex + 2:
                        require idx < sub_86697527.length
                        mem[0] = sub_86697527[idx]
                        mem[32] = 0
                        if not balanceOf[stor15[idx]]:
                            t = balanceOf[stor15[idx]]
                            t = sub_86697527[idx]
                            idx = idx + 1
                            continue 
                        require s * balanceOf[stor15[idx]] / balanceOf[stor15[idx]] == s
                        require totalSupply - s
                        require (s * balanceOf[stor15[idx]] / totalSupply - s) + balanceOf[stor15[idx]] >= balanceOf[stor15[idx]]
                        mem[0] = sub_86697527[idx]
                        mem[32] = 0
                        balanceOf[stor15[idx]] = 0
                        mem[100] = sub_86697527[idx]
                        mem[132] = (s * balanceOf[stor15[idx]] / totalSupply - s) + balanceOf[stor15[idx]]
                        require ext_code.size(stor4)
                        call stor4.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_86697527[idx], (s * balanceOf[stor15[idx]] / totalSupply - s) + balanceOf[stor15[idx]]
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        t = (s * balanceOf[stor15[idx]] / totalSupply - s) + balanceOf[stor15[idx]]
                        t = sub_86697527[idx]
                        idx = idx + 1
                        continue 
                    transferredIndex = idx - 1
    else:
        require 1 == bool(stor5[address(msg.sender)])
        if sub_86697527.length < transferredIndex + 2:
            if stor11:
                s = 0
                s = 0
                idx = transferredIndex
                while idx < sub_86697527.length:
                    mem[0] = sub_86697527[idx]
                    mem[32] = 0
                    if balanceOf[stor15[idx]]:
                        mem[0] = sub_86697527[idx]
                        mem[32] = 0
                        balanceOf[stor15[idx]] = 0
                        mem[100] = sub_86697527[idx]
                        mem[132] = balanceOf[stor15[idx]]
                        require ext_code.size(stor4)
                        call stor4.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_86697527[idx], balanceOf[stor15[idx]]
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    s = balanceOf[stor15[idx]]
                    s = sub_86697527[idx]
                    idx = idx + 1
                    continue 
                transferredIndex = idx - 1
            else:
                require ext_code.size(stor4)
                call stor4.0x8da5cb5b with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[0] = ext_call.return_data[12 len 20]
                mem[32] = 0
                idx = 0
                s = stor[sha3(mem[0 len 64])]
                while idx < stor6.length:
                    mem[0] = stor6[idx]
                    mem[32] = 0
                    require balanceOf[stor6[idx]] + s >= s
                    idx = idx + 1
                    s = balanceOf[stor6[idx]] + s
                    continue 
                require stor[sha3(mem[0 len 64])] + (stor[_67] * stor6.length) <= totalSupply
                if totalSupply - stor[sha3(mem[0 len 64])] - (stor[_67] * stor6.length) > 0:
                    t = 0
                    t = 0
                    idx = transferredIndex
                    while idx < sub_86697527.length:
                        mem[0] = sub_86697527[idx]
                        mem[32] = 0
                        if not balanceOf[stor15[idx]]:
                            t = balanceOf[stor15[idx]]
                            t = sub_86697527[idx]
                            idx = idx + 1
                            continue 
                        require s * balanceOf[stor15[idx]] / balanceOf[stor15[idx]] == s
                        require totalSupply - s
                        require (s * balanceOf[stor15[idx]] / totalSupply - s) + balanceOf[stor15[idx]] >= balanceOf[stor15[idx]]
                        mem[0] = sub_86697527[idx]
                        mem[32] = 0
                        balanceOf[stor15[idx]] = 0
                        mem[100] = sub_86697527[idx]
                        mem[132] = (s * balanceOf[stor15[idx]] / totalSupply - s) + balanceOf[stor15[idx]]
                        require ext_code.size(stor4)
                        call stor4.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_86697527[idx], (s * balanceOf[stor15[idx]] / totalSupply - s) + balanceOf[stor15[idx]]
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        t = (s * balanceOf[stor15[idx]] / totalSupply - s) + balanceOf[stor15[idx]]
                        t = sub_86697527[idx]
                        idx = idx + 1
                        continue 
                    transferredIndex = idx - 1
        else:
            if stor11:
                s = 0
                s = 0
                idx = transferredIndex
                while idx < transferredIndex + 2:
                    require idx < sub_86697527.length
                    mem[0] = sub_86697527[idx]
                    mem[32] = 0
                    if balanceOf[stor15[idx]]:
                        mem[0] = sub_86697527[idx]
                        mem[32] = 0
                        balanceOf[stor15[idx]] = 0
                        mem[100] = sub_86697527[idx]
                        mem[132] = balanceOf[stor15[idx]]
                        require ext_code.size(stor4)
                        call stor4.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_86697527[idx], balanceOf[stor15[idx]]
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    s = balanceOf[stor15[idx]]
                    s = sub_86697527[idx]
                    idx = idx + 1
                    continue 
                transferredIndex = idx - 1
            else:
                require ext_code.size(stor4)
                call stor4.0x8da5cb5b with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[0] = ext_call.return_data[12 len 20]
                mem[32] = 0
                idx = 0
                s = stor[sha3(mem[0 len 64])]
                while idx < stor6.length:
                    mem[0] = stor6[idx]
                    mem[32] = 0
                    require balanceOf[stor6[idx]] + s >= s
                    idx = idx + 1
                    s = balanceOf[stor6[idx]] + s
                    continue 
                require stor[sha3(mem[0 len 64])] + (stor[_71] * stor6.length) <= totalSupply
                if totalSupply - stor[sha3(mem[0 len 64])] - (stor[_71] * stor6.length) > 0:
                    t = 0
                    t = 0
                    idx = transferredIndex
                    while idx < transferredIndex + 2:
                        require idx < sub_86697527.length
                        mem[0] = sub_86697527[idx]
                        mem[32] = 0
                        if not balanceOf[stor15[idx]]:
                            t = balanceOf[stor15[idx]]
                            t = sub_86697527[idx]
                            idx = idx + 1
                            continue 
                        require s * balanceOf[stor15[idx]] / balanceOf[stor15[idx]] == s
                        require totalSupply - s
                        require (s * balanceOf[stor15[idx]] / totalSupply - s) + balanceOf[stor15[idx]] >= balanceOf[stor15[idx]]
                        mem[0] = sub_86697527[idx]
                        mem[32] = 0
                        balanceOf[stor15[idx]] = 0
                        mem[100] = sub_86697527[idx]
                        mem[132] = (s * balanceOf[stor15[idx]] / totalSupply - s) + balanceOf[stor15[idx]]
                        require ext_code.size(stor4)
                        call stor4.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_86697527[idx], (s * balanceOf[stor15[idx]] / totalSupply - s) + balanceOf[stor15[idx]]
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        t = (s * balanceOf[stor15[idx]] / totalSupply - s) + balanceOf[stor15[idx]]
                        t = sub_86697527[idx]
                        idx = idx + 1
                        continue 
                    transferredIndex = idx - 1
}

function addAddressesToWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require ext_code.size(stor4)
    call stor4.0x8da5cb5b with:
         gas gas_remaining wei
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.sender == ext_call.return_data[12 len 20]:
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < arg1.length
            _371 = mem[(32 * idx) + 128]
            require ext_code.size(stor4)
            call stor4.0x8da5cb5b with:
                 gas gas_remaining wei
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                require 1 == bool(stor5[address(msg.sender)])
            mem[0] = address(_371)
            mem[32] = 16
            if stor16[address(_371)]:
                idx = idx + 1
                s = s
                continue 
            mem[0] = address(_371)
            stor16[address(_371)] = 1
            mem[32] = 17
            if sub_a5f6f054[address(_371)].field_0 > 0:
                sub_a5f6f054[address(_371)].field_0 = 0
                require ext_code.size(stor4)
                call stor4.0x8da5cb5b with:
                     gas gas_remaining wei
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(_371) == ext_call.return_data[12 len 20]:
                    if stor14:
                        require address(_371)
                        require sub_a5f6f054[address(_371)].field_0 <= balanceOf[address(msg.sender)]
                        require sub_a5f6f054[address(_371)].field_0 <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] -= sub_a5f6f054[address(_371)].field_0
                        require sub_a5f6f054[address(_371)].field_0 + balanceOf[address(_371)] >= balanceOf[address(_371)]
                        mem[0] = address(_371)
                        mem[32] = 0
                        balanceOf[address(_371)] += sub_a5f6f054[address(_371)].field_0
                        mem[(32 * arg1.length) + 128] = sub_a5f6f054[address(_371)].field_0
                        emit Transfer(sub_a5f6f054[address(_371)].field_0, msg.sender, address(_371));
                    else:
                        if stor16[address(_371)]:
                            require address(_371)
                            require sub_a5f6f054[address(_371)].field_0 <= balanceOf[address(msg.sender)]
                            require sub_a5f6f054[address(_371)].field_0 <= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] -= sub_a5f6f054[address(_371)].field_0
                            require sub_a5f6f054[address(_371)].field_0 + balanceOf[address(_371)] >= balanceOf[address(_371)]
                            mem[0] = address(_371)
                            mem[32] = 0
                            balanceOf[address(_371)] += sub_a5f6f054[address(_371)].field_0
                            mem[(32 * arg1.length) + 128] = sub_a5f6f054[address(_371)].field_0
                            emit Transfer(sub_a5f6f054[address(_371)].field_0, msg.sender, address(_371));
                        else:
                            if sub_a5f6f054[address(_371)].field_0 + balanceOf[address(_371)] > 16500000:
                                require 2 * sub_a5f6f054[address(_371)].field_0 >= sub_a5f6f054[address(_371)].field_0
                                mem[0] = address(_371)
                                mem[32] = 17
                                bool(sub_a5f6f054[address(_371)].field_0) = 0
                                uint255(sub_a5f6f054[address(_371)].field_1) = uint255(sub_a5f6f054[address(_371)].field_0)
                            else:
                                require address(_371)
                                require sub_a5f6f054[address(_371)].field_0 <= balanceOf[address(msg.sender)]
                                require sub_a5f6f054[address(_371)].field_0 <= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] -= sub_a5f6f054[address(_371)].field_0
                                require sub_a5f6f054[address(_371)].field_0 + balanceOf[address(_371)] >= balanceOf[address(_371)]
                                mem[0] = address(_371)
                                mem[32] = 0
                                balanceOf[address(_371)] += sub_a5f6f054[address(_371)].field_0
                                mem[(32 * arg1.length) + 128] = sub_a5f6f054[address(_371)].field_0
                                emit Transfer(sub_a5f6f054[address(_371)].field_0, msg.sender, address(_371));
                else:
                    if 1 == bool(stor5[address(_371)]):
                        if stor14:
                            require address(_371)
                            require sub_a5f6f054[address(_371)].field_0 <= balanceOf[address(msg.sender)]
                            require sub_a5f6f054[address(_371)].field_0 <= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] -= sub_a5f6f054[address(_371)].field_0
                            require sub_a5f6f054[address(_371)].field_0 + balanceOf[address(_371)] >= balanceOf[address(_371)]
                            mem[0] = address(_371)
                            mem[32] = 0
                            balanceOf[address(_371)] += sub_a5f6f054[address(_371)].field_0
                            mem[(32 * arg1.length) + 128] = sub_a5f6f054[address(_371)].field_0
                            emit Transfer(sub_a5f6f054[address(_371)].field_0, msg.sender, address(_371));
                        else:
                            if stor16[address(_371)]:
                                require address(_371)
                                require sub_a5f6f054[address(_371)].field_0 <= balanceOf[address(msg.sender)]
                                require sub_a5f6f054[address(_371)].field_0 <= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] -= sub_a5f6f054[address(_371)].field_0
                                require sub_a5f6f054[address(_371)].field_0 + balanceOf[address(_371)] >= balanceOf[address(_371)]
                                mem[0] = address(_371)
                                mem[32] = 0
                                balanceOf[address(_371)] += sub_a5f6f054[address(_371)].field_0
                                mem[(32 * arg1.length) + 128] = sub_a5f6f054[address(_371)].field_0
                                emit Transfer(sub_a5f6f054[address(_371)].field_0, msg.sender, address(_371));
                            else:
                                if sub_a5f6f054[address(_371)].field_0 + balanceOf[address(_371)] > 16500000:
                                    require 2 * sub_a5f6f054[address(_371)].field_0 >= sub_a5f6f054[address(_371)].field_0
                                    mem[0] = address(_371)
                                    mem[32] = 17
                                    bool(sub_a5f6f054[address(_371)].field_0) = 0
                                    uint255(sub_a5f6f054[address(_371)].field_1) = uint255(sub_a5f6f054[address(_371)].field_0)
                                else:
                                    require address(_371)
                                    require sub_a5f6f054[address(_371)].field_0 <= balanceOf[address(msg.sender)]
                                    require sub_a5f6f054[address(_371)].field_0 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= sub_a5f6f054[address(_371)].field_0
                                    require sub_a5f6f054[address(_371)].field_0 + balanceOf[address(_371)] >= balanceOf[address(_371)]
                                    mem[0] = address(_371)
                                    mem[32] = 0
                                    balanceOf[address(_371)] += sub_a5f6f054[address(_371)].field_0
                                    mem[(32 * arg1.length) + 128] = sub_a5f6f054[address(_371)].field_0
                                    emit Transfer(sub_a5f6f054[address(_371)].field_0, msg.sender, address(_371));
                    else:
                        if stor14:
                            require address(_371)
                            require sub_a5f6f054[address(_371)].field_0 <= balanceOf[address(msg.sender)]
                            require sub_a5f6f054[address(_371)].field_0 <= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] -= sub_a5f6f054[address(_371)].field_0
                            require sub_a5f6f054[address(_371)].field_0 + balanceOf[address(_371)] >= balanceOf[address(_371)]
                            mem[0] = address(_371)
                            mem[32] = 0
                            balanceOf[address(_371)] += sub_a5f6f054[address(_371)].field_0
                            mem[(32 * arg1.length) + 128] = sub_a5f6f054[address(_371)].field_0
                            emit Transfer(sub_a5f6f054[address(_371)].field_0, msg.sender, address(_371));
                            if balanceOf[address(_371)] <= 0:
                                sub_86697527.length++
                                mem[0] = 15
                                sub_86697527[sub_86697527.length] = address(_371)
                        else:
                            if stor16[address(_371)]:
                                require address(_371)
                                require sub_a5f6f054[address(_371)].field_0 <= balanceOf[address(msg.sender)]
                                require sub_a5f6f054[address(_371)].field_0 <= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] -= sub_a5f6f054[address(_371)].field_0
                                require sub_a5f6f054[address(_371)].field_0 + balanceOf[address(_371)] >= balanceOf[address(_371)]
                                mem[0] = address(_371)
                                mem[32] = 0
                                balanceOf[address(_371)] += sub_a5f6f054[address(_371)].field_0
                                mem[(32 * arg1.length) + 128] = sub_a5f6f054[address(_371)].field_0
                                emit Transfer(sub_a5f6f054[address(_371)].field_0, msg.sender, address(_371));
                                if balanceOf[address(_371)] <= 0:
                                    sub_86697527.length++
                                    mem[0] = 15
                                    sub_86697527[sub_86697527.length] = address(_371)
                            else:
                                if sub_a5f6f054[address(_371)].field_0 + balanceOf[address(_371)] > 16500000:
                                    require 2 * sub_a5f6f054[address(_371)].field_0 >= sub_a5f6f054[address(_371)].field_0
                                    mem[0] = address(_371)
                                    mem[32] = 17
                                    bool(sub_a5f6f054[address(_371)].field_0) = 0
                                    uint255(sub_a5f6f054[address(_371)].field_1) = uint255(sub_a5f6f054[address(_371)].field_0)
                                else:
                                    require address(_371)
                                    require sub_a5f6f054[address(_371)].field_0 <= balanceOf[address(msg.sender)]
                                    require sub_a5f6f054[address(_371)].field_0 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= sub_a5f6f054[address(_371)].field_0
                                    require sub_a5f6f054[address(_371)].field_0 + balanceOf[address(_371)] >= balanceOf[address(_371)]
                                    mem[0] = address(_371)
                                    mem[32] = 0
                                    balanceOf[address(_371)] += sub_a5f6f054[address(_371)].field_0
                                    mem[(32 * arg1.length) + 128] = sub_a5f6f054[address(_371)].field_0
                                    emit Transfer(sub_a5f6f054[address(_371)].field_0, msg.sender, address(_371));
                                    if balanceOf[address(_371)] <= 0:
                                        sub_86697527.length++
                                        mem[0] = 15
                                        sub_86697527[sub_86697527.length] = address(_371)
            idx = idx + 1
            s = 1
            continue 
    else:
        require 1 == bool(stor5[address(msg.sender)])
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < arg1.length
            _374 = mem[(32 * idx) + 128]
            require ext_code.size(stor4)
            call stor4.0x8da5cb5b with:
                 gas gas_remaining wei
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                require 1 == bool(stor5[address(msg.sender)])
            mem[0] = address(_374)
            mem[32] = 16
            if stor16[address(_374)]:
                idx = idx + 1
                s = s
                continue 
            mem[0] = address(_374)
            stor16[address(_374)] = 1
            mem[32] = 17
            if sub_a5f6f054[address(_374)].field_0 > 0:
                sub_a5f6f054[address(_374)].field_0 = 0
                require ext_code.size(stor4)
                call stor4.0x8da5cb5b with:
                     gas gas_remaining wei
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(_374) == ext_call.return_data[12 len 20]:
                    if stor14:
                        require address(_374)
                        require sub_a5f6f054[address(_374)].field_0 <= balanceOf[address(msg.sender)]
                        require sub_a5f6f054[address(_374)].field_0 <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] -= sub_a5f6f054[address(_374)].field_0
                        require sub_a5f6f054[address(_374)].field_0 + balanceOf[address(_374)] >= balanceOf[address(_374)]
                        mem[0] = address(_374)
                        mem[32] = 0
                        balanceOf[address(_374)] += sub_a5f6f054[address(_374)].field_0
                        mem[(32 * arg1.length) + 128] = sub_a5f6f054[address(_374)].field_0
                        emit Transfer(sub_a5f6f054[address(_374)].field_0, msg.sender, address(_374));
                    else:
                        if stor16[address(_374)]:
                            require address(_374)
                            require sub_a5f6f054[address(_374)].field_0 <= balanceOf[address(msg.sender)]
                            require sub_a5f6f054[address(_374)].field_0 <= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] -= sub_a5f6f054[address(_374)].field_0
                            require sub_a5f6f054[address(_374)].field_0 + balanceOf[address(_374)] >= balanceOf[address(_374)]
                            mem[0] = address(_374)
                            mem[32] = 0
                            balanceOf[address(_374)] += sub_a5f6f054[address(_374)].field_0
                            mem[(32 * arg1.length) + 128] = sub_a5f6f054[address(_374)].field_0
                            emit Transfer(sub_a5f6f054[address(_374)].field_0, msg.sender, address(_374));
                        else:
                            if sub_a5f6f054[address(_374)].field_0 + balanceOf[address(_374)] > 16500000:
                                require 2 * sub_a5f6f054[address(_374)].field_0 >= sub_a5f6f054[address(_374)].field_0
                                mem[0] = address(_374)
                                mem[32] = 17
                                bool(sub_a5f6f054[address(_374)].field_0) = 0
                                uint255(sub_a5f6f054[address(_374)].field_1) = uint255(sub_a5f6f054[address(_374)].field_0)
                            else:
                                require address(_374)
                                require sub_a5f6f054[address(_374)].field_0 <= balanceOf[address(msg.sender)]
                                require sub_a5f6f054[address(_374)].field_0 <= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] -= sub_a5f6f054[address(_374)].field_0
                                require sub_a5f6f054[address(_374)].field_0 + balanceOf[address(_374)] >= balanceOf[address(_374)]
                                mem[0] = address(_374)
                                mem[32] = 0
                                balanceOf[address(_374)] += sub_a5f6f054[address(_374)].field_0
                                mem[(32 * arg1.length) + 128] = sub_a5f6f054[address(_374)].field_0
                                emit Transfer(sub_a5f6f054[address(_374)].field_0, msg.sender, address(_374));
                else:
                    if 1 == bool(stor5[address(_374)]):
                        if stor14:
                            require address(_374)
                            require sub_a5f6f054[address(_374)].field_0 <= balanceOf[address(msg.sender)]
                            require sub_a5f6f054[address(_374)].field_0 <= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] -= sub_a5f6f054[address(_374)].field_0
                            require sub_a5f6f054[address(_374)].field_0 + balanceOf[address(_374)] >= balanceOf[address(_374)]
                            mem[0] = address(_374)
                            mem[32] = 0
                            balanceOf[address(_374)] += sub_a5f6f054[address(_374)].field_0
                            mem[(32 * arg1.length) + 128] = sub_a5f6f054[address(_374)].field_0
                            emit Transfer(sub_a5f6f054[address(_374)].field_0, msg.sender, address(_374));
                        else:
                            if stor16[address(_374)]:
                                require address(_374)
                                require sub_a5f6f054[address(_374)].field_0 <= balanceOf[address(msg.sender)]
                                require sub_a5f6f054[address(_374)].field_0 <= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] -= sub_a5f6f054[address(_374)].field_0
                                require sub_a5f6f054[address(_374)].field_0 + balanceOf[address(_374)] >= balanceOf[address(_374)]
                                mem[0] = address(_374)
                                mem[32] = 0
                                balanceOf[address(_374)] += sub_a5f6f054[address(_374)].field_0
                                mem[(32 * arg1.length) + 128] = sub_a5f6f054[address(_374)].field_0
                                emit Transfer(sub_a5f6f054[address(_374)].field_0, msg.sender, address(_374));
                            else:
                                if sub_a5f6f054[address(_374)].field_0 + balanceOf[address(_374)] > 16500000:
                                    require 2 * sub_a5f6f054[address(_374)].field_0 >= sub_a5f6f054[address(_374)].field_0
                                    mem[0] = address(_374)
                                    mem[32] = 17
                                    bool(sub_a5f6f054[address(_374)].field_0) = 0
                                    uint255(sub_a5f6f054[address(_374)].field_1) = uint255(sub_a5f6f054[address(_374)].field_0)
                                else:
                                    require address(_374)
                                    require sub_a5f6f054[address(_374)].field_0 <= balanceOf[address(msg.sender)]
                                    require sub_a5f6f054[address(_374)].field_0 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= sub_a5f6f054[address(_374)].field_0
                                    require sub_a5f6f054[address(_374)].field_0 + balanceOf[address(_374)] >= balanceOf[address(_374)]
                                    mem[0] = address(_374)
                                    mem[32] = 0
                                    balanceOf[address(_374)] += sub_a5f6f054[address(_374)].field_0
                                    mem[(32 * arg1.length) + 128] = sub_a5f6f054[address(_374)].field_0
                                    emit Transfer(sub_a5f6f054[address(_374)].field_0, msg.sender, address(_374));
                    else:
                        if stor14:
                            require address(_374)
                            require sub_a5f6f054[address(_374)].field_0 <= balanceOf[address(msg.sender)]
                            require sub_a5f6f054[address(_374)].field_0 <= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] -= sub_a5f6f054[address(_374)].field_0
                            require sub_a5f6f054[address(_374)].field_0 + balanceOf[address(_374)] >= balanceOf[address(_374)]
                            mem[0] = address(_374)
                            mem[32] = 0
                            balanceOf[address(_374)] += sub_a5f6f054[address(_374)].field_0
                            mem[(32 * arg1.length) + 128] = sub_a5f6f054[address(_374)].field_0
                            emit Transfer(sub_a5f6f054[address(_374)].field_0, msg.sender, address(_374));
                            if balanceOf[address(_374)] <= 0:
                                sub_86697527.length++
                                mem[0] = 15
                                sub_86697527[sub_86697527.length] = address(_374)
                        else:
                            if stor16[address(_374)]:
                                require address(_374)
                                require sub_a5f6f054[address(_374)].field_0 <= balanceOf[address(msg.sender)]
                                require sub_a5f6f054[address(_374)].field_0 <= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] -= sub_a5f6f054[address(_374)].field_0
                                require sub_a5f6f054[address(_374)].field_0 + balanceOf[address(_374)] >= balanceOf[address(_374)]
                                mem[0] = address(_374)
                                mem[32] = 0
                                balanceOf[address(_374)] += sub_a5f6f054[address(_374)].field_0
                                mem[(32 * arg1.length) + 128] = sub_a5f6f054[address(_374)].field_0
                                emit Transfer(sub_a5f6f054[address(_374)].field_0, msg.sender, address(_374));
                                if balanceOf[address(_374)] <= 0:
                                    sub_86697527.length++
                                    mem[0] = 15
                                    sub_86697527[sub_86697527.length] = address(_374)
                            else:
                                if sub_a5f6f054[address(_374)].field_0 + balanceOf[address(_374)] > 16500000:
                                    require 2 * sub_a5f6f054[address(_374)].field_0 >= sub_a5f6f054[address(_374)].field_0
                                    mem[0] = address(_374)
                                    mem[32] = 17
                                    bool(sub_a5f6f054[address(_374)].field_0) = 0
                                    uint255(sub_a5f6f054[address(_374)].field_1) = uint255(sub_a5f6f054[address(_374)].field_0)
                                else:
                                    require address(_374)
                                    require sub_a5f6f054[address(_374)].field_0 <= balanceOf[address(msg.sender)]
                                    require sub_a5f6f054[address(_374)].field_0 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= sub_a5f6f054[address(_374)].field_0
                                    require sub_a5f6f054[address(_374)].field_0 + balanceOf[address(_374)] >= balanceOf[address(_374)]
                                    mem[0] = address(_374)
                                    mem[32] = 0
                                    balanceOf[address(_374)] += sub_a5f6f054[address(_374)].field_0
                                    mem[(32 * arg1.length) + 128] = sub_a5f6f054[address(_374)].field_0
                                    emit Transfer(sub_a5f6f054[address(_374)].field_0, msg.sender, address(_374));
                                    if balanceOf[address(_374)] <= 0:
                                        sub_86697527.length++
                                        mem[0] = 15
                                        sub_86697527[sub_86697527.length] = address(_374)
            idx = idx + 1
            s = 1
            continue 
    return bool(s)
}

function sub_ff62652d(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require ext_code.size(stor4)
    call stor4.0x8da5cb5b with:
         gas gas_remaining wei
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.sender == ext_call.return_data[12 len 20]:
        require 1 == bool(stor14)
        require arg1.length == arg2.length
        require arg1.length <= 2
        s = 0
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 9
            if stor9[mem[(32 * idx) + 140 len 20]]:
                s = s
                idx = idx + 1
                continue 
            require idx < arg1.length
            _346 = mem[(32 * idx) + 128]
            require idx < arg2.length
            _350 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require ext_code.size(stor4)
            call stor4.0x8da5cb5b with:
                 gas gas_remaining wei
            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(_346) == ext_call.return_data[12 len 20]:
                if stor14:
                    require address(_346)
                    require _350 <= balanceOf[address(msg.sender)]
                    if _350 <= balanceOf[address(msg.sender)]:
                        balanceOf[address(msg.sender)] -= _350
                        if _350 + balanceOf[address(_346)] >= balanceOf[address(_346)]:
                            balanceOf[address(_346)] += _350
                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = _350
                            emit Transfer(_350, msg.sender, address(_346));
                            if idx < arg1.length:
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 9
                                stor9[mem[(32 * idx) + 140 len 20]] = 1
                                if idx < arg2.length:
                                    if mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s:
                                        s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
                                        idx = idx + 1
                                        continue 
                else:
                    if stor16[address(_346)]:
                        require address(_346)
                        require _350 <= balanceOf[address(msg.sender)]
                        if _350 <= balanceOf[address(msg.sender)]:
                            balanceOf[address(msg.sender)] -= _350
                            if _350 + balanceOf[address(_346)] >= balanceOf[address(_346)]:
                                balanceOf[address(_346)] += _350
                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = _350
                                emit Transfer(_350, msg.sender, address(_346));
                                if idx < arg1.length:
                                    mem[0] = mem[(32 * idx) + 140 len 20]
                                    mem[32] = 9
                                    stor9[mem[(32 * idx) + 140 len 20]] = 1
                                    if idx < arg2.length:
                                        if mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s:
                                            s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
                                            idx = idx + 1
                                            continue 
                    else:
                        if _350 + balanceOf[address(_346)] > 16500000:
                            if _350 + sub_a5f6f054[address(_346)].field_0 >= sub_a5f6f054[address(_346)].field_0:
                                sub_a5f6f054[address(_346)].field_0 += _350
                                if idx < arg1.length:
                                    mem[0] = mem[(32 * idx) + 140 len 20]
                                    mem[32] = 9
                                    stor9[mem[(32 * idx) + 140 len 20]] = 1
                                    if idx < arg2.length:
                                        if mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s:
                                            s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
                                            idx = idx + 1
                                            continue 
                        else:
                            require address(_346)
                            require _350 <= balanceOf[address(msg.sender)]
                            if _350 <= balanceOf[address(msg.sender)]:
                                balanceOf[address(msg.sender)] -= _350
                                if _350 + balanceOf[address(_346)] >= balanceOf[address(_346)]:
                                    balanceOf[address(_346)] += _350
                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = _350
                                    emit Transfer(_350, msg.sender, address(_346));
                                    if idx < arg1.length:
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 9
                                        stor9[mem[(32 * idx) + 140 len 20]] = 1
                                        if idx < arg2.length:
                                            if mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s:
                                                s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
                                                idx = idx + 1
                                                continue 
            else:
                if 1 == bool(stor5[address(_346)]):
                    if stor14:
                        require address(_346)
                        require _350 <= balanceOf[address(msg.sender)]
                        if _350 <= balanceOf[address(msg.sender)]:
                            balanceOf[address(msg.sender)] -= _350
                            if _350 + balanceOf[address(_346)] >= balanceOf[address(_346)]:
                                balanceOf[address(_346)] += _350
                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = _350
                                emit Transfer(_350, msg.sender, address(_346));
                                if idx < arg1.length:
                                    mem[0] = mem[(32 * idx) + 140 len 20]
                                    mem[32] = 9
                                    stor9[mem[(32 * idx) + 140 len 20]] = 1
                                    if idx < arg2.length:
                                        if mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s:
                                            s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
                                            idx = idx + 1
                                            continue 
                    else:
                        if stor16[address(_346)]:
                            require address(_346)
                            require _350 <= balanceOf[address(msg.sender)]
                            if _350 <= balanceOf[address(msg.sender)]:
                                balanceOf[address(msg.sender)] -= _350
                                if _350 + balanceOf[address(_346)] >= balanceOf[address(_346)]:
                                    balanceOf[address(_346)] += _350
                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = _350
                                    emit Transfer(_350, msg.sender, address(_346));
                                    if idx < arg1.length:
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 9
                                        stor9[mem[(32 * idx) + 140 len 20]] = 1
                                        if idx < arg2.length:
                                            if mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s:
                                                s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
                                                idx = idx + 1
                                                continue 
                        else:
                            if _350 + balanceOf[address(_346)] > 16500000:
                                if _350 + sub_a5f6f054[address(_346)].field_0 >= sub_a5f6f054[address(_346)].field_0:
                                    sub_a5f6f054[address(_346)].field_0 += _350
                                    if idx < arg1.length:
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 9
                                        stor9[mem[(32 * idx) + 140 len 20]] = 1
                                        if idx < arg2.length:
                                            if mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s:
                                                s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
                                                idx = idx + 1
                                                continue 
                            else:
                                require address(_346)
                                require _350 <= balanceOf[address(msg.sender)]
                                if _350 <= balanceOf[address(msg.sender)]:
                                    balanceOf[address(msg.sender)] -= _350
                                    if _350 + balanceOf[address(_346)] >= balanceOf[address(_346)]:
                                        balanceOf[address(_346)] += _350
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = _350
                                        emit Transfer(_350, msg.sender, address(_346));
                                        if idx < arg1.length:
                                            mem[0] = mem[(32 * idx) + 140 len 20]
                                            mem[32] = 9
                                            stor9[mem[(32 * idx) + 140 len 20]] = 1
                                            if idx < arg2.length:
                                                if mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s:
                                                    s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
                                                    idx = idx + 1
                                                    continue 
                else:
                    if stor14:
                        require address(_346)
                        require _350 <= balanceOf[address(msg.sender)]
                        if _350 <= balanceOf[address(msg.sender)]:
                            balanceOf[address(msg.sender)] -= _350
                            if _350 + balanceOf[address(_346)] >= balanceOf[address(_346)]:
                                balanceOf[address(_346)] += _350
                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = _350
                                emit Transfer(_350, msg.sender, address(_346));
                                if balanceOf[address(_346)] <= 0:
                                    sub_86697527.length++
                                    sub_86697527[sub_86697527.length] = address(_346)
                                if idx < arg1.length:
                                    mem[0] = mem[(32 * idx) + 140 len 20]
                                    mem[32] = 9
                                    stor9[mem[(32 * idx) + 140 len 20]] = 1
                                    if idx < arg2.length:
                                        if mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s:
                                            s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
                                            idx = idx + 1
                                            continue 
                    else:
                        if stor16[address(_346)]:
                            require address(_346)
                            require _350 <= balanceOf[address(msg.sender)]
                            if _350 <= balanceOf[address(msg.sender)]:
                                balanceOf[address(msg.sender)] -= _350
                                if _350 + balanceOf[address(_346)] >= balanceOf[address(_346)]:
                                    balanceOf[address(_346)] += _350
                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = _350
                                    emit Transfer(_350, msg.sender, address(_346));
                                    if balanceOf[address(_346)] <= 0:
                                        sub_86697527.length++
                                        sub_86697527[sub_86697527.length] = address(_346)
                                    if idx < arg1.length:
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 9
                                        stor9[mem[(32 * idx) + 140 len 20]] = 1
                                        if idx < arg2.length:
                                            if mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s:
                                                s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
                                                idx = idx + 1
                                                continue 
                        else:
                            if _350 + balanceOf[address(_346)] > 16500000:
                                if _350 + sub_a5f6f054[address(_346)].field_0 >= sub_a5f6f054[address(_346)].field_0:
                                    sub_a5f6f054[address(_346)].field_0 += _350
                                    if idx < arg1.length:
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 9
                                        stor9[mem[(32 * idx) + 140 len 20]] = 1
                                        if idx < arg2.length:
                                            if mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s:
                                                s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
                                                idx = idx + 1
                                                continue 
                            else:
                                require address(_346)
                                require _350 <= balanceOf[address(msg.sender)]
                                if _350 <= balanceOf[address(msg.sender)]:
                                    balanceOf[address(msg.sender)] -= _350
                                    if _350 + balanceOf[address(_346)] >= balanceOf[address(_346)]:
                                        balanceOf[address(_346)] += _350
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = _350
                                        emit Transfer(_350, msg.sender, address(_346));
                                        if balanceOf[address(_346)] <= 0:
                                            sub_86697527.length++
                                            sub_86697527[sub_86697527.length] = address(_346)
                                        if idx < arg1.length:
                                            mem[0] = mem[(32 * idx) + 140 len 20]
                                            mem[32] = 9
                                            stor9[mem[(32 * idx) + 140 len 20]] = 1
                                            if idx < arg2.length:
                                                if mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s:
                                                    s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
                                                    idx = idx + 1
                                                    continue 
            revert
    else:
        require 1 == bool(stor5[address(msg.sender)])
        require 1 == bool(stor14)
        require arg1.length == arg2.length
        require arg1.length <= 2
        s = 0
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 9
            if stor9[mem[(32 * idx) + 140 len 20]]:
                s = s
                idx = idx + 1
                continue 
            require idx < arg1.length
            _348 = mem[(32 * idx) + 128]
            require idx < arg2.length
            _351 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require ext_code.size(stor4)
            call stor4.0x8da5cb5b with:
                 gas gas_remaining wei
            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(_348) == ext_call.return_data[12 len 20]:
                if stor14:
                    require address(_348)
                    require _351 <= balanceOf[address(msg.sender)]
                    if _351 <= balanceOf[address(msg.sender)]:
                        balanceOf[address(msg.sender)] -= _351
                        if _351 + balanceOf[address(_348)] >= balanceOf[address(_348)]:
                            balanceOf[address(_348)] += _351
                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = _351
                            emit Transfer(_351, msg.sender, address(_348));
                            if idx < arg1.length:
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 9
                                stor9[mem[(32 * idx) + 140 len 20]] = 1
                                if idx < arg2.length:
                                    if mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s:
                                        s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
                                        idx = idx + 1
                                        continue 
                else:
                    if stor16[address(_348)]:
                        require address(_348)
                        require _351 <= balanceOf[address(msg.sender)]
                        if _351 <= balanceOf[address(msg.sender)]:
                            balanceOf[address(msg.sender)] -= _351
                            if _351 + balanceOf[address(_348)] >= balanceOf[address(_348)]:
                                balanceOf[address(_348)] += _351
                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = _351
                                emit Transfer(_351, msg.sender, address(_348));
                                if idx < arg1.length:
                                    mem[0] = mem[(32 * idx) + 140 len 20]
                                    mem[32] = 9
                                    stor9[mem[(32 * idx) + 140 len 20]] = 1
                                    if idx < arg2.length:
                                        if mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s:
                                            s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
                                            idx = idx + 1
                                            continue 
                    else:
                        if _351 + balanceOf[address(_348)] > 16500000:
                            if _351 + sub_a5f6f054[address(_348)].field_0 >= sub_a5f6f054[address(_348)].field_0:
                                sub_a5f6f054[address(_348)].field_0 += _351
                                if idx < arg1.length:
                                    mem[0] = mem[(32 * idx) + 140 len 20]
                                    mem[32] = 9
                                    stor9[mem[(32 * idx) + 140 len 20]] = 1
                                    if idx < arg2.length:
                                        if mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s:
                                            s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
                                            idx = idx + 1
                                            continue 
                        else:
                            require address(_348)
                            require _351 <= balanceOf[address(msg.sender)]
                            if _351 <= balanceOf[address(msg.sender)]:
                                balanceOf[address(msg.sender)] -= _351
                                if _351 + balanceOf[address(_348)] >= balanceOf[address(_348)]:
                                    balanceOf[address(_348)] += _351
                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = _351
                                    emit Transfer(_351, msg.sender, address(_348));
                                    if idx < arg1.length:
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 9
                                        stor9[mem[(32 * idx) + 140 len 20]] = 1
                                        if idx < arg2.length:
                                            if mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s:
                                                s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
                                                idx = idx + 1
                                                continue 
            else:
                if 1 == bool(stor5[address(_348)]):
                    if stor14:
                        require address(_348)
                        require _351 <= balanceOf[address(msg.sender)]
                        if _351 <= balanceOf[address(msg.sender)]:
                            balanceOf[address(msg.sender)] -= _351
                            if _351 + balanceOf[address(_348)] >= balanceOf[address(_348)]:
                                balanceOf[address(_348)] += _351
                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = _351
                                emit Transfer(_351, msg.sender, address(_348));
                                if idx < arg1.length:
                                    mem[0] = mem[(32 * idx) + 140 len 20]
                                    mem[32] = 9
                                    stor9[mem[(32 * idx) + 140 len 20]] = 1
                                    if idx < arg2.length:
                                        if mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s:
                                            s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
                                            idx = idx + 1
                                            continue 
                    else:
                        if stor16[address(_348)]:
                            require address(_348)
                            require _351 <= balanceOf[address(msg.sender)]
                            if _351 <= balanceOf[address(msg.sender)]:
                                balanceOf[address(msg.sender)] -= _351
                                if _351 + balanceOf[address(_348)] >= balanceOf[address(_348)]:
                                    balanceOf[address(_348)] += _351
                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = _351
                                    emit Transfer(_351, msg.sender, address(_348));
                                    if idx < arg1.length:
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 9
                                        stor9[mem[(32 * idx) + 140 len 20]] = 1
                                        if idx < arg2.length:
                                            if mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s:
                                                s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
                                                idx = idx + 1
                                                continue 
                        else:
                            if _351 + balanceOf[address(_348)] > 16500000:
                                if _351 + sub_a5f6f054[address(_348)].field_0 >= sub_a5f6f054[address(_348)].field_0:
                                    sub_a5f6f054[address(_348)].field_0 += _351
                                    if idx < arg1.length:
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 9
                                        stor9[mem[(32 * idx) + 140 len 20]] = 1
                                        if idx < arg2.length:
                                            if mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s:
                                                s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
                                                idx = idx + 1
                                                continue 
                            else:
                                require address(_348)
                                require _351 <= balanceOf[address(msg.sender)]
                                if _351 <= balanceOf[address(msg.sender)]:
                                    balanceOf[address(msg.sender)] -= _351
                                    if _351 + balanceOf[address(_348)] >= balanceOf[address(_348)]:
                                        balanceOf[address(_348)] += _351
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = _351
                                        emit Transfer(_351, msg.sender, address(_348));
                                        if idx < arg1.length:
                                            mem[0] = mem[(32 * idx) + 140 len 20]
                                            mem[32] = 9
                                            stor9[mem[(32 * idx) + 140 len 20]] = 1
                                            if idx < arg2.length:
                                                if mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s:
                                                    s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
                                                    idx = idx + 1
                                                    continue 
                else:
                    if stor14:
                        require address(_348)
                        require _351 <= balanceOf[address(msg.sender)]
                        if _351 <= balanceOf[address(msg.sender)]:
                            balanceOf[address(msg.sender)] -= _351
                            if _351 + balanceOf[address(_348)] >= balanceOf[address(_348)]:
                                balanceOf[address(_348)] += _351
                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = _351
                                emit Transfer(_351, msg.sender, address(_348));
                                if balanceOf[address(_348)] <= 0:
                                    sub_86697527.length++
                                    sub_86697527[sub_86697527.length] = address(_348)
                                if idx < arg1.length:
                                    mem[0] = mem[(32 * idx) + 140 len 20]
                                    mem[32] = 9
                                    stor9[mem[(32 * idx) + 140 len 20]] = 1
                                    if idx < arg2.length:
                                        if mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s:
                                            s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
                                            idx = idx + 1
                                            continue 
                    else:
                        if stor16[address(_348)]:
                            require address(_348)
                            require _351 <= balanceOf[address(msg.sender)]
                            if _351 <= balanceOf[address(msg.sender)]:
                                balanceOf[address(msg.sender)] -= _351
                                if _351 + balanceOf[address(_348)] >= balanceOf[address(_348)]:
                                    balanceOf[address(_348)] += _351
                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = _351
                                    emit Transfer(_351, msg.sender, address(_348));
                                    if balanceOf[address(_348)] <= 0:
                                        sub_86697527.length++
                                        sub_86697527[sub_86697527.length] = address(_348)
                                    if idx < arg1.length:
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 9
                                        stor9[mem[(32 * idx) + 140 len 20]] = 1
                                        if idx < arg2.length:
                                            if mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s:
                                                s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
                                                idx = idx + 1
                                                continue 
                        else:
                            if _351 + balanceOf[address(_348)] > 16500000:
                                if _351 + sub_a5f6f054[address(_348)].field_0 >= sub_a5f6f054[address(_348)].field_0:
                                    sub_a5f6f054[address(_348)].field_0 += _351
                                    if idx < arg1.length:
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 9
                                        stor9[mem[(32 * idx) + 140 len 20]] = 1
                                        if idx < arg2.length:
                                            if mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s:
                                                s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
                                                idx = idx + 1
                                                continue 
                            else:
                                require address(_348)
                                require _351 <= balanceOf[address(msg.sender)]
                                if _351 <= balanceOf[address(msg.sender)]:
                                    balanceOf[address(msg.sender)] -= _351
                                    if _351 + balanceOf[address(_348)] >= balanceOf[address(_348)]:
                                        balanceOf[address(_348)] += _351
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = _351
                                        emit Transfer(_351, msg.sender, address(_348));
                                        if balanceOf[address(_348)] <= 0:
                                            sub_86697527.length++
                                            sub_86697527[sub_86697527.length] = address(_348)
                                        if idx < arg1.length:
                                            mem[0] = mem[(32 * idx) + 140 len 20]
                                            mem[32] = 9
                                            stor9[mem[(32 * idx) + 140 len 20]] = 1
                                            if idx < arg2.length:
                                                if mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s:
                                                    s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
                                                    idx = idx + 1
                                                    continue 
            revert
    require s + totalBonusToken >= totalBonusToken
    totalBonusToken += s
    require arg1.length + noBonusTokenRecipients >= noBonusTokenRecipients
    noBonusTokenRecipients += arg1.length
}



}
