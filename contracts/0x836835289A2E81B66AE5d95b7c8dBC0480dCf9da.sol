contract main {




// =====================  Runtime code  =====================


#
#  - newScheduledPayment(address arg1, address arg2, uint256 arg3, uint64 arg4, uint64 arg5, uint64 arg6, string arg7)
#
const sub_0842ace4(?) = sha3(Mask(160, 96, 'CREATE_PAYMENTS_ROLE') >> 96)

const sub_981cc342(?) = sha3(Mask(168, 88, 'EXECUTE_PAYMENTS_ROLE') >> 88)

const sub_e94ebac5(?) = sha3(Mask(160, 96, 'MANAGE_PAYMENTS_ROLE') >> 96)

const CHANGE_PERIOD_ROLE = sha3(Mask(144, 112, 'CHANGE_PERIOD_ROLE') >> 112)

const CHANGE_BUDGETS_ROLE = sha3(Mask(152, 104, 'CHANGE_BUDGETS_ROLE') >> 104)


uint32 stor0;
address vaultAddress;
uint256 stor0;
uint64 periodDuration;
mapping of uint256 stor2;
mapping of uint8 stor3;
mapping of struct payment;
uint256 sub_de048a7b;
mapping of struct transaction;
uint256 sub_eaa7ec68;
mapping of struct periodTokenStatement;
uint64 sub_6abe602d;
uint8 stor17EF; offset 160
address kernelAddress;
uint256 appId;
uint256 initializationBlock;

function getPayment(uint256 arg1) {
    if arg1 <= 0:
        revert with 0, 'FINANCE_NO_SCHEDULED_PAYMENT'
    if arg1 >= sub_de048a7b:
        revert with 0, 'FINANCE_NO_SCHEDULED_PAYMENT'
    return payment[arg1].field_0, 
           payment[arg1].field_256,
           payment[arg1].field_768,
           payment[arg1].field_1024,
           payment[arg1].field_1024,
           payment[arg1].field_1024,
           bool(payment[arg1].field_672),
           payment[arg1].field_1024,
           payment[arg1].field_512
}

function getTransaction(uint256 arg1) {
    if arg1 <= 0:
        revert with 0, 'FINANCE_NO_TRANSACTION'
    if arg1 >= sub_eaa7ec68:
        revert with 0, 'FINANCE_NO_TRANSACTION'
    return transaction[arg1].field_1024, 
           transaction[arg1].field_512,
           transaction[arg1].field_768,
           transaction[arg1].field_1024,
           transaction[arg1].field_0,
           transaction[arg1].field_256,
           bool(transaction[arg1].field_416),
           transaction[arg1].field_1024
}

function sub_6abe602d(?) {
    return sub_6abe602d
}

function appId() {
    return appId
}

function getInitializationBlock() {
    return initializationBlock
}

function getPeriodDuration() {
    if not initializationBlock:
        revert with 0, 'INIT_NOT_INITIALIZED'
    if block.number < initializationBlock:
        revert with 0, 'INIT_NOT_INITIALIZED'
    return periodDuration
}

function getPeriodTokenStatement(uint64 arg1, address arg2) {
    if arg1 >= sub_6abe602d:
        revert with 0, 'FINANCE_NO_PERIOD'
    return periodTokenStatement[arg1 << 192][3][address(arg2)].field_0, 
           periodTokenStatement[arg1 << 192][3][address(arg2)].field_256
}

function kernel() {
    return kernelAddress
}

function sub_de048a7b(?) {
    return sub_de048a7b
}

function sub_eaa7ec68(?) {
    return sub_eaa7ec68
}

function vault() {
    return address(vaultAddress)
}

function isPetrified() {
    return (initializationBlock == -1)
}

function hasInitialized() {
    if not initializationBlock:
        return bool(initializationBlock)
    return block.number >= initializationBlock
}

function allowRecoverability(address arg1) {
    if not initializationBlock:
        return not bool(initializationBlock)
    return (block.number < initializationBlock)
}

function currentPeriodId() {
    if not initializationBlock:
        revert with 0, 'INIT_NOT_INITIALIZED'
    if block.number < initializationBlock:
        revert with 0, 'INIT_NOT_INITIALIZED'
    return uint64(sub_6abe602d - 1)
}

function getBudget(address arg1) {
    if not initializationBlock:
        revert with 0, 'INIT_NOT_INITIALIZED'
    if block.number < initializationBlock:
        revert with 0, 'INIT_NOT_INITIALIZED'
    return stor2[address(arg1)], bool(stor3[address(arg1)])
}

function getRecoveryVault() {
    require ext_code.size(kernelAddress)
    call kernelAddress.0x32f0a3b5 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function getPeriod(uint64 arg1) {
    if arg1 >= sub_6abe602d:
        revert with 0, 'FINANCE_NO_PERIOD'
    return uint64(sub_6abe602d - 1) == arg1, 
           periodTokenStatement[arg1 << 192].field_0,
           periodTokenStatement[arg1 << 192].field_0,
           periodTokenStatement[arg1 << 192].field_256,
           periodTokenStatement[arg1 << 192].field_512
}

function getEVMScriptRegistry() {
    require ext_code.size(kernelAddress)
    call kernelAddress.getApp(bytes32 arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args 0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb, 0xddbcfd564f642ab5627cf68b9b7d374fb4f8a36e941a75d89c87998cef03bd61
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function getRemainingBudget(address arg1) {
    if not initializationBlock:
        revert with 0, 'INIT_NOT_INITIALIZED'
    if block.number < initializationBlock:
        revert with 0, 'INIT_NOT_INITIALIZED'
    if not stor3[address(arg1)]:
        return -1
    if periodTokenStatement[stor9 - 1 << 192][3][address(arg1)].field_0 < stor2[address(arg1)]:
        return (stor2[address(arg1)] - periodTokenStatement[stor9 - 1 << 192][3][address(arg1)].field_0)
    else:
        return 0
}

function nextPaymentTime(uint256 arg1) {
    if arg1 <= 0:
        revert with 0, 'FINANCE_NO_SCHEDULED_PAYMENT'
    if arg1 >= sub_de048a7b:
        revert with 0, 'FINANCE_NO_SCHEDULED_PAYMENT'
    if payment[arg1].field_1216 >= payment[arg1].field_1152:
        return test266151307()
    if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
        revert with 0, 'MATH64_MUL_OVERFLOW'
    if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
        revert with 0, 'MATH64_ADD_OVERFLOW'
    return uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024)
}

function getEVMScriptExecutor(bytes arg1) {
    require ext_code.size(kernelAddress)
    call kernelAddress.getApp(bytes32 arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args 0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb, 0xddbcfd564f642ab5627cf68b9b7d374fb4f8a36e941a75d89c87998cef03bd61
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getScriptExecutor(bytes arg1) with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(ext_call.return_data[0])
}

function canPerform(address arg1, bytes32 arg2, uint256[] arg3) {
    if not initializationBlock:
        return 0
    if block.number < initializationBlock:
        return 0
    if not kernelAddress:
        return 0
    mem[(32 * arg3.length) + 292 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    require ext_code.size(kernelAddress)
    call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
         gas gas_remaining wei
        args address(arg1), address(this.address), arg2, Array(len=32 * arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 292 len (32 * arg3.length) - floor32(arg3.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function canMakePayment(address arg1, uint256 arg2) {
    if not initializationBlock:
        revert with 0, 'INIT_NOT_INITIALIZED'
    if block.number < initializationBlock:
        revert with 0, 'INIT_NOT_INITIALIZED'
    if not stor3[address(arg1)]:
        if -1 < arg2:
            return -1 >= arg2
    else:
        if periodTokenStatement[stor9 - 1 << 192][3][address(arg1)].field_0 < stor2[address(arg1)]:
            if stor2[address(arg1)] - periodTokenStatement[stor9 - 1 << 192][3][address(arg1)].field_0 < arg2:
                return stor2[address(arg1)] - periodTokenStatement[stor9 - 1 << 192][3][address(arg1)].field_0 >= arg2
        else:
            if 0 < arg2:
                return 0 >= arg2
    require ext_code.size(address(vaultAddress))
    call address(vaultAddress).balance(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0] >= arg2
}

function setPaymentStatus(uint256 arg1, bool arg2) {
    if not initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if block.number < initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if not kernelAddress:
        revert with 0, 'APP_AUTH_FAILED'
    require ext_code.size(kernelAddress)
    if arg2:
        call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), sha3('MANAGE_PAYMENTS_ROLE'), 128, 64, arg1, 1
    else:
        call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), sha3('MANAGE_PAYMENTS_ROLE'), 128, 64, arg1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'APP_AUTH_FAILED'
    if arg1 <= 0:
        revert with 0, 'FINANCE_NO_SCHEDULED_PAYMENT'
    if arg1 >= sub_de048a7b:
        revert with 0, 'FINANCE_NO_SCHEDULED_PAYMENT'
    payment[arg1].field_672 = Mask(96, 0, not arg2)
    emit ChangePaymentState(arg2, arg1);
}

function initialize(address arg1, uint64 arg2) {
    if initializationBlock:
        revert with 0, 'INIT_ALREADY_INITIALIZED'
    initializationBlock = block.number
    if not arg1:
        revert with 0, 'FINANCE_VAULT_NOT_CONTRACT'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'FINANCE_VAULT_NOT_CONTRACT'
    address(vaultAddress) = arg1
    if arg2 < 24 * 3600:
        revert with 0, 'FINANCE_SET_PERIOD_TOO_SHORT'
    periodDuration = arg2
    stor17EF = 1
    sub_de048a7b = 1
    sub_eaa7ec68 = 1
    if block.timestamp > test266151307():
        revert with 0, 'UINT64_NUMBER_TOO_BIG'
    sub_6abe602d = uint64(sub_6abe602d + 1)
    periodTokenStatement[stor9].field_0 = uint64(block.timestamp)
    if uint64(block.timestamp + periodDuration - 1) >= uint64(block.timestamp):
        periodTokenStatement[stor9].field_64 = uint64(block.timestamp + periodDuration - 1)
        emit NewPeriod(periodTokenStatement[stor9].field_0, uint64(block.timestamp + periodDuration - 1), sub_6abe602d);
    else:
        periodTokenStatement[stor9].field_64 = test266151307()
        emit NewPeriod(uint64 arg1, uint64 arg2, uint64 arg3):
                       0,
                       periodTokenStatement[stor9].field_0,
                       test266151307(),
                       sub_6abe602d,
}

function transferToVault(address arg1) {
    if initializationBlock:
        if block.number >= initializationBlock:
            revert with 0, 'RECOVER_DISALLOWED'
    require ext_code.size(kernelAddress)
    call kernelAddress.0x32f0a3b5 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'RECOVER_VAULT_NOT_CONTRACT'
    if ext_code.size(ext_call.return_data[0]) <= 0:
        revert with 0, 'RECOVER_VAULT_NOT_CONTRACT'
    if not arg1:
        call address(ext_call.return_data[0]) with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit RecoverToVault(eth.balance(this.address), address(ext_call.return_data[0]), arg1);
    else:
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address) << 64, 0
        if not ext_call.success:
            revert with 0, 'SAFE_ERC_20_BALANCE_REVERTED'
        if ext_call.success <= 0:
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]) << 64, 0, 0
            if ext_call.success <= 0:
                revert with 0, 'RECOVER_TOKEN_TRANSFER_FAILED'
            if return_data.size:
                if 32 != return_data.size:
                    revert with 0, 'RECOVER_TOKEN_TRANSFER_FAILED'
                if ext_call.return_data[0] != 1:
                    revert with 0, 'RECOVER_TOKEN_TRANSFER_FAILED'
            emit RecoverToVault(0, address(ext_call.return_data[0]), arg1);
        else:
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0]
            if ext_call.success <= 0:
                revert with 0, 'RECOVER_TOKEN_TRANSFER_FAILED'
            if return_data.size:
                if 32 != return_data.size:
                    revert with 0, 'RECOVER_TOKEN_TRANSFER_FAILED'
                if ext_call.return_data[0] != 1:
                    revert with 0, 'RECOVER_TOKEN_TRANSFER_FAILED'
            emit RecoverToVault(ext_call.return_data[0], address(ext_call.return_data[0]), arg1);
}

function tryTransitionAccountingPeriod(uint64 arg1) {
    if not initializationBlock:
        revert with 0, 'INIT_NOT_INITIALIZED'
    mem[96] = 20
    mem[128] = 'INIT_NOT_INITIALIZED'
    if block.number < initializationBlock:
        revert with 0, 'INIT_NOT_INITIALIZED'
    mem[32] = 8
    mem[64] = 224
    mem[160] = 21
    mem[192] = 'UINT64_NUMBER_TOO_BIG'
    if block.timestamp > test266151307():
        revert with 0, 'UINT64_NUMBER_TOO_BIG'
    idx = 0
    s = arg1
    while uint64(block.timestamp) > periodTokenStatement[stor9 - 1 << 192][idx].field_64:
        if not uint64(s):
            return 0
        if not periodTokenStatement[stor9 - 1 << 192][idx].field_256:
            _102 = mem[64]
            mem[64] = mem[64] + 64
            mem[_102] = 19
            mem[_102 + 32] = 'MATH64_ADD_OVERFLOW'
            if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1) < periodTokenStatement[stor9 - 1 << 192][idx].field_64:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 19
                mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                idx = 32
                while idx < 19:
                    mem[idx + mem[64] + 68] = mem[idx + _102 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH64_ADD_OVERFLOW'
        else:
            _103 = mem[64]
            mem[64] = mem[64] + 64
            mem[_103] = 18
            mem[_103 + 32] = 'MATH_SUB_UNDERFLOW'
            if 1 > sub_eaa7ec68:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 18
                mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                idx = 32
                while idx < 18:
                    mem[idx + mem[64] + 68] = mem[idx + _103 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH_SUB_UNDERFLOW'
            periodTokenStatement[stor9 - 1 << 192][idx].field_512 = sub_eaa7ec68 - 1
            _123 = mem[64]
            mem[64] = mem[64] + 64
            mem[_123] = 19
            mem[_123 + 32] = 'MATH64_ADD_OVERFLOW'
            if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1) < periodTokenStatement[stor9 - 1 << 192][idx].field_64:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 19
                mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                idx = 32
                while idx < 19:
                    mem[idx + mem[64] + 68] = mem[idx + _123 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH64_ADD_OVERFLOW'
        ('ge', ('mask_shl', 64, 0, 0, ('add', 1, ('field', 64, ('stor', ('array', ('var', 0), ('map', ('mask_shl', 64, 0, 192, ('add', -1, ('stor', ('name', 'stor9', 9)))), ('name', 'periodTokenStatement', 8))))))), ('field', 64, ('stor', ('array', ('var', 0), ('map', ('mask_shl', 64, 0, 192, ('add', -1, ('stor', ('name', 'stor9', 9)))), ('name', 'periodTokenStatement', 8))))))
        sub_6abe602d = uint64(sub_6abe602d + 1)
        mem[0] = sub_6abe602d
        mem[32] = 8
        periodTokenStatement[stor9].field_0 = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1)
        if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration) >= uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1):
            periodTokenStatement[stor9].field_64 = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration)
            mem[mem[64]] = periodTokenStatement[stor9].field_0
            mem[mem[64] + 32] = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration)
            emit NewPeriod(periodTokenStatement[stor9].field_0, uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration), sub_6abe602d);
        else:
            periodTokenStatement[stor9].field_64 = test266151307()
            mem[mem[64]] = 0 or periodTokenStatement[stor9].field_0
            mem[mem[64] + 32] = test266151307()
            emit NewPeriod(0 or periodTokenStatement[stor9].field_0, test266151307(), sub_6abe602d);
        idx = sha3(sub_6abe602d, 8)
        s = s - 1
        continue 
    return 1
}

function setPeriodDuration(uint64 arg1) {
    mem[128] = arg1
    mem[160] = periodDuration
    if not initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if block.number < initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if not kernelAddress:
        revert with 0, 'APP_AUTH_FAILED'
    mem[96] = 64
    mem[292] = 128
    mem[324] = 64
    mem[356 len 64] = arg1 << 192, periodDuration
    require ext_code.size(kernelAddress)
    call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sha3('CHANGE_PERIOD_ROLE'), 128, 64, arg1 << 192, periodDuration
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[192] = 15
    mem[224] = 'APP_AUTH_FAILED'
    if not ext_call.return_data[0]:
        revert with 0, 'APP_AUTH_FAILED'
    mem[32] = 8
    mem[64] = 320
    mem[256] = 21
    mem[288] = 'UINT64_NUMBER_TOO_BIG'
    if block.timestamp > test266151307():
        revert with 0, 'UINT64_NUMBER_TOO_BIG'
    idx = 0
    s = -1
    while uint64(block.timestamp) > periodTokenStatement[stor9 - 1 << 192][idx].field_64:
        if not uint64(s):
            _440 = mem[64]
            mem[64] = mem[64] + 64
            mem[_440] = 27
            mem[_440 + 32] = 'FINANCE_COMPLETE_TRANSITION'
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 27
            mem[mem[64] + 68] = 'FINANCE_COMPLETE_TRANSITION'
            idx = 32
            while idx < 27:
                mem[idx + mem[64] + 68] = mem[idx + _440 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'FINANCE_COMPLETE_TRANSITION'
        if not periodTokenStatement[stor9 - 1 << 192][idx].field_256:
            _438 = mem[64]
            mem[64] = mem[64] + 64
            mem[_438] = 19
            mem[_438 + 32] = 'MATH64_ADD_OVERFLOW'
            if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1) < periodTokenStatement[stor9 - 1 << 192][idx].field_64:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 19
                mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                idx = 32
                while idx < 19:
                    mem[idx + mem[64] + 68] = mem[idx + _438 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH64_ADD_OVERFLOW'
        else:
            _439 = mem[64]
            mem[64] = mem[64] + 64
            mem[_439] = 18
            mem[_439 + 32] = 'MATH_SUB_UNDERFLOW'
            if 1 > sub_eaa7ec68:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 18
                mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                idx = 32
                while idx < 18:
                    mem[idx + mem[64] + 68] = mem[idx + _439 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH_SUB_UNDERFLOW'
            periodTokenStatement[stor9 - 1 << 192][idx].field_512 = sub_eaa7ec68 - 1
            _505 = mem[64]
            mem[64] = mem[64] + 64
            mem[_505] = 19
            mem[_505 + 32] = 'MATH64_ADD_OVERFLOW'
            if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1) < periodTokenStatement[stor9 - 1 << 192][idx].field_64:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 19
                mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                idx = 32
                while idx < 19:
                    mem[idx + mem[64] + 68] = mem[idx + _505 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH64_ADD_OVERFLOW'
        ('ge', ('mask_shl', 64, 0, 0, ('add', 1, ('field', 64, ('stor', ('array', ('var', 0), ('map', ('mask_shl', 64, 0, 192, ('add', -1, ('stor', ('name', 'stor9', 9)))), ('name', 'periodTokenStatement', 8))))))), ('field', 64, ('stor', ('array', ('var', 0), ('map', ('mask_shl', 64, 0, 192, ('add', -1, ('stor', ('name', 'stor9', 9)))), ('name', 'periodTokenStatement', 8))))))
        sub_6abe602d = uint64(sub_6abe602d + 1)
        mem[0] = sub_6abe602d
        mem[32] = 8
        periodTokenStatement[stor9].field_0 = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1)
        if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration) >= uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1):
            periodTokenStatement[stor9].field_64 = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration)
            mem[mem[64]] = periodTokenStatement[stor9].field_0
            mem[mem[64] + 32] = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration)
            emit NewPeriod(periodTokenStatement[stor9].field_0, uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration), sub_6abe602d);
        else:
            periodTokenStatement[stor9].field_64 = test266151307()
            mem[mem[64]] = 0 or periodTokenStatement[stor9].field_0
            mem[mem[64] + 32] = test266151307()
            emit NewPeriod(0 or periodTokenStatement[stor9].field_0, test266151307(), sub_6abe602d);
        idx = sha3(sub_6abe602d, 8)
        s = s - 1
        continue 
    if arg1 < 24 * 3600:
        revert with 0, 'FINANCE_SET_PERIOD_TOO_SHORT'
    periodDuration = arg1
    emit ChangePeriodDuration(arg1);
}

function _fallback() payable {
    if not initializationBlock:
        revert with 0, 'INIT_NOT_INITIALIZED'
    mem[96] = 20
    mem[128] = 'INIT_NOT_INITIALIZED'
    if block.number < initializationBlock:
        revert with 0, 'INIT_NOT_INITIALIZED'
    mem[32] = 8
    mem[64] = 224
    mem[160] = 21
    mem[192] = 'UINT64_NUMBER_TOO_BIG'
    if block.timestamp > test266151307():
        revert with 0, 'UINT64_NUMBER_TOO_BIG'
    idx = 0
    s = -1
    while uint64(block.timestamp) > periodTokenStatement[stor9 - 1 << 192][idx].field_64:
        if not uint64(s):
            _156 = mem[64]
            mem[64] = mem[64] + 64
            mem[_156] = 27
            mem[_156 + 32] = 'FINANCE_COMPLETE_TRANSITION'
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 27
            mem[mem[64] + 68] = 'FINANCE_COMPLETE_TRANSITION'
            idx = 32
            while idx < 27:
                mem[idx + mem[64] + 68] = mem[idx + _156 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'FINANCE_COMPLETE_TRANSITION'
        if not periodTokenStatement[stor9 - 1 << 192][idx].field_256:
            _154 = mem[64]
            mem[64] = mem[64] + 64
            mem[_154] = 19
            mem[_154 + 32] = 'MATH64_ADD_OVERFLOW'
            if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1) < periodTokenStatement[stor9 - 1 << 192][idx].field_64:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 19
                mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                idx = 32
                while idx < 19:
                    mem[idx + mem[64] + 68] = mem[idx + _154 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH64_ADD_OVERFLOW'
        else:
            _155 = mem[64]
            mem[64] = mem[64] + 64
            mem[_155] = 18
            mem[_155 + 32] = 'MATH_SUB_UNDERFLOW'
            if 1 > sub_eaa7ec68:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 18
                mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                idx = 32
                while idx < 18:
                    mem[idx + mem[64] + 68] = mem[idx + _155 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH_SUB_UNDERFLOW'
            periodTokenStatement[stor9 - 1 << 192][idx].field_512 = sub_eaa7ec68 - 1
            _189 = mem[64]
            mem[64] = mem[64] + 64
            mem[_189] = 19
            mem[_189 + 32] = 'MATH64_ADD_OVERFLOW'
            if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1) < periodTokenStatement[stor9 - 1 << 192][idx].field_64:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 19
                mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                idx = 32
                while idx < 19:
                    mem[idx + mem[64] + 68] = mem[idx + _189 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH64_ADD_OVERFLOW'
        ('ge', ('mask_shl', 64, 0, 0, ('add', 1, ('field', 64, ('stor', ('array', ('var', 0), ('map', ('mask_shl', 64, 0, 192, ('add', -1, ('stor', ('name', 'stor9', 9)))), ('name', 'periodTokenStatement', 8))))))), ('field', 64, ('stor', ('array', ('var', 0), ('map', ('mask_shl', 64, 0, 192, ('add', -1, ('stor', ('name', 'stor9', 9)))), ('name', 'periodTokenStatement', 8))))))
        sub_6abe602d = uint64(sub_6abe602d + 1)
        mem[0] = sub_6abe602d
        mem[32] = 8
        periodTokenStatement[stor9].field_0 = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1)
        if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration) >= uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1):
            periodTokenStatement[stor9].field_64 = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration)
            mem[mem[64]] = periodTokenStatement[stor9].field_0
            mem[mem[64] + 32] = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration)
            emit NewPeriod(periodTokenStatement[stor9].field_0, uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration), sub_6abe602d);
        else:
            periodTokenStatement[stor9].field_64 = test266151307()
            mem[mem[64]] = 0 or periodTokenStatement[stor9].field_0
            mem[mem[64] + 32] = test266151307()
            emit NewPeriod(0 or periodTokenStatement[stor9].field_0, test266151307(), sub_6abe602d);
        idx = sha3(sub_6abe602d, 8)
        s = s - 1
        continue 
    if msg.value <= 0:
        revert with 0, 'FINANCE_DEPOSIT_AMOUNT_ZERO'
    if msg.value + periodTokenStatement[stor9 - 1 << 192][3][0].field_256 < periodTokenStatement[stor9 - 1 << 192][3][0].field_256:
        revert with 0, 'MATH_ADD_OVERFLOW'
    periodTokenStatement[stor9 - 1 << 192][3][0].field_256 += msg.value
    sub_eaa7ec68++
    transaction[stor7].field_0 = 0
    transaction[stor7].field_256 = msg.sender
    transaction[stor7].field_416 = 1
    transaction[stor7].field_512 = msg.value
    transaction[stor7].field_768 = 0
    transaction[stor7].field_1024 = 0
    if block.timestamp > test266151307():
        revert with 0, 'UINT64_NUMBER_TOO_BIG'
    transaction[stor7].field_1088 = uint64(block.timestamp)
    transaction[stor7].field_1152 = uint64(sub_6abe602d - 1)
    transaction[stor7].field_1216 = 0
    if not periodTokenStatement[stor9 - 1 << 192].field_256:
        periodTokenStatement[stor9 - 1 << 192].field_256 = sub_eaa7ec68
    emit NewTransaction(1, msg.value, 'Ether transfer to Finance app', sub_eaa7ec68, msg.sender);
    require ext_code.size(address(vaultAddress))
    call address(vaultAddress).deposit(address arg1, uint256 arg2) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function newImmediatePayment(address arg1, address arg2, uint256 arg3, string arg4) {
    mem[128] = arg1
    mem[160] = arg2
    mem[192] = arg3
    mem[224] = -1
    mem[256] = 1
    mem[288] = block.timestamp
    if not initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if block.number < initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if not kernelAddress:
        revert with 0, 'APP_AUTH_FAILED'
    mem[96] = 192
    mem[420] = 128
    mem[452] = 192
    mem[484 len 192] = address(arg1), address(arg2), arg3, -1, 1, block.timestamp
    require ext_code.size(kernelAddress)
    call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sha3('CREATE_PAYMENTS_ROLE'), 128, 192, address(arg1), address(arg2), arg3, -1, 1, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[320] = 15
    mem[352] = 'APP_AUTH_FAILED'
    if not ext_call.return_data[0]:
        revert with 0, 'APP_AUTH_FAILED'
    mem[0] = uint64(sub_6abe602d - 1)
    mem[32] = 8
    mem[64] = 448
    mem[384] = 21
    mem[416] = 'UINT64_NUMBER_TOO_BIG'
    if block.timestamp > test266151307():
        revert with 0, 'UINT64_NUMBER_TOO_BIG'
    idx = 0
    s = -1
    while uint64(block.timestamp) > periodTokenStatement[stor9 - 1 << 192][idx].field_64:
        if not uint64(s):
            _1200 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1200] = 27
            mem[_1200 + 32] = 'FINANCE_COMPLETE_TRANSITION'
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 27
            mem[mem[64] + 68] = 'FINANCE_COMPLETE_TRANSITION'
            idx = 32
            while idx < 27:
                mem[idx + mem[64] + 68] = mem[idx + _1200 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'FINANCE_COMPLETE_TRANSITION'
        if not periodTokenStatement[stor9 - 1 << 192][idx].field_256:
            _1198 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1198] = 19
            mem[_1198 + 32] = 'MATH64_ADD_OVERFLOW'
            if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1) < periodTokenStatement[stor9 - 1 << 192][idx].field_64:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 19
                mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                idx = 32
                while idx < 19:
                    mem[idx + mem[64] + 68] = mem[idx + _1198 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH64_ADD_OVERFLOW'
        else:
            _1199 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1199] = 18
            mem[_1199 + 32] = 'MATH_SUB_UNDERFLOW'
            if 1 > sub_eaa7ec68:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 18
                mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                idx = 32
                while idx < 18:
                    mem[idx + mem[64] + 68] = mem[idx + _1199 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH_SUB_UNDERFLOW'
            periodTokenStatement[stor9 - 1 << 192][idx].field_512 = sub_eaa7ec68 - 1
            _1266 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1266] = 19
            mem[_1266 + 32] = 'MATH64_ADD_OVERFLOW'
            if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1) < periodTokenStatement[stor9 - 1 << 192][idx].field_64:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 19
                mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                idx = 32
                while idx < 19:
                    mem[idx + mem[64] + 68] = mem[idx + _1266 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH64_ADD_OVERFLOW'
        ('ge', ('mask_shl', 64, 0, 0, ('add', 1, ('field', 64, ('stor', ('array', ('var', 0), ('map', ('mask_shl', 64, 0, 192, ('add', -1, ('stor', ('name', 'stor9', 9)))), ('name', 'periodTokenStatement', 8))))))), ('field', 64, ('stor', ('array', ('var', 0), ('map', ('mask_shl', 64, 0, 192, ('add', -1, ('stor', ('name', 'stor9', 9)))), ('name', 'periodTokenStatement', 8))))))
        sub_6abe602d = uint64(sub_6abe602d + 1)
        mem[0] = sub_6abe602d
        mem[32] = 8
        periodTokenStatement[stor9].field_0 = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1)
        if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration) >= uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1):
            periodTokenStatement[stor9].field_64 = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration)
            mem[mem[64]] = periodTokenStatement[stor9].field_0
            mem[mem[64] + 32] = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration)
            emit NewPeriod(periodTokenStatement[stor9].field_0, uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration), sub_6abe602d);
        else:
            periodTokenStatement[stor9].field_64 = test266151307()
            mem[mem[64]] = 0 or periodTokenStatement[stor9].field_0
            mem[mem[64] + 32] = test266151307()
            emit NewPeriod(0 or periodTokenStatement[stor9].field_0, test266151307(), sub_6abe602d);
        idx = sha3(sub_6abe602d, 8)
        s = s - 1
        continue 
    _1191 = mem[64]
    mem[64] = mem[64] + 64
    mem[_1191] = 27
    mem[_1191 + 32] = 'FINANCE_COMPLETE_TRANSITION'
    _1197 = mem[64]
    mem[64] = mem[64] + 64
    mem[_1197] = 31
    mem[_1197 + 32] = 'FINANCE_NEW_PAYMENT_AMOUNT_ZERO'
    if arg3 <= 0:
        revert with 0, 'FINANCE_NEW_PAYMENT_AMOUNT_ZERO'
    _1205 = mem[64]
    mem[64] = mem[64] + ceil32(arg4.length) + 32
    mem[_1205] = arg4.length
    mem[_1205 + 32 len arg4.length] = arg4[all]
    mem[0] = arg1
    mem[32] = 3
    if not stor3[address(arg1)]:
        _1311 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1311] = 24
        mem[_1311 + 32] = 'FINANCE_REMAINING_BUDGET'
        if arg3 > -1:
            revert with 0, 'FINANCE_REMAINING_BUDGET'
        mem[0] = arg1
        mem[32] = sha3(sub_6abe602d - 1 << 192, 8) + 3
        _1413 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1413] = 17
        mem[_1413 + 32] = 'MATH_ADD_OVERFLOW'
        if arg3 + periodTokenStatement[stor9 - 1 << 192][3][address(arg1)].field_0 < periodTokenStatement[stor9 - 1 << 192][3][address(arg1)].field_0:
            revert with 0, 'MATH_ADD_OVERFLOW'
        periodTokenStatement[stor9 - 1 << 192][3][address(arg1)].field_0 += arg3
        sub_eaa7ec68++
        mem[0] = sub_eaa7ec68
        mem[32] = 6
        transaction[stor7].field_0 = arg1
        transaction[stor7].field_256 = arg2
        transaction[stor7].field_416 = 0
        transaction[stor7].field_512 = arg3
        transaction[stor7].field_768 = 0
        transaction[stor7].field_1024 = 0
        _1497 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1497] = 21
        mem[_1497 + 32] = 'UINT64_NUMBER_TOO_BIG'
    else:
        mem[0] = arg1
        mem[32] = sha3(sub_6abe602d - 1 << 192, 8) + 3
        if periodTokenStatement[stor9 - 1 << 192][3][address(arg1)].field_0 < stor2[address(arg1)]:
            _1337 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1337] = 24
            mem[_1337 + 32] = 'FINANCE_REMAINING_BUDGET'
            if arg3 > stor2[address(arg1)] - periodTokenStatement[stor9 - 1 << 192][3][address(arg1)].field_0:
                revert with 0, 'FINANCE_REMAINING_BUDGET'
            mem[0] = arg1
            mem[32] = sha3(sub_6abe602d - 1 << 192, 8) + 3
            _1437 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1437] = 17
            mem[_1437 + 32] = 'MATH_ADD_OVERFLOW'
            if arg3 + periodTokenStatement[stor9 - 1 << 192][3][address(arg1)].field_0 < periodTokenStatement[stor9 - 1 << 192][3][address(arg1)].field_0:
                revert with 0, 'MATH_ADD_OVERFLOW'
            periodTokenStatement[stor9 - 1 << 192][3][address(arg1)].field_0 += arg3
            sub_eaa7ec68++
            mem[0] = sub_eaa7ec68
            mem[32] = 6
            transaction[stor7].field_0 = arg1
            transaction[stor7].field_256 = arg2
            transaction[stor7].field_416 = 0
            transaction[stor7].field_512 = arg3
            transaction[stor7].field_768 = 0
            transaction[stor7].field_1024 = 0
            _1515 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1515] = 21
            mem[_1515 + 32] = 'UINT64_NUMBER_TOO_BIG'
        else:
            _1352 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1352] = 24
            mem[_1352 + 32] = 'FINANCE_REMAINING_BUDGET'
            if arg3 > 0:
                revert with 0, 'FINANCE_REMAINING_BUDGET'
            mem[0] = arg1
            mem[32] = sha3(sub_6abe602d - 1 << 192, 8) + 3
            _1446 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1446] = 17
            mem[_1446 + 32] = 'MATH_ADD_OVERFLOW'
            if arg3 + periodTokenStatement[stor9 - 1 << 192][3][address(arg1)].field_0 < periodTokenStatement[stor9 - 1 << 192][3][address(arg1)].field_0:
                revert with 0, 'MATH_ADD_OVERFLOW'
            periodTokenStatement[stor9 - 1 << 192][3][address(arg1)].field_0 += arg3
            sub_eaa7ec68++
            mem[0] = sub_eaa7ec68
            mem[32] = 6
            transaction[stor7].field_0 = arg1
            transaction[stor7].field_256 = arg2
            transaction[stor7].field_416 = 0
            transaction[stor7].field_512 = arg3
            transaction[stor7].field_768 = 0
            transaction[stor7].field_1024 = 0
            _1524 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1524] = 21
            mem[_1524 + 32] = 'UINT64_NUMBER_TOO_BIG'
    if block.timestamp > test266151307():
        revert with 0, 'UINT64_NUMBER_TOO_BIG'
    transaction[stor7].field_1088 = uint64(block.timestamp)
    transaction[stor7].field_1152 = uint64(sub_6abe602d - 1)
    transaction[stor7].field_1216 = 0
    mem[0] = uint64(sub_6abe602d - 1)
    mem[32] = 8
    if not periodTokenStatement[stor9 - 1 << 192].field_256:
        periodTokenStatement[stor9 - 1 << 192].field_256 = sub_eaa7ec68
    mem[mem[64]] = 0
    mem[mem[64] + 32] = arg3
    mem[mem[64] + 64] = 96
    mem[mem[64] + 96] = arg4.length
    mem[mem[64] + 128 len ceil32(arg4.length)] = arg4[all], mem[_1205 + arg4.length + 32 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        emit NewTransaction(uint256 arg1, bool arg2, address arg3, uint256 arg4, string arg5):
                            0,
                            arg3,
                            96,
                            arg4.length,
                            mem[mem[64] + 128 len arg4.length],
                            sub_eaa7ec68,
                            arg2,
    else:
        mem[floor32(arg4.length) + mem[64] + 128] = mem[floor32(arg4.length) + mem[64] + -(arg4.length % 32) + 160 len arg4.length % 32]
        emit NewTransaction(uint256 arg1, bool arg2, address arg3, uint256 arg4, string arg5):
                            0,
                            arg3,
                            96,
                            arg4.length,
                            mem[mem[64] + 128 len floor32(arg4.length) + 32],
                            sub_eaa7ec68,
                            arg2,
    require ext_code.size(address(vaultAddress))
    call address(vaultAddress).transfer(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setBudget(address arg1, uint256 arg2) {
    mem[128] = arg1
    mem[160] = arg2
    mem[192] = stor2[address(arg1)]
    if stor3[address(arg1)]:
        mem[224] = 1
        if not initializationBlock:
            revert with 0, 'APP_AUTH_FAILED'
        if block.number < initializationBlock:
            revert with 0, 'APP_AUTH_FAILED'
        if not kernelAddress:
            revert with 0, 'APP_AUTH_FAILED'
        mem[96] = 128
        mem[356] = 128
        mem[388] = 128
        mem[420 len 128] = address(arg1), arg2, stor2[address(arg1)], 1
        require ext_code.size(kernelAddress)
        call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), sha3('CHANGE_BUDGETS_ROLE'), 128, 128, address(arg1), arg2, stor2[address(arg1)], 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[256] = 15
        mem[288] = 'APP_AUTH_FAILED'
        if not ext_call.return_data[0]:
            revert with 0, 'APP_AUTH_FAILED'
        mem[32] = 8
        mem[64] = 384
        mem[320] = 21
        mem[352] = 'UINT64_NUMBER_TOO_BIG'
        if block.timestamp > test266151307():
            revert with 0, 'UINT64_NUMBER_TOO_BIG'
        idx = 0
        s = -1
        while uint64(block.timestamp) > periodTokenStatement[stor9 - 1 << 192][idx].field_64:
            if not uint64(s):
                _824 = mem[64]
                mem[64] = mem[64] + 64
                mem[_824] = 27
                mem[_824 + 32] = 'FINANCE_COMPLETE_TRANSITION'
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 27
                mem[mem[64] + 68] = 'FINANCE_COMPLETE_TRANSITION'
                idx = 32
                while idx < 27:
                    mem[idx + mem[64] + 68] = mem[idx + _824 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'FINANCE_COMPLETE_TRANSITION'
            if not periodTokenStatement[stor9 - 1 << 192][idx].field_256:
                _822 = mem[64]
                mem[64] = mem[64] + 64
                mem[_822] = 19
                mem[_822 + 32] = 'MATH64_ADD_OVERFLOW'
                if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1) < periodTokenStatement[stor9 - 1 << 192][idx].field_64:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 19
                    mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                    idx = 32
                    while idx < 19:
                        mem[idx + mem[64] + 68] = mem[idx + _822 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'MATH64_ADD_OVERFLOW'
            else:
                _823 = mem[64]
                mem[64] = mem[64] + 64
                mem[_823] = 18
                mem[_823 + 32] = 'MATH_SUB_UNDERFLOW'
                if 1 > sub_eaa7ec68:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 18
                    mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                    idx = 32
                    while idx < 18:
                        mem[idx + mem[64] + 68] = mem[idx + _823 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'MATH_SUB_UNDERFLOW'
                periodTokenStatement[stor9 - 1 << 192][idx].field_512 = sub_eaa7ec68 - 1
                _940 = mem[64]
                mem[64] = mem[64] + 64
                mem[_940] = 19
                mem[_940 + 32] = 'MATH64_ADD_OVERFLOW'
                if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1) < periodTokenStatement[stor9 - 1 << 192][idx].field_64:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 19
                    mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                    idx = 32
                    while idx < 19:
                        mem[idx + mem[64] + 68] = mem[idx + _940 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'MATH64_ADD_OVERFLOW'
            ('ge', ('mask_shl', 64, 0, 0, ('add', 1, ('field', 64, ('stor', ('array', ('var', 0), ('map', ('mask_shl', 64, 0, 192, ('add', -1, ('stor', ('name', 'stor9', 9)))), ('name', 'periodTokenStatement', 8))))))), ('field', 64, ('stor', ('array', ('var', 0), ('map', ('mask_shl', 64, 0, 192, ('add', -1, ('stor', ('name', 'stor9', 9)))), ('name', 'periodTokenStatement', 8))))))
            sub_6abe602d = uint64(sub_6abe602d + 1)
            mem[0] = sub_6abe602d
            mem[32] = 8
            periodTokenStatement[stor9].field_0 = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1)
            if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration) >= uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1):
                periodTokenStatement[stor9].field_64 = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration)
                mem[mem[64]] = periodTokenStatement[stor9].field_0
                mem[mem[64] + 32] = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration)
                emit NewPeriod(periodTokenStatement[stor9].field_0, uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration), sub_6abe602d);
            else:
                periodTokenStatement[stor9].field_64 = test266151307()
                mem[mem[64]] = 0 or periodTokenStatement[stor9].field_0
                mem[mem[64] + 32] = test266151307()
                emit NewPeriod(0 or periodTokenStatement[stor9].field_0, test266151307(), sub_6abe602d);
            idx = sha3(sub_6abe602d, 8)
            s = s - 1
            continue 
    else:
        mem[224] = 0
        if not initializationBlock:
            revert with 0, 'APP_AUTH_FAILED'
        if block.number < initializationBlock:
            revert with 0, 'APP_AUTH_FAILED'
        if not kernelAddress:
            revert with 0, 'APP_AUTH_FAILED'
        mem[96] = 128
        mem[356] = 128
        mem[388] = 128
        mem[420 len 128] = address(arg1), arg2, stor2[address(arg1)], 0
        require ext_code.size(kernelAddress)
        call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), sha3('CHANGE_BUDGETS_ROLE'), 128, 128, address(arg1), arg2, stor2[address(arg1)], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[256] = 15
        mem[288] = 'APP_AUTH_FAILED'
        if not ext_call.return_data[0]:
            revert with 0, 'APP_AUTH_FAILED'
        mem[32] = 8
        mem[64] = 384
        mem[320] = 21
        mem[352] = 'UINT64_NUMBER_TOO_BIG'
        if block.timestamp > test266151307():
            revert with 0, 'UINT64_NUMBER_TOO_BIG'
        idx = 0
        s = -1
        while uint64(block.timestamp) > periodTokenStatement[stor9 - 1 << 192][idx].field_64:
            if not uint64(s):
                _834 = mem[64]
                mem[64] = mem[64] + 64
                mem[_834] = 27
                mem[_834 + 32] = 'FINANCE_COMPLETE_TRANSITION'
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 27
                mem[mem[64] + 68] = 'FINANCE_COMPLETE_TRANSITION'
                idx = 32
                while idx < 27:
                    mem[idx + mem[64] + 68] = mem[idx + _834 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'FINANCE_COMPLETE_TRANSITION'
            if not periodTokenStatement[stor9 - 1 << 192][idx].field_256:
                _832 = mem[64]
                mem[64] = mem[64] + 64
                mem[_832] = 19
                mem[_832 + 32] = 'MATH64_ADD_OVERFLOW'
                if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1) < periodTokenStatement[stor9 - 1 << 192][idx].field_64:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 19
                    mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                    idx = 32
                    while idx < 19:
                        mem[idx + mem[64] + 68] = mem[idx + _832 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'MATH64_ADD_OVERFLOW'
            else:
                _833 = mem[64]
                mem[64] = mem[64] + 64
                mem[_833] = 18
                mem[_833 + 32] = 'MATH_SUB_UNDERFLOW'
                if 1 > sub_eaa7ec68:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 18
                    mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                    idx = 32
                    while idx < 18:
                        mem[idx + mem[64] + 68] = mem[idx + _833 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'MATH_SUB_UNDERFLOW'
                periodTokenStatement[stor9 - 1 << 192][idx].field_512 = sub_eaa7ec68 - 1
                _958 = mem[64]
                mem[64] = mem[64] + 64
                mem[_958] = 19
                mem[_958 + 32] = 'MATH64_ADD_OVERFLOW'
                if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1) < periodTokenStatement[stor9 - 1 << 192][idx].field_64:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 19
                    mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                    idx = 32
                    while idx < 19:
                        mem[idx + mem[64] + 68] = mem[idx + _958 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'MATH64_ADD_OVERFLOW'
            ('ge', ('mask_shl', 64, 0, 0, ('add', 1, ('field', 64, ('stor', ('array', ('var', 0), ('map', ('mask_shl', 64, 0, 192, ('add', -1, ('stor', ('name', 'stor9', 9)))), ('name', 'periodTokenStatement', 8))))))), ('field', 64, ('stor', ('array', ('var', 0), ('map', ('mask_shl', 64, 0, 192, ('add', -1, ('stor', ('name', 'stor9', 9)))), ('name', 'periodTokenStatement', 8))))))
            sub_6abe602d = uint64(sub_6abe602d + 1)
            mem[0] = sub_6abe602d
            mem[32] = 8
            periodTokenStatement[stor9].field_0 = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1)
            if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration) >= uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1):
                periodTokenStatement[stor9].field_64 = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration)
                mem[mem[64]] = periodTokenStatement[stor9].field_0
                mem[mem[64] + 32] = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration)
                emit NewPeriod(periodTokenStatement[stor9].field_0, uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration), sub_6abe602d);
            else:
                periodTokenStatement[stor9].field_64 = test266151307()
                mem[mem[64]] = 0 or periodTokenStatement[stor9].field_0
                mem[mem[64] + 32] = test266151307()
                emit NewPeriod(0 or periodTokenStatement[stor9].field_0, test266151307(), sub_6abe602d);
            idx = sha3(sub_6abe602d, 8)
            s = s - 1
            continue 
    stor2[address(arg1)] = arg2
    if not stor3[address(arg1)]:
        stor3[address(arg1)] = 1
    emit SetBudget(arg2, 1, arg1);
}

function removeBudget(address arg1) {
    mem[128] = arg1
    mem[160] = 0
    mem[192] = stor2[address(arg1)]
    if stor3[address(arg1)]:
        mem[224] = 1
        if not initializationBlock:
            revert with 0, 'APP_AUTH_FAILED'
        if block.number < initializationBlock:
            revert with 0, 'APP_AUTH_FAILED'
        if not kernelAddress:
            revert with 0, 'APP_AUTH_FAILED'
        mem[96] = 128
        mem[356] = 128
        mem[388] = 128
        mem[420 len 128] = address(arg1), 0, stor2[address(arg1)], 1
        require ext_code.size(kernelAddress)
        call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), sha3('CHANGE_BUDGETS_ROLE'), 128, 128, address(arg1), 0, stor2[address(arg1)], 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[256] = 15
        mem[288] = 'APP_AUTH_FAILED'
        if not ext_call.return_data[0]:
            revert with 0, 'APP_AUTH_FAILED'
        mem[32] = 8
        mem[64] = 384
        mem[320] = 21
        mem[352] = 'UINT64_NUMBER_TOO_BIG'
        if block.timestamp > test266151307():
            revert with 0, 'UINT64_NUMBER_TOO_BIG'
        idx = 0
        s = -1
        while uint64(block.timestamp) > periodTokenStatement[stor9 - 1 << 192][idx].field_64:
            if not uint64(s):
                _802 = mem[64]
                mem[64] = mem[64] + 64
                mem[_802] = 27
                mem[_802 + 32] = 'FINANCE_COMPLETE_TRANSITION'
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 27
                mem[mem[64] + 68] = 'FINANCE_COMPLETE_TRANSITION'
                idx = 32
                while idx < 27:
                    mem[idx + mem[64] + 68] = mem[idx + _802 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'FINANCE_COMPLETE_TRANSITION'
            if not periodTokenStatement[stor9 - 1 << 192][idx].field_256:
                _800 = mem[64]
                mem[64] = mem[64] + 64
                mem[_800] = 19
                mem[_800 + 32] = 'MATH64_ADD_OVERFLOW'
                if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1) < periodTokenStatement[stor9 - 1 << 192][idx].field_64:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 19
                    mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                    idx = 32
                    while idx < 19:
                        mem[idx + mem[64] + 68] = mem[idx + _800 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'MATH64_ADD_OVERFLOW'
            else:
                _801 = mem[64]
                mem[64] = mem[64] + 64
                mem[_801] = 18
                mem[_801 + 32] = 'MATH_SUB_UNDERFLOW'
                if 1 > sub_eaa7ec68:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 18
                    mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                    idx = 32
                    while idx < 18:
                        mem[idx + mem[64] + 68] = mem[idx + _801 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'MATH_SUB_UNDERFLOW'
                periodTokenStatement[stor9 - 1 << 192][idx].field_512 = sub_eaa7ec68 - 1
                _904 = mem[64]
                mem[64] = mem[64] + 64
                mem[_904] = 19
                mem[_904 + 32] = 'MATH64_ADD_OVERFLOW'
                if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1) < periodTokenStatement[stor9 - 1 << 192][idx].field_64:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 19
                    mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                    idx = 32
                    while idx < 19:
                        mem[idx + mem[64] + 68] = mem[idx + _904 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'MATH64_ADD_OVERFLOW'
            ('ge', ('mask_shl', 64, 0, 0, ('add', 1, ('field', 64, ('stor', ('array', ('var', 0), ('map', ('mask_shl', 64, 0, 192, ('add', -1, ('stor', ('name', 'stor9', 9)))), ('name', 'periodTokenStatement', 8))))))), ('field', 64, ('stor', ('array', ('var', 0), ('map', ('mask_shl', 64, 0, 192, ('add', -1, ('stor', ('name', 'stor9', 9)))), ('name', 'periodTokenStatement', 8))))))
            sub_6abe602d = uint64(sub_6abe602d + 1)
            mem[0] = sub_6abe602d
            mem[32] = 8
            periodTokenStatement[stor9].field_0 = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1)
            if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration) >= uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1):
                periodTokenStatement[stor9].field_64 = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration)
                mem[mem[64]] = periodTokenStatement[stor9].field_0
                mem[mem[64] + 32] = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration)
                emit NewPeriod(periodTokenStatement[stor9].field_0, uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration), sub_6abe602d);
            else:
                periodTokenStatement[stor9].field_64 = test266151307()
                mem[mem[64]] = 0 or periodTokenStatement[stor9].field_0
                mem[mem[64] + 32] = test266151307()
                emit NewPeriod(0 or periodTokenStatement[stor9].field_0, test266151307(), sub_6abe602d);
            idx = sha3(sub_6abe602d, 8)
            s = s - 1
            continue 
    else:
        mem[224] = 0
        if not initializationBlock:
            revert with 0, 'APP_AUTH_FAILED'
        if block.number < initializationBlock:
            revert with 0, 'APP_AUTH_FAILED'
        if not kernelAddress:
            revert with 0, 'APP_AUTH_FAILED'
        mem[96] = 128
        mem[356] = 128
        mem[388] = 128
        mem[420 len 128] = address(arg1), 0, stor2[address(arg1)], 0
        require ext_code.size(kernelAddress)
        call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), sha3('CHANGE_BUDGETS_ROLE'), 128, 128, address(arg1), 0, stor2[address(arg1)], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[256] = 15
        mem[288] = 'APP_AUTH_FAILED'
        if not ext_call.return_data[0]:
            revert with 0, 'APP_AUTH_FAILED'
        mem[32] = 8
        mem[64] = 384
        mem[320] = 21
        mem[352] = 'UINT64_NUMBER_TOO_BIG'
        if block.timestamp > test266151307():
            revert with 0, 'UINT64_NUMBER_TOO_BIG'
        idx = 0
        s = -1
        while uint64(block.timestamp) > periodTokenStatement[stor9 - 1 << 192][idx].field_64:
            if not uint64(s):
                _816 = mem[64]
                mem[64] = mem[64] + 64
                mem[_816] = 27
                mem[_816 + 32] = 'FINANCE_COMPLETE_TRANSITION'
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 27
                mem[mem[64] + 68] = 'FINANCE_COMPLETE_TRANSITION'
                idx = 32
                while idx < 27:
                    mem[idx + mem[64] + 68] = mem[idx + _816 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'FINANCE_COMPLETE_TRANSITION'
            if not periodTokenStatement[stor9 - 1 << 192][idx].field_256:
                _814 = mem[64]
                mem[64] = mem[64] + 64
                mem[_814] = 19
                mem[_814 + 32] = 'MATH64_ADD_OVERFLOW'
                if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1) < periodTokenStatement[stor9 - 1 << 192][idx].field_64:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 19
                    mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                    idx = 32
                    while idx < 19:
                        mem[idx + mem[64] + 68] = mem[idx + _814 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'MATH64_ADD_OVERFLOW'
            else:
                _815 = mem[64]
                mem[64] = mem[64] + 64
                mem[_815] = 18
                mem[_815 + 32] = 'MATH_SUB_UNDERFLOW'
                if 1 > sub_eaa7ec68:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 18
                    mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                    idx = 32
                    while idx < 18:
                        mem[idx + mem[64] + 68] = mem[idx + _815 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'MATH_SUB_UNDERFLOW'
                periodTokenStatement[stor9 - 1 << 192][idx].field_512 = sub_eaa7ec68 - 1
                _922 = mem[64]
                mem[64] = mem[64] + 64
                mem[_922] = 19
                mem[_922 + 32] = 'MATH64_ADD_OVERFLOW'
                if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1) < periodTokenStatement[stor9 - 1 << 192][idx].field_64:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 19
                    mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                    idx = 32
                    while idx < 19:
                        mem[idx + mem[64] + 68] = mem[idx + _922 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'MATH64_ADD_OVERFLOW'
            ('ge', ('mask_shl', 64, 0, 0, ('add', 1, ('field', 64, ('stor', ('array', ('var', 0), ('map', ('mask_shl', 64, 0, 192, ('add', -1, ('stor', ('name', 'stor9', 9)))), ('name', 'periodTokenStatement', 8))))))), ('field', 64, ('stor', ('array', ('var', 0), ('map', ('mask_shl', 64, 0, 192, ('add', -1, ('stor', ('name', 'stor9', 9)))), ('name', 'periodTokenStatement', 8))))))
            sub_6abe602d = uint64(sub_6abe602d + 1)
            mem[0] = sub_6abe602d
            mem[32] = 8
            periodTokenStatement[stor9].field_0 = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1)
            if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration) >= uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1):
                periodTokenStatement[stor9].field_64 = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration)
                mem[mem[64]] = periodTokenStatement[stor9].field_0
                mem[mem[64] + 32] = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration)
                emit NewPeriod(periodTokenStatement[stor9].field_0, uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration), sub_6abe602d);
            else:
                periodTokenStatement[stor9].field_64 = test266151307()
                mem[mem[64]] = 0 or periodTokenStatement[stor9].field_0
                mem[mem[64] + 32] = test266151307()
                emit NewPeriod(0 or periodTokenStatement[stor9].field_0, test266151307(), sub_6abe602d);
            idx = sha3(sub_6abe602d, 8)
            s = s - 1
            continue 
    stor2[address(arg1)] = 0
    stor3[address(arg1)] = 0
    emit SetBudget(address arg1, uint256 arg2, bool arg3):
                   0,
                   arg1,
}

function recoverToVault(address arg1) {
    if not initializationBlock:
        revert with 0, 'INIT_NOT_INITIALIZED'
    mem[96] = 20
    mem[128] = 'INIT_NOT_INITIALIZED'
    if block.number < initializationBlock:
        revert with 0, 'INIT_NOT_INITIALIZED'
    mem[0] = uint64(sub_6abe602d - 1)
    mem[32] = 8
    mem[64] = 224
    mem[160] = 21
    mem[192] = 'UINT64_NUMBER_TOO_BIG'
    if block.timestamp > test266151307():
        revert with 0, 'UINT64_NUMBER_TOO_BIG'
    idx = 0
    s = -1
    while uint64(block.timestamp) > periodTokenStatement[stor9 - 1 << 192][idx].field_64:
        if not uint64(s):
            _644 = mem[64]
            mem[64] = mem[64] + 64
            mem[_644] = 27
            mem[_644 + 32] = 'FINANCE_COMPLETE_TRANSITION'
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 27
            mem[mem[64] + 68] = 'FINANCE_COMPLETE_TRANSITION'
            idx = 32
            while idx < 27:
                mem[idx + mem[64] + 68] = mem[idx + _644 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'FINANCE_COMPLETE_TRANSITION'
        if not periodTokenStatement[stor9 - 1 << 192][idx].field_256:
            _642 = mem[64]
            mem[64] = mem[64] + 64
            mem[_642] = 19
            mem[_642 + 32] = 'MATH64_ADD_OVERFLOW'
            if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1) < periodTokenStatement[stor9 - 1 << 192][idx].field_64:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 19
                mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                idx = 32
                while idx < 19:
                    mem[idx + mem[64] + 68] = mem[idx + _642 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH64_ADD_OVERFLOW'
        else:
            _643 = mem[64]
            mem[64] = mem[64] + 64
            mem[_643] = 18
            mem[_643 + 32] = 'MATH_SUB_UNDERFLOW'
            if 1 > sub_eaa7ec68:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 18
                mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                idx = 32
                while idx < 18:
                    mem[idx + mem[64] + 68] = mem[idx + _643 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH_SUB_UNDERFLOW'
            periodTokenStatement[stor9 - 1 << 192][idx].field_512 = sub_eaa7ec68 - 1
            _680 = mem[64]
            mem[64] = mem[64] + 64
            mem[_680] = 19
            mem[_680 + 32] = 'MATH64_ADD_OVERFLOW'
            if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1) < periodTokenStatement[stor9 - 1 << 192][idx].field_64:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 19
                mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                idx = 32
                while idx < 19:
                    mem[idx + mem[64] + 68] = mem[idx + _680 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH64_ADD_OVERFLOW'
        ('ge', ('mask_shl', 64, 0, 0, ('add', 1, ('field', 64, ('stor', ('array', ('var', 0), ('map', ('mask_shl', 64, 0, 192, ('add', -1, ('stor', ('name', 'stor9', 9)))), ('name', 'periodTokenStatement', 8))))))), ('field', 64, ('stor', ('array', ('var', 0), ('map', ('mask_shl', 64, 0, 192, ('add', -1, ('stor', ('name', 'stor9', 9)))), ('name', 'periodTokenStatement', 8))))))
        sub_6abe602d = uint64(sub_6abe602d + 1)
        mem[0] = sub_6abe602d
        mem[32] = 8
        periodTokenStatement[stor9].field_0 = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1)
        if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration) >= uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1):
            periodTokenStatement[stor9].field_64 = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration)
            mem[mem[64]] = periodTokenStatement[stor9].field_0
            mem[mem[64] + 32] = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration)
            emit NewPeriod(periodTokenStatement[stor9].field_0, uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration), sub_6abe602d);
        else:
            periodTokenStatement[stor9].field_64 = test266151307()
            mem[mem[64]] = 0 or periodTokenStatement[stor9].field_0
            mem[mem[64] + 32] = test266151307()
            emit NewPeriod(0 or periodTokenStatement[stor9].field_0, test266151307(), sub_6abe602d);
        idx = sha3(sub_6abe602d, 8)
        s = s - 1
        continue 
    _639 = mem[64]
    mem[64] = mem[64] + 64
    mem[_639] = 27
    mem[_639 + 32] = 'FINANCE_COMPLETE_TRANSITION'
    if arg1:
        mem[mem[64] + 36] = this.address
        _656 = mem[64]
        mem[mem[64]] = 36
        mem[64] = mem[64] + 68
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args mem[_656 + 36 len mem[_656] - 4]
        if not ext_call.success:
            revert with 0, 'SAFE_ERC_20_BALANCE_REVERTED'
        if ext_call.success <= 0:
            revert with 0, 'FINANCE_RECOVER_AMOUNT_ZERO'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'FINANCE_RECOVER_AMOUNT_ZERO'
        if ext_call.return_data[0] + periodTokenStatement[stor9 - 1 << 192][3][address(arg1)].field_256 < periodTokenStatement[stor9 - 1 << 192][3][address(arg1)].field_256:
            revert with 0, 'MATH_ADD_OVERFLOW'
        periodTokenStatement[stor9 - 1 << 192][3][address(arg1)].field_256 += ext_call.return_data[0]
        sub_eaa7ec68++
        transaction[stor7].field_0 = arg1
        transaction[stor7].field_256 = this.address
        transaction[stor7].field_416 = 1
        transaction[stor7].field_512 = ext_call.return_data[0]
        transaction[stor7].field_768 = 0
        transaction[stor7].field_1024 = 0
        if block.timestamp > test266151307():
            revert with 0, 'UINT64_NUMBER_TOO_BIG'
        transaction[stor7].field_1088 = uint64(block.timestamp)
        transaction[stor7].field_1152 = uint64(sub_6abe602d - 1)
        transaction[stor7].field_1216 = 0
        if not periodTokenStatement[stor9 - 1 << 192].field_256:
            periodTokenStatement[stor9 - 1 << 192].field_256 = sub_eaa7ec68
        emit NewTransaction(1, ext_call.return_data[0], 'Recover to Vault', sub_eaa7ec68, this.address);
        if not arg1:
            require ext_code.size(address(vaultAddress))
            call address(vaultAddress).deposit(address arg1, uint256 arg2) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
                args 0, ext_call.return_data[0]
        else:
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0]
            if ext_call.success <= 0:
                revert with 0, 'FINANCE_TKN_APPROVE_FAILED'
            if return_data.size:
                if 32 != return_data.size:
                    revert with 0, 'FINANCE_TKN_APPROVE_FAILED'
                if ext_call.return_data[0] != 1:
                    revert with 0, 'FINANCE_TKN_APPROVE_FAILED'
            require ext_code.size(address(vaultAddress))
            call address(vaultAddress).deposit(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0]
    else:
        _654 = mem[64]
        mem[64] = mem[64] + 64
        mem[_654] = 27
        mem[_654 + 32] = 'FINANCE_RECOVER_AMOUNT_ZERO'
        if eth.balance(this.address) <= 0:
            revert with 0, 'FINANCE_RECOVER_AMOUNT_ZERO'
        _661 = mem[64]
        mem[64] = mem[64] + 64
        mem[_661] = 16
        mem[_661 + 32] = 'Recover to Vault'
        mem[0] = arg1
        mem[32] = sha3(sub_6abe602d - 1 << 192, 8) + 3
        _741 = mem[64]
        mem[64] = mem[64] + 64
        mem[_741] = 17
        mem[_741 + 32] = 'MATH_ADD_OVERFLOW'
        if eth.balance(this.address) + periodTokenStatement[stor9 - 1 << 192][3][address(arg1)].field_256 < periodTokenStatement[stor9 - 1 << 192][3][address(arg1)].field_256:
            revert with 0, 'MATH_ADD_OVERFLOW'
        periodTokenStatement[stor9 - 1 << 192][3][address(arg1)].field_256 += eth.balance(this.address)
        sub_eaa7ec68++
        mem[0] = sub_eaa7ec68
        mem[32] = 6
        transaction[stor7].field_0 = arg1
        transaction[stor7].field_256 = this.address
        transaction[stor7].field_416 = 1
        transaction[stor7].field_512 = eth.balance(this.address)
        transaction[stor7].field_768 = 0
        transaction[stor7].field_1024 = 0
        _785 = mem[64]
        mem[64] = mem[64] + 64
        mem[_785] = 21
        mem[_785 + 32] = 'UINT64_NUMBER_TOO_BIG'
        if block.timestamp > test266151307():
            revert with 0, 'UINT64_NUMBER_TOO_BIG'
        transaction[stor7].field_1088 = uint64(block.timestamp)
        transaction[stor7].field_1152 = uint64(sub_6abe602d - 1)
        transaction[stor7].field_1216 = 0
        mem[0] = uint64(sub_6abe602d - 1)
        mem[32] = 8
        if periodTokenStatement[stor9 - 1 << 192].field_256:
            mem[mem[64] + 32] = eth.balance(this.address)
            mem[mem[64] + 96] = 16
            mem[mem[64] + 128] = uint128('Recover to Vault')
            emit NewTransaction(1, eth.balance(this.address), 'Recover to Vault', sub_eaa7ec68, this.address);
            if not arg1:
                require ext_code.size(address(vaultAddress))
                call address(vaultAddress).deposit(address arg1, uint256 arg2) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args 0, eth.balance(this.address)
            else:
                mem[mem[64] + 36] = address(vaultAddress)
                mem[mem[64] + 68] = eth.balance(this.address)
                _1343 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[_1343 + 36 len mem[_1343] - 4]
                if ext_call.success <= 0:
                    revert with 0, 'FINANCE_TKN_APPROVE_FAILED'
                if return_data.size:
                    if 32 != return_data.size:
                        revert with 0, 'FINANCE_TKN_APPROVE_FAILED'
                    if ext_call.return_data[0] != 1:
                        revert with 0, 'FINANCE_TKN_APPROVE_FAILED'
                require ext_code.size(address(vaultAddress))
                call address(vaultAddress).deposit(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), eth.balance(this.address)
        else:
            periodTokenStatement[stor9 - 1 << 192].field_256 = sub_eaa7ec68
            mem[mem[64] + 32] = eth.balance(this.address)
            mem[mem[64] + 96] = 16
            mem[mem[64] + 128] = uint128('Recover to Vault')
            emit NewTransaction(1, eth.balance(this.address), 'Recover to Vault', sub_eaa7ec68, this.address);
            if not arg1:
                require ext_code.size(address(vaultAddress))
                call address(vaultAddress).deposit(address arg1, uint256 arg2) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args 0, eth.balance(this.address)
            else:
                mem[mem[64] + 36] = address(vaultAddress)
                mem[mem[64] + 68] = eth.balance(this.address)
                _1348 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[_1348 + 36 len mem[_1348] - 4]
                if ext_call.success <= 0:
                    revert with 0, 'FINANCE_TKN_APPROVE_FAILED'
                if return_data.size:
                    if 32 != return_data.size:
                        revert with 0, 'FINANCE_TKN_APPROVE_FAILED'
                    if ext_call.return_data[0] != 1:
                        revert with 0, 'FINANCE_TKN_APPROVE_FAILED'
                require ext_code.size(address(vaultAddress))
                call address(vaultAddress).deposit(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), eth.balance(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deposit(address arg1, uint256 arg2, string arg3) payable {
    if not initializationBlock:
        revert with 0, 'INIT_NOT_INITIALIZED'
    mem[96] = 20
    mem[128] = 'INIT_NOT_INITIALIZED'
    if block.number < initializationBlock:
        revert with 0, 'INIT_NOT_INITIALIZED'
    mem[0] = uint64(sub_6abe602d - 1)
    mem[32] = 8
    mem[64] = 224
    mem[160] = 21
    mem[192] = 'UINT64_NUMBER_TOO_BIG'
    if block.timestamp > test266151307():
        revert with 0, 'UINT64_NUMBER_TOO_BIG'
    idx = 0
    s = -1
    while uint64(block.timestamp) > periodTokenStatement[stor9 - 1 << 192][idx].field_64:
        if not uint64(s):
            _1323 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1323] = 27
            mem[_1323 + 32] = 'FINANCE_COMPLETE_TRANSITION'
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 27
            mem[mem[64] + 68] = 'FINANCE_COMPLETE_TRANSITION'
            idx = 32
            while idx < 27:
                mem[idx + mem[64] + 68] = mem[idx + _1323 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'FINANCE_COMPLETE_TRANSITION'
        if not periodTokenStatement[stor9 - 1 << 192][idx].field_256:
            _1321 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1321] = 19
            mem[_1321 + 32] = 'MATH64_ADD_OVERFLOW'
            if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1) < periodTokenStatement[stor9 - 1 << 192][idx].field_64:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 19
                mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                idx = 32
                while idx < 19:
                    mem[idx + mem[64] + 68] = mem[idx + _1321 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH64_ADD_OVERFLOW'
        else:
            _1322 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1322] = 18
            mem[_1322 + 32] = 'MATH_SUB_UNDERFLOW'
            if 1 > sub_eaa7ec68:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 18
                mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                idx = 32
                while idx < 18:
                    mem[idx + mem[64] + 68] = mem[idx + _1322 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH_SUB_UNDERFLOW'
            periodTokenStatement[stor9 - 1 << 192][idx].field_512 = sub_eaa7ec68 - 1
            _1362 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1362] = 19
            mem[_1362 + 32] = 'MATH64_ADD_OVERFLOW'
            if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1) < periodTokenStatement[stor9 - 1 << 192][idx].field_64:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 19
                mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                idx = 32
                while idx < 19:
                    mem[idx + mem[64] + 68] = mem[idx + _1362 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH64_ADD_OVERFLOW'
        ('ge', ('mask_shl', 64, 0, 0, ('add', 1, ('field', 64, ('stor', ('array', ('var', 0), ('map', ('mask_shl', 64, 0, 192, ('add', -1, ('stor', ('name', 'stor9', 9)))), ('name', 'periodTokenStatement', 8))))))), ('field', 64, ('stor', ('array', ('var', 0), ('map', ('mask_shl', 64, 0, 192, ('add', -1, ('stor', ('name', 'stor9', 9)))), ('name', 'periodTokenStatement', 8))))))
        sub_6abe602d = uint64(sub_6abe602d + 1)
        mem[0] = sub_6abe602d
        mem[32] = 8
        periodTokenStatement[stor9].field_0 = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1)
        if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration) >= uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1):
            periodTokenStatement[stor9].field_64 = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration)
            mem[mem[64]] = periodTokenStatement[stor9].field_0
            mem[mem[64] + 32] = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration)
            emit NewPeriod(periodTokenStatement[stor9].field_0, uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration), sub_6abe602d);
        else:
            periodTokenStatement[stor9].field_64 = test266151307()
            mem[mem[64]] = 0 or periodTokenStatement[stor9].field_0
            mem[mem[64] + 32] = test266151307()
            emit NewPeriod(0 or periodTokenStatement[stor9].field_0, test266151307(), sub_6abe602d);
        idx = sha3(sub_6abe602d, 8)
        s = s - 1
        continue 
    _1317 = mem[64]
    mem[64] = mem[64] + 64
    mem[_1317] = 27
    mem[_1317 + 32] = 'FINANCE_COMPLETE_TRANSITION'
    _1320 = mem[64]
    mem[64] = mem[64] + 64
    mem[_1320] = 27
    mem[_1320 + 32] = 'FINANCE_DEPOSIT_AMOUNT_ZERO'
    if arg2 <= 0:
        revert with 0, 'FINANCE_DEPOSIT_AMOUNT_ZERO'
    if arg1:
        _1336 = mem[64]
        mem[64] = mem[64] + ceil32(arg3.length) + 32
        mem[_1336] = arg3.length
        mem[_1336 + 32 len arg3.length] = arg3[all]
        mem[0] = arg1
        mem[32] = sha3(sub_6abe602d - 1 << 192, 8) + 3
        _1401 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1401] = 17
        mem[_1401 + 32] = 'MATH_ADD_OVERFLOW'
        if arg2 + periodTokenStatement[stor9 - 1 << 192][3][address(arg1)].field_256 < periodTokenStatement[stor9 - 1 << 192][3][address(arg1)].field_256:
            revert with 0, 'MATH_ADD_OVERFLOW'
        periodTokenStatement[stor9 - 1 << 192][3][address(arg1)].field_256 += arg2
        sub_eaa7ec68++
        mem[0] = sub_eaa7ec68
        mem[32] = 6
        transaction[stor7].field_0 = arg1
        transaction[stor7].field_256 = msg.sender
        transaction[stor7].field_416 = 1
        transaction[stor7].field_512 = arg2
        transaction[stor7].field_768 = 0
        transaction[stor7].field_1024 = 0
        _1431 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1431] = 21
        mem[_1431 + 32] = 'UINT64_NUMBER_TOO_BIG'
        if block.timestamp > test266151307():
            revert with 0, 'UINT64_NUMBER_TOO_BIG'
        transaction[stor7].field_1088 = uint64(block.timestamp)
        transaction[stor7].field_1152 = uint64(sub_6abe602d - 1)
        transaction[stor7].field_1216 = 0
        mem[0] = uint64(sub_6abe602d - 1)
        mem[32] = 8
        if periodTokenStatement[stor9 - 1 << 192].field_256:
            mem[mem[64]] = 1
            mem[mem[64] + 32] = arg2
            mem[mem[64] + 64] = 96
            mem[mem[64] + 96] = arg3.length
            mem[mem[64] + 128 len ceil32(arg3.length)] = arg3[all], mem[_1336 + arg3.length + 32 len ceil32(arg3.length) - arg3.length]
            emit NewTransaction(1, arg2, Array(len=arg3.length, data=mem[mem[64] + 128 len arg3.length]), sub_eaa7ec68, msg.sender);
            if not arg1:
                require ext_code.size(address(vaultAddress))
                call address(vaultAddress).deposit(address arg1, uint256 arg2) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args 0, arg2
            else:
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = arg2
                _2673 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args mem[_2673 + 36 len mem[_2673] - 4]
                if ext_call.success <= 0:
                    revert with 0, 'FINANCE_TKN_TRANSFER_FROM_REVERT'
                if return_data.size:
                    if 32 != return_data.size:
                        revert with 0, 'FINANCE_TKN_TRANSFER_FROM_REVERT'
                    if ext_call.return_data[0] != 1:
                        revert with 0, 'FINANCE_TKN_TRANSFER_FROM_REVERT'
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args Mask(224, 0, stor0), uint32(stor0), arg2
                if ext_call.success <= 0:
                    revert with 0, 'FINANCE_TKN_APPROVE_FAILED'
                if return_data.size:
                    if 32 != return_data.size:
                        revert with 0, 'FINANCE_TKN_APPROVE_FAILED'
                    if ext_call.return_data[0] != 1:
                        revert with 0, 'FINANCE_TKN_APPROVE_FAILED'
                require ext_code.size(address(vaultAddress))
                call address(vaultAddress).deposit(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), arg2
        else:
            periodTokenStatement[stor9 - 1 << 192].field_256 = sub_eaa7ec68
            mem[mem[64]] = 1
            mem[mem[64] + 32] = arg2
            mem[mem[64] + 64] = 96
            mem[mem[64] + 96] = arg3.length
            mem[mem[64] + 128 len ceil32(arg3.length)] = arg3[all], mem[_1336 + arg3.length + 32 len ceil32(arg3.length) - arg3.length]
            emit NewTransaction(1, arg2, Array(len=arg3.length, data=mem[mem[64] + 128 len arg3.length]), sub_eaa7ec68, msg.sender);
            if not arg1:
                require ext_code.size(address(vaultAddress))
                call address(vaultAddress).deposit(address arg1, uint256 arg2) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args 0, arg2
            else:
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = arg2
                _2676 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args mem[_2676 + 36 len mem[_2676] - 4]
                if ext_call.success <= 0:
                    revert with 0, 'FINANCE_TKN_TRANSFER_FROM_REVERT'
                if return_data.size:
                    if 32 != return_data.size:
                        revert with 0, 'FINANCE_TKN_TRANSFER_FROM_REVERT'
                    if ext_call.return_data[0] != 1:
                        revert with 0, 'FINANCE_TKN_TRANSFER_FROM_REVERT'
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args Mask(224, 0, stor0), uint32(stor0), arg2
                if ext_call.success <= 0:
                    revert with 0, 'FINANCE_TKN_APPROVE_FAILED'
                if return_data.size:
                    if 32 != return_data.size:
                        revert with 0, 'FINANCE_TKN_APPROVE_FAILED'
                    if ext_call.return_data[0] != 1:
                        revert with 0, 'FINANCE_TKN_APPROVE_FAILED'
                require ext_code.size(address(vaultAddress))
                call address(vaultAddress).deposit(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), arg2
    else:
        _1337 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1337] = 26
        mem[_1337 + 32] = 'FINANCE_ETH_VALUE_MISMATCH'
        if arg2 != msg.value:
            revert with 0, 'FINANCE_ETH_VALUE_MISMATCH'
        _1354 = mem[64]
        mem[64] = mem[64] + ceil32(arg3.length) + 32
        mem[_1354] = arg3.length
        mem[_1354 + 32 len arg3.length] = arg3[all]
        mem[0] = arg1
        mem[32] = sha3(sub_6abe602d - 1 << 192, 8) + 3
        _1413 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1413] = 17
        mem[_1413 + 32] = 'MATH_ADD_OVERFLOW'
        if arg2 + periodTokenStatement[stor9 - 1 << 192][3][address(arg1)].field_256 < periodTokenStatement[stor9 - 1 << 192][3][address(arg1)].field_256:
            revert with 0, 'MATH_ADD_OVERFLOW'
        periodTokenStatement[stor9 - 1 << 192][3][address(arg1)].field_256 += arg2
        sub_eaa7ec68++
        mem[0] = sub_eaa7ec68
        mem[32] = 6
        transaction[stor7].field_0 = arg1
        transaction[stor7].field_256 = msg.sender
        transaction[stor7].field_416 = 1
        transaction[stor7].field_512 = arg2
        transaction[stor7].field_768 = 0
        transaction[stor7].field_1024 = 0
        _1439 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1439] = 21
        mem[_1439 + 32] = 'UINT64_NUMBER_TOO_BIG'
        if block.timestamp > test266151307():
            revert with 0, 'UINT64_NUMBER_TOO_BIG'
        transaction[stor7].field_1088 = uint64(block.timestamp)
        transaction[stor7].field_1152 = uint64(sub_6abe602d - 1)
        transaction[stor7].field_1216 = 0
        mem[0] = uint64(sub_6abe602d - 1)
        mem[32] = 8
        if periodTokenStatement[stor9 - 1 << 192].field_256:
            mem[mem[64]] = 1
            mem[mem[64] + 32] = arg2
            mem[mem[64] + 64] = 96
            mem[mem[64] + 96] = arg3.length
            mem[mem[64] + 128 len ceil32(arg3.length)] = arg3[all], mem[_1354 + arg3.length + 32 len ceil32(arg3.length) - arg3.length]
            emit NewTransaction(1, arg2, Array(len=arg3.length, data=mem[mem[64] + 128 len arg3.length]), sub_eaa7ec68, msg.sender);
            if not arg1:
                require ext_code.size(address(vaultAddress))
                call address(vaultAddress).deposit(address arg1, uint256 arg2) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args 0, arg2
            else:
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = arg2
                _2679 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args mem[_2679 + 36 len mem[_2679] - 4]
                if ext_call.success <= 0:
                    revert with 0, 'FINANCE_TKN_TRANSFER_FROM_REVERT'
                if return_data.size:
                    if 32 != return_data.size:
                        revert with 0, 'FINANCE_TKN_TRANSFER_FROM_REVERT'
                    if ext_call.return_data[0] != 1:
                        revert with 0, 'FINANCE_TKN_TRANSFER_FROM_REVERT'
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args Mask(224, 0, stor0), uint32(stor0), arg2
                if ext_call.success <= 0:
                    revert with 0, 'FINANCE_TKN_APPROVE_FAILED'
                if return_data.size:
                    if 32 != return_data.size:
                        revert with 0, 'FINANCE_TKN_APPROVE_FAILED'
                    if ext_call.return_data[0] != 1:
                        revert with 0, 'FINANCE_TKN_APPROVE_FAILED'
                require ext_code.size(address(vaultAddress))
                call address(vaultAddress).deposit(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), arg2
        else:
            periodTokenStatement[stor9 - 1 << 192].field_256 = sub_eaa7ec68
            mem[mem[64]] = 1
            mem[mem[64] + 32] = arg2
            mem[mem[64] + 64] = 96
            mem[mem[64] + 96] = arg3.length
            mem[mem[64] + 128 len ceil32(arg3.length)] = arg3[all], mem[_1354 + arg3.length + 32 len ceil32(arg3.length) - arg3.length]
            emit NewTransaction(1, arg2, Array(len=arg3.length, data=mem[mem[64] + 128 len arg3.length]), sub_eaa7ec68, msg.sender);
            if not arg1:
                require ext_code.size(address(vaultAddress))
                call address(vaultAddress).deposit(address arg1, uint256 arg2) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args 0, arg2
            else:
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = arg2
                _2682 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args mem[_2682 + 36 len mem[_2682] - 4]
                if ext_call.success <= 0:
                    revert with 0, 'FINANCE_TKN_TRANSFER_FROM_REVERT'
                if return_data.size:
                    if 32 != return_data.size:
                        revert with 0, 'FINANCE_TKN_TRANSFER_FROM_REVERT'
                    if ext_call.return_data[0] != 1:
                        revert with 0, 'FINANCE_TKN_TRANSFER_FROM_REVERT'
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args Mask(224, 0, stor0), uint32(stor0), arg2
                if ext_call.success <= 0:
                    revert with 0, 'FINANCE_TKN_APPROVE_FAILED'
                if return_data.size:
                    if 32 != return_data.size:
                        revert with 0, 'FINANCE_TKN_APPROVE_FAILED'
                    if ext_call.return_data[0] != 1:
                        revert with 0, 'FINANCE_TKN_APPROVE_FAILED'
                require ext_code.size(address(vaultAddress))
                call address(vaultAddress).deposit(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function receiverExecutePayment(uint256 arg1) {
    if arg1 <= 0:
        revert with 0, 'FINANCE_NO_SCHEDULED_PAYMENT'
    mem[96] = 28
    mem[128] = 'FINANCE_NO_SCHEDULED_PAYMENT'
    if arg1 >= sub_de048a7b:
        revert with 0, 'FINANCE_NO_SCHEDULED_PAYMENT'
    mem[0] = uint64(sub_6abe602d - 1)
    mem[32] = 8
    mem[64] = 224
    mem[160] = 21
    mem[192] = 'UINT64_NUMBER_TOO_BIG'
    if block.timestamp > test266151307():
        revert with 0, 'UINT64_NUMBER_TOO_BIG'
    idx = 0
    s = -1
    while uint64(block.timestamp) > periodTokenStatement[stor9 - 1 << 192][idx].field_64:
        if not uint64(s):
            _1717 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1717] = 27
            mem[_1717 + 32] = 'FINANCE_COMPLETE_TRANSITION'
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 27
            mem[mem[64] + 68] = 'FINANCE_COMPLETE_TRANSITION'
            idx = 32
            while idx < 27:
                mem[idx + mem[64] + 68] = mem[idx + _1717 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'FINANCE_COMPLETE_TRANSITION'
        if not periodTokenStatement[stor9 - 1 << 192][idx].field_256:
            _1715 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1715] = 19
            mem[_1715 + 32] = 'MATH64_ADD_OVERFLOW'
            if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1) < periodTokenStatement[stor9 - 1 << 192][idx].field_64:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 19
                mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                idx = 32
                while idx < 19:
                    mem[idx + mem[64] + 68] = mem[idx + _1715 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH64_ADD_OVERFLOW'
        else:
            _1716 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1716] = 18
            mem[_1716 + 32] = 'MATH_SUB_UNDERFLOW'
            if 1 > sub_eaa7ec68:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 18
                mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                idx = 32
                while idx < 18:
                    mem[idx + mem[64] + 68] = mem[idx + _1716 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH_SUB_UNDERFLOW'
            periodTokenStatement[stor9 - 1 << 192][idx].field_512 = sub_eaa7ec68 - 1
            _1754 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1754] = 19
            mem[_1754 + 32] = 'MATH64_ADD_OVERFLOW'
            if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1) < periodTokenStatement[stor9 - 1 << 192][idx].field_64:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 19
                mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                idx = 32
                while idx < 19:
                    mem[idx + mem[64] + 68] = mem[idx + _1754 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH64_ADD_OVERFLOW'
        ('ge', ('mask_shl', 64, 0, 0, ('add', 1, ('field', 64, ('stor', ('array', ('var', 0), ('map', ('mask_shl', 64, 0, 192, ('add', -1, ('stor', ('name', 'stor9', 9)))), ('name', 'periodTokenStatement', 8))))))), ('field', 64, ('stor', ('array', ('var', 0), ('map', ('mask_shl', 64, 0, 192, ('add', -1, ('stor', ('name', 'stor9', 9)))), ('name', 'periodTokenStatement', 8))))))
        sub_6abe602d = uint64(sub_6abe602d + 1)
        mem[0] = sub_6abe602d
        mem[32] = 8
        periodTokenStatement[stor9].field_0 = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1)
        if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration) >= uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1):
            periodTokenStatement[stor9].field_64 = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration)
            mem[mem[64]] = periodTokenStatement[stor9].field_0
            mem[mem[64] + 32] = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration)
            emit NewPeriod(periodTokenStatement[stor9].field_0, uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration), sub_6abe602d);
        else:
            periodTokenStatement[stor9].field_64 = test266151307()
            mem[mem[64]] = 0 or periodTokenStatement[stor9].field_0
            mem[mem[64] + 32] = test266151307()
            emit NewPeriod(0 or periodTokenStatement[stor9].field_0, test266151307(), sub_6abe602d);
        idx = sha3(sub_6abe602d, 8)
        s = s - 1
        continue 
    _1710 = mem[64]
    mem[64] = mem[64] + 64
    mem[_1710] = 27
    mem[_1710 + 32] = 'FINANCE_COMPLETE_TRANSITION'
    mem[0] = arg1
    mem[32] = 4
    _1714 = mem[64]
    mem[64] = mem[64] + 64
    mem[_1714] = 24
    mem[_1714 + 32] = 'FINANCE_PAYMENT_RECEIVER'
    if payment[arg1].field_256 != msg.sender:
        revert with 0, 'FINANCE_PAYMENT_RECEIVER'
    mem[0] = arg1
    mem[32] = 4
    _1735 = mem[64]
    mem[64] = mem[64] + 64
    mem[_1735] = 24
    mem[_1735 + 32] = 'FINANCE_PAYMENT_INACTIVE'
    if payment[arg1].field_672:
        revert with 0, 'FINANCE_PAYMENT_INACTIVE'
    _6928 = mem[64]
    mem[64] = mem[64] + 64
    mem[_6928] = 21
    mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
    s = var83002
    while block.timestamp <= test266151307():
        mem[0] = arg1
        mem[32] = 4
        if payment[arg1].field_1216 >= payment[arg1].field_1152:
            if test266151307() > uint64(block.timestamp):
                if uint64(s):
                _6967 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6967] = 21
                mem[_6967 + 32] = 'UINT64_NUMBER_TOO_BIG'
                if block.timestamp > test266151307():
                    _6970 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 21
                    mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                    idx = 32
                    while idx < 21:
                        mem[idx + _6970 + 68] = mem[idx + _6967 + 32]
                        _6928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6928] = 21
                        mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_6970 + 68] = mem[_6970 + 79 len 21]
                    revert with memory
                      from mem[64]
                       len _6970 + -mem[64] + 100
                mem[0] = arg1
                mem[32] = 4
                if payment[arg1].field_1216 >= payment[arg1].field_1152:
                    if test266151307() > uint64(block.timestamp):
                        _7045 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7045] = 28
                        mem[_7045 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                        _7046 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 28
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                        idx = 32
                        while idx < 28:
                            mem[idx + _7046 + 68] = mem[idx + _7045 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_7046 + 68] = mem[_7046 + 72 len 28]
                        revert with memory
                          from mem[64]
                           len _7046 + -mem[64] + 100
                    _7049 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7049] = 27
                    mem[_7049 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                    _7050 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 27
                    mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                    idx = 32
                    while idx < 27:
                        mem[idx + _7050 + 68] = mem[idx + _7049 + 32]
                        _6928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6928] = 21
                        mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_7050 + 68] = mem[_7050 + 73 len 27]
                    revert with memory
                      from mem[64]
                       len _7050 + -mem[64] + 100
                _7015 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7015] = 19
                mem[_7015 + 32] = 'MATH64_MUL_OVERFLOW'
                if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
                    _7030 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 19
                    mem[mem[64] + 68] = 'MATH64_MUL_OVERFLOW'
                    idx = 32
                    while idx < 19:
                        mem[idx + _7030 + 68] = mem[idx + _7015 + 32]
                        _6928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6928] = 21
                        mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_7030 + 68] = mem[_7030 + 81 len 19]
                    revert with memory
                      from mem[64]
                       len _7030 + -mem[64] + 100
                _7067 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7067] = 19
                mem[_7067 + 32] = 'MATH64_ADD_OVERFLOW'
                if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
                    _7092 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 19
                    mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                    idx = 32
                    while idx < 19:
                        mem[idx + _7092 + 68] = mem[idx + _7067 + 32]
                        _6928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6928] = 21
                        mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_7092 + 68] = mem[_7092 + 81 len 19]
                    revert with memory
                      from mem[64]
                       len _7092 + -mem[64] + 100
                if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) > uint64(block.timestamp):
                    _7179 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7179] = 28
                    mem[_7179 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                    _7180 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 28
                    mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                    idx = 32
                    while idx < 28:
                        mem[idx + _7180 + 68] = mem[idx + _7179 + 32]
                        _6928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6928] = 21
                        mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_7180 + 68] = mem[_7180 + 72 len 28]
                    revert with memory
                      from mem[64]
                       len _7180 + -mem[64] + 100
                _7183 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7183] = 27
                mem[_7183 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                _7184 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 27
                mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                idx = 32
                while idx < 27:
                    mem[idx + _7184 + 68] = mem[idx + _7183 + 32]
                    _6928 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6928] = 21
                    mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                    idx = idx + 32
                    continue 
                mem[_7184 + 68] = mem[_7184 + 73 len 27]
                revert with memory
                  from mem[64]
                   len _7184 + -mem[64] + 100
            if uint64(s) >= 20:
                if uint64(s):
                _6973 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6973] = 21
                mem[_6973 + 32] = 'UINT64_NUMBER_TOO_BIG'
                if block.timestamp > test266151307():
                    _6978 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 21
                    mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                    idx = 32
                    while idx < 21:
                        mem[idx + _6978 + 68] = mem[idx + _6973 + 32]
                        _6928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6928] = 21
                        mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_6978 + 68] = mem[_6978 + 79 len 21]
                    revert with memory
                      from mem[64]
                       len _6978 + -mem[64] + 100
                mem[0] = arg1
                mem[32] = 4
                if payment[arg1].field_1216 >= payment[arg1].field_1152:
                    if test266151307() > uint64(block.timestamp):
                        _7073 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7073] = 28
                        mem[_7073 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                        _7074 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 28
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                        idx = 32
                        while idx < 28:
                            mem[idx + _7074 + 68] = mem[idx + _7073 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_7074 + 68] = mem[_7074 + 72 len 28]
                        revert with memory
                          from mem[64]
                           len _7074 + -mem[64] + 100
                    _7077 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7077] = 27
                    mem[_7077 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                    _7078 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 27
                    mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                    idx = 32
                    while idx < 27:
                        mem[idx + _7078 + 68] = mem[idx + _7077 + 32]
                        _6928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6928] = 21
                        mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_7078 + 68] = mem[_7078 + 73 len 27]
                    revert with memory
                      from mem[64]
                       len _7078 + -mem[64] + 100
                _7033 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7033] = 19
                mem[_7033 + 32] = 'MATH64_MUL_OVERFLOW'
                if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
                    _7053 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 19
                    mem[mem[64] + 68] = 'MATH64_MUL_OVERFLOW'
                    idx = 32
                    while idx < 19:
                        mem[idx + _7053 + 68] = mem[idx + _7033 + 32]
                        _6928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6928] = 21
                        mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_7053 + 68] = mem[_7053 + 81 len 19]
                    revert with memory
                      from mem[64]
                       len _7053 + -mem[64] + 100
                _7101 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7101] = 19
                mem[_7101 + 32] = 'MATH64_ADD_OVERFLOW'
                if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
                    _7127 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 19
                    mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                    idx = 32
                    while idx < 19:
                        mem[idx + _7127 + 68] = mem[idx + _7101 + 32]
                        _6928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6928] = 21
                        mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_7127 + 68] = mem[_7127 + 81 len 19]
                    revert with memory
                      from mem[64]
                       len _7127 + -mem[64] + 100
                if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) > uint64(block.timestamp):
                    _7231 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7231] = 28
                    mem[_7231 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                    _7232 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 28
                    mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                    idx = 32
                    while idx < 28:
                        mem[idx + _7232 + 68] = mem[idx + _7231 + 32]
                        _6928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6928] = 21
                        mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_7232 + 68] = mem[_7232 + 72 len 28]
                    revert with memory
                      from mem[64]
                       len _7232 + -mem[64] + 100
                _7235 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7235] = 27
                mem[_7235 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                _7236 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 27
                mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                idx = 32
                while idx < 27:
                    mem[idx + _7236 + 68] = mem[idx + _7235 + 32]
                    _6928 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6928] = 21
                    mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                    idx = idx + 32
                    continue 
                mem[_7236 + 68] = mem[_7236 + 73 len 27]
                revert with memory
                  from mem[64]
                   len _7236 + -mem[64] + 100
            mem[0] = payment[arg1].field_0
            mem[32] = 3
            if not stor3[stor4[arg1].field_0]:
                if -1 < payment[arg1].field_768:
                    emit PaymentFailure(arg1);
                    if uint64(s):
                    _7106 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7106] = 21
                    mem[_7106 + 32] = 'UINT64_NUMBER_TOO_BIG'
                    if block.timestamp > test266151307():
                        _7136 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 21
                        mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                        idx = 32
                        while idx < 21:
                            mem[idx + _7136 + 68] = mem[idx + _7106 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_7136 + 68] = mem[_7136 + 79 len 21]
                        revert with memory
                          from mem[64]
                           len _7136 + -mem[64] + 100
                    mem[0] = arg1
                    mem[32] = 4
                    if payment[arg1].field_1216 >= payment[arg1].field_1152:
                        if test266151307() > uint64(block.timestamp):
                            _7440 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7440] = 28
                            mem[_7440 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            _7441 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 28
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            idx = 32
                            while idx < 28:
                                mem[idx + _7441 + 68] = mem[idx + _7440 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_7441 + 68] = mem[_7441 + 72 len 28]
                            revert with memory
                              from mem[64]
                               len _7441 + -mem[64] + 100
                        _7444 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7444] = 27
                        mem[_7444 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        _7445 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 27
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        idx = 32
                        while idx < 27:
                            mem[idx + _7445 + 68] = mem[idx + _7444 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_7445 + 68] = mem[_7445 + 73 len 27]
                        revert with memory
                          from mem[64]
                           len _7445 + -mem[64] + 100
                    _7336 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7336] = 19
                    mem[_7336 + 32] = 'MATH64_MUL_OVERFLOW'
                    if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
                        _7382 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 19
                        mem[mem[64] + 68] = 'MATH64_MUL_OVERFLOW'
                        idx = 32
                        while idx < 19:
                            mem[idx + _7382 + 68] = mem[idx + _7336 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_7382 + 68] = mem[_7382 + 81 len 19]
                        revert with memory
                          from mem[64]
                           len _7382 + -mem[64] + 100
                    _7495 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7495] = 19
                    mem[_7495 + 32] = 'MATH64_ADD_OVERFLOW'
                    if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
                        _7546 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 19
                        mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                        idx = 32
                        while idx < 19:
                            mem[idx + _7546 + 68] = mem[idx + _7495 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_7546 + 68] = mem[_7546 + 81 len 19]
                        revert with memory
                          from mem[64]
                           len _7546 + -mem[64] + 100
                    if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) > uint64(block.timestamp):
                        _7755 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7755] = 28
                        mem[_7755 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                        _7756 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 28
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                        idx = 32
                        while idx < 28:
                            mem[idx + _7756 + 68] = mem[idx + _7755 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_7756 + 68] = mem[_7756 + 72 len 28]
                        revert with memory
                          from mem[64]
                           len _7756 + -mem[64] + 100
                    _7759 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7759] = 27
                    mem[_7759 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                    _7760 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 27
                    mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                    idx = 32
                    while idx < 27:
                        mem[idx + _7760 + 68] = mem[idx + _7759 + 32]
                        _6928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6928] = 21
                        mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_7760 + 68] = mem[_7760 + 73 len 27]
                    revert with memory
                      from mem[64]
                       len _7760 + -mem[64] + 100
                require ext_code.size(address(vaultAddress))
                call address(vaultAddress).balance(address arg1) with:
                     gas gas_remaining wei
                    args payment[arg1].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < payment[arg1].field_768:
                    emit PaymentFailure(arg1);
                    if uint64(s):
                    _7209 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7209] = 21
                    mem[_7209 + 32] = 'UINT64_NUMBER_TOO_BIG'
                    if block.timestamp > test266151307():
                        _7252 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 21
                        mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                        idx = 32
                        while idx < 21:
                            mem[idx + _7252 + 68] = mem[idx + _7209 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_7252 + 68] = mem[_7252 + 79 len 21]
                        revert with memory
                          from mem[64]
                           len _7252 + -mem[64] + 100
                    mem[0] = arg1
                    mem[32] = 4
                    if payment[arg1].field_1216 >= payment[arg1].field_1152:
                        if test266151307() > uint64(block.timestamp):
                            _7618 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7618] = 28
                            mem[_7618 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            _7619 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 28
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            idx = 32
                            while idx < 28:
                                mem[idx + _7619 + 68] = mem[idx + _7618 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_7619 + 68] = mem[_7619 + 72 len 28]
                            revert with memory
                              from mem[64]
                               len _7619 + -mem[64] + 100
                        _7622 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7622] = 27
                        mem[_7622 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        _7623 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 27
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        idx = 32
                        while idx < 27:
                            mem[idx + _7623 + 68] = mem[idx + _7622 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_7623 + 68] = mem[_7623 + 73 len 27]
                        revert with memory
                          from mem[64]
                           len _7623 + -mem[64] + 100
                    _7501 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7501] = 19
                    mem[_7501 + 32] = 'MATH64_MUL_OVERFLOW'
                    if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
                        _7558 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 19
                        mem[mem[64] + 68] = 'MATH64_MUL_OVERFLOW'
                        idx = 32
                        while idx < 19:
                            mem[idx + _7558 + 68] = mem[idx + _7501 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_7558 + 68] = mem[_7558 + 81 len 19]
                        revert with memory
                          from mem[64]
                           len _7558 + -mem[64] + 100
                    _7688 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7688] = 19
                    mem[_7688 + 32] = 'MATH64_ADD_OVERFLOW'
                    if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
                        _7772 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 19
                        mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                        idx = 32
                        while idx < 19:
                            mem[idx + _7772 + 68] = mem[idx + _7688 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_7772 + 68] = mem[_7772 + 81 len 19]
                        revert with memory
                          from mem[64]
                           len _7772 + -mem[64] + 100
                    if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) > uint64(block.timestamp):
                        _8029 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8029] = 28
                        mem[_8029 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                        _8030 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 28
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                        idx = 32
                        while idx < 28:
                            mem[idx + _8030 + 68] = mem[idx + _8029 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_8030 + 68] = mem[_8030 + 72 len 28]
                        revert with memory
                          from mem[64]
                           len _8030 + -mem[64] + 100
                    _8033 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8033] = 27
                    mem[_8033 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                    _8034 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 27
                    mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                    idx = 32
                    while idx < 27:
                        mem[idx + _8034 + 68] = mem[idx + _8033 + 32]
                        _6928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6928] = 21
                        mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_8034 + 68] = mem[_8034 + 73 len 27]
                    revert with memory
                      from mem[64]
                       len _8034 + -mem[64] + 100
                payment[arg1].field_1216 = uint64(payment[arg1].field_1216 + 1)
                _7023 = mem[64]
                mem[64] = mem[64] + 32
                mem[_7023] = 0
                mem[0] = payment[arg1].field_0
                mem[32] = sha3(sub_6abe602d - 1 << 192, 8) + 3
                _7163 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7163] = 17
                mem[_7163 + 32] = 'MATH_ADD_OVERFLOW'
                if payment[arg1].field_768 + periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0 < periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0:
                    _7206 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 17
                    mem[mem[64] + 68] = 'MATH_ADD_OVERFLOW'
                    idx = 32
                    while idx < 17:
                        mem[idx + _7206 + 68] = mem[idx + _7163 + 32]
                        _6928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6928] = 21
                        mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_7206 + 68] = mem[_7206 + 83 len 17]
                    revert with memory
                      from mem[64]
                       len _7206 + -mem[64] + 100
                periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0 += payment[arg1].field_768
                sub_eaa7ec68++
                mem[0] = sub_eaa7ec68
                mem[32] = 6
                transaction[stor7].field_0 = payment[arg1].field_0
                transaction[stor7].field_256 = payment[arg1].field_256
                transaction[stor7].field_416 = 0
                transaction[stor7].field_512 = payment[arg1].field_768
                transaction[stor7].field_768 = arg1
                transaction[stor7].field_1024 = 0 or uint64(payment[arg1].field_1216 + 1) or Mask(192, 64, transaction[stor7].field_1024)
                _7500 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7500] = 21
                mem[_7500 + 32] = 'UINT64_NUMBER_TOO_BIG'
                if block.timestamp > test266151307():
                    _7555 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 21
                    mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                    idx = 32
                    while idx < 21:
                        mem[idx + _7555 + 68] = mem[idx + _7500 + 32]
                        _6928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6928] = 21
                        mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_7555 + 68] = mem[_7555 + 79 len 21]
                    revert with memory
                      from mem[64]
                       len _7555 + -mem[64] + 100
                transaction[stor7].field_1088 = uint64(block.timestamp)
                transaction[stor7].field_1152 = uint64(sub_6abe602d - 1)
                transaction[stor7].field_1216 = 0
                mem[0] = uint64(sub_6abe602d - 1)
                mem[32] = 8
                if periodTokenStatement[stor9 - 1 << 192].field_256:
                    _7767 = mem[64]
                    mem[mem[64]] = 0
                    mem[mem[64] + 32] = payment[arg1].field_768
                    mem[mem[64] + 64] = 96
                    mem[mem[64] + 96] = 0
                    idx = 0
                    while idx < 0:
                        mem[idx + _7767 + 128] = mem[idx + _7023 + 32]
                        _6928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6928] = 21
                        mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    emit NewTransaction(uint256 arg1, bool arg2, address arg3, uint256 arg4, string arg5):
                                        mem[mem[64] len _7767 + -mem[64] + 128],
                                        sub_eaa7ec68,
                                        payment[arg1].field_256,
                else:
                    periodTokenStatement[stor9 - 1 << 192].field_256 = sub_eaa7ec68
                    _7841 = mem[64]
                    mem[mem[64]] = 0
                    mem[mem[64] + 32] = payment[arg1].field_768
                    mem[mem[64] + 64] = 96
                    mem[mem[64] + 96] = 0
                    idx = 0
                    while idx < 0:
                        mem[idx + _7841 + 128] = mem[idx + _7023 + 32]
                        _6928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6928] = 21
                        mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    emit NewTransaction(uint256 arg1, bool arg2, address arg3, uint256 arg4, string arg5):
                                        mem[mem[64] len _7841 + -mem[64] + 128],
                                        sub_eaa7ec68,
                                        payment[arg1].field_256,
            else:
                mem[0] = payment[arg1].field_0
                mem[32] = sha3(sub_6abe602d - 1 << 192, 8) + 3
                if periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0 < stor2[stor4[arg1].field_0]:
                    if stor2[stor4[arg1].field_0] - periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0 < payment[arg1].field_768:
                        emit PaymentFailure(arg1);
                        if uint64(s):
                        _7159 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7159] = 21
                        mem[_7159 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        if block.timestamp > test266151307():
                            _7198 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 21
                            mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                            idx = 32
                            while idx < 21:
                                mem[idx + _7198 + 68] = mem[idx + _7159 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_7198 + 68] = mem[_7198 + 79 len 21]
                            revert with memory
                              from mem[64]
                               len _7198 + -mem[64] + 100
                        mem[0] = arg1
                        mem[32] = 4
                        if payment[arg1].field_1216 >= payment[arg1].field_1152:
                            if test266151307() > uint64(block.timestamp):
                                _7527 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7527] = 28
                                mem[_7527 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                                _7528 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 28
                                mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                                idx = 32
                                while idx < 28:
                                    mem[idx + _7528 + 68] = mem[idx + _7527 + 32]
                                    _6928 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6928] = 21
                                    mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                    idx = idx + 32
                                    continue 
                                mem[_7528 + 68] = mem[_7528 + 72 len 28]
                                revert with memory
                                  from mem[64]
                                   len _7528 + -mem[64] + 100
                            _7531 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7531] = 27
                            mem[_7531 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                            _7532 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 27
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                            idx = 32
                            while idx < 27:
                                mem[idx + _7532 + 68] = mem[idx + _7531 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_7532 + 68] = mem[_7532 + 73 len 27]
                            revert with memory
                              from mem[64]
                               len _7532 + -mem[64] + 100
                        _7427 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7427] = 19
                        mem[_7427 + 32] = 'MATH64_MUL_OVERFLOW'
                        if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
                            _7481 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 19
                            mem[mem[64] + 68] = 'MATH64_MUL_OVERFLOW'
                            idx = 32
                            while idx < 19:
                                mem[idx + _7481 + 68] = mem[idx + _7427 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_7481 + 68] = mem[_7481 + 81 len 19]
                            revert with memory
                              from mem[64]
                               len _7481 + -mem[64] + 100
                        _7589 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7589] = 19
                        mem[_7589 + 32] = 'MATH64_ADD_OVERFLOW'
                        if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
                            _7655 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 19
                            mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                            idx = 32
                            while idx < 19:
                                mem[idx + _7655 + 68] = mem[idx + _7589 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_7655 + 68] = mem[_7655 + 81 len 19]
                            revert with memory
                              from mem[64]
                               len _7655 + -mem[64] + 100
                        if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) > uint64(block.timestamp):
                            _7888 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7888] = 28
                            mem[_7888 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            _7889 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 28
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            idx = 32
                            while idx < 28:
                                mem[idx + _7889 + 68] = mem[idx + _7888 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_7889 + 68] = mem[_7889 + 72 len 28]
                            revert with memory
                              from mem[64]
                               len _7889 + -mem[64] + 100
                        _7892 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7892] = 27
                        mem[_7892 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        _7893 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 27
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        idx = 32
                        while idx < 27:
                            mem[idx + _7893 + 68] = mem[idx + _7892 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_7893 + 68] = mem[_7893 + 73 len 27]
                        revert with memory
                          from mem[64]
                           len _7893 + -mem[64] + 100
                    require ext_code.size(address(vaultAddress))
                    call address(vaultAddress).balance(address arg1) with:
                         gas gas_remaining wei
                        args payment[arg1].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < payment[arg1].field_768:
                        emit PaymentFailure(arg1);
                        if uint64(s):
                        _7286 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7286] = 21
                        mem[_7286 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        if block.timestamp > test266151307():
                            _7327 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 21
                            mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                            idx = 32
                            while idx < 21:
                                mem[idx + _7327 + 68] = mem[idx + _7286 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_7327 + 68] = mem[_7327 + 79 len 21]
                            revert with memory
                              from mem[64]
                               len _7327 + -mem[64] + 100
                        mem[0] = arg1
                        mem[32] = 4
                        if payment[arg1].field_1216 >= payment[arg1].field_1152:
                            if test266151307() > uint64(block.timestamp):
                                _7732 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7732] = 28
                                mem[_7732 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                                _7733 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 28
                                mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                                idx = 32
                                while idx < 28:
                                    mem[idx + _7733 + 68] = mem[idx + _7732 + 32]
                                    _6928 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6928] = 21
                                    mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                    idx = idx + 32
                                    continue 
                                mem[_7733 + 68] = mem[_7733 + 72 len 28]
                                revert with memory
                                  from mem[64]
                                   len _7733 + -mem[64] + 100
                            _7736 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7736] = 27
                            mem[_7736 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                            _7737 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 27
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                            idx = 32
                            while idx < 27:
                                mem[idx + _7737 + 68] = mem[idx + _7736 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_7737 + 68] = mem[_7737 + 73 len 27]
                            revert with memory
                              from mem[64]
                               len _7737 + -mem[64] + 100
                        _7595 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7595] = 19
                        mem[_7595 + 32] = 'MATH64_MUL_OVERFLOW'
                        if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
                            _7667 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 19
                            mem[mem[64] + 68] = 'MATH64_MUL_OVERFLOW'
                            idx = 32
                            while idx < 19:
                                mem[idx + _7667 + 68] = mem[idx + _7595 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_7667 + 68] = mem[_7667 + 81 len 19]
                            revert with memory
                              from mem[64]
                               len _7667 + -mem[64] + 100
                        _7815 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7815] = 19
                        mem[_7815 + 32] = 'MATH64_ADD_OVERFLOW'
                        if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
                            _7905 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 19
                            mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                            idx = 32
                            while idx < 19:
                                mem[idx + _7905 + 68] = mem[idx + _7815 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_7905 + 68] = mem[_7905 + 81 len 19]
                            revert with memory
                              from mem[64]
                               len _7905 + -mem[64] + 100
                        if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) > uint64(block.timestamp):
                            _8187 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8187] = 28
                            mem[_8187 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            _8188 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 28
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            idx = 32
                            while idx < 28:
                                mem[idx + _8188 + 68] = mem[idx + _8187 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_8188 + 68] = mem[_8188 + 72 len 28]
                            revert with memory
                              from mem[64]
                               len _8188 + -mem[64] + 100
                        _8191 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8191] = 27
                        mem[_8191 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        _8192 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 27
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        idx = 32
                        while idx < 27:
                            mem[idx + _8192 + 68] = mem[idx + _8191 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_8192 + 68] = mem[_8192 + 73 len 27]
                        revert with memory
                          from mem[64]
                           len _8192 + -mem[64] + 100
                    payment[arg1].field_1216 = uint64(payment[arg1].field_1216 + 1)
                    _7056 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_7056] = 0
                    mem[0] = payment[arg1].field_0
                    mem[32] = sha3(sub_6abe602d - 1 << 192, 8) + 3
                    _7244 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7244] = 17
                    mem[_7244 + 32] = 'MATH_ADD_OVERFLOW'
                    if payment[arg1].field_768 + periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0 < periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0:
                        _7283 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 17
                        mem[mem[64] + 68] = 'MATH_ADD_OVERFLOW'
                        idx = 32
                        while idx < 17:
                            mem[idx + _7283 + 68] = mem[idx + _7244 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_7283 + 68] = mem[_7283 + 83 len 17]
                        revert with memory
                          from mem[64]
                           len _7283 + -mem[64] + 100
                    periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0 += payment[arg1].field_768
                    sub_eaa7ec68++
                    mem[0] = sub_eaa7ec68
                    mem[32] = 6
                    transaction[stor7].field_0 = payment[arg1].field_0
                    transaction[stor7].field_256 = payment[arg1].field_256
                    transaction[stor7].field_416 = 0
                    transaction[stor7].field_512 = payment[arg1].field_768
                    transaction[stor7].field_768 = arg1
                    transaction[stor7].field_1024 = 0 or uint64(payment[arg1].field_1216 + 1) or Mask(192, 64, transaction[stor7].field_1024)
                    _7594 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7594] = 21
                    mem[_7594 + 32] = 'UINT64_NUMBER_TOO_BIG'
                    if block.timestamp > test266151307():
                        _7664 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 21
                        mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                        idx = 32
                        while idx < 21:
                            mem[idx + _7664 + 68] = mem[idx + _7594 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_7664 + 68] = mem[_7664 + 79 len 21]
                        revert with memory
                          from mem[64]
                           len _7664 + -mem[64] + 100
                    transaction[stor7].field_1088 = uint64(block.timestamp)
                    transaction[stor7].field_1152 = uint64(sub_6abe602d - 1)
                    transaction[stor7].field_1216 = 0
                    mem[0] = uint64(sub_6abe602d - 1)
                    mem[32] = 8
                    if periodTokenStatement[stor9 - 1 << 192].field_256:
                        _7900 = mem[64]
                        mem[mem[64]] = 0
                        mem[mem[64] + 32] = payment[arg1].field_768
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 0
                        idx = 0
                        while idx < 0:
                            mem[idx + _7900 + 128] = mem[idx + _7056 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        emit NewTransaction(uint256 arg1, bool arg2, address arg3, uint256 arg4, string arg5):
                                            mem[mem[64] len _7900 + -mem[64] + 128],
                                            sub_eaa7ec68,
                                            payment[arg1].field_256,
                    else:
                        periodTokenStatement[stor9 - 1 << 192].field_256 = sub_eaa7ec68
                        _7984 = mem[64]
                        mem[mem[64]] = 0
                        mem[mem[64] + 32] = payment[arg1].field_768
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 0
                        idx = 0
                        while idx < 0:
                            mem[idx + _7984 + 128] = mem[idx + _7056 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        emit NewTransaction(uint256 arg1, bool arg2, address arg3, uint256 arg4, string arg5):
                                            mem[mem[64] len _7984 + -mem[64] + 128],
                                            sub_eaa7ec68,
                                            payment[arg1].field_256,
                else:
                    if 0 < payment[arg1].field_768:
                        emit PaymentFailure(arg1);
                        if uint64(s):
                        _7201 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7201] = 21
                        mem[_7201 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        if block.timestamp > test266151307():
                            _7245 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 21
                            mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                            idx = 32
                            while idx < 21:
                                mem[idx + _7245 + 68] = mem[idx + _7201 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_7245 + 68] = mem[_7245 + 79 len 21]
                            revert with memory
                              from mem[64]
                               len _7245 + -mem[64] + 100
                        mem[0] = arg1
                        mem[32] = 4
                        if payment[arg1].field_1216 >= payment[arg1].field_1152:
                            if test266151307() > uint64(block.timestamp):
                                _7598 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7598] = 28
                                mem[_7598 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                                _7599 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 28
                                mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                                idx = 32
                                while idx < 28:
                                    mem[idx + _7599 + 68] = mem[idx + _7598 + 32]
                                    _6928 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6928] = 21
                                    mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                    idx = idx + 32
                                    continue 
                                mem[_7599 + 68] = mem[_7599 + 72 len 28]
                                revert with memory
                                  from mem[64]
                                   len _7599 + -mem[64] + 100
                            _7602 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7602] = 27
                            mem[_7602 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                            _7603 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 27
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                            idx = 32
                            while idx < 27:
                                mem[idx + _7603 + 68] = mem[idx + _7602 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_7603 + 68] = mem[_7603 + 73 len 27]
                            revert with memory
                              from mem[64]
                               len _7603 + -mem[64] + 100
                        _7489 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7489] = 19
                        mem[_7489 + 32] = 'MATH64_MUL_OVERFLOW'
                        if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
                            _7538 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 19
                            mem[mem[64] + 68] = 'MATH64_MUL_OVERFLOW'
                            idx = 32
                            while idx < 19:
                                mem[idx + _7538 + 68] = mem[idx + _7489 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_7538 + 68] = mem[_7538 + 81 len 19]
                            revert with memory
                              from mem[64]
                               len _7538 + -mem[64] + 100
                        _7670 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7670] = 19
                        mem[_7670 + 32] = 'MATH64_ADD_OVERFLOW'
                        if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
                            _7740 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 19
                            mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                            idx = 32
                            while idx < 19:
                                mem[idx + _7740 + 68] = mem[idx + _7670 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_7740 + 68] = mem[_7740 + 81 len 19]
                            revert with memory
                              from mem[64]
                               len _7740 + -mem[64] + 100
                        if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) > uint64(block.timestamp):
                            _7996 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7996] = 28
                            mem[_7996 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            _7997 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 28
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            idx = 32
                            while idx < 28:
                                mem[idx + _7997 + 68] = mem[idx + _7996 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_7997 + 68] = mem[_7997 + 72 len 28]
                            revert with memory
                              from mem[64]
                               len _7997 + -mem[64] + 100
                        _8000 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8000] = 27
                        mem[_8000 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        _8001 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 27
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        idx = 32
                        while idx < 27:
                            mem[idx + _8001 + 68] = mem[idx + _8000 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_8001 + 68] = mem[_8001 + 73 len 27]
                        revert with memory
                          from mem[64]
                           len _8001 + -mem[64] + 100
                    require ext_code.size(address(vaultAddress))
                    call address(vaultAddress).balance(address arg1) with:
                         gas gas_remaining wei
                        args payment[arg1].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < payment[arg1].field_768:
                        emit PaymentFailure(arg1);
                        if uint64(s):
                        _7335 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7335] = 21
                        mem[_7335 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        if block.timestamp > test266151307():
                            _7379 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 21
                            mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                            idx = 32
                            while idx < 21:
                                mem[idx + _7379 + 68] = mem[idx + _7335 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_7379 + 68] = mem[_7379 + 79 len 21]
                            revert with memory
                              from mem[64]
                               len _7379 + -mem[64] + 100
                        mem[0] = arg1
                        mem[32] = 4
                        if payment[arg1].field_1216 >= payment[arg1].field_1152:
                            if test266151307() > uint64(block.timestamp):
                                _7829 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7829] = 28
                                mem[_7829 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                                _7830 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 28
                                mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                                idx = 32
                                while idx < 28:
                                    mem[idx + _7830 + 68] = mem[idx + _7829 + 32]
                                    _6928 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6928] = 21
                                    mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                    idx = idx + 32
                                    continue 
                                mem[_7830 + 68] = mem[_7830 + 72 len 28]
                                revert with memory
                                  from mem[64]
                                   len _7830 + -mem[64] + 100
                            _7833 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7833] = 27
                            mem[_7833 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                            _7834 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 27
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                            idx = 32
                            while idx < 27:
                                mem[idx + _7834 + 68] = mem[idx + _7833 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_7834 + 68] = mem[_7834 + 73 len 27]
                            revert with memory
                              from mem[64]
                               len _7834 + -mem[64] + 100
                        _7676 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7676] = 19
                        mem[_7676 + 32] = 'MATH64_MUL_OVERFLOW'
                        if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
                            _7752 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 19
                            mem[mem[64] + 68] = 'MATH64_MUL_OVERFLOW'
                            idx = 32
                            while idx < 19:
                                mem[idx + _7752 + 68] = mem[idx + _7676 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_7752 + 68] = mem[_7752 + 81 len 19]
                            revert with memory
                              from mem[64]
                               len _7752 + -mem[64] + 100
                        _7924 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7924] = 19
                        mem[_7924 + 32] = 'MATH64_ADD_OVERFLOW'
                        if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
                            _8013 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 19
                            mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                            idx = 32
                            while idx < 19:
                                mem[idx + _8013 + 68] = mem[idx + _7924 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_8013 + 68] = mem[_8013 + 81 len 19]
                            revert with memory
                              from mem[64]
                               len _8013 + -mem[64] + 100
                        if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) > uint64(block.timestamp):
                            _8293 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8293] = 28
                            mem[_8293 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            _8294 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 28
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            idx = 32
                            while idx < 28:
                                mem[idx + _8294 + 68] = mem[idx + _8293 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_8294 + 68] = mem[_8294 + 72 len 28]
                            revert with memory
                              from mem[64]
                               len _8294 + -mem[64] + 100
                        _8297 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8297] = 27
                        mem[_8297 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        _8298 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 27
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        idx = 32
                        while idx < 27:
                            mem[idx + _8298 + 68] = mem[idx + _8297 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_8298 + 68] = mem[_8298 + 73 len 27]
                        revert with memory
                          from mem[64]
                           len _8298 + -mem[64] + 100
                    payment[arg1].field_1216 = uint64(payment[arg1].field_1216 + 1)
                    _7081 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_7081] = 0
                    mem[0] = payment[arg1].field_0
                    mem[32] = sha3(sub_6abe602d - 1 << 192, 8) + 3
                    _7288 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7288] = 17
                    mem[_7288 + 32] = 'MATH_ADD_OVERFLOW'
                    if payment[arg1].field_768 + periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0 < periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0:
                        _7332 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 17
                        mem[mem[64] + 68] = 'MATH_ADD_OVERFLOW'
                        idx = 32
                        while idx < 17:
                            mem[idx + _7332 + 68] = mem[idx + _7288 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_7332 + 68] = mem[_7332 + 83 len 17]
                        revert with memory
                          from mem[64]
                           len _7332 + -mem[64] + 100
                    periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0 += payment[arg1].field_768
                    sub_eaa7ec68++
                    mem[0] = sub_eaa7ec68
                    mem[32] = 6
                    transaction[stor7].field_0 = payment[arg1].field_0
                    transaction[stor7].field_256 = payment[arg1].field_256
                    transaction[stor7].field_416 = 0
                    transaction[stor7].field_512 = payment[arg1].field_768
                    transaction[stor7].field_768 = arg1
                    transaction[stor7].field_1024 = 0 or uint64(payment[arg1].field_1216 + 1) or Mask(192, 64, transaction[stor7].field_1024)
                    _7675 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7675] = 21
                    mem[_7675 + 32] = 'UINT64_NUMBER_TOO_BIG'
                    if block.timestamp > test266151307():
                        _7749 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 21
                        mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                        idx = 32
                        while idx < 21:
                            mem[idx + _7749 + 68] = mem[idx + _7675 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_7749 + 68] = mem[_7749 + 79 len 21]
                        revert with memory
                          from mem[64]
                           len _7749 + -mem[64] + 100
                    transaction[stor7].field_1088 = uint64(block.timestamp)
                    transaction[stor7].field_1152 = uint64(sub_6abe602d - 1)
                    transaction[stor7].field_1216 = 0
                    mem[0] = uint64(sub_6abe602d - 1)
                    mem[32] = 8
                    if periodTokenStatement[stor9 - 1 << 192].field_256:
                        _8008 = mem[64]
                        mem[mem[64]] = 0
                        mem[mem[64] + 32] = payment[arg1].field_768
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 0
                        idx = 0
                        while idx < 0:
                            mem[idx + _8008 + 128] = mem[idx + _7081 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        emit NewTransaction(uint256 arg1, bool arg2, address arg3, uint256 arg4, string arg5):
                                            mem[mem[64] len _8008 + -mem[64] + 128],
                                            sub_eaa7ec68,
                                            payment[arg1].field_256,
                    else:
                        periodTokenStatement[stor9 - 1 << 192].field_256 = sub_eaa7ec68
                        _8097 = mem[64]
                        mem[mem[64]] = 0
                        mem[mem[64] + 32] = payment[arg1].field_768
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 0
                        idx = 0
                        while idx < 0:
                            mem[idx + _8097 + 128] = mem[idx + _7081 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        emit NewTransaction(uint256 arg1, bool arg2, address arg3, uint256 arg4, string arg5):
                                            mem[mem[64] len _8097 + -mem[64] + 128],
                                            sub_eaa7ec68,
                                            payment[arg1].field_256,
        else:
            _6940 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6940] = 19
            mem[_6940 + 32] = 'MATH64_MUL_OVERFLOW'
            if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
                _6942 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 19
                mem[mem[64] + 68] = 'MATH64_MUL_OVERFLOW'
                idx = 32
                while idx < 19:
                    mem[idx + _6942 + 68] = mem[idx + _6940 + 32]
                    _6928 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6928] = 21
                    mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                    idx = idx + 32
                    continue 
                mem[_6942 + 68] = mem[_6942 + 81 len 19]
                revert with memory
                  from mem[64]
                   len _6942 + -mem[64] + 100
            _6946 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6946] = 19
            mem[_6946 + 32] = 'MATH64_ADD_OVERFLOW'
            if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
                _6949 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 19
                mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                idx = 32
                while idx < 19:
                    mem[idx + _6949 + 68] = mem[idx + _6946 + 32]
                    _6928 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6928] = 21
                    mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                    idx = idx + 32
                    continue 
                mem[_6949 + 68] = mem[_6949 + 81 len 19]
                revert with memory
                  from mem[64]
                   len _6949 + -mem[64] + 100
            if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) > uint64(block.timestamp):
                if uint64(s):
                _6998 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6998] = 21
                mem[_6998 + 32] = 'UINT64_NUMBER_TOO_BIG'
                if block.timestamp > test266151307():
                    _7009 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 21
                    mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                    idx = 32
                    while idx < 21:
                        mem[idx + _7009 + 68] = mem[idx + _6998 + 32]
                        _6928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6928] = 21
                        mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_7009 + 68] = mem[_7009 + 79 len 21]
                    revert with memory
                      from mem[64]
                       len _7009 + -mem[64] + 100
                mem[0] = arg1
                mem[32] = 4
                if payment[arg1].field_1216 >= payment[arg1].field_1152:
                    if test266151307() > uint64(block.timestamp):
                        _7165 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7165] = 28
                        mem[_7165 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                        _7166 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 28
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                        idx = 32
                        while idx < 28:
                            mem[idx + _7166 + 68] = mem[idx + _7165 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_7166 + 68] = mem[_7166 + 72 len 28]
                        revert with memory
                          from mem[64]
                           len _7166 + -mem[64] + 100
                    _7169 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7169] = 27
                    mem[_7169 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                    _7170 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 27
                    mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                    idx = 32
                    while idx < 27:
                        mem[idx + _7170 + 68] = mem[idx + _7169 + 32]
                        _6928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6928] = 21
                        mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_7170 + 68] = mem[_7170 + 73 len 27]
                    revert with memory
                      from mem[64]
                       len _7170 + -mem[64] + 100
                _7109 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7109] = 19
                mem[_7109 + 32] = 'MATH64_MUL_OVERFLOW'
                if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
                    _7139 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 19
                    mem[mem[64] + 68] = 'MATH64_MUL_OVERFLOW'
                    idx = 32
                    while idx < 19:
                        mem[idx + _7139 + 68] = mem[idx + _7109 + 32]
                        _6928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6928] = 21
                        mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_7139 + 68] = mem[_7139 + 81 len 19]
                    revert with memory
                      from mem[64]
                       len _7139 + -mem[64] + 100
                _7210 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7210] = 19
                mem[_7210 + 32] = 'MATH64_ADD_OVERFLOW'
                if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
                    _7255 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 19
                    mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                    idx = 32
                    while idx < 19:
                        mem[idx + _7255 + 68] = mem[idx + _7210 + 32]
                        _6928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6928] = 21
                        mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_7255 + 68] = mem[_7255 + 81 len 19]
                    revert with memory
                      from mem[64]
                       len _7255 + -mem[64] + 100
                if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) > uint64(block.timestamp):
                    _7390 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7390] = 28
                    mem[_7390 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                    _7391 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 28
                    mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                    idx = 32
                    while idx < 28:
                        mem[idx + _7391 + 68] = mem[idx + _7390 + 32]
                        _6928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6928] = 21
                        mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_7391 + 68] = mem[_7391 + 72 len 28]
                    revert with memory
                      from mem[64]
                       len _7391 + -mem[64] + 100
                _7394 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7394] = 27
                mem[_7394 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                _7395 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 27
                mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                idx = 32
                while idx < 27:
                    mem[idx + _7395 + 68] = mem[idx + _7394 + 32]
                    _6928 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6928] = 21
                    mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                    idx = idx + 32
                    continue 
                mem[_7395 + 68] = mem[_7395 + 73 len 27]
                revert with memory
                  from mem[64]
                   len _7395 + -mem[64] + 100
            if uint64(s) >= 20:
                if uint64(s):
                _7012 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7012] = 21
                mem[_7012 + 32] = 'UINT64_NUMBER_TOO_BIG'
                if block.timestamp > test266151307():
                    _7027 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 21
                    mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                    idx = 32
                    while idx < 21:
                        mem[idx + _7027 + 68] = mem[idx + _7012 + 32]
                        _6928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6928] = 21
                        mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_7027 + 68] = mem[_7027 + 79 len 21]
                    revert with memory
                      from mem[64]
                       len _7027 + -mem[64] + 100
                mem[0] = arg1
                mem[32] = 4
                if payment[arg1].field_1216 >= payment[arg1].field_1152:
                    if test266151307() > uint64(block.timestamp):
                        _7216 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7216] = 28
                        mem[_7216 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                        _7217 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 28
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                        idx = 32
                        while idx < 28:
                            mem[idx + _7217 + 68] = mem[idx + _7216 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_7217 + 68] = mem[_7217 + 72 len 28]
                        revert with memory
                          from mem[64]
                           len _7217 + -mem[64] + 100
                    _7220 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7220] = 27
                    mem[_7220 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                    _7221 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 27
                    mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                    idx = 32
                    while idx < 27:
                        mem[idx + _7221 + 68] = mem[idx + _7220 + 32]
                        _6928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6928] = 21
                        mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_7221 + 68] = mem[_7221 + 73 len 27]
                    revert with memory
                      from mem[64]
                       len _7221 + -mem[64] + 100
                _7142 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7142] = 19
                mem[_7142 + 32] = 'MATH64_MUL_OVERFLOW'
                if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
                    _7173 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 19
                    mem[mem[64] + 68] = 'MATH64_MUL_OVERFLOW'
                    idx = 32
                    while idx < 19:
                        mem[idx + _7173 + 68] = mem[idx + _7142 + 32]
                        _6928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6928] = 21
                        mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_7173 + 68] = mem[_7173 + 81 len 19]
                    revert with memory
                      from mem[64]
                       len _7173 + -mem[64] + 100
                _7264 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7264] = 19
                mem[_7264 + 32] = 'MATH64_ADD_OVERFLOW'
                if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
                    _7302 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 19
                    mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                    idx = 32
                    while idx < 19:
                        mem[idx + _7302 + 68] = mem[idx + _7264 + 32]
                        _6928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6928] = 21
                        mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_7302 + 68] = mem[_7302 + 81 len 19]
                    revert with memory
                      from mem[64]
                       len _7302 + -mem[64] + 100
                if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) > uint64(block.timestamp):
                    _7455 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7455] = 28
                    mem[_7455 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                    _7456 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 28
                    mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                    idx = 32
                    while idx < 28:
                        mem[idx + _7456 + 68] = mem[idx + _7455 + 32]
                        _6928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6928] = 21
                        mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_7456 + 68] = mem[_7456 + 72 len 28]
                    revert with memory
                      from mem[64]
                       len _7456 + -mem[64] + 100
                _7459 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7459] = 27
                mem[_7459 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                _7460 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 27
                mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                idx = 32
                while idx < 27:
                    mem[idx + _7460 + 68] = mem[idx + _7459 + 32]
                    _6928 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6928] = 21
                    mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                    idx = idx + 32
                    continue 
                mem[_7460 + 68] = mem[_7460 + 73 len 27]
                revert with memory
                  from mem[64]
                   len _7460 + -mem[64] + 100
            mem[0] = payment[arg1].field_0
            mem[32] = 3
            if not stor3[stor4[arg1].field_0]:
                if -1 < payment[arg1].field_768:
                    emit PaymentFailure(arg1);
                    if uint64(s):
                    _7269 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7269] = 21
                    mem[_7269 + 32] = 'UINT64_NUMBER_TOO_BIG'
                    if block.timestamp > test266151307():
                        _7311 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 21
                        mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                        idx = 32
                        while idx < 21:
                            mem[idx + _7311 + 68] = mem[idx + _7269 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_7311 + 68] = mem[_7311 + 79 len 21]
                        revert with memory
                          from mem[64]
                           len _7311 + -mem[64] + 100
                    mem[0] = arg1
                    mem[32] = 4
                    if payment[arg1].field_1216 >= payment[arg1].field_1152:
                        if test266151307() > uint64(block.timestamp):
                            _7712 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7712] = 28
                            mem[_7712 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            _7713 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 28
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            idx = 32
                            while idx < 28:
                                mem[idx + _7713 + 68] = mem[idx + _7712 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_7713 + 68] = mem[_7713 + 72 len 28]
                            revert with memory
                              from mem[64]
                               len _7713 + -mem[64] + 100
                        _7716 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7716] = 27
                        mem[_7716 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        _7717 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 27
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        idx = 32
                        while idx < 27:
                            mem[idx + _7717 + 68] = mem[idx + _7716 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_7717 + 68] = mem[_7717 + 73 len 27]
                        revert with memory
                          from mem[64]
                           len _7717 + -mem[64] + 100
                    _7583 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7583] = 19
                    mem[_7583 + 32] = 'MATH64_MUL_OVERFLOW'
                    if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
                        _7647 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 19
                        mem[mem[64] + 68] = 'MATH64_MUL_OVERFLOW'
                        idx = 32
                        while idx < 19:
                            mem[idx + _7647 + 68] = mem[idx + _7583 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_7647 + 68] = mem[_7647 + 81 len 19]
                        revert with memory
                          from mem[64]
                           len _7647 + -mem[64] + 100
                    _7797 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7797] = 19
                    mem[_7797 + 32] = 'MATH64_ADD_OVERFLOW'
                    if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
                        _7873 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 19
                        mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                        idx = 32
                        while idx < 19:
                            mem[idx + _7873 + 68] = mem[idx + _7797 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_7873 + 68] = mem[_7873 + 81 len 19]
                        revert with memory
                          from mem[64]
                           len _7873 + -mem[64] + 100
                    if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) > uint64(block.timestamp):
                        _8154 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8154] = 28
                        mem[_8154 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                        _8155 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 28
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                        idx = 32
                        while idx < 28:
                            mem[idx + _8155 + 68] = mem[idx + _8154 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_8155 + 68] = mem[_8155 + 72 len 28]
                        revert with memory
                          from mem[64]
                           len _8155 + -mem[64] + 100
                    _8158 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8158] = 27
                    mem[_8158 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                    _8159 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 27
                    mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                    idx = 32
                    while idx < 27:
                        mem[idx + _8159 + 68] = mem[idx + _8158 + 32]
                        _6928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6928] = 21
                        mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_8159 + 68] = mem[_8159 + 73 len 27]
                    revert with memory
                      from mem[64]
                       len _8159 + -mem[64] + 100
                require ext_code.size(address(vaultAddress))
                call address(vaultAddress).balance(address arg1) with:
                     gas gas_remaining wei
                    args payment[arg1].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < payment[arg1].field_768:
                    emit PaymentFailure(arg1);
                    if uint64(s):
                    _7420 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7420] = 21
                    mem[_7420 + 32] = 'UINT64_NUMBER_TOO_BIG'
                    if block.timestamp > test266151307():
                        _7476 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 21
                        mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                        idx = 32
                        while idx < 21:
                            mem[idx + _7476 + 68] = mem[idx + _7420 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_7476 + 68] = mem[_7476 + 79 len 21]
                        revert with memory
                          from mem[64]
                           len _7476 + -mem[64] + 100
                    mem[0] = arg1
                    mem[32] = 4
                    if payment[arg1].field_1216 >= payment[arg1].field_1152:
                        if test266151307() > uint64(block.timestamp):
                            _7972 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7972] = 28
                            mem[_7972 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            _7973 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 28
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            idx = 32
                            while idx < 28:
                                mem[idx + _7973 + 68] = mem[idx + _7972 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_7973 + 68] = mem[_7973 + 72 len 28]
                            revert with memory
                              from mem[64]
                               len _7973 + -mem[64] + 100
                        _7976 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7976] = 27
                        mem[_7976 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        _7977 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 27
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        idx = 32
                        while idx < 27:
                            mem[idx + _7977 + 68] = mem[idx + _7976 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_7977 + 68] = mem[_7977 + 73 len 27]
                        revert with memory
                          from mem[64]
                           len _7977 + -mem[64] + 100
                    _7803 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7803] = 19
                    mem[_7803 + 32] = 'MATH64_MUL_OVERFLOW'
                    if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
                        _7885 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 19
                        mem[mem[64] + 68] = 'MATH64_MUL_OVERFLOW'
                        idx = 32
                        while idx < 19:
                            mem[idx + _7885 + 68] = mem[idx + _7803 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_7885 + 68] = mem[_7885 + 81 len 19]
                        revert with memory
                          from mem[64]
                           len _7885 + -mem[64] + 100
                    _8074 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8074] = 19
                    mem[_8074 + 32] = 'MATH64_ADD_OVERFLOW'
                    if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
                        _8171 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 19
                        mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                        idx = 32
                        while idx < 19:
                            mem[idx + _8171 + 68] = mem[idx + _8074 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_8171 + 68] = mem[_8171 + 81 len 19]
                        revert with memory
                          from mem[64]
                           len _8171 + -mem[64] + 100
                    if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) > uint64(block.timestamp):
                        _8444 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8444] = 28
                        mem[_8444 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                        _8445 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 28
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                        idx = 32
                        while idx < 28:
                            mem[idx + _8445 + 68] = mem[idx + _8444 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_8445 + 68] = mem[_8445 + 72 len 28]
                        revert with memory
                          from mem[64]
                           len _8445 + -mem[64] + 100
                    _8448 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8448] = 27
                    mem[_8448 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                    _8449 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 27
                    mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                    idx = 32
                    while idx < 27:
                        mem[idx + _8449 + 68] = mem[idx + _8448 + 32]
                        _6928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6928] = 21
                        mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_8449 + 68] = mem[_8449 + 73 len 27]
                    revert with memory
                      from mem[64]
                       len _8449 + -mem[64] + 100
                payment[arg1].field_1216 = uint64(payment[arg1].field_1216 + 1)
                _7117 = mem[64]
                mem[64] = mem[64] + 32
                mem[_7117] = 0
                mem[0] = payment[arg1].field_0
                mem[32] = sha3(sub_6abe602d - 1 << 192, 8) + 3
                _7360 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7360] = 17
                mem[_7360 + 32] = 'MATH_ADD_OVERFLOW'
                if payment[arg1].field_768 + periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0 < periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0:
                    _7417 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 17
                    mem[mem[64] + 68] = 'MATH_ADD_OVERFLOW'
                    idx = 32
                    while idx < 17:
                        mem[idx + _7417 + 68] = mem[idx + _7360 + 32]
                        _6928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6928] = 21
                        mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_7417 + 68] = mem[_7417 + 83 len 17]
                    revert with memory
                      from mem[64]
                       len _7417 + -mem[64] + 100
                periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0 += payment[arg1].field_768
                sub_eaa7ec68++
                mem[0] = sub_eaa7ec68
                mem[32] = 6
                transaction[stor7].field_0 = payment[arg1].field_0
                transaction[stor7].field_256 = payment[arg1].field_256
                transaction[stor7].field_416 = 0
                transaction[stor7].field_512 = payment[arg1].field_768
                transaction[stor7].field_768 = arg1
                transaction[stor7].field_1024 = 0 or uint64(payment[arg1].field_1216 + 1) or Mask(192, 64, transaction[stor7].field_1024)
                _7802 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7802] = 21
                mem[_7802 + 32] = 'UINT64_NUMBER_TOO_BIG'
                if block.timestamp > test266151307():
                    _7882 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 21
                    mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                    idx = 32
                    while idx < 21:
                        mem[idx + _7882 + 68] = mem[idx + _7802 + 32]
                        _6928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6928] = 21
                        mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_7882 + 68] = mem[_7882 + 79 len 21]
                    revert with memory
                      from mem[64]
                       len _7882 + -mem[64] + 100
                transaction[stor7].field_1088 = uint64(block.timestamp)
                transaction[stor7].field_1152 = uint64(sub_6abe602d - 1)
                transaction[stor7].field_1216 = 0
                mem[0] = uint64(sub_6abe602d - 1)
                mem[32] = 8
                if periodTokenStatement[stor9 - 1 << 192].field_256:
                    _8166 = mem[64]
                    mem[mem[64]] = 0
                    mem[mem[64] + 32] = payment[arg1].field_768
                    mem[mem[64] + 64] = 96
                    mem[mem[64] + 96] = 0
                    idx = 0
                    while idx < 0:
                        mem[idx + _8166 + 128] = mem[idx + _7117 + 32]
                        _6928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6928] = 21
                        mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    emit NewTransaction(uint256 arg1, bool arg2, address arg3, uint256 arg4, string arg5):
                                        mem[mem[64] len _8166 + -mem[64] + 128],
                                        sub_eaa7ec68,
                                        payment[arg1].field_256,
                else:
                    periodTokenStatement[stor9 - 1 << 192].field_256 = sub_eaa7ec68
                    _8261 = mem[64]
                    mem[mem[64]] = 0
                    mem[mem[64] + 32] = payment[arg1].field_768
                    mem[mem[64] + 64] = 96
                    mem[mem[64] + 96] = 0
                    idx = 0
                    while idx < 0:
                        mem[idx + _8261 + 128] = mem[idx + _7117 + 32]
                        _6928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6928] = 21
                        mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    emit NewTransaction(uint256 arg1, bool arg2, address arg3, uint256 arg4, string arg5):
                                        mem[mem[64] len _8261 + -mem[64] + 128],
                                        sub_eaa7ec68,
                                        payment[arg1].field_256,
            else:
                mem[0] = payment[arg1].field_0
                mem[32] = sha3(sub_6abe602d - 1 << 192, 8) + 3
                if periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0 < stor2[stor4[arg1].field_0]:
                    if stor2[stor4[arg1].field_0] - periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0 < payment[arg1].field_768:
                        emit PaymentFailure(arg1);
                        if uint64(s):
                        _7356 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7356] = 21
                        mem[_7356 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        if block.timestamp > test266151307():
                            _7409 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 21
                            mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                            idx = 32
                            while idx < 21:
                                mem[idx + _7409 + 68] = mem[idx + _7356 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_7409 + 68] = mem[_7409 + 79 len 21]
                            revert with memory
                              from mem[64]
                               len _7409 + -mem[64] + 100
                        mem[0] = arg1
                        mem[32] = 4
                        if payment[arg1].field_1216 >= payment[arg1].field_1152:
                            if test266151307() > uint64(block.timestamp):
                                _7854 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7854] = 28
                                mem[_7854 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                                _7855 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 28
                                mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                                idx = 32
                                while idx < 28:
                                    mem[idx + _7855 + 68] = mem[idx + _7854 + 32]
                                    _6928 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6928] = 21
                                    mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                    idx = idx + 32
                                    continue 
                                mem[_7855 + 68] = mem[_7855 + 72 len 28]
                                revert with memory
                                  from mem[64]
                                   len _7855 + -mem[64] + 100
                            _7858 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7858] = 27
                            mem[_7858 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                            _7859 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 27
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                            idx = 32
                            while idx < 27:
                                mem[idx + _7859 + 68] = mem[idx + _7858 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_7859 + 68] = mem[_7859 + 73 len 27]
                            revert with memory
                              from mem[64]
                               len _7859 + -mem[64] + 100
                        _7699 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7699] = 19
                        mem[_7699 + 32] = 'MATH64_MUL_OVERFLOW'
                        if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
                            _7783 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 19
                            mem[mem[64] + 68] = 'MATH64_MUL_OVERFLOW'
                            idx = 32
                            while idx < 19:
                                mem[idx + _7783 + 68] = mem[idx + _7699 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_7783 + 68] = mem[_7783 + 81 len 19]
                            revert with memory
                              from mem[64]
                               len _7783 + -mem[64] + 100
                        _7943 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7943] = 19
                        mem[_7943 + 32] = 'MATH64_ADD_OVERFLOW'
                        if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
                            _8041 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 19
                            mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                            idx = 32
                            while idx < 19:
                                mem[idx + _8041 + 68] = mem[idx + _7943 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_8041 + 68] = mem[_8041 + 81 len 19]
                            revert with memory
                              from mem[64]
                               len _8041 + -mem[64] + 100
                        if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) > uint64(block.timestamp):
                            _8311 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8311] = 28
                            mem[_8311 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            _8312 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 28
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            idx = 32
                            while idx < 28:
                                mem[idx + _8312 + 68] = mem[idx + _8311 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_8312 + 68] = mem[_8312 + 72 len 28]
                            revert with memory
                              from mem[64]
                               len _8312 + -mem[64] + 100
                        _8315 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8315] = 27
                        mem[_8315 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        _8316 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 27
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        idx = 32
                        while idx < 27:
                            mem[idx + _8316 + 68] = mem[idx + _8315 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_8316 + 68] = mem[_8316 + 73 len 27]
                        revert with memory
                          from mem[64]
                           len _8316 + -mem[64] + 100
                    require ext_code.size(address(vaultAddress))
                    call address(vaultAddress).balance(address arg1) with:
                         gas gas_remaining wei
                        args payment[arg1].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < payment[arg1].field_768:
                        emit PaymentFailure(arg1);
                        if uint64(s):
                        _7517 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7517] = 21
                        mem[_7517 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        if block.timestamp > test266151307():
                            _7574 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 21
                            mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                            idx = 32
                            while idx < 21:
                                mem[idx + _7574 + 68] = mem[idx + _7517 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_7574 + 68] = mem[_7574 + 79 len 21]
                            revert with memory
                              from mem[64]
                               len _7574 + -mem[64] + 100
                        mem[0] = arg1
                        mem[32] = 4
                        if payment[arg1].field_1216 >= payment[arg1].field_1152:
                            if test266151307() > uint64(block.timestamp):
                                _8131 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8131] = 28
                                mem[_8131 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                                _8132 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 28
                                mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                                idx = 32
                                while idx < 28:
                                    mem[idx + _8132 + 68] = mem[idx + _8131 + 32]
                                    _6928 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6928] = 21
                                    mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                    idx = idx + 32
                                    continue 
                                mem[_8132 + 68] = mem[_8132 + 72 len 28]
                                revert with memory
                                  from mem[64]
                                   len _8132 + -mem[64] + 100
                            _8135 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8135] = 27
                            mem[_8135 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                            _8136 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 27
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                            idx = 32
                            while idx < 27:
                                mem[idx + _8136 + 68] = mem[idx + _8135 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_8136 + 68] = mem[_8136 + 73 len 27]
                            revert with memory
                              from mem[64]
                               len _8136 + -mem[64] + 100
                        _7949 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7949] = 19
                        mem[_7949 + 32] = 'MATH64_MUL_OVERFLOW'
                        if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
                            _8053 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 19
                            mem[mem[64] + 68] = 'MATH64_MUL_OVERFLOW'
                            idx = 32
                            while idx < 19:
                                mem[idx + _8053 + 68] = mem[idx + _7949 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_8053 + 68] = mem[_8053 + 81 len 19]
                            revert with memory
                              from mem[64]
                               len _8053 + -mem[64] + 100
                        _8235 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8235] = 19
                        mem[_8235 + 32] = 'MATH64_ADD_OVERFLOW'
                        if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
                            _8328 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 19
                            mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                            idx = 32
                            while idx < 19:
                                mem[idx + _8328 + 68] = mem[idx + _8235 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_8328 + 68] = mem[_8328 + 81 len 19]
                            revert with memory
                              from mem[64]
                               len _8328 + -mem[64] + 100
                        if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) > uint64(block.timestamp):
                            _8536 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8536] = 28
                            mem[_8536 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            _8537 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 28
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            idx = 32
                            while idx < 28:
                                mem[idx + _8537 + 68] = mem[idx + _8536 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_8537 + 68] = mem[_8537 + 72 len 28]
                            revert with memory
                              from mem[64]
                               len _8537 + -mem[64] + 100
                        _8540 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8540] = 27
                        mem[_8540 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        _8541 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 27
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        idx = 32
                        while idx < 27:
                            mem[idx + _8541 + 68] = mem[idx + _8540 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_8541 + 68] = mem[_8541 + 73 len 27]
                        revert with memory
                          from mem[64]
                           len _8541 + -mem[64] + 100
                    payment[arg1].field_1216 = uint64(payment[arg1].field_1216 + 1)
                    _7176 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_7176] = 0
                    mem[0] = payment[arg1].field_0
                    mem[32] = sha3(sub_6abe602d - 1 << 192, 8) + 3
                    _7468 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7468] = 17
                    mem[_7468 + 32] = 'MATH_ADD_OVERFLOW'
                    if payment[arg1].field_768 + periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0 < periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0:
                        _7514 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 17
                        mem[mem[64] + 68] = 'MATH_ADD_OVERFLOW'
                        idx = 32
                        while idx < 17:
                            mem[idx + _7514 + 68] = mem[idx + _7468 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_7514 + 68] = mem[_7514 + 83 len 17]
                        revert with memory
                          from mem[64]
                           len _7514 + -mem[64] + 100
                    periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0 += payment[arg1].field_768
                    sub_eaa7ec68++
                    mem[0] = sub_eaa7ec68
                    mem[32] = 6
                    transaction[stor7].field_0 = payment[arg1].field_0
                    transaction[stor7].field_256 = payment[arg1].field_256
                    transaction[stor7].field_416 = 0
                    transaction[stor7].field_512 = payment[arg1].field_768
                    transaction[stor7].field_768 = arg1
                    transaction[stor7].field_1024 = 0 or uint64(payment[arg1].field_1216 + 1) or Mask(192, 64, transaction[stor7].field_1024)
                    _7948 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7948] = 21
                    mem[_7948 + 32] = 'UINT64_NUMBER_TOO_BIG'
                    if block.timestamp > test266151307():
                        _8050 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 21
                        mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                        idx = 32
                        while idx < 21:
                            mem[idx + _8050 + 68] = mem[idx + _7948 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_8050 + 68] = mem[_8050 + 79 len 21]
                        revert with memory
                          from mem[64]
                           len _8050 + -mem[64] + 100
                    transaction[stor7].field_1088 = uint64(block.timestamp)
                    transaction[stor7].field_1152 = uint64(sub_6abe602d - 1)
                    transaction[stor7].field_1216 = 0
                    mem[0] = uint64(sub_6abe602d - 1)
                    mem[32] = 8
                    if periodTokenStatement[stor9 - 1 << 192].field_256:
                        _8323 = mem[64]
                        mem[mem[64]] = 0
                        mem[mem[64] + 32] = payment[arg1].field_768
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 0
                        idx = 0
                        while idx < 0:
                            mem[idx + _8323 + 128] = mem[idx + _7176 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        emit NewTransaction(uint256 arg1, bool arg2, address arg3, uint256 arg4, string arg5):
                                            mem[mem[64] len _8323 + -mem[64] + 128],
                                            sub_eaa7ec68,
                                            payment[arg1].field_256,
                    else:
                        periodTokenStatement[stor9 - 1 << 192].field_256 = sub_eaa7ec68
                        _8399 = mem[64]
                        mem[mem[64]] = 0
                        mem[mem[64] + 32] = payment[arg1].field_768
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 0
                        idx = 0
                        while idx < 0:
                            mem[idx + _8399 + 128] = mem[idx + _7176 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        emit NewTransaction(uint256 arg1, bool arg2, address arg3, uint256 arg4, string arg5):
                                            mem[mem[64] len _8399 + -mem[64] + 128],
                                            sub_eaa7ec68,
                                            payment[arg1].field_256,
                else:
                    if 0 < payment[arg1].field_768:
                        emit PaymentFailure(arg1);
                        if uint64(s):
                        _7412 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7412] = 21
                        mem[_7412 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        if block.timestamp > test266151307():
                            _7469 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 21
                            mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                            idx = 32
                            while idx < 21:
                                mem[idx + _7469 + 68] = mem[idx + _7412 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_7469 + 68] = mem[_7469 + 79 len 21]
                            revert with memory
                              from mem[64]
                               len _7469 + -mem[64] + 100
                        mem[0] = arg1
                        mem[32] = 4
                        if payment[arg1].field_1216 >= payment[arg1].field_1152:
                            if test266151307() > uint64(block.timestamp):
                                _7952 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7952] = 28
                                mem[_7952 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                                _7953 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 28
                                mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                                idx = 32
                                while idx < 28:
                                    mem[idx + _7953 + 68] = mem[idx + _7952 + 32]
                                    _6928 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6928] = 21
                                    mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                    idx = idx + 32
                                    continue 
                                mem[_7953 + 68] = mem[_7953 + 72 len 28]
                                revert with memory
                                  from mem[64]
                                   len _7953 + -mem[64] + 100
                            _7956 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7956] = 27
                            mem[_7956 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                            _7957 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 27
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                            idx = 32
                            while idx < 27:
                                mem[idx + _7957 + 68] = mem[idx + _7956 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_7957 + 68] = mem[_7957 + 73 len 27]
                            revert with memory
                              from mem[64]
                               len _7957 + -mem[64] + 100
                        _7791 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7791] = 19
                        mem[_7791 + 32] = 'MATH64_MUL_OVERFLOW'
                        if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
                            _7865 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 19
                            mem[mem[64] + 68] = 'MATH64_MUL_OVERFLOW'
                            idx = 32
                            while idx < 19:
                                mem[idx + _7865 + 68] = mem[idx + _7791 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_7865 + 68] = mem[_7865 + 81 len 19]
                            revert with memory
                              from mem[64]
                               len _7865 + -mem[64] + 100
                        _8056 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8056] = 19
                        mem[_8056 + 32] = 'MATH64_ADD_OVERFLOW'
                        if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
                            _8139 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 19
                            mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                            idx = 32
                            while idx < 19:
                                mem[idx + _8139 + 68] = mem[idx + _8056 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_8139 + 68] = mem[_8139 + 81 len 19]
                            revert with memory
                              from mem[64]
                               len _8139 + -mem[64] + 100
                        if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) > uint64(block.timestamp):
                            _8411 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8411] = 28
                            mem[_8411 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            _8412 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 28
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            idx = 32
                            while idx < 28:
                                mem[idx + _8412 + 68] = mem[idx + _8411 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_8412 + 68] = mem[_8412 + 72 len 28]
                            revert with memory
                              from mem[64]
                               len _8412 + -mem[64] + 100
                        _8415 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8415] = 27
                        mem[_8415 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        _8416 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 27
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        idx = 32
                        while idx < 27:
                            mem[idx + _8416 + 68] = mem[idx + _8415 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_8416 + 68] = mem[_8416 + 73 len 27]
                        revert with memory
                          from mem[64]
                           len _8416 + -mem[64] + 100
                    require ext_code.size(address(vaultAddress))
                    call address(vaultAddress).balance(address arg1) with:
                         gas gas_remaining wei
                        args payment[arg1].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < payment[arg1].field_768:
                        emit PaymentFailure(arg1);
                        if uint64(s):
                        _7582 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7582] = 21
                        mem[_7582 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        if block.timestamp > test266151307():
                            _7644 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 21
                            mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                            idx = 32
                            while idx < 21:
                                mem[idx + _7644 + 68] = mem[idx + _7582 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_7644 + 68] = mem[_7644 + 79 len 21]
                            revert with memory
                              from mem[64]
                               len _7644 + -mem[64] + 100
                        mem[0] = arg1
                        mem[32] = 4
                        if payment[arg1].field_1216 >= payment[arg1].field_1152:
                            if test266151307() > uint64(block.timestamp):
                                _8249 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8249] = 28
                                mem[_8249 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                                _8250 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 28
                                mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                                idx = 32
                                while idx < 28:
                                    mem[idx + _8250 + 68] = mem[idx + _8249 + 32]
                                    _6928 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6928] = 21
                                    mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                    idx = idx + 32
                                    continue 
                                mem[_8250 + 68] = mem[_8250 + 72 len 28]
                                revert with memory
                                  from mem[64]
                                   len _8250 + -mem[64] + 100
                            _8253 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8253] = 27
                            mem[_8253 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                            _8254 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 27
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                            idx = 32
                            while idx < 27:
                                mem[idx + _8254 + 68] = mem[idx + _8253 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_8254 + 68] = mem[_8254 + 73 len 27]
                            revert with memory
                              from mem[64]
                               len _8254 + -mem[64] + 100
                        _8062 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8062] = 19
                        mem[_8062 + 32] = 'MATH64_MUL_OVERFLOW'
                        if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
                            _8151 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 19
                            mem[mem[64] + 68] = 'MATH64_MUL_OVERFLOW'
                            idx = 32
                            while idx < 19:
                                mem[idx + _8151 + 68] = mem[idx + _8062 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_8151 + 68] = mem[_8151 + 81 len 19]
                            revert with memory
                              from mem[64]
                               len _8151 + -mem[64] + 100
                        _8347 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8347] = 19
                        mem[_8347 + 32] = 'MATH64_ADD_OVERFLOW'
                        if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
                            _8428 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 19
                            mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                            idx = 32
                            while idx < 19:
                                mem[idx + _8428 + 68] = mem[idx + _8347 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_8428 + 68] = mem[_8428 + 81 len 19]
                            revert with memory
                              from mem[64]
                               len _8428 + -mem[64] + 100
                        if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) > uint64(block.timestamp):
                            _8600 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8600] = 28
                            mem[_8600 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            _8601 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 28
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            idx = 32
                            while idx < 28:
                                mem[idx + _8601 + 68] = mem[idx + _8600 + 32]
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 21
                                mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_8601 + 68] = mem[_8601 + 72 len 28]
                            revert with memory
                              from mem[64]
                               len _8601 + -mem[64] + 100
                        _8604 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8604] = 27
                        mem[_8604 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        _8605 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 27
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        idx = 32
                        while idx < 27:
                            mem[idx + _8605 + 68] = mem[idx + _8604 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_8605 + 68] = mem[_8605 + 73 len 27]
                        revert with memory
                          from mem[64]
                           len _8605 + -mem[64] + 100
                    payment[arg1].field_1216 = uint64(payment[arg1].field_1216 + 1)
                    _7224 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_7224] = 0
                    mem[0] = payment[arg1].field_0
                    mem[32] = sha3(sub_6abe602d - 1 << 192, 8) + 3
                    _7519 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7519] = 17
                    mem[_7519 + 32] = 'MATH_ADD_OVERFLOW'
                    if payment[arg1].field_768 + periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0 < periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0:
                        _7579 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 17
                        mem[mem[64] + 68] = 'MATH_ADD_OVERFLOW'
                        idx = 32
                        while idx < 17:
                            mem[idx + _7579 + 68] = mem[idx + _7519 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_7579 + 68] = mem[_7579 + 83 len 17]
                        revert with memory
                          from mem[64]
                           len _7579 + -mem[64] + 100
                    periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0 += payment[arg1].field_768
                    sub_eaa7ec68++
                    mem[0] = sub_eaa7ec68
                    mem[32] = 6
                    transaction[stor7].field_0 = payment[arg1].field_0
                    transaction[stor7].field_256 = payment[arg1].field_256
                    transaction[stor7].field_416 = 0
                    transaction[stor7].field_512 = payment[arg1].field_768
                    transaction[stor7].field_768 = arg1
                    transaction[stor7].field_1024 = 0 or uint64(payment[arg1].field_1216 + 1) or Mask(192, 64, transaction[stor7].field_1024)
                    _8061 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8061] = 21
                    mem[_8061 + 32] = 'UINT64_NUMBER_TOO_BIG'
                    if block.timestamp > test266151307():
                        _8148 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 21
                        mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                        idx = 32
                        while idx < 21:
                            mem[idx + _8148 + 68] = mem[idx + _8061 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_8148 + 68] = mem[_8148 + 79 len 21]
                        revert with memory
                          from mem[64]
                           len _8148 + -mem[64] + 100
                    transaction[stor7].field_1088 = uint64(block.timestamp)
                    transaction[stor7].field_1152 = uint64(sub_6abe602d - 1)
                    transaction[stor7].field_1216 = 0
                    mem[0] = uint64(sub_6abe602d - 1)
                    mem[32] = 8
                    if periodTokenStatement[stor9 - 1 << 192].field_256:
                        _8423 = mem[64]
                        mem[mem[64]] = 0
                        mem[mem[64] + 32] = payment[arg1].field_768
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 0
                        idx = 0
                        while idx < 0:
                            mem[idx + _8423 + 128] = mem[idx + _7224 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        emit NewTransaction(uint256 arg1, bool arg2, address arg3, uint256 arg4, string arg5):
                                            mem[mem[64] len _8423 + -mem[64] + 128],
                                            sub_eaa7ec68,
                                            payment[arg1].field_256,
                    else:
                        periodTokenStatement[stor9 - 1 << 192].field_256 = sub_eaa7ec68
                        _8494 = mem[64]
                        mem[mem[64]] = 0
                        mem[mem[64] + 32] = payment[arg1].field_768
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 0
                        idx = 0
                        while idx < 0:
                            mem[idx + _8494 + 128] = mem[idx + _7224 + 32]
                            _6928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6928] = 21
                            mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        emit NewTransaction(uint256 arg1, bool arg2, address arg3, uint256 arg4, string arg5):
                                            mem[mem[64] len _8494 + -mem[64] + 128],
                                            sub_eaa7ec68,
                                            payment[arg1].field_256,
        mem[mem[64]] = 0xbeabacc800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = payment[arg1].field_0
        mem[mem[64] + 36] = payment[arg1].field_256
        mem[mem[64] + 68] = payment[arg1].field_768
        require ext_code.size(address(vaultAddress))
        call address(vaultAddress).transfer(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args payment[arg1].field_0, payment[arg1].field_256, payment[arg1].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _6928 = mem[64]
        mem[64] = mem[64] + 64
        mem[_6928] = 21
        mem[_6928 + 32] = 'UINT64_NUMBER_TOO_BIG'
        s = s + 1
        continue 
    _6929 = mem[64]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[_6928]
    _6931 = mem[_6928]
    if 0 >= mem[_6928]:
        if not mem[_6928] % 32:
            revert with 0, 32, mem[mem[64] + 36 len mem[_6928] + 32]
        mem[floor32(mem[_6928]) + mem[64] + 68] = mem[floor32(mem[_6928]) + mem[64] + -(mem[_6928] % 32) + 100 len mem[_6928] % 32]
    else:
        mem[mem[64] + 68] = mem[_6928 + 32]
        mem[mem[64] + 100 len floor32(_6931 - 1)] = mem[_6928 + 64 len floor32(_6931 - 1)]
        if not _6931 % 32:
            revert with 0, 32, mem[mem[64] + 36 len _6931 + 32]
        mem[floor32(_6931) + mem[64] + 68] = mem[floor32(_6931) + mem[64] + -(_6931 % 32) + 100 len _6931 % 32]
    revert with memory
      from mem[64]
       len floor32(_6931) + _6929 + -mem[64] + 100
}

function executePayment(uint256 arg1) {
    mem[128] = arg1
    mem[160] = payment[arg1].field_768
    if not initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if block.number < initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if not kernelAddress:
        revert with 0, 'APP_AUTH_FAILED'
    mem[96] = 64
    mem[356 len 64] = arg1, payment[arg1].field_768
    require ext_code.size(kernelAddress)
    call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sha3('EXECUTE_PAYMENTS_ROLE'), 128, 64, arg1, payment[arg1].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[192] = 15
    mem[224] = 'APP_AUTH_FAILED'
    if not ext_call.return_data[0]:
        revert with 0, 'APP_AUTH_FAILED'
    if arg1 <= 0:
        revert with 0, 'FINANCE_NO_SCHEDULED_PAYMENT'
    mem[256] = 28
    mem[288] = 'FINANCE_NO_SCHEDULED_PAYMENT'
    if arg1 >= sub_de048a7b:
        revert with 0, 'FINANCE_NO_SCHEDULED_PAYMENT'
    mem[0] = uint64(sub_6abe602d - 1)
    mem[32] = 8
    mem[64] = 384
    mem[320] = 21
    mem[352] = 'UINT64_NUMBER_TOO_BIG'
    if block.timestamp > test266151307():
        revert with 0, 'UINT64_NUMBER_TOO_BIG'
    idx = 0
    s = -1
    while uint64(block.timestamp) > periodTokenStatement[stor9 - 1 << 192][idx].field_64:
        if not uint64(s):
            _6904 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6904] = 27
            mem[_6904 + 32] = 'FINANCE_COMPLETE_TRANSITION'
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 27
            mem[mem[64] + 68] = 'FINANCE_COMPLETE_TRANSITION'
            idx = 32
            while idx < 27:
                mem[idx + mem[64] + 68] = mem[idx + _6904 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'FINANCE_COMPLETE_TRANSITION'
        if not periodTokenStatement[stor9 - 1 << 192][idx].field_256:
            _6902 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6902] = 19
            mem[_6902 + 32] = 'MATH64_ADD_OVERFLOW'
            if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1) < periodTokenStatement[stor9 - 1 << 192][idx].field_64:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 19
                mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                idx = 32
                while idx < 19:
                    mem[idx + mem[64] + 68] = mem[idx + _6902 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH64_ADD_OVERFLOW'
        else:
            _6903 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6903] = 18
            mem[_6903 + 32] = 'MATH_SUB_UNDERFLOW'
            if 1 > sub_eaa7ec68:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 18
                mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                idx = 32
                while idx < 18:
                    mem[idx + mem[64] + 68] = mem[idx + _6903 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH_SUB_UNDERFLOW'
            periodTokenStatement[stor9 - 1 << 192][idx].field_512 = sub_eaa7ec68 - 1
            _6961 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6961] = 19
            mem[_6961 + 32] = 'MATH64_ADD_OVERFLOW'
            if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1) < periodTokenStatement[stor9 - 1 << 192][idx].field_64:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 19
                mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                idx = 32
                while idx < 19:
                    mem[idx + mem[64] + 68] = mem[idx + _6961 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH64_ADD_OVERFLOW'
        ('ge', ('mask_shl', 64, 0, 0, ('add', 1, ('field', 64, ('stor', ('array', ('var', 0), ('map', ('mask_shl', 64, 0, 192, ('add', -1, ('stor', ('name', 'stor9', 9)))), ('name', 'periodTokenStatement', 8))))))), ('field', 64, ('stor', ('array', ('var', 0), ('map', ('mask_shl', 64, 0, 192, ('add', -1, ('stor', ('name', 'stor9', 9)))), ('name', 'periodTokenStatement', 8))))))
        sub_6abe602d = uint64(sub_6abe602d + 1)
        mem[0] = sub_6abe602d
        mem[32] = 8
        periodTokenStatement[stor9].field_0 = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1)
        if uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration) >= uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + 1):
            periodTokenStatement[stor9].field_64 = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration)
            mem[mem[64]] = periodTokenStatement[stor9].field_0
            mem[mem[64] + 32] = uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration)
            emit NewPeriod(periodTokenStatement[stor9].field_0, uint64(periodTokenStatement[stor9 - 1 << 192][idx].field_64 + periodDuration), sub_6abe602d);
        else:
            periodTokenStatement[stor9].field_64 = test266151307()
            mem[mem[64]] = 0 or periodTokenStatement[stor9].field_0
            mem[mem[64] + 32] = test266151307()
            emit NewPeriod(0 or periodTokenStatement[stor9].field_0, test266151307(), sub_6abe602d);
        idx = sha3(sub_6abe602d, 8)
        s = s - 1
        continue 
    _6893 = mem[64]
    mem[64] = mem[64] + 64
    mem[_6893] = 27
    mem[_6893 + 32] = 'FINANCE_COMPLETE_TRANSITION'
    mem[0] = arg1
    mem[32] = 4
    _6927 = mem[64]
    mem[64] = mem[64] + 64
    mem[_6927] = 24
    mem[_6927 + 32] = 'FINANCE_PAYMENT_INACTIVE'
    if payment[arg1].field_672:
        revert with 0, 'FINANCE_PAYMENT_INACTIVE'
    _17298 = mem[64]
    mem[64] = mem[64] + 64
    mem[_17298] = 21
    mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
    s = var115002
    while block.timestamp <= test266151307():
        mem[0] = arg1
        mem[32] = 4
        if payment[arg1].field_1216 >= payment[arg1].field_1152:
            if test266151307() > uint64(block.timestamp):
                if uint64(s):
                _17375 = mem[64]
                mem[64] = mem[64] + 64
                mem[_17375] = 21
                mem[_17375 + 32] = 'UINT64_NUMBER_TOO_BIG'
                if block.timestamp > test266151307():
                    _17382 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 21
                    mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                    idx = 32
                    while idx < 21:
                        mem[idx + _17382 + 68] = mem[idx + _17375 + 32]
                        _17298 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17298] = 21
                        mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_17382 + 68] = mem[_17382 + 79 len 21]
                    revert with memory
                      from mem[64]
                       len _17382 + -mem[64] + 100
                mem[0] = arg1
                mem[32] = 4
                if payment[arg1].field_1216 >= payment[arg1].field_1152:
                    if test266151307() > uint64(block.timestamp):
                        _17523 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17523] = 28
                        mem[_17523 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                        _17524 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 28
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                        idx = 32
                        while idx < 28:
                            mem[idx + _17524 + 68] = mem[idx + _17523 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_17524 + 68] = mem[_17524 + 72 len 28]
                        revert with memory
                          from mem[64]
                           len _17524 + -mem[64] + 100
                    _17527 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_17527] = 27
                    mem[_17527 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                    _17528 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 27
                    mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                    idx = 32
                    while idx < 27:
                        mem[idx + _17528 + 68] = mem[idx + _17527 + 32]
                        _17298 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17298] = 21
                        mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_17528 + 68] = mem[_17528 + 73 len 27]
                    revert with memory
                      from mem[64]
                       len _17528 + -mem[64] + 100
                _17466 = mem[64]
                mem[64] = mem[64] + 64
                mem[_17466] = 19
                mem[_17466 + 32] = 'MATH64_MUL_OVERFLOW'
                if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
                    _17498 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 19
                    mem[mem[64] + 68] = 'MATH64_MUL_OVERFLOW'
                    idx = 32
                    while idx < 19:
                        mem[idx + _17498 + 68] = mem[idx + _17466 + 32]
                        _17298 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17298] = 21
                        mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_17498 + 68] = mem[_17498 + 81 len 19]
                    revert with memory
                      from mem[64]
                       len _17498 + -mem[64] + 100
                _17568 = mem[64]
                mem[64] = mem[64] + 64
                mem[_17568] = 19
                mem[_17568 + 32] = 'MATH64_ADD_OVERFLOW'
                if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
                    _17618 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 19
                    mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                    idx = 32
                    while idx < 19:
                        mem[idx + _17618 + 68] = mem[idx + _17568 + 32]
                        _17298 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17298] = 21
                        mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_17618 + 68] = mem[_17618 + 81 len 19]
                    revert with memory
                      from mem[64]
                       len _17618 + -mem[64] + 100
                if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) > uint64(block.timestamp):
                    _17785 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_17785] = 28
                    mem[_17785 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                    _17786 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 28
                    mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                    idx = 32
                    while idx < 28:
                        mem[idx + _17786 + 68] = mem[idx + _17785 + 32]
                        _17298 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17298] = 21
                        mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_17786 + 68] = mem[_17786 + 72 len 28]
                    revert with memory
                      from mem[64]
                       len _17786 + -mem[64] + 100
                _17789 = mem[64]
                mem[64] = mem[64] + 64
                mem[_17789] = 27
                mem[_17789 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                _17790 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 27
                mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                idx = 32
                while idx < 27:
                    mem[idx + _17790 + 68] = mem[idx + _17789 + 32]
                    _17298 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_17298] = 21
                    mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                    idx = idx + 32
                    continue 
                mem[_17790 + 68] = mem[_17790 + 73 len 27]
                revert with memory
                  from mem[64]
                   len _17790 + -mem[64] + 100
            if uint64(s) >= 20:
                if uint64(s):
                _17385 = mem[64]
                mem[64] = mem[64] + 64
                mem[_17385] = 21
                mem[_17385 + 32] = 'UINT64_NUMBER_TOO_BIG'
                if block.timestamp > test266151307():
                    _17396 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 21
                    mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                    idx = 32
                    while idx < 21:
                        mem[idx + _17396 + 68] = mem[idx + _17385 + 32]
                        _17298 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17298] = 21
                        mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_17396 + 68] = mem[_17396 + 79 len 21]
                    revert with memory
                      from mem[64]
                       len _17396 + -mem[64] + 100
                mem[0] = arg1
                mem[32] = 4
                if payment[arg1].field_1216 >= payment[arg1].field_1152:
                    if test266151307() > uint64(block.timestamp):
                        _17574 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17574] = 28
                        mem[_17574 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                        _17575 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 28
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                        idx = 32
                        while idx < 28:
                            mem[idx + _17575 + 68] = mem[idx + _17574 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_17575 + 68] = mem[_17575 + 72 len 28]
                        revert with memory
                          from mem[64]
                           len _17575 + -mem[64] + 100
                    _17578 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_17578] = 27
                    mem[_17578 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                    _17579 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 27
                    mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                    idx = 32
                    while idx < 27:
                        mem[idx + _17579 + 68] = mem[idx + _17578 + 32]
                        _17298 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17298] = 21
                        mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_17579 + 68] = mem[_17579 + 73 len 27]
                    revert with memory
                      from mem[64]
                       len _17579 + -mem[64] + 100
                _17501 = mem[64]
                mem[64] = mem[64] + 64
                mem[_17501] = 19
                mem[_17501 + 32] = 'MATH64_MUL_OVERFLOW'
                if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
                    _17531 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 19
                    mem[mem[64] + 68] = 'MATH64_MUL_OVERFLOW'
                    idx = 32
                    while idx < 19:
                        mem[idx + _17531 + 68] = mem[idx + _17501 + 32]
                        _17298 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17298] = 21
                        mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_17531 + 68] = mem[_17531 + 81 len 19]
                    revert with memory
                      from mem[64]
                       len _17531 + -mem[64] + 100
                _17627 = mem[64]
                mem[64] = mem[64] + 64
                mem[_17627] = 19
                mem[_17627 + 32] = 'MATH64_ADD_OVERFLOW'
                if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
                    _17678 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 19
                    mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                    idx = 32
                    while idx < 19:
                        mem[idx + _17678 + 68] = mem[idx + _17627 + 32]
                        _17298 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17298] = 21
                        mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_17678 + 68] = mem[_17678 + 81 len 19]
                    revert with memory
                      from mem[64]
                       len _17678 + -mem[64] + 100
                if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) > uint64(block.timestamp):
                    _17883 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_17883] = 28
                    mem[_17883 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                    _17884 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 28
                    mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                    idx = 32
                    while idx < 28:
                        mem[idx + _17884 + 68] = mem[idx + _17883 + 32]
                        _17298 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17298] = 21
                        mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_17884 + 68] = mem[_17884 + 72 len 28]
                    revert with memory
                      from mem[64]
                       len _17884 + -mem[64] + 100
                _17887 = mem[64]
                mem[64] = mem[64] + 64
                mem[_17887] = 27
                mem[_17887 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                _17888 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 27
                mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                idx = 32
                while idx < 27:
                    mem[idx + _17888 + 68] = mem[idx + _17887 + 32]
                    _17298 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_17298] = 21
                    mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                    idx = idx + 32
                    continue 
                mem[_17888 + 68] = mem[_17888 + 73 len 27]
                revert with memory
                  from mem[64]
                   len _17888 + -mem[64] + 100
            mem[0] = payment[arg1].field_0
            mem[32] = 3
            if not stor3[stor4[arg1].field_0]:
                if -1 < payment[arg1].field_768:
                    emit PaymentFailure(arg1);
                    if uint64(s):
                    _17632 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_17632] = 21
                    mem[_17632 + 32] = 'UINT64_NUMBER_TOO_BIG'
                    if block.timestamp > test266151307():
                        _17687 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 21
                        mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                        idx = 32
                        while idx < 21:
                            mem[idx + _17687 + 68] = mem[idx + _17632 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_17687 + 68] = mem[_17687 + 79 len 21]
                        revert with memory
                          from mem[64]
                           len _17687 + -mem[64] + 100
                    mem[0] = arg1
                    mem[32] = 4
                    if payment[arg1].field_1216 >= payment[arg1].field_1152:
                        if test266151307() > uint64(block.timestamp):
                            _18272 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_18272] = 28
                            mem[_18272 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            _18273 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 28
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            idx = 32
                            while idx < 28:
                                mem[idx + _18273 + 68] = mem[idx + _18272 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_18273 + 68] = mem[_18273 + 72 len 28]
                            revert with memory
                              from mem[64]
                               len _18273 + -mem[64] + 100
                        _18276 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_18276] = 27
                        mem[_18276 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        _18277 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 27
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        idx = 32
                        while idx < 27:
                            mem[idx + _18277 + 68] = mem[idx + _18276 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_18277 + 68] = mem[_18277 + 73 len 27]
                        revert with memory
                          from mem[64]
                           len _18277 + -mem[64] + 100
                    _18073 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_18073] = 19
                    mem[_18073 + 32] = 'MATH64_MUL_OVERFLOW'
                    if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
                        _18166 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 19
                        mem[mem[64] + 68] = 'MATH64_MUL_OVERFLOW'
                        idx = 32
                        while idx < 19:
                            mem[idx + _18166 + 68] = mem[idx + _18073 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_18166 + 68] = mem[_18166 + 81 len 19]
                        revert with memory
                          from mem[64]
                           len _18166 + -mem[64] + 100
                    _18388 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_18388] = 19
                    mem[_18388 + 32] = 'MATH64_ADD_OVERFLOW'
                    if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
                        _18491 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 19
                        mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                        idx = 32
                        while idx < 19:
                            mem[idx + _18491 + 68] = mem[idx + _18388 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_18491 + 68] = mem[_18491 + 81 len 19]
                        revert with memory
                          from mem[64]
                           len _18491 + -mem[64] + 100
                    if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) > uint64(block.timestamp):
                        _18890 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_18890] = 28
                        mem[_18890 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                        _18891 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 28
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                        idx = 32
                        while idx < 28:
                            mem[idx + _18891 + 68] = mem[idx + _18890 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_18891 + 68] = mem[_18891 + 72 len 28]
                        revert with memory
                          from mem[64]
                           len _18891 + -mem[64] + 100
                    _18894 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_18894] = 27
                    mem[_18894 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                    _18895 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 27
                    mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                    idx = 32
                    while idx < 27:
                        mem[idx + _18895 + 68] = mem[idx + _18894 + 32]
                        _17298 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17298] = 21
                        mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_18895 + 68] = mem[_18895 + 73 len 27]
                    revert with memory
                      from mem[64]
                       len _18895 + -mem[64] + 100
                require ext_code.size(address(vaultAddress))
                call address(vaultAddress).balance(address arg1) with:
                     gas gas_remaining wei
                    args payment[arg1].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < payment[arg1].field_768:
                    emit PaymentFailure(arg1);
                    if uint64(s):
                    _17815 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_17815] = 21
                    mem[_17815 + 32] = 'UINT64_NUMBER_TOO_BIG'
                    if block.timestamp > test266151307():
                        _17904 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 21
                        mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                        idx = 32
                        while idx < 21:
                            mem[idx + _17904 + 68] = mem[idx + _17815 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_17904 + 68] = mem[_17904 + 79 len 21]
                        revert with memory
                          from mem[64]
                           len _17904 + -mem[64] + 100
                    mem[0] = arg1
                    mem[32] = 4
                    if payment[arg1].field_1216 >= payment[arg1].field_1152:
                        if test266151307() > uint64(block.timestamp):
                            _18621 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_18621] = 28
                            mem[_18621 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            _18622 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 28
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            idx = 32
                            while idx < 28:
                                mem[idx + _18622 + 68] = mem[idx + _18621 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_18622 + 68] = mem[_18622 + 72 len 28]
                            revert with memory
                              from mem[64]
                               len _18622 + -mem[64] + 100
                        _18625 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_18625] = 27
                        mem[_18625 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        _18626 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 27
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        idx = 32
                        while idx < 27:
                            mem[idx + _18626 + 68] = mem[idx + _18625 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_18626 + 68] = mem[_18626 + 73 len 27]
                        revert with memory
                          from mem[64]
                           len _18626 + -mem[64] + 100
                    _18394 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_18394] = 19
                    mem[_18394 + 32] = 'MATH64_MUL_OVERFLOW'
                    if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
                        _18503 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 19
                        mem[mem[64] + 68] = 'MATH64_MUL_OVERFLOW'
                        idx = 32
                        while idx < 19:
                            mem[idx + _18503 + 68] = mem[idx + _18394 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_18503 + 68] = mem[_18503 + 81 len 19]
                        revert with memory
                          from mem[64]
                           len _18503 + -mem[64] + 100
                    _18756 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_18756] = 19
                    mem[_18756 + 32] = 'MATH64_ADD_OVERFLOW'
                    if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
                        _18907 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 19
                        mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                        idx = 32
                        while idx < 19:
                            mem[idx + _18907 + 68] = mem[idx + _18756 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_18907 + 68] = mem[_18907 + 81 len 19]
                        revert with memory
                          from mem[64]
                           len _18907 + -mem[64] + 100
                    if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) > uint64(block.timestamp):
                        _19414 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_19414] = 28
                        mem[_19414 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                        _19415 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 28
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                        idx = 32
                        while idx < 28:
                            mem[idx + _19415 + 68] = mem[idx + _19414 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_19415 + 68] = mem[_19415 + 72 len 28]
                        revert with memory
                          from mem[64]
                           len _19415 + -mem[64] + 100
                    _19418 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_19418] = 27
                    mem[_19418 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                    _19419 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 27
                    mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                    idx = 32
                    while idx < 27:
                        mem[idx + _19419 + 68] = mem[idx + _19418 + 32]
                        _17298 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17298] = 21
                        mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_19419 + 68] = mem[_19419 + 73 len 27]
                    revert with memory
                      from mem[64]
                       len _19419 + -mem[64] + 100
                payment[arg1].field_1216 = uint64(payment[arg1].field_1216 + 1)
                _17474 = mem[64]
                mem[64] = mem[64] + 32
                mem[_17474] = 0
                mem[0] = payment[arg1].field_0
                mem[32] = sha3(sub_6abe602d - 1 << 192, 8) + 3
                _17744 = mem[64]
                mem[64] = mem[64] + 64
                mem[_17744] = 17
                mem[_17744 + 32] = 'MATH_ADD_OVERFLOW'
                if payment[arg1].field_768 + periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0 < periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0:
                    _17812 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 17
                    mem[mem[64] + 68] = 'MATH_ADD_OVERFLOW'
                    idx = 32
                    while idx < 17:
                        mem[idx + _17812 + 68] = mem[idx + _17744 + 32]
                        _17298 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17298] = 21
                        mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_17812 + 68] = mem[_17812 + 83 len 17]
                    revert with memory
                      from mem[64]
                       len _17812 + -mem[64] + 100
                periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0 += payment[arg1].field_768
                sub_eaa7ec68++
                mem[0] = sub_eaa7ec68
                mem[32] = 6
                transaction[stor7].field_0 = payment[arg1].field_0
                transaction[stor7].field_256 = payment[arg1].field_256
                transaction[stor7].field_416 = 0
                transaction[stor7].field_512 = payment[arg1].field_768
                transaction[stor7].field_768 = arg1
                transaction[stor7].field_1024 = 0 or uint64(payment[arg1].field_1216 + 1) or Mask(192, 64, transaction[stor7].field_1024)
                _18393 = mem[64]
                mem[64] = mem[64] + 64
                mem[_18393] = 21
                mem[_18393 + 32] = 'UINT64_NUMBER_TOO_BIG'
                if block.timestamp > test266151307():
                    _18500 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 21
                    mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                    idx = 32
                    while idx < 21:
                        mem[idx + _18500 + 68] = mem[idx + _18393 + 32]
                        _17298 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17298] = 21
                        mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_18500 + 68] = mem[_18500 + 79 len 21]
                    revert with memory
                      from mem[64]
                       len _18500 + -mem[64] + 100
                transaction[stor7].field_1088 = uint64(block.timestamp)
                transaction[stor7].field_1152 = uint64(sub_6abe602d - 1)
                transaction[stor7].field_1216 = 0
                mem[0] = uint64(sub_6abe602d - 1)
                mem[32] = 8
                if periodTokenStatement[stor9 - 1 << 192].field_256:
                    _18902 = mem[64]
                    mem[mem[64]] = 0
                    mem[mem[64] + 32] = payment[arg1].field_768
                    mem[mem[64] + 64] = 96
                    mem[mem[64] + 96] = 0
                    idx = 0
                    while idx < 0:
                        mem[idx + _18902 + 128] = mem[idx + _17474 + 32]
                        _17298 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17298] = 21
                        mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    emit NewTransaction(uint256 arg1, bool arg2, address arg3, uint256 arg4, string arg5):
                                        mem[mem[64] len _18902 + -mem[64] + 128],
                                        sub_eaa7ec68,
                                        payment[arg1].field_256,
                else:
                    periodTokenStatement[stor9 - 1 << 192].field_256 = sub_eaa7ec68
                    _19064 = mem[64]
                    mem[mem[64]] = 0
                    mem[mem[64] + 32] = payment[arg1].field_768
                    mem[mem[64] + 64] = 96
                    mem[mem[64] + 96] = 0
                    idx = 0
                    while idx < 0:
                        mem[idx + _19064 + 128] = mem[idx + _17474 + 32]
                        _17298 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17298] = 21
                        mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    emit NewTransaction(uint256 arg1, bool arg2, address arg3, uint256 arg4, string arg5):
                                        mem[mem[64] len _19064 + -mem[64] + 128],
                                        sub_eaa7ec68,
                                        payment[arg1].field_256,
            else:
                mem[0] = payment[arg1].field_0
                mem[32] = sha3(sub_6abe602d - 1 << 192, 8) + 3
                if periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0 < stor2[stor4[arg1].field_0]:
                    if stor2[stor4[arg1].field_0] - periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0 < payment[arg1].field_768:
                        emit PaymentFailure(arg1);
                        if uint64(s):
                        _17740 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17740] = 21
                        mem[_17740 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        if block.timestamp > test266151307():
                            _17804 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 21
                            mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                            idx = 32
                            while idx < 21:
                                mem[idx + _17804 + 68] = mem[idx + _17740 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_17804 + 68] = mem[_17804 + 79 len 21]
                            revert with memory
                              from mem[64]
                               len _17804 + -mem[64] + 100
                        mem[0] = arg1
                        mem[32] = 4
                        if payment[arg1].field_1216 >= payment[arg1].field_1152:
                            if test266151307() > uint64(block.timestamp):
                                _18472 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_18472] = 28
                                mem[_18472 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                                _18473 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 28
                                mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                                idx = 32
                                while idx < 28:
                                    mem[idx + _18473 + 68] = mem[idx + _18472 + 32]
                                    _17298 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_17298] = 21
                                    mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                    idx = idx + 32
                                    continue 
                                mem[_18473 + 68] = mem[_18473 + 72 len 28]
                                revert with memory
                                  from mem[64]
                                   len _18473 + -mem[64] + 100
                            _18476 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_18476] = 27
                            mem[_18476 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                            _18477 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 27
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                            idx = 32
                            while idx < 27:
                                mem[idx + _18477 + 68] = mem[idx + _18476 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_18477 + 68] = mem[_18477 + 73 len 27]
                            revert with memory
                              from mem[64]
                               len _18477 + -mem[64] + 100
                        _18259 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_18259] = 19
                        mem[_18259 + 32] = 'MATH64_MUL_OVERFLOW'
                        if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
                            _18374 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 19
                            mem[mem[64] + 68] = 'MATH64_MUL_OVERFLOW'
                            idx = 32
                            while idx < 19:
                                mem[idx + _18374 + 68] = mem[idx + _18259 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_18374 + 68] = mem[_18374 + 81 len 19]
                            revert with memory
                              from mem[64]
                               len _18374 + -mem[64] + 100
                        _18592 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_18592] = 19
                        mem[_18592 + 32] = 'MATH64_ADD_OVERFLOW'
                        if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
                            _18723 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 19
                            mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                            idx = 32
                            while idx < 19:
                                mem[idx + _18723 + 68] = mem[idx + _18592 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_18723 + 68] = mem[_18723 + 81 len 19]
                            revert with memory
                              from mem[64]
                               len _18723 + -mem[64] + 100
                        if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) > uint64(block.timestamp):
                            _19183 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_19183] = 28
                            mem[_19183 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            _19184 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 28
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            idx = 32
                            while idx < 28:
                                mem[idx + _19184 + 68] = mem[idx + _19183 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_19184 + 68] = mem[_19184 + 72 len 28]
                            revert with memory
                              from mem[64]
                               len _19184 + -mem[64] + 100
                        _19187 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_19187] = 27
                        mem[_19187 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        _19188 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 27
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        idx = 32
                        while idx < 27:
                            mem[idx + _19188 + 68] = mem[idx + _19187 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_19188 + 68] = mem[_19188 + 73 len 27]
                        revert with memory
                          from mem[64]
                           len _19188 + -mem[64] + 100
                    require ext_code.size(address(vaultAddress))
                    call address(vaultAddress).balance(address arg1) with:
                         gas gas_remaining wei
                        args payment[arg1].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < payment[arg1].field_768:
                        emit PaymentFailure(arg1);
                        if uint64(s):
                        _17983 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17983] = 21
                        mem[_17983 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        if block.timestamp > test266151307():
                            _18064 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 21
                            mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                            idx = 32
                            while idx < 21:
                                mem[idx + _18064 + 68] = mem[idx + _17983 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_18064 + 68] = mem[_18064 + 79 len 21]
                            revert with memory
                              from mem[64]
                               len _18064 + -mem[64] + 100
                        mem[0] = arg1
                        mem[32] = 4
                        if payment[arg1].field_1216 >= payment[arg1].field_1152:
                            if test266151307() > uint64(block.timestamp):
                                _18867 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_18867] = 28
                                mem[_18867 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                                _18868 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 28
                                mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                                idx = 32
                                while idx < 28:
                                    mem[idx + _18868 + 68] = mem[idx + _18867 + 32]
                                    _17298 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_17298] = 21
                                    mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                    idx = idx + 32
                                    continue 
                                mem[_18868 + 68] = mem[_18868 + 72 len 28]
                                revert with memory
                                  from mem[64]
                                   len _18868 + -mem[64] + 100
                            _18871 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_18871] = 27
                            mem[_18871 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                            _18872 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 27
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                            idx = 32
                            while idx < 27:
                                mem[idx + _18872 + 68] = mem[idx + _18871 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_18872 + 68] = mem[_18872 + 73 len 27]
                            revert with memory
                              from mem[64]
                               len _18872 + -mem[64] + 100
                        _18598 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_18598] = 19
                        mem[_18598 + 32] = 'MATH64_MUL_OVERFLOW'
                        if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
                            _18735 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 19
                            mem[mem[64] + 68] = 'MATH64_MUL_OVERFLOW'
                            idx = 32
                            while idx < 19:
                                mem[idx + _18735 + 68] = mem[idx + _18598 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_18735 + 68] = mem[_18735 + 81 len 19]
                            revert with memory
                              from mem[64]
                               len _18735 + -mem[64] + 100
                        _19038 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_19038] = 19
                        mem[_19038 + 32] = 'MATH64_ADD_OVERFLOW'
                        if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
                            _19200 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 19
                            mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                            idx = 32
                            while idx < 19:
                                mem[idx + _19200 + 68] = mem[idx + _19038 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_19200 + 68] = mem[_19200 + 81 len 19]
                            revert with memory
                              from mem[64]
                               len _19200 + -mem[64] + 100
                        if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) > uint64(block.timestamp):
                            _19751 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_19751] = 28
                            mem[_19751 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            _19752 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 28
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            idx = 32
                            while idx < 28:
                                mem[idx + _19752 + 68] = mem[idx + _19751 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_19752 + 68] = mem[_19752 + 72 len 28]
                            revert with memory
                              from mem[64]
                               len _19752 + -mem[64] + 100
                        _19755 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_19755] = 27
                        mem[_19755 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        _19756 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 27
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        idx = 32
                        while idx < 27:
                            mem[idx + _19756 + 68] = mem[idx + _19755 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_19756 + 68] = mem[_19756 + 73 len 27]
                        revert with memory
                          from mem[64]
                           len _19756 + -mem[64] + 100
                    payment[arg1].field_1216 = uint64(payment[arg1].field_1216 + 1)
                    _17534 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_17534] = 0
                    mem[0] = payment[arg1].field_0
                    mem[32] = sha3(sub_6abe602d - 1 << 192, 8) + 3
                    _17896 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_17896] = 17
                    mem[_17896 + 32] = 'MATH_ADD_OVERFLOW'
                    if payment[arg1].field_768 + periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0 < periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0:
                        _17980 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 17
                        mem[mem[64] + 68] = 'MATH_ADD_OVERFLOW'
                        idx = 32
                        while idx < 17:
                            mem[idx + _17980 + 68] = mem[idx + _17896 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_17980 + 68] = mem[_17980 + 83 len 17]
                        revert with memory
                          from mem[64]
                           len _17980 + -mem[64] + 100
                    periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0 += payment[arg1].field_768
                    sub_eaa7ec68++
                    mem[0] = sub_eaa7ec68
                    mem[32] = 6
                    transaction[stor7].field_0 = payment[arg1].field_0
                    transaction[stor7].field_256 = payment[arg1].field_256
                    transaction[stor7].field_416 = 0
                    transaction[stor7].field_512 = payment[arg1].field_768
                    transaction[stor7].field_768 = arg1
                    transaction[stor7].field_1024 = 0 or uint64(payment[arg1].field_1216 + 1) or Mask(192, 64, transaction[stor7].field_1024)
                    _18597 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_18597] = 21
                    mem[_18597 + 32] = 'UINT64_NUMBER_TOO_BIG'
                    if block.timestamp > test266151307():
                        _18732 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 21
                        mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                        idx = 32
                        while idx < 21:
                            mem[idx + _18732 + 68] = mem[idx + _18597 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_18732 + 68] = mem[_18732 + 79 len 21]
                        revert with memory
                          from mem[64]
                           len _18732 + -mem[64] + 100
                    transaction[stor7].field_1088 = uint64(block.timestamp)
                    transaction[stor7].field_1152 = uint64(sub_6abe602d - 1)
                    transaction[stor7].field_1216 = 0
                    mem[0] = uint64(sub_6abe602d - 1)
                    mem[32] = 8
                    if periodTokenStatement[stor9 - 1 << 192].field_256:
                        _19195 = mem[64]
                        mem[mem[64]] = 0
                        mem[mem[64] + 32] = payment[arg1].field_768
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 0
                        idx = 0
                        while idx < 0:
                            mem[idx + _19195 + 128] = mem[idx + _17534 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        emit NewTransaction(uint256 arg1, bool arg2, address arg3, uint256 arg4, string arg5):
                                            mem[mem[64] len _19195 + -mem[64] + 128],
                                            sub_eaa7ec68,
                                            payment[arg1].field_256,
                    else:
                        periodTokenStatement[stor9 - 1 << 192].field_256 = sub_eaa7ec68
                        _19369 = mem[64]
                        mem[mem[64]] = 0
                        mem[mem[64] + 32] = payment[arg1].field_768
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 0
                        idx = 0
                        while idx < 0:
                            mem[idx + _19369 + 128] = mem[idx + _17534 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        emit NewTransaction(uint256 arg1, bool arg2, address arg3, uint256 arg4, string arg5):
                                            mem[mem[64] len _19369 + -mem[64] + 128],
                                            sub_eaa7ec68,
                                            payment[arg1].field_256,
                else:
                    if 0 < payment[arg1].field_768:
                        emit PaymentFailure(arg1);
                        if uint64(s):
                        _17807 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17807] = 21
                        mem[_17807 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        if block.timestamp > test266151307():
                            _17897 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 21
                            mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                            idx = 32
                            while idx < 21:
                                mem[idx + _17897 + 68] = mem[idx + _17807 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_17897 + 68] = mem[_17897 + 79 len 21]
                            revert with memory
                              from mem[64]
                               len _17897 + -mem[64] + 100
                        mem[0] = arg1
                        mem[32] = 4
                        if payment[arg1].field_1216 >= payment[arg1].field_1152:
                            if test266151307() > uint64(block.timestamp):
                                _18601 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_18601] = 28
                                mem[_18601 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                                _18602 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 28
                                mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                                idx = 32
                                while idx < 28:
                                    mem[idx + _18602 + 68] = mem[idx + _18601 + 32]
                                    _17298 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_17298] = 21
                                    mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                    idx = idx + 32
                                    continue 
                                mem[_18602 + 68] = mem[_18602 + 72 len 28]
                                revert with memory
                                  from mem[64]
                                   len _18602 + -mem[64] + 100
                            _18605 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_18605] = 27
                            mem[_18605 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                            _18606 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 27
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                            idx = 32
                            while idx < 27:
                                mem[idx + _18606 + 68] = mem[idx + _18605 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_18606 + 68] = mem[_18606 + 73 len 27]
                            revert with memory
                              from mem[64]
                               len _18606 + -mem[64] + 100
                        _18382 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_18382] = 19
                        mem[_18382 + 32] = 'MATH64_MUL_OVERFLOW'
                        if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
                            _18483 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 19
                            mem[mem[64] + 68] = 'MATH64_MUL_OVERFLOW'
                            idx = 32
                            while idx < 19:
                                mem[idx + _18483 + 68] = mem[idx + _18382 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_18483 + 68] = mem[_18483 + 81 len 19]
                            revert with memory
                              from mem[64]
                               len _18483 + -mem[64] + 100
                        _18738 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_18738] = 19
                        mem[_18738 + 32] = 'MATH64_ADD_OVERFLOW'
                        if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
                            _18875 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 19
                            mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                            idx = 32
                            while idx < 19:
                                mem[idx + _18875 + 68] = mem[idx + _18738 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_18875 + 68] = mem[_18875 + 81 len 19]
                            revert with memory
                              from mem[64]
                               len _18875 + -mem[64] + 100
                        if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) > uint64(block.timestamp):
                            _19381 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_19381] = 28
                            mem[_19381 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            _19382 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 28
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            idx = 32
                            while idx < 28:
                                mem[idx + _19382 + 68] = mem[idx + _19381 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_19382 + 68] = mem[_19382 + 72 len 28]
                            revert with memory
                              from mem[64]
                               len _19382 + -mem[64] + 100
                        _19385 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_19385] = 27
                        mem[_19385 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        _19386 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 27
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        idx = 32
                        while idx < 27:
                            mem[idx + _19386 + 68] = mem[idx + _19385 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_19386 + 68] = mem[_19386 + 73 len 27]
                        revert with memory
                          from mem[64]
                           len _19386 + -mem[64] + 100
                    require ext_code.size(address(vaultAddress))
                    call address(vaultAddress).balance(address arg1) with:
                         gas gas_remaining wei
                        args payment[arg1].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < payment[arg1].field_768:
                        emit PaymentFailure(arg1);
                        if uint64(s):
                        _18072 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_18072] = 21
                        mem[_18072 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        if block.timestamp > test266151307():
                            _18163 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 21
                            mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                            idx = 32
                            while idx < 21:
                                mem[idx + _18163 + 68] = mem[idx + _18072 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_18163 + 68] = mem[_18163 + 79 len 21]
                            revert with memory
                              from mem[64]
                               len _18163 + -mem[64] + 100
                        mem[0] = arg1
                        mem[32] = 4
                        if payment[arg1].field_1216 >= payment[arg1].field_1152:
                            if test266151307() > uint64(block.timestamp):
                                _19052 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_19052] = 28
                                mem[_19052 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                                _19053 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 28
                                mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                                idx = 32
                                while idx < 28:
                                    mem[idx + _19053 + 68] = mem[idx + _19052 + 32]
                                    _17298 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_17298] = 21
                                    mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                    idx = idx + 32
                                    continue 
                                mem[_19053 + 68] = mem[_19053 + 72 len 28]
                                revert with memory
                                  from mem[64]
                                   len _19053 + -mem[64] + 100
                            _19056 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_19056] = 27
                            mem[_19056 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                            _19057 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 27
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                            idx = 32
                            while idx < 27:
                                mem[idx + _19057 + 68] = mem[idx + _19056 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_19057 + 68] = mem[_19057 + 73 len 27]
                            revert with memory
                              from mem[64]
                               len _19057 + -mem[64] + 100
                        _18744 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_18744] = 19
                        mem[_18744 + 32] = 'MATH64_MUL_OVERFLOW'
                        if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
                            _18887 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 19
                            mem[mem[64] + 68] = 'MATH64_MUL_OVERFLOW'
                            idx = 32
                            while idx < 19:
                                mem[idx + _18887 + 68] = mem[idx + _18744 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_18887 + 68] = mem[_18887 + 81 len 19]
                            revert with memory
                              from mem[64]
                               len _18887 + -mem[64] + 100
                        _19219 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_19219] = 19
                        mem[_19219 + 32] = 'MATH64_ADD_OVERFLOW'
                        if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
                            _19398 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 19
                            mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                            idx = 32
                            while idx < 19:
                                mem[idx + _19398 + 68] = mem[idx + _19219 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_19398 + 68] = mem[_19398 + 81 len 19]
                            revert with memory
                              from mem[64]
                               len _19398 + -mem[64] + 100
                        if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) > uint64(block.timestamp):
                            _19960 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_19960] = 28
                            mem[_19960 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            _19961 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 28
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            idx = 32
                            while idx < 28:
                                mem[idx + _19961 + 68] = mem[idx + _19960 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_19961 + 68] = mem[_19961 + 72 len 28]
                            revert with memory
                              from mem[64]
                               len _19961 + -mem[64] + 100
                        _19964 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_19964] = 27
                        mem[_19964 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        _19965 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 27
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        idx = 32
                        while idx < 27:
                            mem[idx + _19965 + 68] = mem[idx + _19964 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_19965 + 68] = mem[_19965 + 73 len 27]
                        revert with memory
                          from mem[64]
                           len _19965 + -mem[64] + 100
                    payment[arg1].field_1216 = uint64(payment[arg1].field_1216 + 1)
                    _17582 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_17582] = 0
                    mem[0] = payment[arg1].field_0
                    mem[32] = sha3(sub_6abe602d - 1 << 192, 8) + 3
                    _17985 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_17985] = 17
                    mem[_17985 + 32] = 'MATH_ADD_OVERFLOW'
                    if payment[arg1].field_768 + periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0 < periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0:
                        _18069 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 17
                        mem[mem[64] + 68] = 'MATH_ADD_OVERFLOW'
                        idx = 32
                        while idx < 17:
                            mem[idx + _18069 + 68] = mem[idx + _17985 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_18069 + 68] = mem[_18069 + 83 len 17]
                        revert with memory
                          from mem[64]
                           len _18069 + -mem[64] + 100
                    periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0 += payment[arg1].field_768
                    sub_eaa7ec68++
                    mem[0] = sub_eaa7ec68
                    mem[32] = 6
                    transaction[stor7].field_0 = payment[arg1].field_0
                    transaction[stor7].field_256 = payment[arg1].field_256
                    transaction[stor7].field_416 = 0
                    transaction[stor7].field_512 = payment[arg1].field_768
                    transaction[stor7].field_768 = arg1
                    transaction[stor7].field_1024 = 0 or uint64(payment[arg1].field_1216 + 1) or Mask(192, 64, transaction[stor7].field_1024)
                    _18743 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_18743] = 21
                    mem[_18743 + 32] = 'UINT64_NUMBER_TOO_BIG'
                    if block.timestamp > test266151307():
                        _18884 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 21
                        mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                        idx = 32
                        while idx < 21:
                            mem[idx + _18884 + 68] = mem[idx + _18743 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_18884 + 68] = mem[_18884 + 79 len 21]
                        revert with memory
                          from mem[64]
                           len _18884 + -mem[64] + 100
                    transaction[stor7].field_1088 = uint64(block.timestamp)
                    transaction[stor7].field_1152 = uint64(sub_6abe602d - 1)
                    transaction[stor7].field_1216 = 0
                    mem[0] = uint64(sub_6abe602d - 1)
                    mem[32] = 8
                    if periodTokenStatement[stor9 - 1 << 192].field_256:
                        _19393 = mem[64]
                        mem[mem[64]] = 0
                        mem[mem[64] + 32] = payment[arg1].field_768
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 0
                        idx = 0
                        while idx < 0:
                            mem[idx + _19393 + 128] = mem[idx + _17582 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        emit NewTransaction(uint256 arg1, bool arg2, address arg3, uint256 arg4, string arg5):
                                            mem[mem[64] len _19393 + -mem[64] + 128],
                                            sub_eaa7ec68,
                                            payment[arg1].field_256,
                    else:
                        periodTokenStatement[stor9 - 1 << 192].field_256 = sub_eaa7ec68
                        _19580 = mem[64]
                        mem[mem[64]] = 0
                        mem[mem[64] + 32] = payment[arg1].field_768
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 0
                        idx = 0
                        while idx < 0:
                            mem[idx + _19580 + 128] = mem[idx + _17582 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        emit NewTransaction(uint256 arg1, bool arg2, address arg3, uint256 arg4, string arg5):
                                            mem[mem[64] len _19580 + -mem[64] + 128],
                                            sub_eaa7ec68,
                                            payment[arg1].field_256,
        else:
            _17322 = mem[64]
            mem[64] = mem[64] + 64
            mem[_17322] = 19
            mem[_17322 + 32] = 'MATH64_MUL_OVERFLOW'
            if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
                _17326 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 19
                mem[mem[64] + 68] = 'MATH64_MUL_OVERFLOW'
                idx = 32
                while idx < 19:
                    mem[idx + _17326 + 68] = mem[idx + _17322 + 32]
                    _17298 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_17298] = 21
                    mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                    idx = idx + 32
                    continue 
                mem[_17326 + 68] = mem[_17326 + 81 len 19]
                revert with memory
                  from mem[64]
                   len _17326 + -mem[64] + 100
            _17334 = mem[64]
            mem[64] = mem[64] + 64
            mem[_17334] = 19
            mem[_17334 + 32] = 'MATH64_ADD_OVERFLOW'
            if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
                _17340 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 19
                mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                idx = 32
                while idx < 19:
                    mem[idx + _17340 + 68] = mem[idx + _17334 + 32]
                    _17298 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_17298] = 21
                    mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                    idx = idx + 32
                    continue 
                mem[_17340 + 68] = mem[_17340 + 81 len 19]
                revert with memory
                  from mem[64]
                   len _17340 + -mem[64] + 100
            if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) > uint64(block.timestamp):
                if uint64(s):
                _17438 = mem[64]
                mem[64] = mem[64] + 64
                mem[_17438] = 21
                mem[_17438 + 32] = 'UINT64_NUMBER_TOO_BIG'
                if block.timestamp > test266151307():
                    _17460 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 21
                    mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                    idx = 32
                    while idx < 21:
                        mem[idx + _17460 + 68] = mem[idx + _17438 + 32]
                        _17298 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17298] = 21
                        mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_17460 + 68] = mem[_17460 + 79 len 21]
                    revert with memory
                      from mem[64]
                       len _17460 + -mem[64] + 100
                mem[0] = arg1
                mem[32] = 4
                if payment[arg1].field_1216 >= payment[arg1].field_1152:
                    if test266151307() > uint64(block.timestamp):
                        _17771 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17771] = 28
                        mem[_17771 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                        _17772 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 28
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                        idx = 32
                        while idx < 28:
                            mem[idx + _17772 + 68] = mem[idx + _17771 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_17772 + 68] = mem[_17772 + 72 len 28]
                        revert with memory
                          from mem[64]
                           len _17772 + -mem[64] + 100
                    _17775 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_17775] = 27
                    mem[_17775 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                    _17776 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 27
                    mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                    idx = 32
                    while idx < 27:
                        mem[idx + _17776 + 68] = mem[idx + _17775 + 32]
                        _17298 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17298] = 21
                        mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_17776 + 68] = mem[_17776 + 73 len 27]
                    revert with memory
                      from mem[64]
                       len _17776 + -mem[64] + 100
                _17660 = mem[64]
                mem[64] = mem[64] + 64
                mem[_17660] = 19
                mem[_17660 + 32] = 'MATH64_MUL_OVERFLOW'
                if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
                    _17720 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 19
                    mem[mem[64] + 68] = 'MATH64_MUL_OVERFLOW'
                    idx = 32
                    while idx < 19:
                        mem[idx + _17720 + 68] = mem[idx + _17660 + 32]
                        _17298 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17298] = 21
                        mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_17720 + 68] = mem[_17720 + 81 len 19]
                    revert with memory
                      from mem[64]
                       len _17720 + -mem[64] + 100
                _17862 = mem[64]
                mem[64] = mem[64] + 64
                mem[_17862] = 19
                mem[_17862 + 32] = 'MATH64_ADD_OVERFLOW'
                if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
                    _17952 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 19
                    mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                    idx = 32
                    while idx < 19:
                        mem[idx + _17952 + 68] = mem[idx + _17862 + 32]
                        _17298 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17298] = 21
                        mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_17952 + 68] = mem[_17952 + 81 len 19]
                    revert with memory
                      from mem[64]
                       len _17952 + -mem[64] + 100
                if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) > uint64(block.timestamp):
                    _18222 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_18222] = 28
                    mem[_18222 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                    _18223 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 28
                    mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                    idx = 32
                    while idx < 28:
                        mem[idx + _18223 + 68] = mem[idx + _18222 + 32]
                        _17298 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17298] = 21
                        mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_18223 + 68] = mem[_18223 + 72 len 28]
                    revert with memory
                      from mem[64]
                       len _18223 + -mem[64] + 100
                _18226 = mem[64]
                mem[64] = mem[64] + 64
                mem[_18226] = 27
                mem[_18226 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                _18227 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 27
                mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                idx = 32
                while idx < 27:
                    mem[idx + _18227 + 68] = mem[idx + _18226 + 32]
                    _17298 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_17298] = 21
                    mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                    idx = idx + 32
                    continue 
                mem[_18227 + 68] = mem[_18227 + 73 len 27]
                revert with memory
                  from mem[64]
                   len _18227 + -mem[64] + 100
            if uint64(s) >= 20:
                if uint64(s):
                _17463 = mem[64]
                mem[64] = mem[64] + 64
                mem[_17463] = 21
                mem[_17463 + 32] = 'UINT64_NUMBER_TOO_BIG'
                if block.timestamp > test266151307():
                    _17495 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 21
                    mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                    idx = 32
                    while idx < 21:
                        mem[idx + _17495 + 68] = mem[idx + _17463 + 32]
                        _17298 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17298] = 21
                        mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_17495 + 68] = mem[_17495 + 79 len 21]
                    revert with memory
                      from mem[64]
                       len _17495 + -mem[64] + 100
                mem[0] = arg1
                mem[32] = 4
                if payment[arg1].field_1216 >= payment[arg1].field_1152:
                    if test266151307() > uint64(block.timestamp):
                        _17868 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17868] = 28
                        mem[_17868 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                        _17869 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 28
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                        idx = 32
                        while idx < 28:
                            mem[idx + _17869 + 68] = mem[idx + _17868 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_17869 + 68] = mem[_17869 + 72 len 28]
                        revert with memory
                          from mem[64]
                           len _17869 + -mem[64] + 100
                    _17872 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_17872] = 27
                    mem[_17872 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                    _17873 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 27
                    mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                    idx = 32
                    while idx < 27:
                        mem[idx + _17873 + 68] = mem[idx + _17872 + 32]
                        _17298 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17298] = 21
                        mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_17873 + 68] = mem[_17873 + 73 len 27]
                    revert with memory
                      from mem[64]
                       len _17873 + -mem[64] + 100
                _17723 = mem[64]
                mem[64] = mem[64] + 64
                mem[_17723] = 19
                mem[_17723 + 32] = 'MATH64_MUL_OVERFLOW'
                if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
                    _17779 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 19
                    mem[mem[64] + 68] = 'MATH64_MUL_OVERFLOW'
                    idx = 32
                    while idx < 19:
                        mem[idx + _17779 + 68] = mem[idx + _17723 + 32]
                        _17298 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17298] = 21
                        mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_17779 + 68] = mem[_17779 + 81 len 19]
                    revert with memory
                      from mem[64]
                       len _17779 + -mem[64] + 100
                _17961 = mem[64]
                mem[64] = mem[64] + 64
                mem[_17961] = 19
                mem[_17961 + 32] = 'MATH64_ADD_OVERFLOW'
                if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
                    _18039 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 19
                    mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                    idx = 32
                    while idx < 19:
                        mem[idx + _18039 + 68] = mem[idx + _17961 + 32]
                        _17298 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17298] = 21
                        mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_18039 + 68] = mem[_18039 + 81 len 19]
                    revert with memory
                      from mem[64]
                       len _18039 + -mem[64] + 100
                if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) > uint64(block.timestamp):
                    _18348 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_18348] = 28
                    mem[_18348 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                    _18349 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 28
                    mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                    idx = 32
                    while idx < 28:
                        mem[idx + _18349 + 68] = mem[idx + _18348 + 32]
                        _17298 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17298] = 21
                        mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_18349 + 68] = mem[_18349 + 72 len 28]
                    revert with memory
                      from mem[64]
                       len _18349 + -mem[64] + 100
                _18352 = mem[64]
                mem[64] = mem[64] + 64
                mem[_18352] = 27
                mem[_18352 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                _18353 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 27
                mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                idx = 32
                while idx < 27:
                    mem[idx + _18353 + 68] = mem[idx + _18352 + 32]
                    _17298 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_17298] = 21
                    mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                    idx = idx + 32
                    continue 
                mem[_18353 + 68] = mem[_18353 + 73 len 27]
                revert with memory
                  from mem[64]
                   len _18353 + -mem[64] + 100
            mem[0] = payment[arg1].field_0
            mem[32] = 3
            if not stor3[stor4[arg1].field_0]:
                if -1 < payment[arg1].field_768:
                    emit PaymentFailure(arg1);
                    if uint64(s):
                    _17966 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_17966] = 21
                    mem[_17966 + 32] = 'UINT64_NUMBER_TOO_BIG'
                    if block.timestamp > test266151307():
                        _18048 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 21
                        mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                        idx = 32
                        while idx < 21:
                            mem[idx + _18048 + 68] = mem[idx + _17966 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_18048 + 68] = mem[_18048 + 79 len 21]
                        revert with memory
                          from mem[64]
                           len _18048 + -mem[64] + 100
                    mem[0] = arg1
                    mem[32] = 4
                    if payment[arg1].field_1216 >= payment[arg1].field_1152:
                        if test266151307() > uint64(block.timestamp):
                            _18847 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_18847] = 28
                            mem[_18847 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            _18848 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 28
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            idx = 32
                            while idx < 28:
                                mem[idx + _18848 + 68] = mem[idx + _18847 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_18848 + 68] = mem[_18848 + 72 len 28]
                            revert with memory
                              from mem[64]
                               len _18848 + -mem[64] + 100
                        _18851 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_18851] = 27
                        mem[_18851 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        _18852 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 27
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        idx = 32
                        while idx < 27:
                            mem[idx + _18852 + 68] = mem[idx + _18851 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_18852 + 68] = mem[_18852 + 73 len 27]
                        revert with memory
                          from mem[64]
                           len _18852 + -mem[64] + 100
                    _18586 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_18586] = 19
                    mem[_18586 + 32] = 'MATH64_MUL_OVERFLOW'
                    if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
                        _18715 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 19
                        mem[mem[64] + 68] = 'MATH64_MUL_OVERFLOW'
                        idx = 32
                        while idx < 19:
                            mem[idx + _18715 + 68] = mem[idx + _18586 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_18715 + 68] = mem[_18715 + 81 len 19]
                        revert with memory
                          from mem[64]
                           len _18715 + -mem[64] + 100
                    _19020 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_19020] = 19
                    mem[_19020 + 32] = 'MATH64_ADD_OVERFLOW'
                    if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
                        _19168 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 19
                        mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                        idx = 32
                        while idx < 19:
                            mem[idx + _19168 + 68] = mem[idx + _19020 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_19168 + 68] = mem[_19168 + 81 len 19]
                        revert with memory
                          from mem[64]
                           len _19168 + -mem[64] + 100
                    if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) > uint64(block.timestamp):
                        _19718 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_19718] = 28
                        mem[_19718 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                        _19719 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 28
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                        idx = 32
                        while idx < 28:
                            mem[idx + _19719 + 68] = mem[idx + _19718 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_19719 + 68] = mem[_19719 + 72 len 28]
                        revert with memory
                          from mem[64]
                           len _19719 + -mem[64] + 100
                    _19722 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_19722] = 27
                    mem[_19722 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                    _19723 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 27
                    mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                    idx = 32
                    while idx < 27:
                        mem[idx + _19723 + 68] = mem[idx + _19722 + 32]
                        _17298 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17298] = 21
                        mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_19723 + 68] = mem[_19723 + 73 len 27]
                    revert with memory
                      from mem[64]
                       len _19723 + -mem[64] + 100
                require ext_code.size(address(vaultAddress))
                call address(vaultAddress).balance(address arg1) with:
                     gas gas_remaining wei
                    args payment[arg1].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < payment[arg1].field_768:
                    emit PaymentFailure(arg1);
                    if uint64(s):
                    _18252 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_18252] = 21
                    mem[_18252 + 32] = 'UINT64_NUMBER_TOO_BIG'
                    if block.timestamp > test266151307():
                        _18369 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 21
                        mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                        idx = 32
                        while idx < 21:
                            mem[idx + _18369 + 68] = mem[idx + _18252 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_18369 + 68] = mem[_18369 + 79 len 21]
                        revert with memory
                          from mem[64]
                           len _18369 + -mem[64] + 100
                    mem[0] = arg1
                    mem[32] = 4
                    if payment[arg1].field_1216 >= payment[arg1].field_1152:
                        if test266151307() > uint64(block.timestamp):
                            _19357 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_19357] = 28
                            mem[_19357 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            _19358 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 28
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            idx = 32
                            while idx < 28:
                                mem[idx + _19358 + 68] = mem[idx + _19357 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_19358 + 68] = mem[_19358 + 72 len 28]
                            revert with memory
                              from mem[64]
                               len _19358 + -mem[64] + 100
                        _19361 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_19361] = 27
                        mem[_19361 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        _19362 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 27
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        idx = 32
                        while idx < 27:
                            mem[idx + _19362 + 68] = mem[idx + _19361 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_19362 + 68] = mem[_19362 + 73 len 27]
                        revert with memory
                          from mem[64]
                           len _19362 + -mem[64] + 100
                    _19026 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_19026] = 19
                    mem[_19026 + 32] = 'MATH64_MUL_OVERFLOW'
                    if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
                        _19180 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 19
                        mem[mem[64] + 68] = 'MATH64_MUL_OVERFLOW'
                        idx = 32
                        while idx < 19:
                            mem[idx + _19180 + 68] = mem[idx + _19026 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_19180 + 68] = mem[_19180 + 81 len 19]
                        revert with memory
                          from mem[64]
                           len _19180 + -mem[64] + 100
                    _19557 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_19557] = 19
                    mem[_19557 + 32] = 'MATH64_ADD_OVERFLOW'
                    if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
                        _19735 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 19
                        mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                        idx = 32
                        while idx < 19:
                            mem[idx + _19735 + 68] = mem[idx + _19557 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_19735 + 68] = mem[_19735 + 81 len 19]
                        revert with memory
                          from mem[64]
                           len _19735 + -mem[64] + 100
                    if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) > uint64(block.timestamp):
                        _20281 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_20281] = 28
                        mem[_20281 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                        _20282 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 28
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                        idx = 32
                        while idx < 28:
                            mem[idx + _20282 + 68] = mem[idx + _20281 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_20282 + 68] = mem[_20282 + 72 len 28]
                        revert with memory
                          from mem[64]
                           len _20282 + -mem[64] + 100
                    _20285 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_20285] = 27
                    mem[_20285 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                    _20286 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 27
                    mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                    idx = 32
                    while idx < 27:
                        mem[idx + _20286 + 68] = mem[idx + _20285 + 32]
                        _17298 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17298] = 21
                        mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_20286 + 68] = mem[_20286 + 73 len 27]
                    revert with memory
                      from mem[64]
                       len _20286 + -mem[64] + 100
                payment[arg1].field_1216 = uint64(payment[arg1].field_1216 + 1)
                _17668 = mem[64]
                mem[64] = mem[64] + 32
                mem[_17668] = 0
                mem[0] = payment[arg1].field_0
                mem[32] = sha3(sub_6abe602d - 1 << 192, 8) + 3
                _18144 = mem[64]
                mem[64] = mem[64] + 64
                mem[_18144] = 17
                mem[_18144 + 32] = 'MATH_ADD_OVERFLOW'
                if payment[arg1].field_768 + periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0 < periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0:
                    _18249 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 17
                    mem[mem[64] + 68] = 'MATH_ADD_OVERFLOW'
                    idx = 32
                    while idx < 17:
                        mem[idx + _18249 + 68] = mem[idx + _18144 + 32]
                        _17298 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17298] = 21
                        mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_18249 + 68] = mem[_18249 + 83 len 17]
                    revert with memory
                      from mem[64]
                       len _18249 + -mem[64] + 100
                periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0 += payment[arg1].field_768
                sub_eaa7ec68++
                mem[0] = sub_eaa7ec68
                mem[32] = 6
                transaction[stor7].field_0 = payment[arg1].field_0
                transaction[stor7].field_256 = payment[arg1].field_256
                transaction[stor7].field_416 = 0
                transaction[stor7].field_512 = payment[arg1].field_768
                transaction[stor7].field_768 = arg1
                transaction[stor7].field_1024 = 0 or uint64(payment[arg1].field_1216 + 1) or Mask(192, 64, transaction[stor7].field_1024)
                _19025 = mem[64]
                mem[64] = mem[64] + 64
                mem[_19025] = 21
                mem[_19025 + 32] = 'UINT64_NUMBER_TOO_BIG'
                if block.timestamp > test266151307():
                    _19177 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 21
                    mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                    idx = 32
                    while idx < 21:
                        mem[idx + _19177 + 68] = mem[idx + _19025 + 32]
                        _17298 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17298] = 21
                        mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    mem[_19177 + 68] = mem[_19177 + 79 len 21]
                    revert with memory
                      from mem[64]
                       len _19177 + -mem[64] + 100
                transaction[stor7].field_1088 = uint64(block.timestamp)
                transaction[stor7].field_1152 = uint64(sub_6abe602d - 1)
                transaction[stor7].field_1216 = 0
                mem[0] = uint64(sub_6abe602d - 1)
                mem[32] = 8
                if periodTokenStatement[stor9 - 1 << 192].field_256:
                    _19730 = mem[64]
                    mem[mem[64]] = 0
                    mem[mem[64] + 32] = payment[arg1].field_768
                    mem[mem[64] + 64] = 96
                    mem[mem[64] + 96] = 0
                    idx = 0
                    while idx < 0:
                        mem[idx + _19730 + 128] = mem[idx + _17668 + 32]
                        _17298 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17298] = 21
                        mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    emit NewTransaction(uint256 arg1, bool arg2, address arg3, uint256 arg4, string arg5):
                                        mem[mem[64] len _19730 + -mem[64] + 128],
                                        sub_eaa7ec68,
                                        payment[arg1].field_256,
                else:
                    periodTokenStatement[stor9 - 1 << 192].field_256 = sub_eaa7ec68
                    _19928 = mem[64]
                    mem[mem[64]] = 0
                    mem[mem[64] + 32] = payment[arg1].field_768
                    mem[mem[64] + 64] = 96
                    mem[mem[64] + 96] = 0
                    idx = 0
                    while idx < 0:
                        mem[idx + _19928 + 128] = mem[idx + _17668 + 32]
                        _17298 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17298] = 21
                        mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        idx = idx + 32
                        continue 
                    emit NewTransaction(uint256 arg1, bool arg2, address arg3, uint256 arg4, string arg5):
                                        mem[mem[64] len _19928 + -mem[64] + 128],
                                        sub_eaa7ec68,
                                        payment[arg1].field_256,
            else:
                mem[0] = payment[arg1].field_0
                mem[32] = sha3(sub_6abe602d - 1 << 192, 8) + 3
                if periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0 < stor2[stor4[arg1].field_0]:
                    if stor2[stor4[arg1].field_0] - periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0 < payment[arg1].field_768:
                        emit PaymentFailure(arg1);
                        if uint64(s):
                        _18140 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_18140] = 21
                        mem[_18140 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        if block.timestamp > test266151307():
                            _18241 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 21
                            mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                            idx = 32
                            while idx < 21:
                                mem[idx + _18241 + 68] = mem[idx + _18140 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_18241 + 68] = mem[_18241 + 79 len 21]
                            revert with memory
                              from mem[64]
                               len _18241 + -mem[64] + 100
                        mem[0] = arg1
                        mem[32] = 4
                        if payment[arg1].field_1216 >= payment[arg1].field_1152:
                            if test266151307() > uint64(block.timestamp):
                                _19149 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_19149] = 28
                                mem[_19149 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                                _19150 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 28
                                mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                                idx = 32
                                while idx < 28:
                                    mem[idx + _19150 + 68] = mem[idx + _19149 + 32]
                                    _17298 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_17298] = 21
                                    mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                    idx = idx + 32
                                    continue 
                                mem[_19150 + 68] = mem[_19150 + 72 len 28]
                                revert with memory
                                  from mem[64]
                                   len _19150 + -mem[64] + 100
                            _19153 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_19153] = 27
                            mem[_19153 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                            _19154 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 27
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                            idx = 32
                            while idx < 27:
                                mem[idx + _19154 + 68] = mem[idx + _19153 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_19154 + 68] = mem[_19154 + 73 len 27]
                            revert with memory
                              from mem[64]
                               len _19154 + -mem[64] + 100
                        _18834 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_18834] = 19
                        mem[_18834 + 32] = 'MATH64_MUL_OVERFLOW'
                        if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
                            _19006 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 19
                            mem[mem[64] + 68] = 'MATH64_MUL_OVERFLOW'
                            idx = 32
                            while idx < 19:
                                mem[idx + _19006 + 68] = mem[idx + _18834 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_19006 + 68] = mem[_19006 + 81 len 19]
                            revert with memory
                              from mem[64]
                               len _19006 + -mem[64] + 100
                        _19328 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_19328] = 19
                        mem[_19328 + 32] = 'MATH64_ADD_OVERFLOW'
                        if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
                            _19524 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 19
                            mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                            idx = 32
                            while idx < 19:
                                mem[idx + _19524 + 68] = mem[idx + _19328 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_19524 + 68] = mem[_19524 + 81 len 19]
                            revert with memory
                              from mem[64]
                               len _19524 + -mem[64] + 100
                        if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) > uint64(block.timestamp):
                            _20064 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_20064] = 28
                            mem[_20064 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            _20065 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 28
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            idx = 32
                            while idx < 28:
                                mem[idx + _20065 + 68] = mem[idx + _20064 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_20065 + 68] = mem[_20065 + 72 len 28]
                            revert with memory
                              from mem[64]
                               len _20065 + -mem[64] + 100
                        _20068 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_20068] = 27
                        mem[_20068 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        _20069 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 27
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        idx = 32
                        while idx < 27:
                            mem[idx + _20069 + 68] = mem[idx + _20068 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_20069 + 68] = mem[_20069 + 73 len 27]
                        revert with memory
                          from mem[64]
                           len _20069 + -mem[64] + 100
                    require ext_code.size(address(vaultAddress))
                    call address(vaultAddress).balance(address arg1) with:
                         gas gas_remaining wei
                        args payment[arg1].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < payment[arg1].field_768:
                        emit PaymentFailure(arg1);
                        if uint64(s):
                        _18462 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_18462] = 21
                        mem[_18462 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        if block.timestamp > test266151307():
                            _18577 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 21
                            mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                            idx = 32
                            while idx < 21:
                                mem[idx + _18577 + 68] = mem[idx + _18462 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_18577 + 68] = mem[_18577 + 79 len 21]
                            revert with memory
                              from mem[64]
                               len _18577 + -mem[64] + 100
                        mem[0] = arg1
                        mem[32] = 4
                        if payment[arg1].field_1216 >= payment[arg1].field_1152:
                            if test266151307() > uint64(block.timestamp):
                                _19695 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_19695] = 28
                                mem[_19695 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                                _19696 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 28
                                mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                                idx = 32
                                while idx < 28:
                                    mem[idx + _19696 + 68] = mem[idx + _19695 + 32]
                                    _17298 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_17298] = 21
                                    mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                    idx = idx + 32
                                    continue 
                                mem[_19696 + 68] = mem[_19696 + 72 len 28]
                                revert with memory
                                  from mem[64]
                                   len _19696 + -mem[64] + 100
                            _19699 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_19699] = 27
                            mem[_19699 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                            _19700 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 27
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                            idx = 32
                            while idx < 27:
                                mem[idx + _19700 + 68] = mem[idx + _19699 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_19700 + 68] = mem[_19700 + 73 len 27]
                            revert with memory
                              from mem[64]
                               len _19700 + -mem[64] + 100
                        _19334 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_19334] = 19
                        mem[_19334 + 32] = 'MATH64_MUL_OVERFLOW'
                        if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
                            _19536 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 19
                            mem[mem[64] + 68] = 'MATH64_MUL_OVERFLOW'
                            idx = 32
                            while idx < 19:
                                mem[idx + _19536 + 68] = mem[idx + _19334 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_19536 + 68] = mem[_19536 + 81 len 19]
                            revert with memory
                              from mem[64]
                               len _19536 + -mem[64] + 100
                        _19902 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_19902] = 19
                        mem[_19902 + 32] = 'MATH64_ADD_OVERFLOW'
                        if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
                            _20081 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 19
                            mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                            idx = 32
                            while idx < 19:
                                mem[idx + _20081 + 68] = mem[idx + _19902 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_20081 + 68] = mem[_20081 + 81 len 19]
                            revert with memory
                              from mem[64]
                               len _20081 + -mem[64] + 100
                        if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) > uint64(block.timestamp):
                            _20507 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_20507] = 28
                            mem[_20507 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            _20508 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 28
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            idx = 32
                            while idx < 28:
                                mem[idx + _20508 + 68] = mem[idx + _20507 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_20508 + 68] = mem[_20508 + 72 len 28]
                            revert with memory
                              from mem[64]
                               len _20508 + -mem[64] + 100
                        _20511 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_20511] = 27
                        mem[_20511 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        _20512 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 27
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        idx = 32
                        while idx < 27:
                            mem[idx + _20512 + 68] = mem[idx + _20511 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_20512 + 68] = mem[_20512 + 73 len 27]
                        revert with memory
                          from mem[64]
                           len _20512 + -mem[64] + 100
                    payment[arg1].field_1216 = uint64(payment[arg1].field_1216 + 1)
                    _17782 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_17782] = 0
                    mem[0] = payment[arg1].field_0
                    mem[32] = sha3(sub_6abe602d - 1 << 192, 8) + 3
                    _18361 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_18361] = 17
                    mem[_18361 + 32] = 'MATH_ADD_OVERFLOW'
                    if payment[arg1].field_768 + periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0 < periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0:
                        _18459 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 17
                        mem[mem[64] + 68] = 'MATH_ADD_OVERFLOW'
                        idx = 32
                        while idx < 17:
                            mem[idx + _18459 + 68] = mem[idx + _18361 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_18459 + 68] = mem[_18459 + 83 len 17]
                        revert with memory
                          from mem[64]
                           len _18459 + -mem[64] + 100
                    periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0 += payment[arg1].field_768
                    sub_eaa7ec68++
                    mem[0] = sub_eaa7ec68
                    mem[32] = 6
                    transaction[stor7].field_0 = payment[arg1].field_0
                    transaction[stor7].field_256 = payment[arg1].field_256
                    transaction[stor7].field_416 = 0
                    transaction[stor7].field_512 = payment[arg1].field_768
                    transaction[stor7].field_768 = arg1
                    transaction[stor7].field_1024 = 0 or uint64(payment[arg1].field_1216 + 1) or Mask(192, 64, transaction[stor7].field_1024)
                    _19333 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_19333] = 21
                    mem[_19333 + 32] = 'UINT64_NUMBER_TOO_BIG'
                    if block.timestamp > test266151307():
                        _19533 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 21
                        mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                        idx = 32
                        while idx < 21:
                            mem[idx + _19533 + 68] = mem[idx + _19333 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_19533 + 68] = mem[_19533 + 79 len 21]
                        revert with memory
                          from mem[64]
                           len _19533 + -mem[64] + 100
                    transaction[stor7].field_1088 = uint64(block.timestamp)
                    transaction[stor7].field_1152 = uint64(sub_6abe602d - 1)
                    transaction[stor7].field_1216 = 0
                    mem[0] = uint64(sub_6abe602d - 1)
                    mem[32] = 8
                    if periodTokenStatement[stor9 - 1 << 192].field_256:
                        _20076 = mem[64]
                        mem[mem[64]] = 0
                        mem[mem[64] + 32] = payment[arg1].field_768
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 0
                        idx = 0
                        while idx < 0:
                            mem[idx + _20076 + 128] = mem[idx + _17782 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        emit NewTransaction(uint256 arg1, bool arg2, address arg3, uint256 arg4, string arg5):
                                            mem[mem[64] len _20076 + -mem[64] + 128],
                                            sub_eaa7ec68,
                                            payment[arg1].field_256,
                    else:
                        periodTokenStatement[stor9 - 1 << 192].field_256 = sub_eaa7ec68
                        _20236 = mem[64]
                        mem[mem[64]] = 0
                        mem[mem[64] + 32] = payment[arg1].field_768
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 0
                        idx = 0
                        while idx < 0:
                            mem[idx + _20236 + 128] = mem[idx + _17782 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        emit NewTransaction(uint256 arg1, bool arg2, address arg3, uint256 arg4, string arg5):
                                            mem[mem[64] len _20236 + -mem[64] + 128],
                                            sub_eaa7ec68,
                                            payment[arg1].field_256,
                else:
                    if 0 < payment[arg1].field_768:
                        emit PaymentFailure(arg1);
                        if uint64(s):
                        _18244 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_18244] = 21
                        mem[_18244 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        if block.timestamp > test266151307():
                            _18362 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 21
                            mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                            idx = 32
                            while idx < 21:
                                mem[idx + _18362 + 68] = mem[idx + _18244 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_18362 + 68] = mem[_18362 + 79 len 21]
                            revert with memory
                              from mem[64]
                               len _18362 + -mem[64] + 100
                        mem[0] = arg1
                        mem[32] = 4
                        if payment[arg1].field_1216 >= payment[arg1].field_1152:
                            if test266151307() > uint64(block.timestamp):
                                _19337 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_19337] = 28
                                mem[_19337 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                                _19338 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 28
                                mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                                idx = 32
                                while idx < 28:
                                    mem[idx + _19338 + 68] = mem[idx + _19337 + 32]
                                    _17298 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_17298] = 21
                                    mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                    idx = idx + 32
                                    continue 
                                mem[_19338 + 68] = mem[_19338 + 72 len 28]
                                revert with memory
                                  from mem[64]
                                   len _19338 + -mem[64] + 100
                            _19341 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_19341] = 27
                            mem[_19341 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                            _19342 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 27
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                            idx = 32
                            while idx < 27:
                                mem[idx + _19342 + 68] = mem[idx + _19341 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_19342 + 68] = mem[_19342 + 73 len 27]
                            revert with memory
                              from mem[64]
                               len _19342 + -mem[64] + 100
                        _19014 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_19014] = 19
                        mem[_19014 + 32] = 'MATH64_MUL_OVERFLOW'
                        if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
                            _19160 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 19
                            mem[mem[64] + 68] = 'MATH64_MUL_OVERFLOW'
                            idx = 32
                            while idx < 19:
                                mem[idx + _19160 + 68] = mem[idx + _19014 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_19160 + 68] = mem[_19160 + 81 len 19]
                            revert with memory
                              from mem[64]
                               len _19160 + -mem[64] + 100
                        _19539 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_19539] = 19
                        mem[_19539 + 32] = 'MATH64_ADD_OVERFLOW'
                        if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
                            _19703 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 19
                            mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                            idx = 32
                            while idx < 19:
                                mem[idx + _19703 + 68] = mem[idx + _19539 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_19703 + 68] = mem[_19703 + 81 len 19]
                            revert with memory
                              from mem[64]
                               len _19703 + -mem[64] + 100
                        if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) > uint64(block.timestamp):
                            _20248 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_20248] = 28
                            mem[_20248 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            _20249 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 28
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            idx = 32
                            while idx < 28:
                                mem[idx + _20249 + 68] = mem[idx + _20248 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_20249 + 68] = mem[_20249 + 72 len 28]
                            revert with memory
                              from mem[64]
                               len _20249 + -mem[64] + 100
                        _20252 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_20252] = 27
                        mem[_20252 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        _20253 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 27
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        idx = 32
                        while idx < 27:
                            mem[idx + _20253 + 68] = mem[idx + _20252 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_20253 + 68] = mem[_20253 + 73 len 27]
                        revert with memory
                          from mem[64]
                           len _20253 + -mem[64] + 100
                    require ext_code.size(address(vaultAddress))
                    call address(vaultAddress).balance(address arg1) with:
                         gas gas_remaining wei
                        args payment[arg1].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < payment[arg1].field_768:
                        emit PaymentFailure(arg1);
                        if uint64(s):
                        _18585 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_18585] = 21
                        mem[_18585 + 32] = 'UINT64_NUMBER_TOO_BIG'
                        if block.timestamp > test266151307():
                            _18712 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 21
                            mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                            idx = 32
                            while idx < 21:
                                mem[idx + _18712 + 68] = mem[idx + _18585 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_18712 + 68] = mem[_18712 + 79 len 21]
                            revert with memory
                              from mem[64]
                               len _18712 + -mem[64] + 100
                        mem[0] = arg1
                        mem[32] = 4
                        if payment[arg1].field_1216 >= payment[arg1].field_1152:
                            if test266151307() > uint64(block.timestamp):
                                _19916 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_19916] = 28
                                mem[_19916 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                                _19917 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 28
                                mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                                idx = 32
                                while idx < 28:
                                    mem[idx + _19917 + 68] = mem[idx + _19916 + 32]
                                    _17298 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_17298] = 21
                                    mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                    idx = idx + 32
                                    continue 
                                mem[_19917 + 68] = mem[_19917 + 72 len 28]
                                revert with memory
                                  from mem[64]
                                   len _19917 + -mem[64] + 100
                            _19920 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_19920] = 27
                            mem[_19920 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                            _19921 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 27
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                            idx = 32
                            while idx < 27:
                                mem[idx + _19921 + 68] = mem[idx + _19920 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_19921 + 68] = mem[_19921 + 73 len 27]
                            revert with memory
                              from mem[64]
                               len _19921 + -mem[64] + 100
                        _19545 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_19545] = 19
                        mem[_19545 + 32] = 'MATH64_MUL_OVERFLOW'
                        if payment[arg1].field_1088 * payment[arg1].field_1216 >= 18446744073709551616:
                            _19715 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 19
                            mem[mem[64] + 68] = 'MATH64_MUL_OVERFLOW'
                            idx = 32
                            while idx < 19:
                                mem[idx + _19715 + 68] = mem[idx + _19545 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_19715 + 68] = mem[_19715 + 81 len 19]
                            revert with memory
                              from mem[64]
                               len _19715 + -mem[64] + 100
                        _20100 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_20100] = 19
                        mem[_20100 + 32] = 'MATH64_ADD_OVERFLOW'
                        if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) < payment[arg1].field_1024:
                            _20265 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 19
                            mem[mem[64] + 68] = 'MATH64_ADD_OVERFLOW'
                            idx = 32
                            while idx < 19:
                                mem[idx + _20265 + 68] = mem[idx + _20100 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_20265 + 68] = mem[_20265 + 81 len 19]
                            revert with memory
                              from mem[64]
                               len _20265 + -mem[64] + 100
                        if uint64((payment[arg1].field_1088 * payment[arg1].field_1216) + payment[arg1].field_1024) > uint64(block.timestamp):
                            _20622 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_20622] = 28
                            mem[_20622 + 32] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            _20623 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 28
                            mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_TIME'
                            idx = 32
                            while idx < 28:
                                mem[idx + _20623 + 68] = mem[idx + _20622 + 32]
                                _17298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17298] = 21
                                mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                                idx = idx + 32
                                continue 
                            mem[_20623 + 68] = mem[_20623 + 72 len 28]
                            revert with memory
                              from mem[64]
                               len _20623 + -mem[64] + 100
                        _20626 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_20626] = 27
                        mem[_20626 + 32] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        _20627 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 27
                        mem[mem[64] + 68] = 'FINANCE_EXECUTE_PAYMENT_NUM'
                        idx = 32
                        while idx < 27:
                            mem[idx + _20627 + 68] = mem[idx + _20626 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_20627 + 68] = mem[_20627 + 73 len 27]
                        revert with memory
                          from mem[64]
                           len _20627 + -mem[64] + 100
                    payment[arg1].field_1216 = uint64(payment[arg1].field_1216 + 1)
                    _17876 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_17876] = 0
                    mem[0] = payment[arg1].field_0
                    mem[32] = sha3(sub_6abe602d - 1 << 192, 8) + 3
                    _18464 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_18464] = 17
                    mem[_18464 + 32] = 'MATH_ADD_OVERFLOW'
                    if payment[arg1].field_768 + periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0 < periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0:
                        _18582 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 17
                        mem[mem[64] + 68] = 'MATH_ADD_OVERFLOW'
                        idx = 32
                        while idx < 17:
                            mem[idx + _18582 + 68] = mem[idx + _18464 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_18582 + 68] = mem[_18582 + 83 len 17]
                        revert with memory
                          from mem[64]
                           len _18582 + -mem[64] + 100
                    periodTokenStatement[stor9 - 1 << 192][3][stor4[arg1].field_0].field_0 += payment[arg1].field_768
                    sub_eaa7ec68++
                    mem[0] = sub_eaa7ec68
                    mem[32] = 6
                    transaction[stor7].field_0 = payment[arg1].field_0
                    transaction[stor7].field_256 = payment[arg1].field_256
                    transaction[stor7].field_416 = 0
                    transaction[stor7].field_512 = payment[arg1].field_768
                    transaction[stor7].field_768 = arg1
                    transaction[stor7].field_1024 = 0 or uint64(payment[arg1].field_1216 + 1) or Mask(192, 64, transaction[stor7].field_1024)
                    _19544 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_19544] = 21
                    mem[_19544 + 32] = 'UINT64_NUMBER_TOO_BIG'
                    if block.timestamp > test266151307():
                        _19712 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 21
                        mem[mem[64] + 68] = 'UINT64_NUMBER_TOO_BIG'
                        idx = 32
                        while idx < 21:
                            mem[idx + _19712 + 68] = mem[idx + _19544 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        mem[_19712 + 68] = mem[_19712 + 79 len 21]
                        revert with memory
                          from mem[64]
                           len _19712 + -mem[64] + 100
                    transaction[stor7].field_1088 = uint64(block.timestamp)
                    transaction[stor7].field_1152 = uint64(sub_6abe602d - 1)
                    transaction[stor7].field_1216 = 0
                    mem[0] = uint64(sub_6abe602d - 1)
                    mem[32] = 8
                    if periodTokenStatement[stor9 - 1 << 192].field_256:
                        _20260 = mem[64]
                        mem[mem[64]] = 0
                        mem[mem[64] + 32] = payment[arg1].field_768
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 0
                        idx = 0
                        while idx < 0:
                            mem[idx + _20260 + 128] = mem[idx + _17876 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        emit NewTransaction(uint256 arg1, bool arg2, address arg3, uint256 arg4, string arg5):
                                            mem[mem[64] len _20260 + -mem[64] + 128],
                                            sub_eaa7ec68,
                                            payment[arg1].field_256,
                    else:
                        periodTokenStatement[stor9 - 1 << 192].field_256 = sub_eaa7ec68
                        _20412 = mem[64]
                        mem[mem[64]] = 0
                        mem[mem[64] + 32] = payment[arg1].field_768
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 0
                        idx = 0
                        while idx < 0:
                            mem[idx + _20412 + 128] = mem[idx + _17876 + 32]
                            _17298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_17298] = 21
                            mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
                            idx = idx + 32
                            continue 
                        emit NewTransaction(uint256 arg1, bool arg2, address arg3, uint256 arg4, string arg5):
                                            mem[mem[64] len _20412 + -mem[64] + 128],
                                            sub_eaa7ec68,
                                            payment[arg1].field_256,
        mem[mem[64]] = 0xbeabacc800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = payment[arg1].field_0
        mem[mem[64] + 36] = payment[arg1].field_256
        mem[mem[64] + 68] = payment[arg1].field_768
        require ext_code.size(address(vaultAddress))
        call address(vaultAddress).transfer(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args payment[arg1].field_0, payment[arg1].field_256, payment[arg1].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _17298 = mem[64]
        mem[64] = mem[64] + 64
        mem[_17298] = 21
        mem[_17298 + 32] = 'UINT64_NUMBER_TOO_BIG'
        s = s + 1
        continue 
    _17300 = mem[64]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[_17298]
    _17302 = mem[_17298]
    if 0 >= mem[_17298]:
        if not mem[_17298] % 32:
            revert with 0, 32, mem[mem[64] + 36 len mem[_17298] + 32]
        mem[floor32(mem[_17298]) + mem[64] + 68] = mem[floor32(mem[_17298]) + mem[64] + -(mem[_17298] % 32) + 100 len mem[_17298] % 32]
    else:
        mem[mem[64] + 68] = mem[_17298 + 32]
        mem[mem[64] + 100 len floor32(_17302 - 1)] = mem[_17298 + 64 len floor32(_17302 - 1)]
        if not _17302 % 32:
            revert with 0, 32, mem[mem[64] + 36 len _17302 + 32]
        mem[floor32(_17302) + mem[64] + 68] = mem[floor32(_17302) + mem[64] + -(_17302 % 32) + 100 len _17302 % 32]
    revert with memory
      from mem[64]
       len floor32(_17302) + _17300 + -mem[64] + 100
}



}
