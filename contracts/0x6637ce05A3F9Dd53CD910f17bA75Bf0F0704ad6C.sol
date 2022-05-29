contract main {




// =====================  Runtime code  =====================


#
#  - doInvest(address[3] arg1)
#  - payout()
#
const minInvesment = 5 * 10^16

const maxBalance = (9250 * 10^18 * 3600)

const pauseOnNextWave = (168 * 24 * 3600)

const balanceETH = eth.balance(this.address)


mapping of uint8 access;
uint256 latestPayout;
uint256 stor2;
uint8 paymode;
address stor4;
mapping of uint8 stor5;
uint8 stor6;
address adminAddr; offset 8
address payerAddr;
uint256 waveStartup;
uint256 investmentsNum;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;

function investmentsNum() {
    return investmentsNum
}

function access(address arg1) {
    require access[address(arg1)] <= 3
    return access[address(arg1)]
}

function adminAddr() {
    return adminAddr
}

function paymode() {
    require paymode <= 1
    return paymode
}

function latestPayout() {
    return latestPayout
}

function payerAddr() {
    return payerAddr
}

function waveStartup() {
    return waveStartup
}

function payerPercent() {
    return stor14, stor15
}

function adminPercent() {
    return stor12, stor13
}

function referrerPercent() {
    return stor16, stor17
}

function dividendsPercent() {
    return stor10, stor11
}

function investorsNumber() {
    require ext_code.size(stor4)
    call stor4.0x949d225d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] - 1)
}

function investorInfo(address arg1) {
    require ext_code.size(stor4)
    call stor4.investorBaseInfo(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], bool(stor5[address(arg1)])
}

function setPayerAddr(address arg1) {
    require access[address(msg.sender)] <= 3
    if access[address(msg.sender)] != 3:
        require access[address(msg.sender)] <= 3
        if access[address(msg.sender)] != 3:
            revert with 0, 'access denied'
    if not arg1:
        revert with 0, 'require not zero address'
    if payerAddr != arg1:
        payerAddr = arg1
        emit LogPayerAddrChanged(block.timestamp, arg1);
}

function setAdminAddr(address arg1) {
    require access[address(msg.sender)] <= 3
    if access[address(msg.sender)] != 3:
        require access[address(msg.sender)] <= 3
        if access[address(msg.sender)] != 3:
            revert with 0, 'access denied'
    if not arg1:
        revert with 0, 'require not zero address'
    if adminAddr != arg1:
        adminAddr = arg1
        emit LogAdminAddrChanged(block.timestamp, arg1);
}

function provideAccess(address arg1, uint8 arg2) {
    require access[address(msg.sender)] <= 3
    if access[address(msg.sender)] != 3:
        require access[address(msg.sender)] <= 3
        if access[address(msg.sender)] != 3:
            revert with 0, 'access denied'
    require arg2 <= 3
    require access[address(arg1)] <= 3
    if access[address(arg1)] == 3:
        revert with 0, 'cannot change full access rank'
    require arg2 <= 3
    require access[address(arg1)] <= 3
    if access[address(arg1)] != arg2:
        require arg2 <= 3
        access[address(arg1)] = arg2
        emit LogProvideAccess(block.timestamp, arg2, arg1);
}

function setPullPaymode() {
    require access[address(msg.sender)] <= 3
    if access[address(msg.sender)] != 2:
        require access[address(msg.sender)] <= 3
        if access[address(msg.sender)] != 3:
            revert with 0, 'access denied'
    require paymode <= 1
    if paymode:
        revert with 0, 'pay mode does not the same'
    require paymode <= 1
    if paymode != 1:
        if not latestPayout:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cannot set pull pay mode if latest time is 0'
        paymode = 1
        require paymode <= 1
        emit LogPaymodeChanged(block.timestamp, paymode);
}

function getMyDividends() {
    if waveStartup + (168 * 24 * 3600) > block.timestamp:
        revert with 0, 'pause on next wave not expired'
    require paymode <= 1
    if paymode != 1:
        revert with 0, 'pay mode does not the same'
    require ext_code.size(stor4)
    call stor4.investorFullInfo(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if ext_call.return_data[0] <= 0:
        revert with 0, 'sender is not investor'
    if ext_call.return_data[64] >= latestPayout:
        require ext_call.return_data[64] <= block.timestamp
        if block.timestamp - ext_call.return_data[64] / 24 * 3600 <= 0:
            revert with 0, 'the latest payment was earlier than 24 hours'
        require ext_code.size(stor4)
        call stor4.setPaymentTime(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if not ext_call.return_data[32]:
            if eth.balance(this.address) >= ext_call.return_data[96]:
                if ext_call.return_data[96] <= 0:
                    call msg.sender with:
                         gas 2300 wei
                    if ext_call.success:
                        emit LogPayDividends(block.timestamp, 0, msg.sender);
                else:
                    require ext_code.size(stor4)
                    call stor4.setRefBonus(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    call msg.sender with:
                       value ext_call.return_data[96] wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        emit LogPayDividends(block.timestamp, 0, msg.sender);
                        emit LogPayReferrerBonus(block.timestamp, ext_call.return_data[96], msg.sender);
            else:
                create contract with 0 wei
                                code: code.data[16871 len 4520]
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                stor4 = address(create.new_address)
                require paymode <= 1
                if paymode != 0:
                    latestPayout = 0
                    paymode = 0
                    require paymode <= 1
                    emit LogPaymodeChanged(block.timestamp, paymode);
                require ext_code.size(stor4)
                call stor4.iterStart() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor2 = ext_call.return_data[0]
                investmentsNum = 0
                waveStartup = block.timestamp
                stor6 = 0
                emit LogNextWave(block.timestamp);
        else:
            require stor11
            if eth.balance(this.address) >= (ext_call.return_data[32] * stor10 / stor11 * block.timestamp - ext_call.return_data[64] / 24 * 3600) + ext_call.return_data[96]:
                if ext_call.return_data[96] <= 0:
                    call msg.sender with:
                       value ext_call.return_data[32] * stor10 / stor11 * block.timestamp - ext_call.return_data[64] / 24 * 3600 wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        emit LogPayDividends(block.timestamp, ext_call.return_data[32] * stor10 / stor11 * block.timestamp - ext_call.return_data[64] / 24 * 3600, msg.sender);
                else:
                    require ext_code.size(stor4)
                    call stor4.setRefBonus(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    call msg.sender with:
                       value (ext_call.return_data[32] * stor10 / stor11 * block.timestamp - ext_call.return_data[64] / 24 * 3600) + ext_call.return_data[96] wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        emit LogPayDividends(block.timestamp, ext_call.return_data[32] * stor10 / stor11 * block.timestamp - ext_call.return_data[64] / 24 * 3600, msg.sender);
                        emit LogPayReferrerBonus(block.timestamp, ext_call.return_data[96], msg.sender);
            else:
                create contract with 0 wei
                                code: code.data[16871 len 4520]
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                stor4 = address(create.new_address)
                require paymode <= 1
                if paymode != 0:
                    latestPayout = 0
                    paymode = 0
                    require paymode <= 1
                    emit LogPaymodeChanged(block.timestamp, paymode);
                require ext_code.size(stor4)
                call stor4.iterStart() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor2 = ext_call.return_data[0]
                investmentsNum = 0
                waveStartup = block.timestamp
                stor6 = 0
                emit LogNextWave(block.timestamp);
    else:
        require ext_code.size(stor4)
        call stor4.setPaymentTime(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, latestPayout
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require latestPayout <= block.timestamp
        if block.timestamp - latestPayout / 24 * 3600 <= 0:
            revert with 0, 'the latest payment was earlier than 24 hours'
        require ext_code.size(stor4)
        call stor4.setPaymentTime(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if not ext_call.return_data[32]:
            if eth.balance(this.address) >= ext_call.return_data[96]:
                if ext_call.return_data[96] <= 0:
                    call msg.sender with:
                         gas 2300 wei
                    if ext_call.success:
                        emit LogPayDividends(block.timestamp, 0, msg.sender);
                else:
                    require ext_code.size(stor4)
                    call stor4.setRefBonus(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    call msg.sender with:
                       value ext_call.return_data[96] wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        emit LogPayDividends(block.timestamp, 0, msg.sender);
                        emit LogPayReferrerBonus(block.timestamp, ext_call.return_data[96], msg.sender);
            else:
                create contract with 0 wei
                                code: code.data[16871 len 4520]
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                stor4 = address(create.new_address)
                require paymode <= 1
                if paymode != 0:
                    latestPayout = 0
                    paymode = 0
                    require paymode <= 1
                    emit LogPaymodeChanged(block.timestamp, paymode);
                require ext_code.size(stor4)
                call stor4.iterStart() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor2 = ext_call.return_data[0]
                investmentsNum = 0
                waveStartup = block.timestamp
                stor6 = 0
                emit LogNextWave(block.timestamp);
        else:
            require stor11
            if eth.balance(this.address) >= (ext_call.return_data[32] * stor10 / stor11 * block.timestamp - latestPayout / 24 * 3600) + ext_call.return_data[96]:
                if ext_call.return_data[96] <= 0:
                    call msg.sender with:
                       value ext_call.return_data[32] * stor10 / stor11 * block.timestamp - latestPayout / 24 * 3600 wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        emit LogPayDividends(block.timestamp, ext_call.return_data[32] * stor10 / stor11 * block.timestamp - latestPayout / 24 * 3600, msg.sender);
                else:
                    require ext_code.size(stor4)
                    call stor4.setRefBonus(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    call msg.sender with:
                       value (ext_call.return_data[32] * stor10 / stor11 * block.timestamp - latestPayout / 24 * 3600) + ext_call.return_data[96] wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        emit LogPayDividends(block.timestamp, ext_call.return_data[32] * stor10 / stor11 * block.timestamp - latestPayout / 24 * 3600, msg.sender);
                        emit LogPayReferrerBonus(block.timestamp, ext_call.return_data[96], msg.sender);
            else:
                create contract with 0 wei
                                code: code.data[16871 len 4520]
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                stor4 = address(create.new_address)
                require paymode <= 1
                if paymode != 0:
                    latestPayout = 0
                    paymode = 0
                    require paymode <= 1
                    emit LogPaymodeChanged(block.timestamp, paymode);
                require ext_code.size(stor4)
                call stor4.iterStart() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor2 = ext_call.return_data[0]
                investmentsNum = 0
                waveStartup = block.timestamp
                stor6 = 0
                emit LogNextWave(block.timestamp);
    emit LogBalanceChanged(block.timestamp, eth.balance(this.address));
}

function _fallback() payable {
    if not msg.value:
        if waveStartup + (168 * 24 * 3600) > block.timestamp:
            revert with 0, 'pause on next wave not expired'
        require paymode <= 1
        if paymode != 1:
            revert with 0, 'pay mode does not the same'
        require ext_code.size(stor4)
        call stor4.investorFullInfo(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if ext_call.return_data[0] <= 0:
            revert with 0, 'sender is not investor'
        if ext_call.return_data[64] >= latestPayout:
            require ext_call.return_data[64] <= block.timestamp
            if block.timestamp - ext_call.return_data[64] / 24 * 3600 <= 0:
                revert with 0, 'the latest payment was earlier than 24 hours'
            require ext_code.size(stor4)
            call stor4.setPaymentTime(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            if not ext_call.return_data[32]:
                if eth.balance(this.address) >= ext_call.return_data[96]:
                    if ext_call.return_data[96] <= 0:
                        call msg.sender with:
                             gas 2300 wei
                        if ext_call.success:
                            emit LogPayDividends(block.timestamp, 0, msg.sender);
                    else:
                        require ext_code.size(stor4)
                        call stor4.setRefBonus(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        call msg.sender with:
                           value ext_call.return_data[96] wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
                            emit LogPayDividends(block.timestamp, 0, msg.sender);
                            emit LogPayReferrerBonus(block.timestamp, ext_call.return_data[96], msg.sender);
                else:
                    create contract with 0 wei
                                    code: code.data[16871 len 4520]
                    if not create.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor4 = address(create.new_address)
                    require paymode <= 1
                    if paymode != 0:
                        latestPayout = 0
                        paymode = 0
                        require paymode <= 1
                        emit LogPaymodeChanged(block.timestamp, paymode);
                    require ext_code.size(stor4)
                    call stor4.iterStart() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor2 = ext_call.return_data[0]
                    investmentsNum = 0
                    waveStartup = block.timestamp
                    stor6 = 0
                    emit LogNextWave(block.timestamp);
            else:
                require stor11
                if eth.balance(this.address) >= (ext_call.return_data[32] * stor10 / stor11 * block.timestamp - ext_call.return_data[64] / 24 * 3600) + ext_call.return_data[96]:
                    if ext_call.return_data[96] <= 0:
                        call msg.sender with:
                           value ext_call.return_data[32] * stor10 / stor11 * block.timestamp - ext_call.return_data[64] / 24 * 3600 wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
                            emit LogPayDividends(block.timestamp, ext_call.return_data[32] * stor10 / stor11 * block.timestamp - ext_call.return_data[64] / 24 * 3600, msg.sender);
                    else:
                        require ext_code.size(stor4)
                        call stor4.setRefBonus(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        call msg.sender with:
                           value (ext_call.return_data[32] * stor10 / stor11 * block.timestamp - ext_call.return_data[64] / 24 * 3600) + ext_call.return_data[96] wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
                            emit LogPayDividends(block.timestamp, ext_call.return_data[32] * stor10 / stor11 * block.timestamp - ext_call.return_data[64] / 24 * 3600, msg.sender);
                            emit LogPayReferrerBonus(block.timestamp, ext_call.return_data[96], msg.sender);
                else:
                    create contract with 0 wei
                                    code: code.data[16871 len 4520]
                    if not create.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor4 = address(create.new_address)
                    require paymode <= 1
                    if paymode != 0:
                        latestPayout = 0
                        paymode = 0
                        require paymode <= 1
                        emit LogPaymodeChanged(block.timestamp, paymode);
                    require ext_code.size(stor4)
                    call stor4.iterStart() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor2 = ext_call.return_data[0]
                    investmentsNum = 0
                    waveStartup = block.timestamp
                    stor6 = 0
                    emit LogNextWave(block.timestamp);
        else:
            require ext_code.size(stor4)
            call stor4.setPaymentTime(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, latestPayout
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require latestPayout <= block.timestamp
            if block.timestamp - latestPayout / 24 * 3600 <= 0:
                revert with 0, 'the latest payment was earlier than 24 hours'
            require ext_code.size(stor4)
            call stor4.setPaymentTime(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            if not ext_call.return_data[32]:
                if eth.balance(this.address) >= ext_call.return_data[96]:
                    if ext_call.return_data[96] <= 0:
                        call msg.sender with:
                             gas 2300 wei
                        if ext_call.success:
                            emit LogPayDividends(block.timestamp, 0, msg.sender);
                    else:
                        require ext_code.size(stor4)
                        call stor4.setRefBonus(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        call msg.sender with:
                           value ext_call.return_data[96] wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
                            emit LogPayDividends(block.timestamp, 0, msg.sender);
                            emit LogPayReferrerBonus(block.timestamp, ext_call.return_data[96], msg.sender);
                else:
                    create contract with 0 wei
                                    code: code.data[16871 len 4520]
                    if not create.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor4 = address(create.new_address)
                    require paymode <= 1
                    if paymode != 0:
                        latestPayout = 0
                        paymode = 0
                        require paymode <= 1
                        emit LogPaymodeChanged(block.timestamp, paymode);
                    require ext_code.size(stor4)
                    call stor4.iterStart() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor2 = ext_call.return_data[0]
                    investmentsNum = 0
                    waveStartup = block.timestamp
                    stor6 = 0
                    emit LogNextWave(block.timestamp);
            else:
                require stor11
                if eth.balance(this.address) >= (ext_call.return_data[32] * stor10 / stor11 * block.timestamp - latestPayout / 24 * 3600) + ext_call.return_data[96]:
                    if ext_call.return_data[96] <= 0:
                        call msg.sender with:
                           value ext_call.return_data[32] * stor10 / stor11 * block.timestamp - latestPayout / 24 * 3600 wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
                            emit LogPayDividends(block.timestamp, ext_call.return_data[32] * stor10 / stor11 * block.timestamp - latestPayout / 24 * 3600, msg.sender);
                    else:
                        require ext_code.size(stor4)
                        call stor4.setRefBonus(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        call msg.sender with:
                           value (ext_call.return_data[32] * stor10 / stor11 * block.timestamp - latestPayout / 24 * 3600) + ext_call.return_data[96] wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
                            emit LogPayDividends(block.timestamp, ext_call.return_data[32] * stor10 / stor11 * block.timestamp - latestPayout / 24 * 3600, msg.sender);
                            emit LogPayReferrerBonus(block.timestamp, ext_call.return_data[96], msg.sender);
                else:
                    create contract with 0 wei
                                    code: code.data[16871 len 4520]
                    if not create.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor4 = address(create.new_address)
                    require paymode <= 1
                    if paymode != 0:
                        latestPayout = 0
                        paymode = 0
                        require paymode <= 1
                        emit LogPaymodeChanged(block.timestamp, paymode);
                    require ext_code.size(stor4)
                    call stor4.iterStart() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor2 = ext_call.return_data[0]
                    investmentsNum = 0
                    waveStartup = block.timestamp
                    stor6 = 0
                    emit LogNextWave(block.timestamp);
    else:
        mem[224 len calldata.size] = call.data[0 len calldata.size]
        if not mem[224 len 20]:
            if waveStartup + (168 * 24 * 3600) > block.timestamp:
                revert with 0, 'pause on next wave not expired'
            if msg.value < 5 * 10^16:
                revert with 0, 'msg.value must be >= minInvesment'
            if eth.balance(this.address) > 9250 * 10^18 * 3600:
                revert with 0, 'the contract eth balance limit'
            if stor5[address(msg.sender)]:
                if not msg.value:
                    call adminAddr with:
                         gas 2300 wei
                else:
                    require stor13
                    call adminAddr with:
                       value msg.value * stor12 / stor13 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not msg.value:
                    call payerAddr with:
                         gas 2300 wei
                else:
                    require stor15
                    call payerAddr with:
                       value msg.value * stor14 / stor15 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor4)
                call stor4.contains(address arg1) with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor4)
                if ext_call.return_data[0]:
                    call stor4.addValue(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                else:
                    call stor4.insert(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit LogNewInvestor(block.timestamp, msg.value, msg.sender);
                require paymode <= 1
                if paymode == 1:
                    require ext_code.size(stor4)
                    call stor4.setPaymentTime(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                emit LogNewInvesment(block.timestamp, msg.value, msg.sender);
            else:
                if not address(code.data[16871 len 32]):
                    if not msg.value:
                        call adminAddr with:
                             gas 2300 wei
                    else:
                        require stor13
                        call adminAddr with:
                           value msg.value * stor12 / stor13 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not msg.value:
                        call payerAddr with:
                             gas 2300 wei
                    else:
                        require stor15
                        call payerAddr with:
                           value msg.value * stor14 / stor15 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor4)
                    call stor4.contains(address arg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor4)
                    if ext_call.return_data[0]:
                        call stor4.addValue(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, msg.value
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                    else:
                        call stor4.insert(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, msg.value
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit LogNewInvestor(block.timestamp, msg.value, msg.sender);
                    require paymode <= 1
                    if paymode == 1:
                        require ext_code.size(stor4)
                        call stor4.setPaymentTime(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                    emit LogNewInvesment(block.timestamp, msg.value, msg.sender);
                else:
                    if address(code.data[16871 len 32]) == msg.sender:
                        if not msg.value:
                            call adminAddr with:
                                 gas 2300 wei
                        else:
                            require stor13
                            call adminAddr with:
                               value msg.value * stor12 / stor13 wei
                                 gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not msg.value:
                            call payerAddr with:
                                 gas 2300 wei
                        else:
                            require stor15
                            call payerAddr with:
                               value msg.value * stor14 / stor15 wei
                                 gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor4)
                        call stor4.contains(address arg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor4)
                        if ext_call.return_data[0]:
                            call stor4.addValue(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, msg.value
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                        else:
                            call stor4.insert(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, msg.value
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit LogNewInvestor(block.timestamp, msg.value, msg.sender);
                        require paymode <= 1
                        if paymode == 1:
                            require ext_code.size(stor4)
                            call stor4.setPaymentTime(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                        emit LogNewInvesment(block.timestamp, msg.value, msg.sender);
                    else:
                        require ext_code.size(stor4)
                        call stor4.contains(address arg1) with:
                             gas gas_remaining wei
                            args address(code.data[16871 len 32])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if not msg.value:
                                call adminAddr with:
                                     gas 2300 wei
                            else:
                                require stor13
                                call adminAddr with:
                                   value msg.value * stor12 / stor13 wei
                                     gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not msg.value:
                                call payerAddr with:
                                     gas 2300 wei
                            else:
                                require stor15
                                call payerAddr with:
                                   value msg.value * stor14 / stor15 wei
                                     gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor4)
                            call stor4.contains(address arg1) with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor4)
                            if ext_call.return_data[0]:
                                call stor4.addValue(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                            else:
                                call stor4.insert(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit LogNewInvestor(block.timestamp, msg.value, msg.sender);
                            require paymode <= 1
                            if paymode == 1:
                                require ext_code.size(stor4)
                                call stor4.setPaymentTime(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                            emit LogNewInvesment(block.timestamp, msg.value, msg.sender);
                        else:
                            if not msg.value:
                                require ext_code.size(stor4)
                                call stor4.addRefBonus(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(code.data[16871 len 32]), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                stor5[address(msg.sender)] = 1
                                if not msg.value:
                                    emit LogNewReferral(block.timestamp, msg.value, msg.sender);
                                    if address(code.data[16903 len 32]):
                                        if address(code.data[16903 len 32]) != msg.sender:
                                            require ext_code.size(stor4)
                                            call stor4.contains(address arg1) with:
                                                 gas gas_remaining wei
                                                args address(code.data[16903 len 32])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                if address(code.data[16871 len 32]) != address(code.data[16903 len 32]):
                                                    require ext_code.size(stor4)
                                                    call stor4.addRefBonus(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(code.data[16903 len 32]), 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0]
                                                    if address(code.data[16935 len 32]):
                                                        if address(code.data[16935 len 32]) != msg.sender:
                                                            require ext_code.size(stor4)
                                                            call stor4.contains(address arg1) with:
                                                                 gas gas_remaining wei
                                                                args address(code.data[16935 len 32])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0]:
                                                                if address(code.data[16871 len 32]) != address(code.data[16935 len 32]):
                                                                    if address(code.data[16903 len 32]) != address(code.data[16935 len 32]):
                                                                        require ext_code.size(stor4)
                                                                        call stor4.addRefBonus(address arg1, uint256 arg2) with:
                                                                             gas gas_remaining wei
                                                                            args address(code.data[16935 len 32]), 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0]
                                    if not msg.value:
                                        call adminAddr with:
                                             gas 2300 wei
                                    else:
                                        require stor13
                                        call adminAddr with:
                                           value msg.value * stor12 / stor13 wei
                                             gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not msg.value:
                                        call payerAddr with:
                                             gas 2300 wei
                                    else:
                                        require stor15
                                        call payerAddr with:
                                           value msg.value * stor14 / stor15 wei
                                             gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(stor4)
                                    call stor4.contains(address arg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor4)
                                    if ext_call.return_data[0]:
                                        call stor4.addValue(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                    else:
                                        call stor4.insert(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit LogNewInvestor(block.timestamp, msg.value, msg.sender);
                                    require paymode <= 1
                                    if paymode == 1:
                                        require ext_code.size(stor4)
                                        call stor4.setPaymentTime(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                    emit LogNewInvesment(block.timestamp, msg.value, msg.sender);
                                else:
                                    require stor11
                                    emit LogNewReferral(block.timestamp, msg.value + (msg.value * stor10 / stor11), msg.sender);
                                    if address(code.data[16903 len 32]):
                                        if address(code.data[16903 len 32]) != msg.sender:
                                            require ext_code.size(stor4)
                                            call stor4.contains(address arg1) with:
                                                 gas gas_remaining wei
                                                args address(code.data[16903 len 32])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                if address(code.data[16871 len 32]) != address(code.data[16903 len 32]):
                                                    require ext_code.size(stor4)
                                                    call stor4.addRefBonus(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(code.data[16903 len 32]), 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0]
                                                    if address(code.data[16935 len 32]):
                                                        if address(code.data[16935 len 32]) != msg.sender:
                                                            require ext_code.size(stor4)
                                                            call stor4.contains(address arg1) with:
                                                                 gas gas_remaining wei
                                                                args address(code.data[16935 len 32])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0]:
                                                                if address(code.data[16871 len 32]) != address(code.data[16935 len 32]):
                                                                    if address(code.data[16903 len 32]) != address(code.data[16935 len 32]):
                                                                        require ext_code.size(stor4)
                                                                        call stor4.addRefBonus(address arg1, uint256 arg2) with:
                                                                             gas gas_remaining wei
                                                                            args address(code.data[16935 len 32]), 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0]
                                    if not msg.value:
                                        call adminAddr with:
                                             gas 2300 wei
                                    else:
                                        require stor13
                                        call adminAddr with:
                                           value msg.value * stor12 / stor13 wei
                                             gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not msg.value:
                                        call payerAddr with:
                                             gas 2300 wei
                                    else:
                                        require stor15
                                        call payerAddr with:
                                           value msg.value * stor14 / stor15 wei
                                             gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(stor4)
                                    call stor4.contains(address arg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor4)
                                    if ext_call.return_data[0]:
                                        call stor4.addValue(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value + (msg.value * stor10 / stor11)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                    else:
                                        call stor4.insert(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value + (msg.value * stor10 / stor11)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit LogNewInvestor(block.timestamp, msg.value + (msg.value * stor10 / stor11), msg.sender);
                                    require paymode <= 1
                                    if paymode == 1:
                                        require ext_code.size(stor4)
                                        call stor4.setPaymentTime(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                    emit LogNewInvesment(block.timestamp, msg.value + (msg.value * stor10 / stor11), msg.sender);
                            else:
                                require stor17
                                require ext_code.size(stor4)
                                call stor4.addRefBonus(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(code.data[16871 len 32]), msg.value * stor16 / stor17
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                stor5[address(msg.sender)] = 1
                                if not msg.value:
                                    emit LogNewReferral(block.timestamp, msg.value, msg.sender);
                                    if address(code.data[16903 len 32]):
                                        if address(code.data[16903 len 32]) != msg.sender:
                                            require ext_code.size(stor4)
                                            call stor4.contains(address arg1) with:
                                                 gas gas_remaining wei
                                                args address(code.data[16903 len 32])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                if address(code.data[16871 len 32]) != address(code.data[16903 len 32]):
                                                    require ext_code.size(stor4)
                                                    call stor4.addRefBonus(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(code.data[16903 len 32]), msg.value * stor16 / stor17
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0]
                                                    if address(code.data[16935 len 32]):
                                                        if address(code.data[16935 len 32]) != msg.sender:
                                                            require ext_code.size(stor4)
                                                            call stor4.contains(address arg1) with:
                                                                 gas gas_remaining wei
                                                                args address(code.data[16935 len 32])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0]:
                                                                if address(code.data[16871 len 32]) != address(code.data[16935 len 32]):
                                                                    if address(code.data[16903 len 32]) != address(code.data[16935 len 32]):
                                                                        require ext_code.size(stor4)
                                                                        call stor4.addRefBonus(address arg1, uint256 arg2) with:
                                                                             gas gas_remaining wei
                                                                            args address(code.data[16935 len 32]), msg.value * stor16 / stor17
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0]
                                    if not msg.value:
                                        call adminAddr with:
                                             gas 2300 wei
                                    else:
                                        require stor13
                                        call adminAddr with:
                                           value msg.value * stor12 / stor13 wei
                                             gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not msg.value:
                                        call payerAddr with:
                                             gas 2300 wei
                                    else:
                                        require stor15
                                        call payerAddr with:
                                           value msg.value * stor14 / stor15 wei
                                             gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(stor4)
                                    call stor4.contains(address arg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor4)
                                    if ext_call.return_data[0]:
                                        call stor4.addValue(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                    else:
                                        call stor4.insert(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit LogNewInvestor(block.timestamp, msg.value, msg.sender);
                                    require paymode <= 1
                                    if paymode == 1:
                                        require ext_code.size(stor4)
                                        call stor4.setPaymentTime(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                    emit LogNewInvesment(block.timestamp, msg.value, msg.sender);
                                else:
                                    require stor11
                                    emit LogNewReferral(block.timestamp, msg.value + (msg.value * stor10 / stor11), msg.sender);
                                    if address(code.data[16903 len 32]):
                                        if address(code.data[16903 len 32]) != msg.sender:
                                            require ext_code.size(stor4)
                                            call stor4.contains(address arg1) with:
                                                 gas gas_remaining wei
                                                args address(code.data[16903 len 32])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                if address(code.data[16871 len 32]) != address(code.data[16903 len 32]):
                                                    require ext_code.size(stor4)
                                                    call stor4.addRefBonus(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(code.data[16903 len 32]), msg.value * stor16 / stor17
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0]
                                                    if address(code.data[16935 len 32]):
                                                        if address(code.data[16935 len 32]) != msg.sender:
                                                            require ext_code.size(stor4)
                                                            call stor4.contains(address arg1) with:
                                                                 gas gas_remaining wei
                                                                args address(code.data[16935 len 32])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0]:
                                                                if address(code.data[16871 len 32]) != address(code.data[16935 len 32]):
                                                                    if address(code.data[16903 len 32]) != address(code.data[16935 len 32]):
                                                                        require ext_code.size(stor4)
                                                                        call stor4.addRefBonus(address arg1, uint256 arg2) with:
                                                                             gas gas_remaining wei
                                                                            args address(code.data[16935 len 32]), msg.value * stor16 / stor17
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0]
                                    if not msg.value:
                                        call adminAddr with:
                                             gas 2300 wei
                                    else:
                                        require stor13
                                        call adminAddr with:
                                           value msg.value * stor12 / stor13 wei
                                             gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not msg.value:
                                        call payerAddr with:
                                             gas 2300 wei
                                    else:
                                        require stor15
                                        call payerAddr with:
                                           value msg.value * stor14 / stor15 wei
                                             gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(stor4)
                                    call stor4.contains(address arg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor4)
                                    if ext_call.return_data[0]:
                                        call stor4.addValue(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value + (msg.value * stor10 / stor11)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                    else:
                                        call stor4.insert(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value + (msg.value * stor10 / stor11)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit LogNewInvestor(block.timestamp, msg.value + (msg.value * stor10 / stor11), msg.sender);
                                    require paymode <= 1
                                    if paymode == 1:
                                        require ext_code.size(stor4)
                                        call stor4.setPaymentTime(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                    emit LogNewInvesment(block.timestamp, msg.value + (msg.value * stor10 / stor11), msg.sender);
        else:
            mem[96] = mem[224 len 20]
            if waveStartup + (168 * 24 * 3600) > block.timestamp:
                revert with 0, 'pause on next wave not expired'
            if msg.value < 5 * 10^16:
                revert with 0, 'msg.value must be >= minInvesment'
            if eth.balance(this.address) > 9250 * 10^18 * 3600:
                revert with 0, 'the contract eth balance limit'
            if stor5[address(msg.sender)]:
                if not msg.value:
                    call adminAddr with:
                         gas 2300 wei
                else:
                    require stor13
                    call adminAddr with:
                       value msg.value * stor12 / stor13 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not msg.value:
                    call payerAddr with:
                         gas 2300 wei
                else:
                    require stor15
                    call payerAddr with:
                       value msg.value * stor14 / stor15 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor4)
                call stor4.contains(address arg1) with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor4)
                if ext_call.return_data[0]:
                    call stor4.addValue(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                else:
                    call stor4.insert(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit LogNewInvestor(block.timestamp, msg.value, msg.sender);
                require paymode <= 1
                if paymode == 1:
                    require ext_code.size(stor4)
                    call stor4.setPaymentTime(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                emit LogNewInvesment(block.timestamp, msg.value, msg.sender);
            else:
                if not mem[108 len 20]:
                    if not msg.value:
                        call adminAddr with:
                             gas 2300 wei
                    else:
                        require stor13
                        call adminAddr with:
                           value msg.value * stor12 / stor13 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not msg.value:
                        call payerAddr with:
                             gas 2300 wei
                    else:
                        require stor15
                        call payerAddr with:
                           value msg.value * stor14 / stor15 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor4)
                    call stor4.contains(address arg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor4)
                    if ext_call.return_data[0]:
                        call stor4.addValue(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, msg.value
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                    else:
                        call stor4.insert(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, msg.value
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit LogNewInvestor(block.timestamp, msg.value, msg.sender);
                    require paymode <= 1
                    if paymode == 1:
                        require ext_code.size(stor4)
                        call stor4.setPaymentTime(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                    emit LogNewInvesment(block.timestamp, msg.value, msg.sender);
                else:
                    if mem[108 len 20] == msg.sender:
                        if not msg.value:
                            call adminAddr with:
                                 gas 2300 wei
                        else:
                            require stor13
                            call adminAddr with:
                               value msg.value * stor12 / stor13 wei
                                 gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not msg.value:
                            call payerAddr with:
                                 gas 2300 wei
                        else:
                            require stor15
                            call payerAddr with:
                               value msg.value * stor14 / stor15 wei
                                 gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor4)
                        call stor4.contains(address arg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor4)
                        if ext_call.return_data[0]:
                            call stor4.addValue(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, msg.value
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                        else:
                            call stor4.insert(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, msg.value
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit LogNewInvestor(block.timestamp, msg.value, msg.sender);
                        require paymode <= 1
                        if paymode == 1:
                            require ext_code.size(stor4)
                            call stor4.setPaymentTime(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                        emit LogNewInvesment(block.timestamp, msg.value, msg.sender);
                    else:
                        require ext_code.size(stor4)
                        call stor4.contains(address arg1) with:
                             gas gas_remaining wei
                            args mem[108 len 20]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if not msg.value:
                                call adminAddr with:
                                     gas 2300 wei
                            else:
                                require stor13
                                call adminAddr with:
                                   value msg.value * stor12 / stor13 wei
                                     gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not msg.value:
                                call payerAddr with:
                                     gas 2300 wei
                            else:
                                require stor15
                                call payerAddr with:
                                   value msg.value * stor14 / stor15 wei
                                     gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor4)
                            call stor4.contains(address arg1) with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor4)
                            if ext_call.return_data[0]:
                                call stor4.addValue(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                            else:
                                call stor4.insert(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit LogNewInvestor(block.timestamp, msg.value, msg.sender);
                            require paymode <= 1
                            if paymode == 1:
                                require ext_code.size(stor4)
                                call stor4.setPaymentTime(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                            emit LogNewInvesment(block.timestamp, msg.value, msg.sender);
                        else:
                            if not msg.value:
                                require ext_code.size(stor4)
                                call stor4.addRefBonus(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[108 len 20], 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                stor5[address(msg.sender)] = 1
                                if not msg.value:
                                    emit LogNewReferral(block.timestamp, msg.value, msg.sender);
                                    if address(code.data[16903 len 32]):
                                        if address(code.data[16903 len 32]) != msg.sender:
                                            require ext_code.size(stor4)
                                            call stor4.contains(address arg1) with:
                                                 gas gas_remaining wei
                                                args address(code.data[16903 len 32])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                if mem[108 len 20] != address(code.data[16903 len 32]):
                                                    require ext_code.size(stor4)
                                                    call stor4.addRefBonus(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(code.data[16903 len 32]), 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0]
                                                    if address(code.data[16935 len 32]):
                                                        if address(code.data[16935 len 32]) != msg.sender:
                                                            require ext_code.size(stor4)
                                                            call stor4.contains(address arg1) with:
                                                                 gas gas_remaining wei
                                                                args address(code.data[16935 len 32])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0]:
                                                                if mem[108 len 20] != address(code.data[16935 len 32]):
                                                                    if address(code.data[16903 len 32]) != address(code.data[16935 len 32]):
                                                                        require ext_code.size(stor4)
                                                                        call stor4.addRefBonus(address arg1, uint256 arg2) with:
                                                                             gas gas_remaining wei
                                                                            args address(code.data[16935 len 32]), 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0]
                                    if not msg.value:
                                        call adminAddr with:
                                             gas 2300 wei
                                    else:
                                        require stor13
                                        call adminAddr with:
                                           value msg.value * stor12 / stor13 wei
                                             gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not msg.value:
                                        call payerAddr with:
                                             gas 2300 wei
                                    else:
                                        require stor15
                                        call payerAddr with:
                                           value msg.value * stor14 / stor15 wei
                                             gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(stor4)
                                    call stor4.contains(address arg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor4)
                                    if ext_call.return_data[0]:
                                        call stor4.addValue(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                    else:
                                        call stor4.insert(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit LogNewInvestor(block.timestamp, msg.value, msg.sender);
                                    require paymode <= 1
                                    if paymode == 1:
                                        require ext_code.size(stor4)
                                        call stor4.setPaymentTime(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                    emit LogNewInvesment(block.timestamp, msg.value, msg.sender);
                                else:
                                    require stor11
                                    emit LogNewReferral(block.timestamp, msg.value + (msg.value * stor10 / stor11), msg.sender);
                                    if address(code.data[16903 len 32]):
                                        if address(code.data[16903 len 32]) != msg.sender:
                                            require ext_code.size(stor4)
                                            call stor4.contains(address arg1) with:
                                                 gas gas_remaining wei
                                                args address(code.data[16903 len 32])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                if mem[108 len 20] != address(code.data[16903 len 32]):
                                                    require ext_code.size(stor4)
                                                    call stor4.addRefBonus(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(code.data[16903 len 32]), 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0]
                                                    if address(code.data[16935 len 32]):
                                                        if address(code.data[16935 len 32]) != msg.sender:
                                                            require ext_code.size(stor4)
                                                            call stor4.contains(address arg1) with:
                                                                 gas gas_remaining wei
                                                                args address(code.data[16935 len 32])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0]:
                                                                if mem[108 len 20] != address(code.data[16935 len 32]):
                                                                    if address(code.data[16903 len 32]) != address(code.data[16935 len 32]):
                                                                        require ext_code.size(stor4)
                                                                        call stor4.addRefBonus(address arg1, uint256 arg2) with:
                                                                             gas gas_remaining wei
                                                                            args address(code.data[16935 len 32]), 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0]
                                    if not msg.value:
                                        call adminAddr with:
                                             gas 2300 wei
                                    else:
                                        require stor13
                                        call adminAddr with:
                                           value msg.value * stor12 / stor13 wei
                                             gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not msg.value:
                                        call payerAddr with:
                                             gas 2300 wei
                                    else:
                                        require stor15
                                        call payerAddr with:
                                           value msg.value * stor14 / stor15 wei
                                             gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(stor4)
                                    call stor4.contains(address arg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor4)
                                    if ext_call.return_data[0]:
                                        call stor4.addValue(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value + (msg.value * stor10 / stor11)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                    else:
                                        call stor4.insert(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value + (msg.value * stor10 / stor11)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit LogNewInvestor(block.timestamp, msg.value + (msg.value * stor10 / stor11), msg.sender);
                                    require paymode <= 1
                                    if paymode == 1:
                                        require ext_code.size(stor4)
                                        call stor4.setPaymentTime(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                    emit LogNewInvesment(block.timestamp, msg.value + (msg.value * stor10 / stor11), msg.sender);
                            else:
                                require stor17
                                require ext_code.size(stor4)
                                call stor4.addRefBonus(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[108 len 20], msg.value * stor16 / stor17
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                stor5[address(msg.sender)] = 1
                                if not msg.value:
                                    emit LogNewReferral(block.timestamp, msg.value, msg.sender);
                                    if address(code.data[16903 len 32]):
                                        if address(code.data[16903 len 32]) != msg.sender:
                                            require ext_code.size(stor4)
                                            call stor4.contains(address arg1) with:
                                                 gas gas_remaining wei
                                                args address(code.data[16903 len 32])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                if mem[108 len 20] != address(code.data[16903 len 32]):
                                                    require ext_code.size(stor4)
                                                    call stor4.addRefBonus(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(code.data[16903 len 32]), msg.value * stor16 / stor17
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0]
                                                    if address(code.data[16935 len 32]):
                                                        if address(code.data[16935 len 32]) != msg.sender:
                                                            require ext_code.size(stor4)
                                                            call stor4.contains(address arg1) with:
                                                                 gas gas_remaining wei
                                                                args address(code.data[16935 len 32])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0]:
                                                                if mem[108 len 20] != address(code.data[16935 len 32]):
                                                                    if address(code.data[16903 len 32]) != address(code.data[16935 len 32]):
                                                                        require ext_code.size(stor4)
                                                                        call stor4.addRefBonus(address arg1, uint256 arg2) with:
                                                                             gas gas_remaining wei
                                                                            args address(code.data[16935 len 32]), msg.value * stor16 / stor17
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0]
                                    if not msg.value:
                                        call adminAddr with:
                                             gas 2300 wei
                                    else:
                                        require stor13
                                        call adminAddr with:
                                           value msg.value * stor12 / stor13 wei
                                             gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not msg.value:
                                        call payerAddr with:
                                             gas 2300 wei
                                    else:
                                        require stor15
                                        call payerAddr with:
                                           value msg.value * stor14 / stor15 wei
                                             gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(stor4)
                                    call stor4.contains(address arg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor4)
                                    if ext_call.return_data[0]:
                                        call stor4.addValue(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                    else:
                                        call stor4.insert(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit LogNewInvestor(block.timestamp, msg.value, msg.sender);
                                    require paymode <= 1
                                    if paymode == 1:
                                        require ext_code.size(stor4)
                                        call stor4.setPaymentTime(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                    emit LogNewInvesment(block.timestamp, msg.value, msg.sender);
                                else:
                                    require stor11
                                    emit LogNewReferral(block.timestamp, msg.value + (msg.value * stor10 / stor11), msg.sender);
                                    if address(code.data[16903 len 32]):
                                        if address(code.data[16903 len 32]) != msg.sender:
                                            require ext_code.size(stor4)
                                            call stor4.contains(address arg1) with:
                                                 gas gas_remaining wei
                                                args address(code.data[16903 len 32])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                if mem[108 len 20] != address(code.data[16903 len 32]):
                                                    require ext_code.size(stor4)
                                                    call stor4.addRefBonus(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(code.data[16903 len 32]), msg.value * stor16 / stor17
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0]
                                                    if address(code.data[16935 len 32]):
                                                        if address(code.data[16935 len 32]) != msg.sender:
                                                            require ext_code.size(stor4)
                                                            call stor4.contains(address arg1) with:
                                                                 gas gas_remaining wei
                                                                args address(code.data[16935 len 32])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0]:
                                                                if mem[108 len 20] != address(code.data[16935 len 32]):
                                                                    if address(code.data[16903 len 32]) != address(code.data[16935 len 32]):
                                                                        require ext_code.size(stor4)
                                                                        call stor4.addRefBonus(address arg1, uint256 arg2) with:
                                                                             gas gas_remaining wei
                                                                            args address(code.data[16935 len 32]), msg.value * stor16 / stor17
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0]
                                    if not msg.value:
                                        call adminAddr with:
                                             gas 2300 wei
                                    else:
                                        require stor13
                                        call adminAddr with:
                                           value msg.value * stor12 / stor13 wei
                                             gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not msg.value:
                                        call payerAddr with:
                                             gas 2300 wei
                                    else:
                                        require stor15
                                        call payerAddr with:
                                           value msg.value * stor14 / stor15 wei
                                             gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(stor4)
                                    call stor4.contains(address arg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor4)
                                    if ext_call.return_data[0]:
                                        call stor4.addValue(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value + (msg.value * stor10 / stor11)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                    else:
                                        call stor4.insert(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value + (msg.value * stor10 / stor11)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit LogNewInvestor(block.timestamp, msg.value + (msg.value * stor10 / stor11), msg.sender);
                                    require paymode <= 1
                                    if paymode == 1:
                                        require ext_code.size(stor4)
                                        call stor4.setPaymentTime(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                    emit LogNewInvesment(block.timestamp, msg.value + (msg.value * stor10 / stor11), msg.sender);
        investmentsNum++
    emit LogBalanceChanged(block.timestamp, eth.balance(this.address));
}



}
