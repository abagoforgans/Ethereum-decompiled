contract main {




// =====================  Runtime code  =====================


const tokenFallback(address arg1, uint256 arg2, bytes arg3) = 0

const MAX_WITHDRAW_PCT_DAILY = 15

const MAX_WITHDRAW_PCT_TX = 5

const MAX_OWNER_COUNT = 10


address stor0;
array of uint256 stor1;
mapping of struct transactions;
mapping of uint8 stor3;
mapping of uint8 stor4;
mapping of uint8 stor5;
mapping of uint256 queryTokenGrant;
address stor7;
array of struct owners;
array of address whiteListedContracts;
uint256 required;
uint256 transactionCount;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint8 stor15;
uint256 stor16;

function owners(uint256 arg1) {
    require arg1 < owners.length
    return address(owners[arg1].field_0)
}

function ZTHTKN() {
    return address(stor1.length)
}

function isOwner(address arg1) {
    return bool(stor4[arg1])
}

function queryTokenGrant(address arg1) {
    return queryTokenGrant[address(arg1)]
}

function confirmations(uint256 arg1, address arg2) {
    return bool(stor3[arg1][arg2])
}

function isWhitelisted(address arg1) {
    return bool(stor5[arg1])
}

function dailyTokensPerContract(address arg1) {
    return queryTokenGrant[arg1]
}

function transactions(uint256 arg1) {
    mem[128] = transactions[arg1][2].field_0
    idx = 128
    s = 0
    while transactions[arg1][2].length + 96 > idx:
        mem[idx + 32] = transactions[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return address(transactions[arg1].field_0), 
           transactions[arg1].field_256,
           Array(len=transactions[arg1][2].length, data=mem[128 len transactions[arg1][2].length]),
           bool(uint8(transactions[arg1].field_768))
}

function transactionCount() {
    return transactionCount
}

function required() {
    return required
}

function whiteListedContracts(uint256 arg1) {
    require arg1 < whiteListedContracts.length
    return address(whiteListedContracts[arg1])
}

function _fallback() payable {
  stop
}

function setDailyTokenLimit(uint256 arg1) {
    require stor4[msg.sender]
    stor13 = arg1
}

function changeDivCardAddress(address arg1) {
    require stor4[msg.sender]
    stor7 = arg1
}

function deposit() payable {
    require msg.value + stor16 >= stor16
    stor16 += msg.value
}

function addZethrAddresses(address arg1, address arg2) {
    require stor4[msg.sender]
    stor0 = arg1
    stor7 = arg2
    address(stor1.length) = arg1
}

function alterTokenGrant(address arg1, uint256 arg2) {
    require stor4[msg.sender]
    require stor5[address(arg1)]
    queryTokenGrant[address(arg1)] = arg2
}

function revokeConfirmation(uint256 arg1) {
    require stor4[msg.sender]
    require stor3[arg1][msg.sender]
    require not uint8(transactions[arg1].field_768)
    stor3[arg1][msg.sender] = 0
    emit Revocation(msg.sender, arg1);
}

function changeRequirement(uint256 arg1) {
    require this.address == msg.sender
    require owners.length <= 10
    require arg1 <= owners.length
    require arg1
    require owners.length
    required = arg1
    emit RequirementChange(arg1);
}

function fromHexChar(uint256 arg1) {
    if arg1 << 248 >= '0':
        if arg1 << 248 <= '9':
            return (arg1 - 48)
    if arg1 << 248 >= 'a':
        if arg1 << 248 <= 'f':
            return (arg1 - 87)
    if arg1 << 248 < 'A':
        return 0
    if arg1 << 248 > 'F':
        return 0
    return (arg1 - 55)
}

function whiteListContract(address arg1) {
    require stor4[msg.sender]
    require not stor5[address(arg1)]
    require arg1
    stor5[address(arg1)] = 1
    whiteListedContracts.length++
    address(whiteListedContracts[whiteListedContracts.length]) = arg1
    queryTokenGrant[address(arg1)] = 0
    emit WhiteListAddition(arg1);
}

function getConfirmationCount(uint256 arg1) {
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 3)
        if not stor3[arg1][address(stor8[idx].field_0)]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function addOwner(address arg1) {
    require this.address == msg.sender
    require not stor4[address(arg1)]
    require arg1
    require owners.length + 1 <= 10
    require required <= owners.length + 1
    require required
    require owners.length + 1
    stor4[address(arg1)] = 1
    owners.length++
    address(owners[owners.length].field_0) = arg1
    emit OwnerAddition(arg1);
}

function contractTokenWithdraw(uint256 arg1, address arg2) {
    require stor5[msg.sender]
    require stor5[msg.sender]
    require ext_code.size(address(stor1.length))
    call address(stor1.length).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function retrieveTokens(address arg1, uint256 arg2) {
    require stor4[msg.sender]
    require stor5[address(arg1)]
    require ext_code.size(address(stor1.length))
    call address(stor1.length).0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function isConfirmed(uint256 arg1) {
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 3)
        if not stor3[arg1][address(stor8[idx].field_0)]:
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        return 1
    return 0
}

function buyInWithAllBalanced() payable {
    require stor4[msg.sender]
    if not stor15:
        require eth.balance(this.address) > 10^16
        require ext_code.size(address(stor1.length))
        call address(stor1.length).buyAndSetDivPercentage(address arg1, uint8 arg2, string arg3) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args 0, 0, 33, 96, 0, mem[228]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function replaceOwner(address arg1, address arg2) {
    require this.address == msg.sender
    require stor4[address(arg1)]
    require not stor4[address(arg2)]
    idx = 0
    while idx < owners.length:
        mem[0] = 8
        if address(owners[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require idx < owners.length
        address(owners[idx].field_0) = arg2
        stor4[address(arg1)] = 0
        stor4[arg2] = 1
        emit OwnerRemoval(arg1);
        emit OwnerAddition(arg2);
    stor4[address(arg1)] = 0
    stor4[arg2] = 1
    emit OwnerRemoval(arg1);
    emit OwnerAddition(arg2);
}

function buyTokens() payable {
    require stor4[msg.sender]
    if eth.balance(this.address) <= 10^16:
        emit EtherLogged(msg.value, msg.sender);
    else:
        require ext_code.size(address(stor1.length))
        call address(stor1.length).buyAndSetDivPercentage(address arg1, uint8 arg2, string arg3) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args 0, 0, 33, 96, 0, mem[228]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit BankrollInvest(eth.balance(this.address));
}

function receiveDividends() payable {
    if not stor15:
        require stor16 <= eth.balance(this.address)
        if eth.balance(this.address) - stor16 > 10^16:
            stor15 = 1
            require ext_code.size(address(stor1.length))
            call address(stor1.length).buyAndSetDivPercentage(address arg1, uint8 arg2, string arg3) with:
               value eth.balance(this.address) - stor16 wei
                 gas gas_remaining wei
                args 0, 0, 33, 96, 0, mem[228]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit BankrollInvest((eth.balance(this.address) - stor16));
            stor15 = 0
}

function getOwners() {
    if not owners.length:
        mem[(32 * owners.length) + 128] = 32
        mem[(32 * owners.length) + 160] = owners.length
        mem[(32 * owners.length) + 192 len floor32(owners.length)] = mem[128 len floor32(owners.length)]
        return memory
          from (32 * owners.length) + 128
           len (96 * owners.length) + 64
    mem[128] = address(owners.field_0)
    idx = 128
    s = 0
    while (32 * owners.length) + 96 > idx:
        mem[idx + 32] = address(owners[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * owners.length) + 192 len floor32(owners.length)] = mem[128 len floor32(owners.length)]
    return Array(len=owners.length, data=mem[128 len floor32(owners.length)], mem[(32 * owners.length) + floor32(owners.length) + 192 len (32 * owners.length) - floor32(owners.length)]), 
}

function getTransactionCount(bool arg1, bool arg2) {
    idx = 0
    s = 0
    while idx < transactionCount:
        if not arg1:
            if not arg2:
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 2
            if not uint8(transactions[idx].field_768):
                idx = idx + 1
                s = s
                continue 
        else:
            mem[0] = idx
            mem[32] = 2
            if uint8(transactions[idx].field_768):
                if not arg2:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 2
                if not uint8(transactions[idx].field_768):
                    idx = idx + 1
                    s = s
                    continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function permissibleTokenWithdrawal(uint256 arg1) {
    require ext_code.size(address(stor1.length))
    call address(stor1.length).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require arg1 <= 0
    else:
        require 5 * ext_call.return_data[0] / ext_call.return_data[0] == 5
        require arg1 <= 5 * ext_call.return_data[0] / 100
    if block.timestamp - stor12 < 24 * 3600:
        require arg1 + stor14 >= stor14
        if arg1 + stor14 > stor13:
            return 0
        stor14 += arg1
    else:
        stor12 = block.timestamp
        if not ext_call.return_data[0]:
            stor13 = 0
        else:
            require 15 * ext_call.return_data[0] / ext_call.return_data[0] == 15
            stor13 = 15 * ext_call.return_data[0] / 100
        stor14 = arg1
    return 1
}

function getConfirmations(uint256 arg1) {
    if owners.length:
        mem[128 len 32 * owners.length] = code.data[11423 len 32 * owners.length]
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 3)
        if not stor3[arg1][address(stor8[idx].field_0)]:
            idx = idx + 1
            s = s
            continue 
        require idx < owners.length
        mem[0] = 8
        require s < owners.length
        mem[(32 * s) + 128] = address(owners[idx].field_0)
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * owners.length) + 128] = s
    if s:
        mem[(32 * owners.length) + 160 len 32 * s] = code.data[11423 len 32 * s]
    t = 0
    while t < s:
        require t < owners.length
        require t < s
        mem[(32 * owners.length) + (32 * t) + 160] = mem[(32 * t) + 140 len 20]
        t = t + 1
        continue 
    mem[(32 * owners.length) + (32 * s) + 224 len floor32(s)] = mem[(32 * owners.length) + 160 len floor32(s)]
    return Array(len=s, data=mem[(32 * owners.length) + 160 len floor32(s)], mem[(32 * owners.length) + (32 * s) + floor32(s) + 224 len (32 * s) - floor32(s)]), 
}

function deWhiteListContract(address arg1) {
    require stor4[msg.sender]
    require stor5[address(arg1)]
    stor5[address(arg1)] = 0
    idx = 0
    while idx < whiteListedContracts.length - 1:
        require idx < whiteListedContracts.length
        mem[0] = 9
        if address(whiteListedContracts[idx]) != arg1:
            idx = idx + 1
            continue 
        require whiteListedContracts.length - 1 < owners.length
        require idx < whiteListedContracts.length
        address(whiteListedContracts[idx]) = address(owners[stor9.length].field_0)
        whiteListedContracts.length--
        if whiteListedContracts.length > whiteListedContracts.length - 1:
            idx = whiteListedContracts.length + sha3(9) - 1
            while sha3(9) + whiteListedContracts.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        emit WhiteListRemoval(arg1);
    whiteListedContracts.length--
    if whiteListedContracts.length > whiteListedContracts.length - 1:
        idx = whiteListedContracts.length - 1
        while whiteListedContracts.length > idx:
            uint256(whiteListedContracts[idx]) = 0
            idx = idx + 1
            continue 
    emit WhiteListRemoval(arg1);
}

function executeTransaction(uint256 arg1) {
    require not uint8(transactions[arg1].field_768)
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 3)
        if not stor3[arg1][address(stor8[idx].field_0)]:
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        uint8(transactions[arg1].field_768) = 1
        mem[96] = transactions[arg1][2].field_0
        idx = 96
        s = sha3(sha3(arg1, 2) + 2)
        while transactions[arg1][2].length + 96 > idx + 32:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        call address(transactions[arg1].field_0).mem[96 len 4] with:
           value transactions[arg1].field_256 wei
             gas gas_remaining wei
            args mem[100 len transactions[arg1][2].length + (floor32(transactions[arg1][2].length - 1) + -transactions[arg1][2].length + 32 % 32) - 4]
        if ext_call.success:
            emit Execution(arg1);
        else:
            emit ExecutionFailure(arg1);
            uint8(transactions[arg1].field_768) = 0
}

function confirmTransaction(uint256 arg1) {
    require stor4[msg.sender]
    require address(transactions[arg1].field_0)
    require not stor3[arg1][msg.sender]
    stor3[arg1][msg.sender] = 1
    emit Confirmation(msg.sender, arg1);
    require not uint8(transactions[arg1].field_768)
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 3)
        if not stor3[arg1][address(stor8[idx].field_0)]:
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        uint8(transactions[arg1].field_768) = 1
        mem[96] = transactions[arg1][2].field_0
        idx = 96
        s = sha3(sha3(arg1, 2) + 2)
        while transactions[arg1][2].length + 96 > idx + 32:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        call address(transactions[arg1].field_0).mem[96 len 4] with:
           value transactions[arg1].field_256 wei
             gas gas_remaining wei
            args mem[100 len transactions[arg1][2].length + (floor32(transactions[arg1][2].length - 1) + -transactions[arg1][2].length + 32 % 32) - 4]
        if ext_call.success:
            emit Execution(arg1);
        else:
            emit ExecutionFailure(arg1);
            uint8(transactions[arg1].field_768) = 0
}

function devTokenWithdraw(uint256 arg1) {
    require this.address == msg.sender
    require ext_code.size(address(stor1.length))
    call address(stor1.length).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require arg1 <= 0
    else:
        require 5 * ext_call.return_data[0] / ext_call.return_data[0] == 5
        require arg1 <= 5 * ext_call.return_data[0] / 100
    if block.timestamp - stor12 < 24 * 3600:
        require arg1 + stor14 >= stor14
        require arg1 + stor14 <= stor13
        stor14 += arg1
    else:
        stor12 = block.timestamp
        if not ext_call.return_data[0]:
            stor13 = 0
        else:
            require 15 * ext_call.return_data[0] / ext_call.return_data[0] == 15
            stor13 = 15 * ext_call.return_data[0] / 100
        stor14 = arg1
    require owners.length
    idx = 0
    while idx < owners.length:
        mem[0] = 8
        mem[100] = address(owners[idx].field_0)
        mem[132] = arg1 / owners.length
        require ext_code.size(address(stor1.length))
        call address(stor1.length).0xa9059cbb with:
             gas gas_remaining wei
            args address(owners[idx].field_0), arg1 / owners.length
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    emit DevWithdraw(arg1, arg1 / owners.length);
}

function removeOwner(address arg1) {
    require this.address == msg.sender
    require stor4[address(arg1)]
    require owners.length <= 10
    require required <= owners.length
    require required
    require owners.length
    stor4[address(arg1)] = 0
    idx = 0
    while idx < owners.length - 1:
        require idx < owners.length
        mem[0] = 8
        if address(owners[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require owners.length - 1 < owners.length
        require idx < owners.length
        address(owners[idx].field_0) = address(owners[owners.length].field_0)
        owners.length--
        if owners.length > owners.length - 1:
            idx = owners.length + sha3(8) - 1
            while sha3(8) + owners.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        if required > owners.length:
            require this.address == msg.sender
            require owners.length <= 10
            require owners.length <= owners.length
            require owners.length
            require owners.length
            required = owners.length
            emit RequirementChange(owners.length);
        emit OwnerRemoval(arg1);
    owners.length--
    if owners.length > owners.length - 1:
        idx = owners.length - 1
        while owners.length > idx:
            owners[idx].field_0 = 0
            idx = idx + 1
            continue 
    if required > owners.length:
        require this.address == msg.sender
        require owners.length <= 10
        require owners.length <= owners.length
        require owners.length
        require owners.length
        required = owners.length
        emit RequirementChange(owners.length);
    emit OwnerRemoval(arg1);
}

function getTransactionIds(uint256 arg1, uint256 arg2, bool arg3, bool arg4) {
    if transactionCount:
        mem[128 len 32 * transactionCount] = code.data[11423 len 32 * transactionCount]
    idx = 0
    s = 0
    while idx < transactionCount:
        if not arg3:
            if not arg4:
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 2
            if not uint8(transactions[idx].field_768):
                idx = idx + 1
                s = s
                continue 
        else:
            mem[0] = idx
            mem[32] = 2
            if uint8(transactions[idx].field_768):
                if not arg4:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 2
                if not uint8(transactions[idx].field_768):
                    idx = idx + 1
                    s = s
                    continue 
        require s < transactionCount
        mem[(32 * s) + 128] = idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * transactionCount) + 128] = arg2 - arg1
    if arg2 - arg1:
        mem[(32 * transactionCount) + 160 len 32 * arg2 - arg1] = code.data[11423 len 32 * arg2 - arg1]
    idx = arg1
    while idx < arg2:
        require idx < transactionCount
        require idx - arg1 < mem[(32 * transactionCount) + 128]
        mem[(32 * transactionCount) + (32 * idx - arg1) + 160] = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 160] = 32
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 192] = mem[(32 * transactionCount) + 128]
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 224 len floor32(mem[(32 * transactionCount) + 128])] = mem[(32 * transactionCount) + 160 len floor32(mem[(32 * transactionCount) + 128])]
    return Array(len=mem[(32 * transactionCount) + 128], data=mem[(32 * transactionCount) + (32 * arg2 - arg1) + 224 len 32 * mem[(32 * transactionCount) + 128]]), 
}

function submitTransaction(address arg1, uint256 arg2, bytes arg3) {
    require arg1
    address(transactions[stor11].field_0) = arg1
    transactions[stor11].field_256 = arg2
    transactions[stor11][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    uint8(transactions[stor11].field_768) = 0
    transactionCount++
    emit Submission(transactionCount);
    require stor4[msg.sender]
    require address(transactions[stor11].field_0)
    require not stor3[stor11][msg.sender]
    stor3[stor11][msg.sender] = 1
    emit Confirmation(msg.sender, transactionCount);
    require not uint8(transactions[stor11].field_768)
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(transactionCount, 3)
        if not stor3[stor11][address(stor8[idx].field_0)]:
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        uint8(transactions[stor11].field_768) = 1
        mem[ceil32(arg3.length) + 256] = transactions[stor11][2].field_0
        idx = ceil32(arg3.length) + 256
        s = sha3(sha3(transactionCount, 2) + 2)
        while ceil32(arg3.length) + transactions[stor11][2].length + 256 > idx + 32:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        call address(transactions[stor11].field_0).mem[ceil32(arg3.length) + 256 len 4] with:
           value transactions[stor11].field_256 wei
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + 260 len transactions[stor11][2].length + (floor32(transactions[stor11][2].length - 1) + -transactions[stor11][2].length + 32 % 32) - 4]
        if ext_call.success:
            emit Execution(transactionCount);
        else:
            emit ExecutionFailure(transactionCount);
            uint8(transactions[stor11].field_768) = 0
        return transactionCount
    return transactionCount
}

function allocateTokens(address arg1) {
    require stor4[msg.sender]
    require stor5[address(arg1)]
    require ext_code.size(address(stor1.length))
    call address(stor1.length).0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > queryTokenGrant[address(arg1)]:
        require queryTokenGrant[address(arg1)] <= ext_call.return_data[0]
        require ext_code.size(address(stor1.length))
        call address(stor1.length).0x23b872dd with:
             gas gas_remaining wei
            args address(arg1), this.address, ext_call.return_data[0] - queryTokenGrant[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit DailyTokensReceived(address(arg1), ext_call.return_data[0] - queryTokenGrant[address(arg1)]);
    else:
        require ext_code.size(address(stor1.length))
        call address(stor1.length).0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require queryTokenGrant[address(arg1)] - ext_call.return_data[0] <= 0
        else:
            require 5 * ext_call.return_data[0] / ext_call.return_data[0] == 5
            require queryTokenGrant[address(arg1)] - ext_call.return_data[0] <= 5 * ext_call.return_data[0] / 100
        if block.timestamp - stor12 < 24 * 3600:
            require queryTokenGrant[address(arg1)] - ext_call.return_data[0] + stor14 >= stor14
            require queryTokenGrant[address(arg1)] - ext_call.return_data[0] + stor14 <= stor13
            stor14 = queryTokenGrant[address(arg1)] - ext_call.return_data[0] + stor14
        else:
            stor12 = block.timestamp
            if not ext_call.return_data[0]:
                stor13 = 0
            else:
                require 15 * ext_call.return_data[0] / ext_call.return_data[0] == 15
                stor13 = 15 * ext_call.return_data[0] / 100
            stor14 = queryTokenGrant[address(arg1)] - ext_call.return_data[0]
        require ext_code.size(address(stor1.length))
        call address(stor1.length).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), queryTokenGrant[address(arg1)] - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit DailyTokensSent(address(arg1), queryTokenGrant[address(arg1)] - ext_call.return_data[0]);
    emit DailyTokenAdmin(arg1);
}

function dailyAccounting() {
    require stor4[msg.sender]
    s = 0
    idx = 0
    while idx < whiteListedContracts.length:
        mem[0] = address(whiteListedContracts[idx])
        mem[32] = 6
        if queryTokenGrant[address(stor9[idx])] > 0:
            require stor4[msg.sender]
            require stor5[address(stor9[idx])]
            mem[0] = address(whiteListedContracts[idx])
            mem[32] = 6
            require ext_code.size(address(stor1.length))
            call address(stor1.length).0x70a08231 with:
                 gas gas_remaining wei
                args address(whiteListedContracts[idx])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > queryTokenGrant[address(stor9[idx])]:
                require queryTokenGrant[address(stor9[idx])] <= ext_call.return_data[0]
                mem[132] = this.address
                mem[164] = ext_call.return_data[0] - queryTokenGrant[address(stor9[idx])]
                require ext_code.size(address(stor1.length))
                call address(stor1.length).0x23b872dd with:
                     gas gas_remaining wei
                    args address(whiteListedContracts[idx]), this.address, ext_call.return_data[0] - queryTokenGrant[address(stor9[idx])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                mem[128] = ext_call.return_data[0] - queryTokenGrant[address(stor9[idx])]
                emit DailyTokensReceived(address(whiteListedContracts[idx]), ext_call.return_data[0] - queryTokenGrant[address(stor9[idx])]);
            else:
                require ext_code.size(address(stor1.length))
                call address(stor1.length).0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require queryTokenGrant[address(stor9[idx])] - ext_call.return_data[0] <= 0
                else:
                    require 5 * ext_call.return_data[0] / ext_call.return_data[0] == 5
                    require queryTokenGrant[address(stor9[idx])] - ext_call.return_data[0] <= 5 * ext_call.return_data[0] / 100
                if block.timestamp - stor12 < 24 * 3600:
                    require queryTokenGrant[address(stor9[idx])] - ext_call.return_data[0] + stor14 >= stor14
                    require queryTokenGrant[address(stor9[idx])] - ext_call.return_data[0] + stor14 <= stor13
                    stor14 = queryTokenGrant[address(stor9[idx])] - ext_call.return_data[0] + stor14
                else:
                    stor12 = block.timestamp
                    if not ext_call.return_data[0]:
                        stor13 = 0
                    else:
                        require 15 * ext_call.return_data[0] / ext_call.return_data[0] == 15
                        stor13 = 15 * ext_call.return_data[0] / 100
                    stor14 = queryTokenGrant[address(stor9[idx])] - ext_call.return_data[0]
                mem[132] = queryTokenGrant[address(stor9[idx])] - ext_call.return_data[0]
                require ext_code.size(address(stor1.length))
                call address(stor1.length).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(whiteListedContracts[idx]), queryTokenGrant[address(stor9[idx])] - ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                mem[128] = queryTokenGrant[address(stor9[idx])] - ext_call.return_data[0]
                emit DailyTokensSent(address(whiteListedContracts[idx]), queryTokenGrant[address(stor9[idx])] - ext_call.return_data[0]);
            emit DailyTokenAdmin(address(whiteListedContracts[idx]));
            mem[96] = address(whiteListedContracts[idx])
            emit DailyTokenAdmin(address(whiteListedContracts[idx]));
        s = address(whiteListedContracts[idx])
        idx = idx + 1
        continue 
}

function fromHex(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    require not bool(arg1.length)
    mem[ceil32(arg1.length) + 128] = arg1.length / 2
    if Mask(255, 1, arg1.length):
        mem[ceil32(arg1.length) + 160 len 16 * Mask(251, 1, arg1.length)] = code.data[11423 len 16 * Mask(251, 1, arg1.length)]
    idx = 0
    while idx < arg1.length / 2:
        require (2 * idx) + 1 < arg1.length
        require 2 * idx < arg1.length
        require idx < arg1.length / 2
        if Mask(8, 248, mem[(2 * idx) + 129]) < '0':
            if Mask(8, 248, mem[(2 * idx) + 129]) < 'a':
                if Mask(8, 248, mem[(2 * idx) + 129]) < 'A':
                    if Mask(8, 248, mem[(2 * idx) + 128]) < '0':
                        if Mask(8, 248, mem[(2 * idx) + 128]) < 'a':
                            if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            else:
                                if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                else:
                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                        else:
                            if Mask(8, 248, mem[(2 * idx) + 128]) <= 'f':
                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                            else:
                                if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                else:
                                    if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    else:
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                    else:
                        if Mask(8, 248, mem[(2 * idx) + 128]) <= '9':
                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -48, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -48, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                        else:
                            if Mask(8, 248, mem[(2 * idx) + 128]) < 'a':
                                if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                else:
                                    if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    else:
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                            else:
                                if Mask(8, 248, mem[(2 * idx) + 128]) <= 'f':
                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                else:
                                    if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                        else:
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                else:
                    if Mask(8, 248, mem[(2 * idx) + 129]) > 'F':
                        if Mask(8, 248, mem[(2 * idx) + 128]) < '0':
                            if Mask(8, 248, mem[(2 * idx) + 128]) < 'a':
                                if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                else:
                                    if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    else:
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                            else:
                                if Mask(8, 248, mem[(2 * idx) + 128]) <= 'f':
                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                else:
                                    if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                        else:
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                        else:
                            if Mask(8, 248, mem[(2 * idx) + 128]) <= '9':
                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -48, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -48, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                            else:
                                if Mask(8, 248, mem[(2 * idx) + 128]) < 'a':
                                    if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                        else:
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                else:
                                    if Mask(8, 248, mem[(2 * idx) + 128]) <= 'f':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                        else:
                                            if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                            else:
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                    else:
                        if Mask(8, 248, mem[(2 * idx) + 128]) < '0':
                            if Mask(8, 248, mem[(2 * idx) + 128]) < 'a':
                                if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                else:
                                    if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                    else:
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                            else:
                                if Mask(8, 248, mem[(2 * idx) + 128]) <= 'f':
                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                else:
                                    if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                        else:
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                        else:
                            if Mask(8, 248, mem[(2 * idx) + 128]) <= '9':
                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -48, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -48, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                            else:
                                if Mask(8, 248, mem[(2 * idx) + 128]) < 'a':
                                    if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                        else:
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                else:
                                    if Mask(8, 248, mem[(2 * idx) + 128]) <= 'f':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                        else:
                                            if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                            else:
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
            else:
                if Mask(8, 248, mem[(2 * idx) + 129]) <= 'f':
                    if Mask(8, 248, mem[(2 * idx) + 128]) < '0':
                        if Mask(8, 248, mem[(2 * idx) + 128]) < 'a':
                            if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -87, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -87, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                            else:
                                if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -87, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -87, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                else:
                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -87, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -87, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                        else:
                            if Mask(8, 248, mem[(2 * idx) + 128]) <= 'f':
                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -87, ('mask_shl', 252, 0, 4, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -87, ('mask_shl', 252, 0, 4, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                            else:
                                if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -87, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -87, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                else:
                                    if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -87, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -87, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                    else:
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -87, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -87, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                    else:
                        if Mask(8, 248, mem[(2 * idx) + 128]) <= '9':
                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -87, ('mask_shl', 252, 0, 4, ('add', -48, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -87, ('mask_shl', 252, 0, 4, ('add', -48, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                        else:
                            if Mask(8, 248, mem[(2 * idx) + 128]) < 'a':
                                if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -87, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -87, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                else:
                                    if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -87, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -87, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                    else:
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -87, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -87, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                            else:
                                if Mask(8, 248, mem[(2 * idx) + 128]) <= 'f':
                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -87, ('mask_shl', 252, 0, 4, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -87, ('mask_shl', 252, 0, 4, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                else:
                                    if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -87, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -87, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -87, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -87, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                        else:
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -87, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -87, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                else:
                    if Mask(8, 248, mem[(2 * idx) + 129]) < 'A':
                        if Mask(8, 248, mem[(2 * idx) + 128]) < '0':
                            if Mask(8, 248, mem[(2 * idx) + 128]) < 'a':
                                if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                else:
                                    if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    else:
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                            else:
                                if Mask(8, 248, mem[(2 * idx) + 128]) <= 'f':
                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                else:
                                    if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                        else:
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                        else:
                            if Mask(8, 248, mem[(2 * idx) + 128]) <= '9':
                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -48, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -48, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                            else:
                                if Mask(8, 248, mem[(2 * idx) + 128]) < 'a':
                                    if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                        else:
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                else:
                                    if Mask(8, 248, mem[(2 * idx) + 128]) <= 'f':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                        else:
                                            if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                            else:
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                    else:
                        if Mask(8, 248, mem[(2 * idx) + 129]) > 'F':
                            if Mask(8, 248, mem[(2 * idx) + 128]) < '0':
                                if Mask(8, 248, mem[(2 * idx) + 128]) < 'a':
                                    if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                        else:
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                else:
                                    if Mask(8, 248, mem[(2 * idx) + 128]) <= 'f':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                        else:
                                            if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                            else:
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                            else:
                                if Mask(8, 248, mem[(2 * idx) + 128]) <= '9':
                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -48, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -48, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                else:
                                    if Mask(8, 248, mem[(2 * idx) + 128]) < 'a':
                                        if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                        else:
                                            if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                            else:
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) <= 'f':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                        else:
                                            if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                            else:
                                                if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                                else:
                                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                        else:
                            if Mask(8, 248, mem[(2 * idx) + 128]) < '0':
                                if Mask(8, 248, mem[(2 * idx) + 128]) < 'a':
                                    if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                        else:
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                else:
                                    if Mask(8, 248, mem[(2 * idx) + 128]) <= 'f':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                        else:
                                            if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                            else:
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                            else:
                                if Mask(8, 248, mem[(2 * idx) + 128]) <= '9':
                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -48, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -48, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                else:
                                    if Mask(8, 248, mem[(2 * idx) + 128]) < 'a':
                                        if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                        else:
                                            if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                            else:
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) <= 'f':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                        else:
                                            if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                            else:
                                                if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                                else:
                                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
        else:
            if Mask(8, 248, mem[(2 * idx) + 129]) <= '9':
                if Mask(8, 248, mem[(2 * idx) + 128]) < '0':
                    if Mask(8, 248, mem[(2 * idx) + 128]) < 'a':
                        if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -48, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -48, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                        else:
                            if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -48, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -48, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                            else:
                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -48, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -48, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                    else:
                        if Mask(8, 248, mem[(2 * idx) + 128]) <= 'f':
                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -48, ('mask_shl', 252, 0, 4, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -48, ('mask_shl', 252, 0, 4, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                        else:
                            if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -48, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -48, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                            else:
                                if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -48, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -48, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                else:
                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -48, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -48, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                else:
                    if Mask(8, 248, mem[(2 * idx) + 128]) <= '9':
                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -48, ('mask_shl', 252, 0, 4, ('add', -48, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -48, ('mask_shl', 252, 0, 4, ('add', -48, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                    else:
                        if Mask(8, 248, mem[(2 * idx) + 128]) < 'a':
                            if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -48, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -48, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                            else:
                                if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -48, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -48, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                else:
                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -48, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -48, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                        else:
                            if Mask(8, 248, mem[(2 * idx) + 128]) <= 'f':
                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -48, ('mask_shl', 252, 0, 4, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -48, ('mask_shl', 252, 0, 4, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                            else:
                                if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -48, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -48, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                else:
                                    if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -48, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -48, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                    else:
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -48, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -48, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
            else:
                if Mask(8, 248, mem[(2 * idx) + 129]) < 'a':
                    if Mask(8, 248, mem[(2 * idx) + 129]) < 'A':
                        if Mask(8, 248, mem[(2 * idx) + 128]) < '0':
                            if Mask(8, 248, mem[(2 * idx) + 128]) < 'a':
                                if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                else:
                                    if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    else:
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                            else:
                                if Mask(8, 248, mem[(2 * idx) + 128]) <= 'f':
                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                else:
                                    if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                        else:
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                        else:
                            if Mask(8, 248, mem[(2 * idx) + 128]) <= '9':
                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -48, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -48, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                            else:
                                if Mask(8, 248, mem[(2 * idx) + 128]) < 'a':
                                    if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                        else:
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                else:
                                    if Mask(8, 248, mem[(2 * idx) + 128]) <= 'f':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                        else:
                                            if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                            else:
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                    else:
                        if Mask(8, 248, mem[(2 * idx) + 129]) > 'F':
                            if Mask(8, 248, mem[(2 * idx) + 128]) < '0':
                                if Mask(8, 248, mem[(2 * idx) + 128]) < 'a':
                                    if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                        else:
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                else:
                                    if Mask(8, 248, mem[(2 * idx) + 128]) <= 'f':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                        else:
                                            if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                            else:
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                            else:
                                if Mask(8, 248, mem[(2 * idx) + 128]) <= '9':
                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -48, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -48, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                else:
                                    if Mask(8, 248, mem[(2 * idx) + 128]) < 'a':
                                        if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                        else:
                                            if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                            else:
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) <= 'f':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                        else:
                                            if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                            else:
                                                if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                                else:
                                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                        else:
                            if Mask(8, 248, mem[(2 * idx) + 128]) < '0':
                                if Mask(8, 248, mem[(2 * idx) + 128]) < 'a':
                                    if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                        else:
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                else:
                                    if Mask(8, 248, mem[(2 * idx) + 128]) <= 'f':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                        else:
                                            if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                            else:
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                            else:
                                if Mask(8, 248, mem[(2 * idx) + 128]) <= '9':
                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -48, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -48, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                else:
                                    if Mask(8, 248, mem[(2 * idx) + 128]) < 'a':
                                        if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                        else:
                                            if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                            else:
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) <= 'f':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                        else:
                                            if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                            else:
                                                if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                                else:
                                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                else:
                    if Mask(8, 248, mem[(2 * idx) + 129]) <= 'f':
                        if Mask(8, 248, mem[(2 * idx) + 128]) < '0':
                            if Mask(8, 248, mem[(2 * idx) + 128]) < 'a':
                                if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -87, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -87, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                else:
                                    if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -87, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -87, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                    else:
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -87, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -87, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                            else:
                                if Mask(8, 248, mem[(2 * idx) + 128]) <= 'f':
                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -87, ('mask_shl', 252, 0, 4, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -87, ('mask_shl', 252, 0, 4, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                else:
                                    if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -87, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -87, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -87, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -87, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                        else:
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -87, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -87, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                        else:
                            if Mask(8, 248, mem[(2 * idx) + 128]) <= '9':
                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -87, ('mask_shl', 252, 0, 4, ('add', -48, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -87, ('mask_shl', 252, 0, 4, ('add', -48, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                            else:
                                if Mask(8, 248, mem[(2 * idx) + 128]) < 'a':
                                    if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -87, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -87, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -87, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -87, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                        else:
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -87, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -87, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                else:
                                    if Mask(8, 248, mem[(2 * idx) + 128]) <= 'f':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -87, ('mask_shl', 252, 0, 4, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -87, ('mask_shl', 252, 0, 4, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -87, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -87, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                        else:
                                            if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -87, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -87, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                            else:
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -87, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -87, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                    else:
                        if Mask(8, 248, mem[(2 * idx) + 129]) < 'A':
                            if Mask(8, 248, mem[(2 * idx) + 128]) < '0':
                                if Mask(8, 248, mem[(2 * idx) + 128]) < 'a':
                                    if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                        else:
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                else:
                                    if Mask(8, 248, mem[(2 * idx) + 128]) <= 'f':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                        else:
                                            if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                            else:
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                            else:
                                if Mask(8, 248, mem[(2 * idx) + 128]) <= '9':
                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -48, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -48, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                else:
                                    if Mask(8, 248, mem[(2 * idx) + 128]) < 'a':
                                        if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                        else:
                                            if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                            else:
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) <= 'f':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                        else:
                                            if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                            else:
                                                if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                                else:
                                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                        else:
                            if Mask(8, 248, mem[(2 * idx) + 129]) > 'F':
                                if Mask(8, 248, mem[(2 * idx) + 128]) < '0':
                                    if Mask(8, 248, mem[(2 * idx) + 128]) < 'a':
                                        if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                        else:
                                            if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                            else:
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) <= 'f':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                        else:
                                            if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                            else:
                                                if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                                else:
                                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                else:
                                    if Mask(8, 248, mem[(2 * idx) + 128]) <= '9':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -48, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -48, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) < 'a':
                                            if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                            else:
                                                if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                                else:
                                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                        else:
                                            if Mask(8, 248, mem[(2 * idx) + 128]) <= 'f':
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                            else:
                                                if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                                else:
                                                    if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                                    else:
                                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 4, 0, 249, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                            else:
                                if Mask(8, 248, mem[(2 * idx) + 128]) < '0':
                                    if Mask(8, 248, mem[(2 * idx) + 128]) < 'a':
                                        if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                        else:
                                            if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                            else:
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) <= 'f':
                                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                        else:
                                            if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                            else:
                                                if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                                else:
                                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                else:
                                    if Mask(8, 248, mem[(2 * idx) + 128]) <= '9':
                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -48, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -48, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                    else:
                                        if Mask(8, 248, mem[(2 * idx) + 128]) < 'a':
                                            if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                            else:
                                                if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                                else:
                                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                        else:
                                            if Mask(8, 248, mem[(2 * idx) + 128]) <= 'f':
                                                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -87, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                            else:
                                                if Mask(8, 248, mem[(2 * idx) + 128]) < 'A':
                                                    mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                                else:
                                                    if Mask(8, 248, mem[(2 * idx) + 128]) > 'F':
                                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
                                                    else:
                                                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mask_shl', 252, 0, 4, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), ('mem', ('range', ('add', 129, ('mask_shl', 255, 0, 1, ('var', 0))), 1)))), 0) - 256
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(arg1.length / 2) + 224 len ceil32(arg1.length / 2)] = mem[ceil32(arg1.length) + 160 len ceil32(arg1.length / 2)]
    if not Mask(5, 1, arg1.length):
        return Array(len=Mask(255, 1, arg1.length), data=mem[ceil32(arg1.length) + 160 len arg1.length / 2])
    mem[(Mask(250, 6, arg1.length) >> 1) + ceil32(arg1.length) + ceil32(arg1.length / 2) + 224] = mem[(Mask(250, 6, arg1.length) >> 1) + ceil32(arg1.length) + ceil32(arg1.length / 2) + -(Mask(5, 1, arg1.length) >> 1) + 256 len Mask(5, 1, arg1.length) >> 1]
    return Array(len=Mask(255, 1, arg1.length), data=mem[ceil32(arg1.length) + 160 len ceil32(arg1.length / 2)], mem[ceil32(arg1.length) + (2 * ceil32(arg1.length / 2)) + 224 len (Mask(250, 6, arg1.length) >> 1) + -ceil32(arg1.length / 2) + 32]), 
}



}
