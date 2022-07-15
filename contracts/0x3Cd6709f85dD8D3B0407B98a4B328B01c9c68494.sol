contract main {




// =====================  Runtime code  =====================


address stor0;
address fundOwner;
address brokerAddress;
uint256 sub_332248de;
uint256 tokenTotal;
uint256 tokenBalance;
uint256 sub_67204411;
uint256 sub_4f89ab64;
uint256 bonusBalance;
uint256 sub_74fc249e;
uint256 sub_9f500e4b;
uint256 sub_3ad3e7e3;
uint256 sub_4dbc9a1c;
uint256 sub_5f286909;
uint256 dateStart;
uint256 dateEnd;
mapping of struct buyers;

function sub_332248de(?) {
    return sub_332248de
}

function sub_3ad3e7e3(?) {
    return sub_3ad3e7e3
}

function sub_4dbc9a1c(?) {
    return sub_4dbc9a1c
}

function sub_4f89ab64(?) {
    return sub_4f89ab64
}

function sub_5f286909(?) {
    return sub_5f286909
}

function sub_67204411(?) {
    return sub_67204411
}

function fundOwner() {
    return fundOwner
}

function sub_74fc249e(?) {
    return sub_74fc249e
}

function dateEnd() {
    return dateEnd
}

function buyers(address arg1) {
    require calldata.size - 4 >= 32
    return buyers[arg1].field_0, 
           buyers[arg1].field_256,
           buyers[arg1].field_512,
           buyers[arg1].field_768,
           bool(buyers[arg1].field_1024)
}

function tokenBalance() {
    return tokenBalance
}

function sub_9f500e4b(?) {
    return sub_9f500e4b
}

function dateStart() {
    return dateStart
}

function broker() {
    return brokerAddress
}

function tokenTotal() {
    return tokenTotal
}

function bonusBalance() {
    return bonusBalance
}

function sub_0ec8ef28(?) {
    require calldata.size - 4 >= 64
    if brokerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The method can only be called by BROKER'
    dateStart = arg1
    dateEnd = arg2
}

function close() {
    if brokerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The method can only be called by BROKER'
    require tokenBalance + bonusBalance >= tokenBalance
    if tokenBalance + bonusBalance <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot close : Contract balance is 0'
    tokenBalance = 0
    bonusBalance = 0
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args fundOwner, tokenBalance + bonusBalance
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_4f89ab64 = 0
}

function sub_22b6be39(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if brokerAddress != msg.sender:
        revert with 0, 'The method can only be called by BROKER'
    if arg1.length > 50:
        revert with 0, 'Out of list : can only verify maxVerifyPerBatch addresses'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 16
        buyers[mem[(32 * idx) + 140 len 20]].field_1024 = 1
        idx = idx + 1
        continue 
}

function sub_c967ea75(?) {
    require calldata.size - 4 >= 320
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'oneEthCanBuy must be greater than 0'
    if arg8 < 0:
        revert with 0, 'refundFeePerc is out of range'
    if arg8 >= 10^6:
        revert with 0, 'refundFeePerc is out of range'
    if arg6 <= 0:
        revert with 0, 'buyMin must be greater than 0'
    if arg7 < arg6:
        revert with 0, 'buyMax must be GE buyMin'
    if arg9 > arg10:
        revert with 0, 'dateStart must be GE dateEnd'
    if arg4 < 0:
        revert with 0, 'bonusPerc is out of range'
    if arg4 > 10^6:
        revert with 0, 'bonusPerc is out of range'
    if arg4:
        if arg5 <= 0:
            revert with 0, 'bonusInstallment is out of range'
    require arg8 <= 10^6
    sub_332248de = -arg8 + 10^6
    fundOwner = arg1
    brokerAddress = msg.sender
    stor0 = arg2
    sub_9f500e4b = arg3
    sub_67204411 = arg4
    sub_74fc249e = arg5
    sub_4dbc9a1c = arg6
    sub_5f286909 = arg7
    dateStart = arg9
    dateEnd = arg10
}

function issueToken(address arg1) {
    require calldata.size - 4 >= 32
    if brokerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The method can only be called by BROKER'
    if not buyers[address(arg1)].field_0:
        revert with 0, 'No pending token to issue'
    require buyers[address(arg1)].field_0
    require buyers[address(arg1)].field_0 * sub_9f500e4b / buyers[address(arg1)].field_0 == sub_9f500e4b
    if buyers[address(arg1)].field_0 * sub_9f500e4b / 10^18 <= 0:
        revert with 0, 'No pending token to issue'
    buyers[address(arg1)].field_0 = 0
    require buyers[address(arg1)].field_256 + (buyers[address(arg1)].field_0 * sub_9f500e4b / 10^18) >= buyers[address(arg1)].field_256
    buyers[address(arg1)].field_256 += buyers[address(arg1)].field_0 * sub_9f500e4b / 10^18
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), buyers[address(arg1)].field_0 * sub_9f500e4b / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call fundOwner with:
       value buyers[address(arg1)].field_0 wei
         gas 2300 * is_zero(value) wei
    emit 0xe2305908: buyers[address(arg1)].field_0 * sub_9f500e4b / 10^18, buyers[address(arg1)].field_0, fundOwner, arg1
}

function sub_02055462(?) {
    require calldata.size - 4 >= 32
    if brokerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The method can only be called by BROKER'
    if buyers[address(arg1)].field_256 <= 0:
        revert with 0, 'Bonus must be issued after token'
    require buyers[address(arg1)].field_768 <= buyers[address(arg1)].field_512
    if buyers[address(arg1)].field_512 - buyers[address(arg1)].field_768 <= 0:
        revert with 0, 'No bonus to issue'
    require sub_74fc249e > 0
    require sub_74fc249e
    if (buyers[address(arg1)].field_512 / sub_74fc249e) + 1 <= buyers[address(arg1)].field_512 - buyers[address(arg1)].field_768:
        require buyers[address(arg1)].field_768 + (buyers[address(arg1)].field_512 / sub_74fc249e) + 1 >= buyers[address(arg1)].field_768
        buyers[address(arg1)].field_768 = buyers[address(arg1)].field_768 + (buyers[address(arg1)].field_512 / sub_74fc249e) + 1
        require ext_code.size(stor0)
        call stor0.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), (buyers[address(arg1)].field_512 / sub_74fc249e) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x6774d675: ((buyers[address(arg1)].field_512 / sub_74fc249e) + 1), fundOwner, arg1
    else:
        require buyers[address(arg1)].field_512 >= buyers[address(arg1)].field_768
        buyers[address(arg1)].field_768 = buyers[address(arg1)].field_512
        require ext_code.size(stor0)
        call stor0.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), buyers[address(arg1)].field_512 - buyers[address(arg1)].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x6774d675: (buyers[address(arg1)].field_512 - buyers[address(arg1)].field_768), fundOwner, arg1
}

function tokenFallback(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The method can only be called by TOKEN'
    if tokenTotal:
        revert with 0, 'Cannot change total tokens'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid : tokenTotal must be greater than 0'
    tokenTotal = arg2
    tokenBalance = arg2
    if sub_67204411 > 0:
        require sub_67204411 + 10^6 >= sub_67204411
        if not arg2:
            require sub_67204411 + 10^6 > 0
            require sub_67204411 + 10^6
            if not 0 / sub_67204411 + 10^6:
                require sub_4f89ab64 >= sub_4f89ab64
                require bonusBalance >= bonusBalance
            else:
                require 0 / sub_67204411 + 10^6
                require 0 / sub_67204411 + 10^6 * sub_67204411 / 0 / sub_67204411 + 10^6 == sub_67204411
                require sub_4f89ab64 + (0 / sub_67204411 + 10^6 * sub_67204411 / 10^6) >= sub_4f89ab64
                sub_4f89ab64 += 0 / sub_67204411 + 10^6 * sub_67204411 / 10^6
                require bonusBalance + (0 / sub_67204411 + 10^6 * sub_67204411 / 10^6) >= bonusBalance
                bonusBalance += 0 / sub_67204411 + 10^6 * sub_67204411 / 10^6
        else:
            require arg2
            require 10^6 * arg2 / arg2 == 10^6
            require sub_67204411 + 10^6 > 0
            require sub_67204411 + 10^6
            if not 10^6 * arg2 / sub_67204411 + 10^6:
                require sub_4f89ab64 >= sub_4f89ab64
                require bonusBalance >= bonusBalance
            else:
                require 10^6 * arg2 / sub_67204411 + 10^6
                require 10^6 * arg2 / sub_67204411 + 10^6 * sub_67204411 / 10^6 * arg2 / sub_67204411 + 10^6 == sub_67204411
                require sub_4f89ab64 + (10^6 * arg2 / sub_67204411 + 10^6 * sub_67204411 / 10^6) >= sub_4f89ab64
                sub_4f89ab64 += 10^6 * arg2 / sub_67204411 + 10^6 * sub_67204411 / 10^6
                require bonusBalance + (10^6 * arg2 / sub_67204411 + 10^6 * sub_67204411 / 10^6) >= bonusBalance
                bonusBalance += 10^6 * arg2 / sub_67204411 + 10^6 * sub_67204411 / 10^6
        require sub_4f89ab64 <= tokenBalance
        tokenBalance -= sub_4f89ab64
}

function _fallback() payable {
    if block.timestamp < dateStart:
        revert with 0, 'TokenSale was not opened now'
    if block.timestamp > dateEnd:
        revert with 0, 'TokenSale was not opened now'
    if msg.value <= 0:
        revert with 0, 'Fund must be greater than 0'
    if buyers[address(msg.sender)].field_0:
        revert with 0, 'Cannot buy token anymore'
    buyers[address(msg.sender)].field_0 = msg.value
    require sub_3ad3e7e3 + msg.value >= sub_3ad3e7e3
    sub_3ad3e7e3 += msg.value
    if not msg.value:
        if 0 < sub_4dbc9a1c:
            revert with 0, 'Buy amount was out of range'
        if 0 > sub_5f286909:
            revert with 0, 'Buy amount was out of range'
        if 0 > tokenBalance:
            revert with 0, 'Insufficient token to supply'
        buyers[address(msg.sender)].field_512 = 0
        if bonusBalance < buyers[address(msg.sender)].field_512:
            buyers[address(msg.sender)].field_512 = bonusBalance
        require buyers[address(msg.sender)].field_512 <= bonusBalance
        bonusBalance -= buyers[address(msg.sender)].field_512
        emit 0x668c3add: msg.value, 0, msg.sender, fundOwner
    else:
        require msg.value
        require msg.value * sub_9f500e4b / msg.value == sub_9f500e4b
        if msg.value * sub_9f500e4b / 10^18 < sub_4dbc9a1c:
            revert with 0, 'Buy amount was out of range'
        if msg.value * sub_9f500e4b / 10^18 > sub_5f286909:
            revert with 0, 'Buy amount was out of range'
        if msg.value * sub_9f500e4b / 10^18 > tokenBalance:
            revert with 0, 'Insufficient token to supply'
        tokenBalance -= msg.value * sub_9f500e4b / 10^18
        if sub_67204411 <= 0:
            buyers[address(msg.sender)].field_512 = 0
        else:
            if not msg.value * sub_9f500e4b / 10^18:
                buyers[address(msg.sender)].field_512 = 0
            else:
                require msg.value * sub_9f500e4b / 10^18
                require msg.value * sub_9f500e4b / 10^18 * sub_67204411 / msg.value * sub_9f500e4b / 10^18 == sub_67204411
                buyers[address(msg.sender)].field_512 = msg.value * sub_9f500e4b / 10^18 * sub_67204411 / 10^6
        if bonusBalance < buyers[address(msg.sender)].field_512:
            buyers[address(msg.sender)].field_512 = bonusBalance
        require buyers[address(msg.sender)].field_512 <= bonusBalance
        bonusBalance -= buyers[address(msg.sender)].field_512
        emit 0x668c3add: msg.value, msg.value * sub_9f500e4b / 10^18, msg.sender, fundOwner
    if buyers[address(msg.sender)].field_1024:
        if not buyers[address(msg.sender)].field_0:
            revert with 0, 'No pending token to issue'
        require buyers[address(msg.sender)].field_0
        require buyers[address(msg.sender)].field_0 * sub_9f500e4b / buyers[address(msg.sender)].field_0 == sub_9f500e4b
        if buyers[address(msg.sender)].field_0 * sub_9f500e4b / 10^18 <= 0:
            revert with 0, 'No pending token to issue'
        buyers[address(msg.sender)].field_0 = 0
        require buyers[address(msg.sender)].field_256 + (buyers[address(msg.sender)].field_0 * sub_9f500e4b / 10^18) >= buyers[address(msg.sender)].field_256
        buyers[address(msg.sender)].field_256 += buyers[address(msg.sender)].field_0 * sub_9f500e4b / 10^18
        require ext_code.size(stor0)
        call stor0.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, buyers[address(msg.sender)].field_0 * sub_9f500e4b / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call fundOwner with:
           value buyers[address(msg.sender)].field_0 wei
             gas 2300 * is_zero(value) wei
        emit 0xe2305908: buyers[address(msg.sender)].field_0 * sub_9f500e4b / 10^18, buyers[address(msg.sender)].field_0, fundOwner, msg.sender
}

function refund(address arg1) {
    require calldata.size - 4 >= 32
    if brokerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The method can only be called by BROKER'
    if buyers[address(arg1)].field_0 <= 0:
        revert with 0, 'No amount to refund'
    if buyers[address(arg1)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot refund contract having issued token'
    if buyers[address(arg1)].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot refund contract having issued bonus'
    if not buyers[address(arg1)].field_0:
        buyers[address(arg1)].field_0 = 0
        if not buyers[address(arg1)].field_0:
            require 0 <= buyers[address(arg1)].field_0
            require buyers[address(arg1)].field_0 <= sub_3ad3e7e3
            sub_3ad3e7e3 -= buyers[address(arg1)].field_0
            require tokenBalance >= tokenBalance
            require bonusBalance + buyers[address(arg1)].field_512 >= bonusBalance
            bonusBalance += buyers[address(arg1)].field_512
            buyers[address(arg1)].field_512 = 0
            call arg1 with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call fundOwner with:
               value buyers[address(arg1)].field_0 wei
                 gas 2300 * is_zero(value) wei
        else:
            require buyers[address(arg1)].field_0
            require buyers[address(arg1)].field_0 * sub_332248de / buyers[address(arg1)].field_0 == sub_332248de
            require buyers[address(arg1)].field_0 * sub_332248de / 10^6 <= buyers[address(arg1)].field_0
            require buyers[address(arg1)].field_0 <= sub_3ad3e7e3
            sub_3ad3e7e3 -= buyers[address(arg1)].field_0
            require tokenBalance >= tokenBalance
            require bonusBalance + buyers[address(arg1)].field_512 >= bonusBalance
            bonusBalance += buyers[address(arg1)].field_512
            buyers[address(arg1)].field_512 = 0
            call arg1 with:
               value buyers[address(arg1)].field_0 * sub_332248de / 10^6 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call fundOwner with:
               value buyers[address(arg1)].field_0 - (buyers[address(arg1)].field_0 * sub_332248de / 10^6) wei
                 gas 2300 * is_zero(value) wei
    else:
        require buyers[address(arg1)].field_0
        require buyers[address(arg1)].field_0 * sub_9f500e4b / buyers[address(arg1)].field_0 == sub_9f500e4b
        buyers[address(arg1)].field_0 = 0
        if not buyers[address(arg1)].field_0:
            require 0 <= buyers[address(arg1)].field_0
            require buyers[address(arg1)].field_0 <= sub_3ad3e7e3
            sub_3ad3e7e3 -= buyers[address(arg1)].field_0
            require tokenBalance + (buyers[address(arg1)].field_0 * sub_9f500e4b / 10^18) >= tokenBalance
            tokenBalance += buyers[address(arg1)].field_0 * sub_9f500e4b / 10^18
            require bonusBalance + buyers[address(arg1)].field_512 >= bonusBalance
            bonusBalance += buyers[address(arg1)].field_512
            buyers[address(arg1)].field_512 = 0
            call arg1 with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call fundOwner with:
               value buyers[address(arg1)].field_0 wei
                 gas 2300 * is_zero(value) wei
        else:
            require buyers[address(arg1)].field_0
            require buyers[address(arg1)].field_0 * sub_332248de / buyers[address(arg1)].field_0 == sub_332248de
            require buyers[address(arg1)].field_0 * sub_332248de / 10^6 <= buyers[address(arg1)].field_0
            require buyers[address(arg1)].field_0 <= sub_3ad3e7e3
            sub_3ad3e7e3 -= buyers[address(arg1)].field_0
            require tokenBalance + (buyers[address(arg1)].field_0 * sub_9f500e4b / 10^18) >= tokenBalance
            tokenBalance += buyers[address(arg1)].field_0 * sub_9f500e4b / 10^18
            require bonusBalance + buyers[address(arg1)].field_512 >= bonusBalance
            bonusBalance += buyers[address(arg1)].field_512
            buyers[address(arg1)].field_512 = 0
            call arg1 with:
               value buyers[address(arg1)].field_0 * sub_332248de / 10^6 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call fundOwner with:
               value buyers[address(arg1)].field_0 - (buyers[address(arg1)].field_0 * sub_332248de / 10^6) wei
                 gas 2300 * is_zero(value) wei
}



}
