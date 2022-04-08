contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor4;
address stor5;
address stor7; offset 8

function _fallback() {
    stor0 = msg.sender
    stor4 = code.data[14892 len 20]
    stor5 = code.data[14924 len 20]
    stor7 = code.data[14988 len 20]
    stor1 = code.data[14956 len 20]
    return code.data[188 len 14692]
}



// =====================  Runtime code  =====================


const MINIMUM_MANUAL_SIGN_PERIOD = (336 * 24 * 3600)


uint8 codeUpdateState; offset 160
uint32 stor0;
uint32 stor0; offset 168
address owner;
address optionsCalculatorAddress;
uint32 stor2;
uint256 stor2; offset 32
uint256 totalPoolOptions;
array of uint256 eSOPLegalWrapperIPFSHash;
address companyAddress;
address rootOfTrustAddress;
uint32 stor6;
uint256 stor6; offset 32
uint256 remainingPoolOptions;
uint8 esopState;
address employeesAddress; offset 8
uint256 totalExtraOptions;
uint32 conversionOfferedAt;
uint32 exerciseOptionsDeadline; offset 32
uint32 stor9; offset 224
address optionsConverterAddress; offset 64
mapping of address stor10;

function employees() {
    return employeesAddress
}

function exerciseOptionsDeadline() {
    return exerciseOptionsDeadline
}

function totalExtraOptions() {
    return totalExtraOptions
}

function esopState() {
    require esopState <= 2
    return esopState
}

function rootOfTrust() {
    return rootOfTrustAddress
}

function companyAddress() {
    return companyAddress
}

function optionsCalculator() {
    return optionsCalculatorAddress
}

function codeUpdateState() {
    require codeUpdateState <= 1
    return codeUpdateState
}

function owner() {
    return owner
}

function ESOPLegalWrapperIPFSHash() {
    return eSOPLegalWrapperIPFSHash[0 len eSOPLegalWrapperIPFSHash.length]
}

function conversionOfferedAt() {
    return conversionOfferedAt
}

function remainingPoolOptions() {
    return remainingPoolOptions
}

function optionsConverter() {
    return optionsConverterAddress
}

function totalPoolOptions() {
    return totalPoolOptions
}

function completeCodeUpdate() {
    require owner == msg.sender
    require codeUpdateState <= 1
    require codeUpdateState == 1
    require ext_code.size(employeesAddress)
    call employeesAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require owner == msg.sender
    require codeUpdateState <= 1
    require codeUpdateState == 1
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function mockTime(uint32 arg1) {
    require block.number <= 3316029
    uint32(stor0.field_168) = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function beginCodeUpdate() {
    require owner == msg.sender
    require codeUpdateState <= 1
    require not codeUpdateState
    codeUpdateState = 1
}

function cancelCodeUpdate() {
    require owner == msg.sender
    require codeUpdateState <= 1
    require codeUpdateState == 1
    codeUpdateState = 0
}

function currentTime() {
    require block.timestamp <= test266151307()
    if uint32(stor0.field_168) > 0:
        return uint32(stor0.field_168)
    return uint32(block.timestamp)
}

function calcEffectiveOptionsForEmployee(address arg1, uint32 arg2) {
    require ext_code.size(employeesAddress)
    call employeesAddress.hasEmployee(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0]
    require codeUpdateState <= 1
    require not codeUpdateState
    require ext_code.size(employeesAddress)
    call employeesAddress.getSerializedEmployee(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(optionsCalculatorAddress)
    call optionsCalculatorAddress.0x8b17ab2f with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0], ext_call.return_data[32 len 256], arg2 << 224, conversionOfferedAt, 0
    require ext_call.success
    return ext_call.return_data[0]
}

function allowEmployeeMigration(address arg1, address arg2) {
    require esopState <= 2
    require esopState == 1
    require ext_code.size(employeesAddress)
    call employeesAddress.hasEmployee(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0]
    require companyAddress == msg.sender
    require codeUpdateState <= 1
    require not codeUpdateState
    require arg2
    require ext_code.size(employeesAddress)
    call employeesAddress.getSerializedEmployee(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[224] <= 4
    if ext_call.return_data[224] == 2:
        stor10[address(arg1)] = arg2
        return 0
    require ext_call.return_data[224] <= 4
    if ext_call.return_data[224] == 3:
        stor10[address(arg1)] = arg2
        return 0
    emit ReturnCode(1);
    return 1
}

function openESOP(uint32 arg1, bytes arg2) {
    require companyAddress == msg.sender
    require esopState <= 2
    require not esopState
    require codeUpdateState <= 1
    require not codeUpdateState
    if arg1 > 1100000:
        emit ReturnCode(3);
        return 3
    if arg1 < 10000:
        emit ReturnCode(3);
        return 3
    uint32(stor2.field_0) = arg1
    Mask(224, 0, stor2.field_32) = 0
    uint32(stor6.field_0) = arg1
    Mask(224, 0, stor6.field_32) = 0
    eSOPLegalWrapperIPFSHash.length = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        eSOPLegalWrapperIPFSHash[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg2.length + 31) >> 5
    while eSOPLegalWrapperIPFSHash.length + 31 / 32 > idx:
        eSOPLegalWrapperIPFSHash[idx] = 0
        idx = idx + 1
        continue 
    esopState = 1
    emit ESOPOpened(companyAddress);
    return 0
}

function offerOptionsToEmployeeOnlyExtra(address arg1, uint32 arg2, uint32 arg3, uint32 arg4) {
    require esopState <= 2
    require esopState == 1
    require companyAddress == msg.sender
    require codeUpdateState <= 1
    require not codeUpdateState
    require ext_code.size(employeesAddress)
    call employeesAddress.hasEmployee(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[0]:
        emit ReturnCode(1);
        return 1
    require block.timestamp <= test266151307()
    if uint32(stor0.field_168) > 0:
        if arg3 < uint32(uint32(stor0.field_168) + (336 * 24 * 3600)):
            emit ReturnCode(2);
            return 2
    else:
        if arg3 < uint32(block.timestamp + (336 * 24 * 3600)):
            emit ReturnCode(2);
            return 2
    require ext_code.size(employeesAddress)
    call employeesAddress.0x73ece9c4 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2 << 224, arg3 << 224, 0, 0, 0, arg4 << 224, 0, 1
    require ext_call.success
    totalExtraOptions += arg4
    emit ESOPOffered(companyAddress, 0, arg4, arg1);
    return 0
}

function increaseEmployeeExtraOptions(address arg1, uint32 arg2) {
    require esopState <= 2
    require esopState == 1
    require companyAddress == msg.sender
    require codeUpdateState <= 1
    require not codeUpdateState
    require ext_code.size(employeesAddress)
    call employeesAddress.hasEmployee(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(employeesAddress)
    call employeesAddress.getSerializedEmployee(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[224] <= 4
    require ext_call.return_data[224] <= 4
    if ext_call.return_data[224] != 2:
        if ext_call.return_data[224] != 1:
            emit ReturnCode(1);
            return 1
    require ext_code.size(employeesAddress)
    call employeesAddress.0x73ece9c4 with:
         gas gas_remaining - 710 wei
        args address(arg1), ext_call.return_data[0] << 224, ext_call.return_data[32] << 224, ext_call.return_data[64] << 224, ext_call.return_data[96] << 224, ext_call.return_data[128] << 224, arg2 + ext_call.return_data[160] << 224, ext_call.return_data[192] << 224, uint8(ext_call.return_data[224])
    require ext_call.success
    totalExtraOptions += arg2
    emit ESOPOffered(companyAddress, 0, arg2, arg1);
    return 0
}

function employeeDenyExerciseOptions() {
    require esopState <= 2
    require esopState == 2
    require ext_code.size(employeesAddress)
    call employeesAddress.hasEmployee(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require codeUpdateState <= 1
    require not codeUpdateState
    require block.timestamp <= test266151307()
    if uint32(stor0.field_168) > 0:
        if uint32(stor0.field_168) > exerciseOptionsDeadline:
            emit ReturnCode(2);
            return 2
    else:
        if uint32(block.timestamp) > exerciseOptionsDeadline:
            emit ReturnCode(2);
            return 2
    require ext_code.size(employeesAddress)
    call employeesAddress.getSerializedEmployee(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[224] <= 4
    if ext_call.return_data[224] == 4:
        emit ReturnCode(1);
        return 1
    require ext_code.size(employeesAddress)
    call employeesAddress.0x2ed4a2c7 with:
         gas gas_remaining - 710 wei
        args msg.sender, 4
    require ext_call.success
    require ext_code.size(optionsConverterAddress)
    call optionsConverterAddress.exerciseOptions(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
         gas gas_remaining - 710 wei
        args 0
    require ext_call.success
    emit EmployeeOptionsExercised(address rg1, address rg2, uint32 rg3, bool rg4):
                                  0,
                                  msg.sender,
    return 0
}

function toggleEmployeeSuspension(address arg1, uint32 arg2) {
    require esopState <= 2
    require esopState == 1
    require companyAddress == msg.sender
    require ext_code.size(employeesAddress)
    call employeesAddress.hasEmployee(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0]
    require codeUpdateState <= 1
    require not codeUpdateState
    require ext_code.size(employeesAddress)
    call employeesAddress.getSerializedEmployee(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[224] <= 4
    if ext_call.return_data[224] != 2:
        emit ReturnCode(1);
        return 1
    if not ext_call.return_data[220 len 4]:
        emit SuspendEmployee(arg2, arg1);
        if ext_call.return_data[224] <= 4:
            if ext_code.size(employeesAddress):
                call employeesAddress.0x73ece9c4 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), ext_call.return_data[0] << 224, ext_call.return_data[32] << 224, ext_call.return_data[64] << 224, ext_call.return_data[96] << 224, ext_call.return_data[128] << 224, ext_call.return_data[160] << 224, arg2 << 224, uint8(ext_call.return_data[224])
                if ext_call.success:
                    return 0
    else:
        if ext_call.return_data[220 len 4] > arg2:
            emit ReturnCode(2);
            return 2
        emit ContinueSuspendedEmployee(arg2 << 224, uint32(arg2 - ext_call.return_data[192]), arg1);
        if ext_call.return_data[224] <= 4:
            if ext_code.size(employeesAddress):
                call employeesAddress.0x73ece9c4 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), arg2 - ext_call.return_data[192] + ext_call.return_data[0] << 224, ext_call.return_data[32] << 224, ext_call.return_data[64] << 224, ext_call.return_data[96] << 224, ext_call.return_data[128] << 224, ext_call.return_data[160] << 224, 0, uint8(ext_call.return_data[224])
                if ext_call.success:
                    return 0
    revert
}

function employeeExerciseOptions(bool arg1) {
    require esopState <= 2
    require esopState == 2
    require ext_code.size(employeesAddress)
    call employeesAddress.hasEmployee(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require codeUpdateState <= 1
    require not codeUpdateState
    require block.timestamp <= test266151307()
    if uint32(stor0.field_168) > 0:
        if uint32(stor0.field_168) > exerciseOptionsDeadline:
            emit ReturnCode(2);
            return 2
        require ext_code.size(employeesAddress)
        call employeesAddress.getSerializedEmployee(address rg1) with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        require ext_call.return_data[224] <= 4
        if ext_call.return_data[224] == 4:
            emit ReturnCode(1);
            return 1
        if not msg.sender:
            require ext_code.size(employeesAddress)
            call employeesAddress.0x2ed4a2c7 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 4
            require ext_call.success
            require ext_code.size(optionsConverterAddress)
            call optionsConverterAddress.exerciseOptions(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                 gas gas_remaining - 710 wei
                args msg.sender, 0, 0, 0, arg1
            require ext_call.success
            emit EmployeeOptionsExercised(msg.sender, 0, arg1, msg.sender);
        else:
            require ext_code.size(optionsCalculatorAddress)
            call optionsCalculatorAddress.0xec4bfdd4 with:
                 gas gas_remaining - 710 wei
                args ext_call.return_data[0], ext_call.return_data[32 len 256], uint32(stor0.field_0), conversionOfferedAt, not arg1
            require ext_call.success
            require ext_code.size(employeesAddress)
            call employeesAddress.0x2ed4a2c7 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 4
            require ext_call.success
            require ext_code.size(optionsConverterAddress)
            call optionsConverterAddress.exerciseOptions(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                 gas gas_remaining - 710 wei
                args msg.sender, ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], arg1
            require ext_call.success
            emit EmployeeOptionsExercised(msg.sender, ext_call.return_data[64] + ext_call.return_data[32] + ext_call.return_data[0] << 224, arg1, msg.sender);
    else:
        if uint32(block.timestamp) > exerciseOptionsDeadline:
            emit ReturnCode(2);
            return 2
        require ext_code.size(employeesAddress)
        call employeesAddress.getSerializedEmployee(address rg1) with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        require ext_call.return_data[224] <= 4
        if ext_call.return_data[224] == 4:
            emit ReturnCode(1);
            return 1
        if not msg.sender:
            require ext_code.size(employeesAddress)
            call employeesAddress.0x2ed4a2c7 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 4
            require ext_call.success
            require ext_code.size(optionsConverterAddress)
            call optionsConverterAddress.exerciseOptions(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                 gas gas_remaining - 710 wei
                args msg.sender, 0, 0, 0, arg1
            require ext_call.success
            emit EmployeeOptionsExercised(msg.sender, 0, arg1, msg.sender);
        else:
            require ext_code.size(optionsCalculatorAddress)
            call optionsCalculatorAddress.0xec4bfdd4 with:
                 gas gas_remaining - 710 wei
                args ext_call.return_data[0], ext_call.return_data[32 len 256], block.timestamp << 224, conversionOfferedAt, not arg1
            require ext_call.success
            require ext_code.size(employeesAddress)
            call employeesAddress.0x2ed4a2c7 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 4
            require ext_call.success
            require ext_code.size(optionsConverterAddress)
            call optionsConverterAddress.exerciseOptions(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                 gas gas_remaining - 710 wei
                args msg.sender, ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], arg1
            require ext_call.success
            emit EmployeeOptionsExercised(msg.sender, ext_call.return_data[64] + ext_call.return_data[32] + ext_call.return_data[0] << 224, arg1, msg.sender);
    return 0
}

function exerciseExpiredEmployeeOptions(address arg1, bool arg2) {
    require esopState <= 2
    require esopState == 2
    require companyAddress == msg.sender
    require ext_code.size(employeesAddress)
    call employeesAddress.hasEmployee(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0]
    require codeUpdateState <= 1
    require not codeUpdateState
    require block.timestamp <= test266151307()
    if uint32(stor0.field_168) > 0:
        if uint32(stor0.field_168) <= exerciseOptionsDeadline:
            emit ReturnCode(4);
            return 4
        require ext_code.size(employeesAddress)
        call employeesAddress.getSerializedEmployee(address rg1) with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        require ext_call.return_data[224] <= 4
        if ext_call.return_data[224] == 4:
            emit ReturnCode(1);
            return 1
        if not companyAddress:
            require ext_code.size(employeesAddress)
            call employeesAddress.0x2ed4a2c7 with:
                 gas gas_remaining - 710 wei
                args address(arg1), 4
            require ext_call.success
            require ext_code.size(optionsConverterAddress)
            call optionsConverterAddress.exerciseOptions(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                 gas gas_remaining - 710 wei
                args companyAddress, 0, 0, 0, not arg2
            require ext_call.success
            emit EmployeeOptionsExercised(companyAddress, 0, not arg2, arg1);
        else:
            require ext_code.size(optionsCalculatorAddress)
            call optionsCalculatorAddress.0xec4bfdd4 with:
                 gas gas_remaining - 710 wei
                args ext_call.return_data[0], ext_call.return_data[32 len 256], uint32(stor0.field_0), conversionOfferedAt, arg2
            require ext_call.success
            require ext_code.size(employeesAddress)
            call employeesAddress.0x2ed4a2c7 with:
                 gas gas_remaining - 710 wei
                args address(arg1), 4
            require ext_call.success
            require ext_code.size(optionsConverterAddress)
            call optionsConverterAddress.exerciseOptions(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                 gas gas_remaining - 710 wei
                args companyAddress, ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], not arg2
            require ext_call.success
            emit EmployeeOptionsExercised(companyAddress, ext_call.return_data[64] + ext_call.return_data[32] + ext_call.return_data[0] << 224, not arg2, arg1);
    else:
        if uint32(block.timestamp) <= exerciseOptionsDeadline:
            emit ReturnCode(4);
            return 4
        require ext_code.size(employeesAddress)
        call employeesAddress.getSerializedEmployee(address rg1) with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        require ext_call.return_data[224] <= 4
        if ext_call.return_data[224] == 4:
            emit ReturnCode(1);
            return 1
        if not companyAddress:
            require ext_code.size(employeesAddress)
            call employeesAddress.0x2ed4a2c7 with:
                 gas gas_remaining - 710 wei
                args address(arg1), 4
            require ext_call.success
            require ext_code.size(optionsConverterAddress)
            call optionsConverterAddress.exerciseOptions(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                 gas gas_remaining - 710 wei
                args companyAddress, 0, 0, 0, not arg2
            require ext_call.success
            emit EmployeeOptionsExercised(companyAddress, 0, not arg2, arg1);
        else:
            require ext_code.size(optionsCalculatorAddress)
            call optionsCalculatorAddress.0xec4bfdd4 with:
                 gas gas_remaining - 710 wei
                args ext_call.return_data[0], ext_call.return_data[32 len 256], block.timestamp << 224, conversionOfferedAt, arg2
            require ext_call.success
            require ext_code.size(employeesAddress)
            call employeesAddress.0x2ed4a2c7 with:
                 gas gas_remaining - 710 wei
                args address(arg1), 4
            require ext_call.success
            require ext_code.size(optionsConverterAddress)
            call optionsConverterAddress.exerciseOptions(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                 gas gas_remaining - 710 wei
                args companyAddress, ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], not arg2
            require ext_call.success
            emit EmployeeOptionsExercised(companyAddress, ext_call.return_data[64] + ext_call.return_data[32] + ext_call.return_data[0] << 224, not arg2, arg1);
    return 0
}

function employeeSignsToESOP() {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    require ext_code.size(employeesAddress)
    call employeesAddress.hasEmployee(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require esopState <= 2
    require esopState == 1
    require codeUpdateState <= 1
    require not codeUpdateState
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    require ext_code.size(employeesAddress)
    call employeesAddress.getSerializedEmployee(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    mem[672 len 288] = ext_call.return_data[0 len 288]
    require ext_call.success
    mem[960] = 0
    mem[992] = 0
    mem[1024] = 0
    mem[1056] = 0
    mem[1088] = 0
    mem[1120] = 0
    mem[1152] = 0
    mem[1184] = 0
    mem[1216] = 0
    require ext_call.return_data[224] <= 4
    if ext_call.return_data[224] != 1:
        emit ReturnCode(1);
        return 1
    require block.timestamp <= test266151307()
    if uint32(stor0.field_168) > 0:
        if uint32(stor0.field_168) <= ext_call.return_data[60 len 4]:
            require ext_code.size(employeesAddress)
            call employeesAddress.0x2ed4a2c7 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 2
            require ext_call.success
            emit EmployeeSignedToESOP(msg.sender);
            return 0
        mem[64] = 1536
        mem[1248] = 0
        mem[1280] = 0
        mem[1312] = 0
        mem[1344] = 0
        mem[1376] = 0
        mem[1408] = 0
        mem[1440] = 0
        mem[1472] = 0
        mem[1504] = 0
        mem[1568] = 0
        mem[1536] = 0x949d225d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(employeesAddress)
        call employeesAddress.mem[var87003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var87003 + 4 len var87004 - 4]
        mem[var87005] = ext_call.return_data[0]
        require ext_call.success
        if var89006 >= 0:
            remainingPoolOptions += var89010
            totalExtraOptions -= ext_call.return_data[188 len 4]
        else:
            mem[1568] = 0
            mem[1536] = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
            mem[1540] = var91003
            require ext_code.size(employeesAddress)
            call employeesAddress.mem[var93003 len 4] with:
                 gas gas_remaining - 710 wei
                args mem[var93003 + 4 len var93004 - 4]
            mem[var93005] = ext_call.return_data[0]
            require ext_call.success
            mem[1568] = 0
            require ext_code.size(employeesAddress)
            call employeesAddress.0x949d225d with:
                 gas gas_remaining - 710 wei
            mem[1536] = ext_call.return_data[0]
            require ext_call.success
            s = var95004
            t = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
            idx = var95006
            t = var95007
            u = var95010
            while idx + 1 < uint16(ext_call.return_data[0]):
                require ext_code.size(employeesAddress)
                call employeesAddress.0xedf26d9b with:
                     gas gas_remaining - 710 wei
                    args (idx + 1)
                require ext_call.success
                if not address(ext_call.return_data[0]):
                    mem[mem[64] + 32] = 0
                    mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(employeesAddress)
                    call employeesAddress.0x949d225d with:
                         gas gas_remaining - 710 wei
                        args mem[mem[64] + 4 len -mem[64] + 1536]
                    mem[mem[64]] = ext_call.return_data[0]
                    require ext_call.success
                    s = s
                    t = ext_call.return_data[0]
                    idx = idx + 1
                    t = t
                    u = u
                    continue 
                _1605 = mem[64]
                mem[64] = mem[64] + 288
                mem[_1605] = 0
                mem[_1605 + 32] = 0
                mem[_1605 + 64] = 0
                mem[_1605 + 96] = 0
                mem[_1605 + 128] = 0
                mem[_1605 + 160] = 0
                mem[_1605 + 192] = 0
                mem[_1605 + 224] = 0
                mem[_1605 + 256] = 0
                mem[mem[64] + 288] = 0
                require ext_code.size(employeesAddress)
                call employeesAddress.getSerializedEmployee(address rg1) with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0])
                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                require ext_call.success
                _1618 = mem[64]
                mem[64] = mem[64] + 288
                _1622 = mem[64]
                mem[64] = mem[64] + 288
                mem[_1622] = 0
                mem[_1622 + 32] = 0
                mem[_1622 + 64] = 0
                mem[_1622 + 96] = 0
                mem[_1622 + 128] = 0
                mem[_1622 + 160] = 0
                mem[_1622 + 192] = 0
                mem[_1622 + 224] = 0
                mem[_1622 + 256] = 0
                if mem[_1618 + 156 len 4] <= 0:
                    mem[mem[64] + 32] = 0
                    mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(employeesAddress)
                    call employeesAddress.0x949d225d with:
                         gas gas_remaining - 710 wei
                        args mem[mem[64] + 4 len -mem[64] + 1536]
                    mem[mem[64]] = ext_call.return_data[0]
                    require ext_call.success
                    s = s
                    t = ext_call.return_data[0]
                    idx = idx + 1
                    t = _1618
                    u = u
                    continue 
                require mem[_1618 + 224] <= 4
                if mem[_1618 + 224] == 1:
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 4] = u
                    require ext_code.size(optionsCalculatorAddress)
                    call optionsCalculatorAddress.0xdcec5ecc with:
                         gas gas_remaining - 710 wei
                        args u
                    mem[mem[64]] = ext_call.return_data[0]
                    require ext_call.success
                    mem[_1618 + 128] = uint32(ext_call.return_data[0] + mem[_1618 + 128])
                    _1782 = mem[_1618]
                    _1783 = mem[_1618 + 32]
                    _1784 = mem[_1618 + 64]
                    _1785 = mem[_1618 + 96]
                    _1786 = mem[_1618 + 128]
                    _1787 = mem[_1618 + 160]
                    _1788 = mem[_1618 + 192]
                    _1789 = mem[_1618 + 224]
                    mem[mem[64] + 36] = mem[_1618 + 28 len 4]
                    mem[mem[64] + 68] = uint32(_1783)
                    mem[mem[64] + 100] = uint32(_1784)
                    mem[mem[64] + 132] = uint32(_1785)
                    mem[mem[64] + 164] = uint32(_1786)
                    mem[mem[64] + 196] = uint32(_1787)
                    mem[mem[64] + 228] = uint32(_1788)
                    require _1789 <= 4
                    mem[mem[64] + 260] = uint8(_1789)
                    require ext_code.size(employeesAddress)
                    call employeesAddress.0x73ece9c4 with:
                         gas gas_remaining - 710 wei
                        args address(ext_call.return_data[0]), _1782 << 224, _1783 << 224, _1784 << 224, _1785 << 224, _1786 << 224, _1787 << 224, _1788 << 224, uint8(_1789)
                else:
                    require mem[_1618 + 224] <= 4
                    mem[mem[64] + 32] = 0
                    if mem[_1618 + 224] != 2:
                        mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(employeesAddress)
                        call employeesAddress.0x949d225d with:
                             gas gas_remaining - 710 wei
                            args mem[mem[64] + 4 len -mem[64] + 1536]
                        mem[mem[64]] = ext_call.return_data[0]
                        require ext_call.success
                        s = s
                        t = ext_call.return_data[0]
                        idx = idx + 1
                        t = _1618
                        u = u
                        continue 
                    mem[mem[64] + 4] = u
                    require ext_code.size(optionsCalculatorAddress)
                    call optionsCalculatorAddress.0xdcec5ecc with:
                         gas gas_remaining - 710 wei
                        args u
                    mem[mem[64]] = ext_call.return_data[0]
                    require ext_call.success
                    mem[_1618 + 128] = uint32(ext_call.return_data[0] + mem[_1618 + 128])
                    _1834 = mem[_1618]
                    _1835 = mem[_1618 + 32]
                    _1836 = mem[_1618 + 64]
                    _1837 = mem[_1618 + 96]
                    _1838 = mem[_1618 + 128]
                    _1839 = mem[_1618 + 160]
                    _1840 = mem[_1618 + 192]
                    _1841 = mem[_1618 + 224]
                    mem[mem[64] + 36] = mem[_1618 + 28 len 4]
                    mem[mem[64] + 68] = uint32(_1835)
                    mem[mem[64] + 100] = uint32(_1836)
                    mem[mem[64] + 132] = uint32(_1837)
                    mem[mem[64] + 164] = uint32(_1838)
                    mem[mem[64] + 196] = uint32(_1839)
                    mem[mem[64] + 228] = uint32(_1840)
                    require _1841 <= 4
                    mem[mem[64] + 260] = uint8(_1841)
                    require ext_code.size(employeesAddress)
                    call employeesAddress.0x73ece9c4 with:
                         gas gas_remaining - 710 wei
                        args address(ext_call.return_data[0]), _1834 << 224, _1835 << 224, _1836 << 224, _1837 << 224, _1838 << 224, _1839 << 224, _1840 << 224, uint8(_1841)
                require ext_call.success
                mem[mem[64] + 32] = 0
                mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                require ext_code.size(employeesAddress)
                call employeesAddress.0x949d225d with:
                     gas gas_remaining - 710 wei
                    args mem[mem[64] + 4 len -mem[64] + 1536]
                mem[mem[64]] = ext_call.return_data[0]
                require ext_call.success
                s = ext_call.return_data[0]
                t = ext_call.return_data[0]
                idx = idx + 1
                t = _1618
                u = u - uint32(ext_call.return_data[0])
                continue 
            remainingPoolOptions += u
            totalExtraOptions -= mem[860 len 4]
    else:
        if uint32(block.timestamp) <= ext_call.return_data[60 len 4]:
            require ext_code.size(employeesAddress)
            call employeesAddress.0x2ed4a2c7 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 2
            require ext_call.success
            emit EmployeeSignedToESOP(msg.sender);
            return 0
        mem[64] = 1536
        mem[1248] = 0
        mem[1280] = 0
        mem[1312] = 0
        mem[1344] = 0
        mem[1376] = 0
        mem[1408] = 0
        mem[1440] = 0
        mem[1472] = 0
        mem[1504] = 0
        mem[1568] = 0
        mem[1536] = 0x949d225d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(employeesAddress)
        call employeesAddress.mem[var87003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var87003 + 4 len var87004 - 4]
        mem[var87005] = ext_call.return_data[0]
        require ext_call.success
        if var89006 >= 0:
            remainingPoolOptions += var89010
            totalExtraOptions -= ext_call.return_data[188 len 4]
        else:
            mem[1568] = 0
            mem[1536] = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
            mem[1540] = var91003
            require ext_code.size(employeesAddress)
            call employeesAddress.mem[var93003 len 4] with:
                 gas gas_remaining - 710 wei
                args mem[var93003 + 4 len var93004 - 4]
            mem[var93005] = ext_call.return_data[0]
            require ext_call.success
            mem[1568] = 0
            require ext_code.size(employeesAddress)
            call employeesAddress.0x949d225d with:
                 gas gas_remaining - 710 wei
            mem[1536] = ext_call.return_data[0]
            require ext_call.success
            s = var95004
            t = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
            idx = var95006
            t = var95007
            u = var95010
            while idx + 1 < uint16(ext_call.return_data[0]):
                require ext_code.size(employeesAddress)
                call employeesAddress.0xedf26d9b with:
                     gas gas_remaining - 710 wei
                    args (idx + 1)
                require ext_call.success
                if not address(ext_call.return_data[0]):
                    mem[mem[64] + 32] = 0
                    mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(employeesAddress)
                    call employeesAddress.0x949d225d with:
                         gas gas_remaining - 710 wei
                        args mem[mem[64] + 4 len -mem[64] + 1536]
                    mem[mem[64]] = ext_call.return_data[0]
                    require ext_call.success
                    s = s
                    t = ext_call.return_data[0]
                    idx = idx + 1
                    t = t
                    u = u
                    continue 
                _1607 = mem[64]
                mem[64] = mem[64] + 288
                mem[_1607] = 0
                mem[_1607 + 32] = 0
                mem[_1607 + 64] = 0
                mem[_1607 + 96] = 0
                mem[_1607 + 128] = 0
                mem[_1607 + 160] = 0
                mem[_1607 + 192] = 0
                mem[_1607 + 224] = 0
                mem[_1607 + 256] = 0
                mem[mem[64] + 288] = 0
                require ext_code.size(employeesAddress)
                call employeesAddress.getSerializedEmployee(address rg1) with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0])
                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                require ext_call.success
                _1620 = mem[64]
                mem[64] = mem[64] + 288
                _1623 = mem[64]
                mem[64] = mem[64] + 288
                mem[_1623] = 0
                mem[_1623 + 32] = 0
                mem[_1623 + 64] = 0
                mem[_1623 + 96] = 0
                mem[_1623 + 128] = 0
                mem[_1623 + 160] = 0
                mem[_1623 + 192] = 0
                mem[_1623 + 224] = 0
                mem[_1623 + 256] = 0
                if mem[_1620 + 156 len 4] <= 0:
                    mem[mem[64] + 32] = 0
                    mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(employeesAddress)
                    call employeesAddress.0x949d225d with:
                         gas gas_remaining - 710 wei
                        args mem[mem[64] + 4 len -mem[64] + 1536]
                    mem[mem[64]] = ext_call.return_data[0]
                    require ext_call.success
                    s = s
                    t = ext_call.return_data[0]
                    idx = idx + 1
                    t = _1620
                    u = u
                    continue 
                require mem[_1620 + 224] <= 4
                if mem[_1620 + 224] == 1:
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 4] = u
                    require ext_code.size(optionsCalculatorAddress)
                    call optionsCalculatorAddress.0xdcec5ecc with:
                         gas gas_remaining - 710 wei
                        args u
                    mem[mem[64]] = ext_call.return_data[0]
                    require ext_call.success
                    mem[_1620 + 128] = uint32(ext_call.return_data[0] + mem[_1620 + 128])
                    _1795 = mem[_1620]
                    _1796 = mem[_1620 + 32]
                    _1797 = mem[_1620 + 64]
                    _1798 = mem[_1620 + 96]
                    _1799 = mem[_1620 + 128]
                    _1800 = mem[_1620 + 160]
                    _1801 = mem[_1620 + 192]
                    _1802 = mem[_1620 + 224]
                    mem[mem[64] + 36] = mem[_1620 + 28 len 4]
                    mem[mem[64] + 68] = uint32(_1796)
                    mem[mem[64] + 100] = uint32(_1797)
                    mem[mem[64] + 132] = uint32(_1798)
                    mem[mem[64] + 164] = uint32(_1799)
                    mem[mem[64] + 196] = uint32(_1800)
                    mem[mem[64] + 228] = uint32(_1801)
                    require _1802 <= 4
                    mem[mem[64] + 260] = uint8(_1802)
                    require ext_code.size(employeesAddress)
                    call employeesAddress.0x73ece9c4 with:
                         gas gas_remaining - 710 wei
                        args address(ext_call.return_data[0]), _1795 << 224, _1796 << 224, _1797 << 224, _1798 << 224, _1799 << 224, _1800 << 224, _1801 << 224, uint8(_1802)
                else:
                    require mem[_1620 + 224] <= 4
                    mem[mem[64] + 32] = 0
                    if mem[_1620 + 224] != 2:
                        mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(employeesAddress)
                        call employeesAddress.0x949d225d with:
                             gas gas_remaining - 710 wei
                            args mem[mem[64] + 4 len -mem[64] + 1536]
                        mem[mem[64]] = ext_call.return_data[0]
                        require ext_call.success
                        s = s
                        t = ext_call.return_data[0]
                        idx = idx + 1
                        t = _1620
                        u = u
                        continue 
                    mem[mem[64] + 4] = u
                    require ext_code.size(optionsCalculatorAddress)
                    call optionsCalculatorAddress.0xdcec5ecc with:
                         gas gas_remaining - 710 wei
                        args u
                    mem[mem[64]] = ext_call.return_data[0]
                    require ext_call.success
                    mem[_1620 + 128] = uint32(ext_call.return_data[0] + mem[_1620 + 128])
                    _1845 = mem[_1620]
                    _1846 = mem[_1620 + 32]
                    _1847 = mem[_1620 + 64]
                    _1848 = mem[_1620 + 96]
                    _1849 = mem[_1620 + 128]
                    _1850 = mem[_1620 + 160]
                    _1851 = mem[_1620 + 192]
                    _1852 = mem[_1620 + 224]
                    mem[mem[64] + 36] = mem[_1620 + 28 len 4]
                    mem[mem[64] + 68] = uint32(_1846)
                    mem[mem[64] + 100] = uint32(_1847)
                    mem[mem[64] + 132] = uint32(_1848)
                    mem[mem[64] + 164] = uint32(_1849)
                    mem[mem[64] + 196] = uint32(_1850)
                    mem[mem[64] + 228] = uint32(_1851)
                    require _1852 <= 4
                    mem[mem[64] + 260] = uint8(_1852)
                    require ext_code.size(employeesAddress)
                    call employeesAddress.0x73ece9c4 with:
                         gas gas_remaining - 710 wei
                        args address(ext_call.return_data[0]), _1845 << 224, _1846 << 224, _1847 << 224, _1848 << 224, _1849 << 224, _1850 << 224, _1851 << 224, uint8(_1852)
                require ext_call.success
                mem[mem[64] + 32] = 0
                mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                require ext_code.size(employeesAddress)
                call employeesAddress.0x949d225d with:
                     gas gas_remaining - 710 wei
                    args mem[mem[64] + 4 len -mem[64] + 1536]
                mem[mem[64]] = ext_call.return_data[0]
                require ext_call.success
                s = ext_call.return_data[0]
                t = ext_call.return_data[0]
                idx = idx + 1
                t = _1620
                u = u - uint32(ext_call.return_data[0])
                continue 
            remainingPoolOptions += u
            totalExtraOptions -= mem[860 len 4]
    require ext_code.size(employeesAddress)
    call employeesAddress.0xd108177a with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    emit ReturnCode(2);
    return 2
}

function removeEmployeesWithExpiredSignaturesAndReturnFadeout() {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[64] = 672
    mem[384] = 0
    mem[416 len 256] = 0
    require esopState <= 2
    require esopState == 1
    require codeUpdateState <= 1
    require not codeUpdateState
    require block.timestamp <= test266151307()
    mem[704] = 0
    mem[672] = 0x949d225d00000000000000000000000000000000000000000000000000000000
    require ext_code.size(employeesAddress)
    call employeesAddress.mem[var67003 len 4] with:
         gas gas_remaining - 710 wei
        args mem[var67003 + 4 len var67004 - 4]
    mem[var67005] = ext_call.return_data[0]
    require ext_call.success
    if uint32(stor0.field_168) > 0:
        if var69008 < 0:
            mem[704] = 0
            mem[672] = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
            mem[676] = var71005
            require ext_code.size(employeesAddress)
            call employeesAddress.mem[var73003 len 4] with:
                 gas gas_remaining - 710 wei
                args mem[var73003 + 4 len var73004 - 4]
            mem[var73005] = ext_call.return_data[0]
            require ext_call.success
            mem[704] = 0
            require ext_code.size(employeesAddress)
            call employeesAddress.0x949d225d with:
                 gas gas_remaining - 710 wei
            mem[672] = ext_call.return_data[0]
            require ext_call.success
            s = var75006
            t = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
            idx = var75008
            t = var75010
            while idx + 1 < uint16(ext_call.return_data[0]):
                require ext_code.size(employeesAddress)
                call employeesAddress.0xedf26d9b with:
                     gas gas_remaining - 710 wei
                    args (idx + 1)
                require ext_call.success
                if not address(ext_call.return_data[0]):
                    mem[mem[64] + 32] = 0
                    require ext_code.size(employeesAddress)
                    call employeesAddress.0x949d225d with:
                         gas gas_remaining - 710 wei
                    mem[mem[64]] = ext_call.return_data[0]
                    require ext_call.success
                    s = s
                    t = ext_call.return_data[0]
                    idx = idx + 1
                    t = t
                    continue 
                mem[mem[64] + 288] = 0
                require ext_code.size(employeesAddress)
                call employeesAddress.getSerializedEmployee(address rg1) with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0])
                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                require ext_call.success
                _1943 = mem[64]
                mem[64] = mem[64] + 288
                _1949 = mem[64]
                mem[64] = mem[64] + 288
                mem[_1949] = 0
                mem[_1949 + 32] = 0
                mem[_1949 + 64] = 0
                mem[_1949 + 96] = 0
                mem[_1949 + 128] = 0
                mem[_1949 + 160] = 0
                mem[_1949 + 192] = 0
                mem[_1949 + 224] = 0
                mem[_1949 + 256] = 0
                require mem[_1943 + 224] <= 4
                if mem[_1943 + 224] == 1:
                    if uint32(stor0.field_168) > mem[_1943 + 60 len 4]:
                        _2068 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_2068] = 0
                        mem[_2068 + 32] = 0
                        mem[_2068 + 64] = 0
                        mem[_2068 + 96] = 0
                        mem[_2068 + 128] = 0
                        mem[_2068 + 160] = 0
                        mem[_2068 + 192] = 0
                        mem[_2068 + 224] = 0
                        mem[_2068 + 256] = 0
                        mem[mem[64] + 32] = 0
                        mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(employeesAddress)
                        call employeesAddress.mem[var108003 len 4] with:
                             gas gas_remaining - 710 wei
                            args mem[var108003 + 4 len var108004 - 4]
                        mem[var108005] = ext_call.return_data[0]
                        require ext_call.success
                        if var110006 >= 0:
                            remainingPoolOptions += var110010
                        else:
                            mem[mem[64] + 32] = 0
                            mem[mem[64]] = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = var112003
                            require ext_code.size(employeesAddress)
                            call employeesAddress.mem[var114003 len 4] with:
                                 gas gas_remaining - 710 wei
                                args mem[var114003 + 4 len var114004 - 4]
                            mem[var114005] = ext_call.return_data[0]
                            require ext_call.success
                            mem[mem[64] + 32] = 0
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0x949d225d with:
                                 gas gas_remaining - 710 wei
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                            t = var116004
                            u = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                            s = var116006
                            u = var116007
                            v = var116010
                            while s + 1 < uint16(ext_call.return_data[0]):
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0xedf26d9b with:
                                     gas gas_remaining - 710 wei
                                    args (s + 1)
                                require ext_call.success
                                if not address(ext_call.return_data[0]):
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x949d225d with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    mem[mem[64] + 32] = 0
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x949d225d with:
                                         gas gas_remaining - 710 wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    require ext_call.success
                                    t = t
                                    u = ext_call.return_data[0]
                                    s = s + 1
                                    u = u
                                    v = v
                                    continue 
                                _6103 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_6103] = 0
                                mem[_6103 + 32] = 0
                                mem[_6103 + 64] = 0
                                mem[_6103 + 96] = 0
                                mem[_6103 + 128] = 0
                                mem[_6103 + 160] = 0
                                mem[_6103 + 192] = 0
                                mem[_6103 + 224] = 0
                                mem[_6103 + 256] = 0
                                mem[mem[64] + 288] = 0
                                require ext_code.size(employeesAddress)
                                call employeesAddress.getSerializedEmployee(address rg1) with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0])
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                require ext_call.success
                                _6223 = mem[64]
                                mem[64] = mem[64] + 288
                                _6276 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_6276] = 0
                                mem[_6276 + 32] = 0
                                mem[_6276 + 64] = 0
                                mem[_6276 + 96] = 0
                                mem[_6276 + 128] = 0
                                mem[_6276 + 160] = 0
                                mem[_6276 + 192] = 0
                                mem[_6276 + 224] = 0
                                mem[_6276 + 256] = 0
                                if mem[_6223 + 156 len 4] <= 0:
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x949d225d with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    mem[mem[64] + 32] = 0
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x949d225d with:
                                         gas gas_remaining - 710 wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    require ext_call.success
                                    t = t
                                    u = ext_call.return_data[0]
                                    s = s + 1
                                    u = _6223
                                    v = v
                                    continue 
                                require mem[_6223 + 224] <= 4
                                if mem[_6223 + 224] == 1:
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 4] = v
                                    require ext_code.size(optionsCalculatorAddress)
                                    call optionsCalculatorAddress.0xdcec5ecc with:
                                         gas gas_remaining - 710 wei
                                        args v
                                    mem[mem[64]] = ext_call.return_data[0]
                                    require ext_call.success
                                    mem[_6223 + 128] = uint32(ext_call.return_data[0] + mem[_6223 + 128])
                                    _6615 = mem[_6223]
                                    _6616 = mem[_6223 + 32]
                                    _6617 = mem[_6223 + 64]
                                    _6618 = mem[_6223 + 96]
                                    _6619 = mem[_6223 + 128]
                                    _6620 = mem[_6223 + 160]
                                    _6621 = mem[_6223 + 192]
                                    _6622 = mem[_6223 + 224]
                                    mem[mem[64] + 36] = mem[_6223 + 28 len 4]
                                    mem[mem[64] + 68] = uint32(_6616)
                                    mem[mem[64] + 100] = uint32(_6617)
                                    mem[mem[64] + 132] = uint32(_6618)
                                    mem[mem[64] + 164] = uint32(_6619)
                                    mem[mem[64] + 196] = uint32(_6620)
                                    mem[mem[64] + 228] = uint32(_6621)
                                    require _6622 <= 4
                                    mem[mem[64] + 260] = uint8(_6622)
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x73ece9c4 with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), _6615 << 224, _6616 << 224, _6617 << 224, _6618 << 224, _6619 << 224, _6620 << 224, _6621 << 224, uint8(_6622)
                                else:
                                    require mem[_6223 + 224] <= 4
                                    if mem[_6223 + 224] != 2:
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x949d225d with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        mem[mem[64] + 32] = 0
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x949d225d with:
                                             gas gas_remaining - 710 wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        require ext_call.success
                                        t = t
                                        u = ext_call.return_data[0]
                                        s = s + 1
                                        u = _6223
                                        v = v
                                        continue 
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 4] = v
                                    require ext_code.size(optionsCalculatorAddress)
                                    call optionsCalculatorAddress.0xdcec5ecc with:
                                         gas gas_remaining - 710 wei
                                        args v
                                    mem[mem[64]] = ext_call.return_data[0]
                                    require ext_call.success
                                    mem[_6223 + 128] = uint32(ext_call.return_data[0] + mem[_6223 + 128])
                                    _6679 = mem[_6223]
                                    _6680 = mem[_6223 + 32]
                                    _6681 = mem[_6223 + 64]
                                    _6682 = mem[_6223 + 96]
                                    _6683 = mem[_6223 + 128]
                                    _6684 = mem[_6223 + 160]
                                    _6685 = mem[_6223 + 192]
                                    _6686 = mem[_6223 + 224]
                                    mem[mem[64] + 36] = mem[_6223 + 28 len 4]
                                    mem[mem[64] + 68] = uint32(_6680)
                                    mem[mem[64] + 100] = uint32(_6681)
                                    mem[mem[64] + 132] = uint32(_6682)
                                    mem[mem[64] + 164] = uint32(_6683)
                                    mem[mem[64] + 196] = uint32(_6684)
                                    mem[mem[64] + 228] = uint32(_6685)
                                    require _6686 <= 4
                                    mem[mem[64] + 260] = uint8(_6686)
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x73ece9c4 with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), _6679 << 224, _6680 << 224, _6681 << 224, _6682 << 224, _6683 << 224, _6684 << 224, _6685 << 224, uint8(_6686)
                                require ext_call.success
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x949d225d with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                mem[mem[64] + 32] = 0
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x949d225d with:
                                     gas gas_remaining - 710 wei
                                mem[mem[64]] = ext_call.return_data[0]
                                require ext_call.success
                                t = ext_call.return_data[0]
                                u = ext_call.return_data[0]
                                s = s + 1
                                u = _6223
                                v = v - uint32(ext_call.return_data[0])
                                continue 
                            remainingPoolOptions += v
                        totalExtraOptions -= mem[_1943 + 188 len 4]
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        require ext_code.size(employeesAddress)
                        call employeesAddress.0xd108177a with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0])
                        mem[mem[64]] = ext_call.return_data[0]
                        require ext_call.success
                require mem[_1943 + 224] <= 4
                if mem[_1943 + 224] == 3:
                    if uint32(stor0.field_168) > mem[_1943 + 124 len 4]:
                        mem[mem[64] + 64] = 0
                        mem[mem[64]] = 0xb1989a2b00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint32(stor0.field_168)
                        mem[mem[64] + 36] = mem[_1943]
                        t = _1943
                        u = mem[64] + 36
                        s = 288
                        while s > 32:
                            mem[mem[64] + 32] = 0
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0x949d225d with:
                                 gas gas_remaining - 710 wei
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                            mem[u + 32] = mem[t + 32]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        require ext_code.size(optionsCalculatorAddress)
                        call optionsCalculatorAddress.mem[mem[64] len 4] with:
                             gas gas_remaining - 710 wei
                            args mem[mem[64] + 4 len 320]
                        require ext_call.success
                        if ext_call.return_data[0] > 0:
                            mem[mem[64] + 36] = uint32(stor0.field_168)
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0x2462f6f1 with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), uint32(stor0.field_168)
                            require ext_call.success
                            remainingPoolOptions += ext_call.return_data[0]
                            totalExtraOptions -= ext_call.return_data[32]
                        else:
                            if ext_call.return_data[32] > 0:
                                mem[mem[64] + 36] = uint32(stor0.field_168)
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x2462f6f1 with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), uint32(stor0.field_168)
                                require ext_call.success
                                remainingPoolOptions += ext_call.return_data[0]
                                totalExtraOptions -= ext_call.return_data[32]
                mem[mem[64] + 32] = 0
                require ext_code.size(employeesAddress)
                call employeesAddress.0x949d225d with:
                     gas gas_remaining - 710 wei
                mem[mem[64]] = ext_call.return_data[0]
                require ext_call.success
                s = _1943
                t = ext_call.return_data[0]
                idx = idx + 1
                t = _1943
                continue 
    else:
        if var69008 < 0:
            mem[704] = 0
            mem[672] = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
            mem[676] = var71005
            require ext_code.size(employeesAddress)
            call employeesAddress.mem[var73003 len 4] with:
                 gas gas_remaining - 710 wei
                args mem[var73003 + 4 len var73004 - 4]
            mem[var73005] = ext_call.return_data[0]
            require ext_call.success
            mem[704] = 0
            require ext_code.size(employeesAddress)
            call employeesAddress.0x949d225d with:
                 gas gas_remaining - 710 wei
            mem[672] = ext_call.return_data[0]
            require ext_call.success
            s = var75006
            t = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
            idx = var75008
            t = var75010
            while idx + 1 < uint16(ext_call.return_data[0]):
                require ext_code.size(employeesAddress)
                call employeesAddress.0xedf26d9b with:
                     gas gas_remaining - 710 wei
                    args (idx + 1)
                require ext_call.success
                if not address(ext_call.return_data[0]):
                    mem[mem[64] + 32] = 0
                    require ext_code.size(employeesAddress)
                    call employeesAddress.0x949d225d with:
                         gas gas_remaining - 710 wei
                    mem[mem[64]] = ext_call.return_data[0]
                    require ext_call.success
                    s = s
                    t = ext_call.return_data[0]
                    idx = idx + 1
                    t = t
                    continue 
                mem[mem[64] + 288] = 0
                require ext_code.size(employeesAddress)
                call employeesAddress.getSerializedEmployee(address rg1) with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0])
                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                require ext_call.success
                _1944 = mem[64]
                mem[64] = mem[64] + 288
                _1951 = mem[64]
                mem[64] = mem[64] + 288
                mem[_1951] = 0
                mem[_1951 + 32] = 0
                mem[_1951 + 64] = 0
                mem[_1951 + 96] = 0
                mem[_1951 + 128] = 0
                mem[_1951 + 160] = 0
                mem[_1951 + 192] = 0
                mem[_1951 + 224] = 0
                mem[_1951 + 256] = 0
                require mem[_1944 + 224] <= 4
                if mem[_1944 + 224] == 1:
                    if uint32(block.timestamp) > mem[_1944 + 60 len 4]:
                        _2075 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_2075] = 0
                        mem[_2075 + 32] = 0
                        mem[_2075 + 64] = 0
                        mem[_2075 + 96] = 0
                        mem[_2075 + 128] = 0
                        mem[_2075 + 160] = 0
                        mem[_2075 + 192] = 0
                        mem[_2075 + 224] = 0
                        mem[_2075 + 256] = 0
                        mem[mem[64] + 32] = 0
                        mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(employeesAddress)
                        call employeesAddress.mem[var108003 len 4] with:
                             gas gas_remaining - 710 wei
                            args mem[var108003 + 4 len var108004 - 4]
                        mem[var108005] = ext_call.return_data[0]
                        require ext_call.success
                        if var110006 >= 0:
                            remainingPoolOptions += var110010
                        else:
                            mem[mem[64] + 32] = 0
                            mem[mem[64]] = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = var112003
                            require ext_code.size(employeesAddress)
                            call employeesAddress.mem[var114003 len 4] with:
                                 gas gas_remaining - 710 wei
                                args mem[var114003 + 4 len var114004 - 4]
                            mem[var114005] = ext_call.return_data[0]
                            require ext_call.success
                            mem[mem[64] + 32] = 0
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0x949d225d with:
                                 gas gas_remaining - 710 wei
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                            t = var116004
                            u = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                            s = var116006
                            u = var116007
                            v = var116010
                            while s + 1 < uint16(ext_call.return_data[0]):
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0xedf26d9b with:
                                     gas gas_remaining - 710 wei
                                    args (s + 1)
                                require ext_call.success
                                if not address(ext_call.return_data[0]):
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x949d225d with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    mem[mem[64] + 32] = 0
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x949d225d with:
                                         gas gas_remaining - 710 wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    require ext_call.success
                                    t = t
                                    u = ext_call.return_data[0]
                                    s = s + 1
                                    u = u
                                    v = v
                                    continue 
                                _6119 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_6119] = 0
                                mem[_6119 + 32] = 0
                                mem[_6119 + 64] = 0
                                mem[_6119 + 96] = 0
                                mem[_6119 + 128] = 0
                                mem[_6119 + 160] = 0
                                mem[_6119 + 192] = 0
                                mem[_6119 + 224] = 0
                                mem[_6119 + 256] = 0
                                mem[mem[64] + 288] = 0
                                require ext_code.size(employeesAddress)
                                call employeesAddress.getSerializedEmployee(address rg1) with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0])
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                require ext_call.success
                                _6240 = mem[64]
                                mem[64] = mem[64] + 288
                                _6292 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_6292] = 0
                                mem[_6292 + 32] = 0
                                mem[_6292 + 64] = 0
                                mem[_6292 + 96] = 0
                                mem[_6292 + 128] = 0
                                mem[_6292 + 160] = 0
                                mem[_6292 + 192] = 0
                                mem[_6292 + 224] = 0
                                mem[_6292 + 256] = 0
                                if mem[_6240 + 156 len 4] <= 0:
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x949d225d with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    mem[mem[64] + 32] = 0
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x949d225d with:
                                         gas gas_remaining - 710 wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    require ext_call.success
                                    t = t
                                    u = ext_call.return_data[0]
                                    s = s + 1
                                    u = _6240
                                    v = v
                                    continue 
                                require mem[_6240 + 224] <= 4
                                if mem[_6240 + 224] == 1:
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 4] = v
                                    require ext_code.size(optionsCalculatorAddress)
                                    call optionsCalculatorAddress.0xdcec5ecc with:
                                         gas gas_remaining - 710 wei
                                        args v
                                    mem[mem[64]] = ext_call.return_data[0]
                                    require ext_call.success
                                    mem[_6240 + 128] = uint32(ext_call.return_data[0] + mem[_6240 + 128])
                                    _6632 = mem[_6240]
                                    _6633 = mem[_6240 + 32]
                                    _6634 = mem[_6240 + 64]
                                    _6635 = mem[_6240 + 96]
                                    _6636 = mem[_6240 + 128]
                                    _6637 = mem[_6240 + 160]
                                    _6638 = mem[_6240 + 192]
                                    _6639 = mem[_6240 + 224]
                                    mem[mem[64] + 36] = mem[_6240 + 28 len 4]
                                    mem[mem[64] + 68] = uint32(_6633)
                                    mem[mem[64] + 100] = uint32(_6634)
                                    mem[mem[64] + 132] = uint32(_6635)
                                    mem[mem[64] + 164] = uint32(_6636)
                                    mem[mem[64] + 196] = uint32(_6637)
                                    mem[mem[64] + 228] = uint32(_6638)
                                    require _6639 <= 4
                                    mem[mem[64] + 260] = uint8(_6639)
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x73ece9c4 with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), _6632 << 224, _6633 << 224, _6634 << 224, _6635 << 224, _6636 << 224, _6637 << 224, _6638 << 224, uint8(_6639)
                                else:
                                    require mem[_6240 + 224] <= 4
                                    if mem[_6240 + 224] != 2:
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x949d225d with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        mem[mem[64] + 32] = 0
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x949d225d with:
                                             gas gas_remaining - 710 wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        require ext_call.success
                                        t = t
                                        u = ext_call.return_data[0]
                                        s = s + 1
                                        u = _6240
                                        v = v
                                        continue 
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 4] = v
                                    require ext_code.size(optionsCalculatorAddress)
                                    call optionsCalculatorAddress.0xdcec5ecc with:
                                         gas gas_remaining - 710 wei
                                        args v
                                    mem[mem[64]] = ext_call.return_data[0]
                                    require ext_call.success
                                    mem[_6240 + 128] = uint32(ext_call.return_data[0] + mem[_6240 + 128])
                                    _6690 = mem[_6240]
                                    _6691 = mem[_6240 + 32]
                                    _6692 = mem[_6240 + 64]
                                    _6693 = mem[_6240 + 96]
                                    _6694 = mem[_6240 + 128]
                                    _6695 = mem[_6240 + 160]
                                    _6696 = mem[_6240 + 192]
                                    _6697 = mem[_6240 + 224]
                                    mem[mem[64] + 36] = mem[_6240 + 28 len 4]
                                    mem[mem[64] + 68] = uint32(_6691)
                                    mem[mem[64] + 100] = uint32(_6692)
                                    mem[mem[64] + 132] = uint32(_6693)
                                    mem[mem[64] + 164] = uint32(_6694)
                                    mem[mem[64] + 196] = uint32(_6695)
                                    mem[mem[64] + 228] = uint32(_6696)
                                    require _6697 <= 4
                                    mem[mem[64] + 260] = uint8(_6697)
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x73ece9c4 with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), _6690 << 224, _6691 << 224, _6692 << 224, _6693 << 224, _6694 << 224, _6695 << 224, _6696 << 224, uint8(_6697)
                                require ext_call.success
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x949d225d with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                mem[mem[64] + 32] = 0
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x949d225d with:
                                     gas gas_remaining - 710 wei
                                mem[mem[64]] = ext_call.return_data[0]
                                require ext_call.success
                                t = ext_call.return_data[0]
                                u = ext_call.return_data[0]
                                s = s + 1
                                u = _6240
                                v = v - uint32(ext_call.return_data[0])
                                continue 
                            remainingPoolOptions += v
                        totalExtraOptions -= mem[_1944 + 188 len 4]
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        require ext_code.size(employeesAddress)
                        call employeesAddress.0xd108177a with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0])
                        mem[mem[64]] = ext_call.return_data[0]
                        require ext_call.success
                require mem[_1944 + 224] <= 4
                if mem[_1944 + 224] == 3:
                    if uint32(block.timestamp) > mem[_1944 + 124 len 4]:
                        mem[mem[64] + 64] = 0
                        mem[mem[64]] = 0xb1989a2b00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint32(block.timestamp)
                        mem[mem[64] + 36] = mem[_1944]
                        t = _1944
                        u = mem[64] + 36
                        s = 288
                        while s > 32:
                            mem[mem[64] + 32] = 0
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0x949d225d with:
                                 gas gas_remaining - 710 wei
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                            mem[u + 32] = mem[t + 32]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        require ext_code.size(optionsCalculatorAddress)
                        call optionsCalculatorAddress.mem[mem[64] len 4] with:
                             gas gas_remaining - 710 wei
                            args mem[mem[64] + 4 len 320]
                        require ext_call.success
                        if ext_call.return_data[0] > 0:
                            mem[mem[64] + 36] = uint32(block.timestamp)
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0x2462f6f1 with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), uint32(block.timestamp)
                            require ext_call.success
                            remainingPoolOptions += ext_call.return_data[0]
                            totalExtraOptions -= ext_call.return_data[32]
                        else:
                            if ext_call.return_data[32] > 0:
                                mem[mem[64] + 36] = uint32(block.timestamp)
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x2462f6f1 with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), uint32(block.timestamp)
                                require ext_call.success
                                remainingPoolOptions += ext_call.return_data[0]
                                totalExtraOptions -= ext_call.return_data[32]
                mem[mem[64] + 32] = 0
                require ext_code.size(employeesAddress)
                call employeesAddress.0x949d225d with:
                     gas gas_remaining - 710 wei
                mem[mem[64]] = ext_call.return_data[0]
                require ext_call.success
                s = _1944
                t = ext_call.return_data[0]
                idx = idx + 1
                t = _1944
                continue 
}

function employeeMigratesToNewESOP(address arg1) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    require esopState <= 2
    require esopState == 1
    require ext_code.size(employeesAddress)
    call employeesAddress.hasEmployee(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require codeUpdateState <= 1
    require not codeUpdateState
    require arg1
    mem[0] = msg.sender
    mem[32] = 10
    require stor10[address(msg.sender)] == arg1
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    mem[64] = 960
    mem[672] = 0
    mem[704 len 256] = 0
    require esopState <= 2
    require esopState == 1
    require codeUpdateState <= 1
    require not codeUpdateState
    require block.timestamp <= test266151307()
    mem[992] = 0
    mem[960] = 0x949d225d00000000000000000000000000000000000000000000000000000000
    require ext_code.size(employeesAddress)
    call employeesAddress.mem[var83003 len 4] with:
         gas gas_remaining - 710 wei
        args mem[var83003 + 4 len var83004 - 4]
    mem[var83005] = ext_call.return_data[0]
    require ext_call.success
    if uint32(stor0.field_168) > 0:
        if var85008 >= 0:
            require ext_code.size(employeesAddress)
            call employeesAddress.getSerializedEmployee(address rg1) with:
                 gas gas_remaining - 710 wei
                args msg.sender
            require ext_call.success
            require ext_call.return_data[224] <= 4
            if ext_call.return_data[224] != 2:
                require ext_call.return_data[224] <= 4
                if ext_call.return_data[224] != 3:
                    emit ReturnCode(1);
                    return 1
            require block.timestamp <= test266151307()
            require ext_code.size(optionsCalculatorAddress)
            if uint32(stor0.field_168) > 0:
                call optionsCalculatorAddress.0xec4bfdd4 with:
                     gas gas_remaining - 710 wei
                    args ext_call.return_data[0], ext_call.return_data[32 len 256], uint32(stor0.field_0), 0, 0
            else:
                call optionsCalculatorAddress.0xec4bfdd4 with:
                     gas gas_remaining - 710 wei
                    args ext_call.return_data[0], ext_call.return_data[32 len 256], block.timestamp << 224, 0, 0
            require ext_call.success
            stor10[address(msg.sender)] = 0
            require ext_code.size(arg1)
            call arg1.migrate(address rg1, uint256 rg2, uint256 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, ext_call.return_data[0], ext_call.return_data[32]
            require ext_call.success
            require ext_call.return_data[224] <= 4
            if ext_call.return_data[224] == 2:
                totalExtraOptions -= ext_call.return_data[188 len 4]
            else:
                totalExtraOptions -= ext_call.return_data[32]
            require ext_call.return_data[224] <= 4
            if ext_call.return_data[224] == 2:
                totalPoolOptions -= ext_call.return_data[156 len 4]
            else:
                totalPoolOptions -= ext_call.return_data[0]
        else:
            mem[992] = 0
            mem[960] = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
            mem[964] = var87005
            require ext_code.size(employeesAddress)
            call employeesAddress.mem[var89003 len 4] with:
                 gas gas_remaining - 710 wei
                args mem[var89003 + 4 len var89004 - 4]
            mem[var89005] = ext_call.return_data[0]
            require ext_call.success
            mem[992] = 0
            require ext_code.size(employeesAddress)
            call employeesAddress.0x949d225d with:
                 gas gas_remaining - 710 wei
            mem[960] = ext_call.return_data[0]
            require ext_call.success
            s = var91006
            t = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
            idx = var91008
            t = var91010
            while idx + 1 < uint16(ext_call.return_data[0]):
                require ext_code.size(employeesAddress)
                call employeesAddress.0xedf26d9b with:
                     gas gas_remaining - 710 wei
                    args (idx + 1)
                require ext_call.success
                if not address(ext_call.return_data[0]):
                    mem[mem[64] + 32] = 0
                    require ext_code.size(employeesAddress)
                    call employeesAddress.0x949d225d with:
                         gas gas_remaining - 710 wei
                    mem[mem[64]] = ext_call.return_data[0]
                    require ext_call.success
                    s = s
                    t = ext_call.return_data[0]
                    idx = idx + 1
                    t = t
                    continue 
                mem[mem[64] + 288] = 0
                require ext_code.size(employeesAddress)
                call employeesAddress.getSerializedEmployee(address rg1) with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0])
                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                require ext_call.success
                _3206 = mem[64]
                mem[64] = mem[64] + 288
                _3214 = mem[64]
                mem[64] = mem[64] + 288
                mem[_3214] = 0
                mem[_3214 + 32] = 0
                mem[_3214 + 64] = 0
                mem[_3214 + 96] = 0
                mem[_3214 + 128] = 0
                mem[_3214 + 160] = 0
                mem[_3214 + 192] = 0
                mem[_3214 + 224] = 0
                mem[_3214 + 256] = 0
                require mem[_3206 + 224] <= 4
                if mem[_3206 + 224] == 1:
                    if uint32(stor0.field_168) > mem[_3206 + 60 len 4]:
                        _3343 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_3343] = 0
                        mem[_3343 + 32] = 0
                        mem[_3343 + 64] = 0
                        mem[_3343 + 96] = 0
                        mem[_3343 + 128] = 0
                        mem[_3343 + 160] = 0
                        mem[_3343 + 192] = 0
                        mem[_3343 + 224] = 0
                        mem[_3343 + 256] = 0
                        mem[mem[64] + 32] = 0
                        mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(employeesAddress)
                        call employeesAddress.mem[var124003 len 4] with:
                             gas gas_remaining - 710 wei
                            args mem[var124003 + 4 len var124004 - 4]
                        mem[var124005] = ext_call.return_data[0]
                        require ext_call.success
                        if var126006 >= 0:
                            remainingPoolOptions += var126010
                        else:
                            mem[mem[64] + 32] = 0
                            mem[mem[64]] = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = var128003
                            require ext_code.size(employeesAddress)
                            call employeesAddress.mem[var130003 len 4] with:
                                 gas gas_remaining - 710 wei
                                args mem[var130003 + 4 len var130004 - 4]
                            mem[var130005] = ext_call.return_data[0]
                            require ext_call.success
                            mem[mem[64] + 32] = 0
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0x949d225d with:
                                 gas gas_remaining - 710 wei
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                            t = var132004
                            u = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                            s = var132006
                            u = var132007
                            v = var132010
                            while s + 1 < uint16(ext_call.return_data[0]):
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0xedf26d9b with:
                                     gas gas_remaining - 710 wei
                                    args (s + 1)
                                require ext_call.success
                                if not address(ext_call.return_data[0]):
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x949d225d with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    mem[mem[64] + 32] = 0
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x949d225d with:
                                         gas gas_remaining - 710 wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    require ext_call.success
                                    t = t
                                    u = ext_call.return_data[0]
                                    s = s + 1
                                    u = u
                                    v = v
                                    continue 
                                _8930 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_8930] = 0
                                mem[_8930 + 32] = 0
                                mem[_8930 + 64] = 0
                                mem[_8930 + 96] = 0
                                mem[_8930 + 128] = 0
                                mem[_8930 + 160] = 0
                                mem[_8930 + 192] = 0
                                mem[_8930 + 224] = 0
                                mem[_8930 + 256] = 0
                                mem[mem[64] + 288] = 0
                                require ext_code.size(employeesAddress)
                                call employeesAddress.getSerializedEmployee(address rg1) with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0])
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                require ext_call.success
                                _9082 = mem[64]
                                mem[64] = mem[64] + 288
                                _9143 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_9143] = 0
                                mem[_9143 + 32] = 0
                                mem[_9143 + 64] = 0
                                mem[_9143 + 96] = 0
                                mem[_9143 + 128] = 0
                                mem[_9143 + 160] = 0
                                mem[_9143 + 192] = 0
                                mem[_9143 + 224] = 0
                                mem[_9143 + 256] = 0
                                if mem[_9082 + 156 len 4] <= 0:
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x949d225d with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    mem[mem[64] + 32] = 0
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x949d225d with:
                                         gas gas_remaining - 710 wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    require ext_call.success
                                    t = t
                                    u = ext_call.return_data[0]
                                    s = s + 1
                                    u = _9082
                                    v = v
                                    continue 
                                require mem[_9082 + 224] <= 4
                                if mem[_9082 + 224] == 1:
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 4] = v
                                    require ext_code.size(optionsCalculatorAddress)
                                    call optionsCalculatorAddress.0xdcec5ecc with:
                                         gas gas_remaining - 710 wei
                                        args v
                                    mem[mem[64]] = ext_call.return_data[0]
                                    require ext_call.success
                                    mem[_9082 + 128] = uint32(ext_call.return_data[0] + mem[_9082 + 128])
                                    _9614 = mem[_9082]
                                    _9615 = mem[_9082 + 32]
                                    _9616 = mem[_9082 + 64]
                                    _9617 = mem[_9082 + 96]
                                    _9618 = mem[_9082 + 128]
                                    _9619 = mem[_9082 + 160]
                                    _9620 = mem[_9082 + 192]
                                    _9621 = mem[_9082 + 224]
                                    mem[mem[64] + 36] = mem[_9082 + 28 len 4]
                                    mem[mem[64] + 68] = uint32(_9615)
                                    mem[mem[64] + 100] = uint32(_9616)
                                    mem[mem[64] + 132] = uint32(_9617)
                                    mem[mem[64] + 164] = uint32(_9618)
                                    mem[mem[64] + 196] = uint32(_9619)
                                    mem[mem[64] + 228] = uint32(_9620)
                                    require _9621 <= 4
                                    mem[mem[64] + 260] = uint8(_9621)
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x73ece9c4 with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), _9614 << 224, _9615 << 224, _9616 << 224, _9617 << 224, _9618 << 224, _9619 << 224, _9620 << 224, uint8(_9621)
                                else:
                                    require mem[_9082 + 224] <= 4
                                    if mem[_9082 + 224] != 2:
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x949d225d with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        mem[mem[64] + 32] = 0
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x949d225d with:
                                             gas gas_remaining - 710 wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        require ext_call.success
                                        t = t
                                        u = ext_call.return_data[0]
                                        s = s + 1
                                        u = _9082
                                        v = v
                                        continue 
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 4] = v
                                    require ext_code.size(optionsCalculatorAddress)
                                    call optionsCalculatorAddress.0xdcec5ecc with:
                                         gas gas_remaining - 710 wei
                                        args v
                                    mem[mem[64]] = ext_call.return_data[0]
                                    require ext_call.success
                                    mem[_9082 + 128] = uint32(ext_call.return_data[0] + mem[_9082 + 128])
                                    _9714 = mem[_9082]
                                    _9715 = mem[_9082 + 32]
                                    _9716 = mem[_9082 + 64]
                                    _9717 = mem[_9082 + 96]
                                    _9718 = mem[_9082 + 128]
                                    _9719 = mem[_9082 + 160]
                                    _9720 = mem[_9082 + 192]
                                    _9721 = mem[_9082 + 224]
                                    mem[mem[64] + 36] = mem[_9082 + 28 len 4]
                                    mem[mem[64] + 68] = uint32(_9715)
                                    mem[mem[64] + 100] = uint32(_9716)
                                    mem[mem[64] + 132] = uint32(_9717)
                                    mem[mem[64] + 164] = uint32(_9718)
                                    mem[mem[64] + 196] = uint32(_9719)
                                    mem[mem[64] + 228] = uint32(_9720)
                                    require _9721 <= 4
                                    mem[mem[64] + 260] = uint8(_9721)
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x73ece9c4 with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), _9714 << 224, _9715 << 224, _9716 << 224, _9717 << 224, _9718 << 224, _9719 << 224, _9720 << 224, uint8(_9721)
                                require ext_call.success
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x949d225d with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                mem[mem[64] + 32] = 0
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x949d225d with:
                                     gas gas_remaining - 710 wei
                                mem[mem[64]] = ext_call.return_data[0]
                                require ext_call.success
                                t = ext_call.return_data[0]
                                u = ext_call.return_data[0]
                                s = s + 1
                                u = _9082
                                v = v - uint32(ext_call.return_data[0])
                                continue 
                            remainingPoolOptions += v
                        totalExtraOptions -= mem[_3206 + 188 len 4]
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        require ext_code.size(employeesAddress)
                        call employeesAddress.0xd108177a with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0])
                        mem[mem[64]] = ext_call.return_data[0]
                        require ext_call.success
                require mem[_3206 + 224] <= 4
                if mem[_3206 + 224] == 3:
                    if uint32(stor0.field_168) > mem[_3206 + 124 len 4]:
                        mem[mem[64] + 64] = 0
                        mem[mem[64]] = 0xb1989a2b00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint32(stor0.field_168)
                        mem[mem[64] + 36] = mem[_3206]
                        t = _3206
                        u = mem[64] + 36
                        s = 288
                        while s > 32:
                            mem[mem[64] + 32] = 0
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0x949d225d with:
                                 gas gas_remaining - 710 wei
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                            mem[u + 32] = mem[t + 32]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        require ext_code.size(optionsCalculatorAddress)
                        call optionsCalculatorAddress.mem[mem[64] len 4] with:
                             gas gas_remaining - 710 wei
                            args mem[mem[64] + 4 len 320]
                        require ext_call.success
                        if ext_call.return_data[0] > 0:
                            mem[mem[64] + 36] = uint32(stor0.field_168)
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0x2462f6f1 with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), uint32(stor0.field_168)
                            require ext_call.success
                            remainingPoolOptions += ext_call.return_data[0]
                            totalExtraOptions -= ext_call.return_data[32]
                        else:
                            if ext_call.return_data[32] > 0:
                                mem[mem[64] + 36] = uint32(stor0.field_168)
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x2462f6f1 with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), uint32(stor0.field_168)
                                require ext_call.success
                                remainingPoolOptions += ext_call.return_data[0]
                                totalExtraOptions -= ext_call.return_data[32]
                mem[mem[64] + 32] = 0
                require ext_code.size(employeesAddress)
                call employeesAddress.0x949d225d with:
                     gas gas_remaining - 710 wei
                mem[mem[64]] = ext_call.return_data[0]
                require ext_call.success
                s = _3206
                t = ext_call.return_data[0]
                idx = idx + 1
                t = _3206
                continue 
            _3208 = mem[64]
            mem[64] = mem[64] + 288
            mem[_3208] = 0
            mem[_3208 + 32] = 0
            mem[_3208 + 64] = 0
            mem[_3208 + 96] = 0
            mem[_3208 + 128] = 0
            mem[_3208 + 160] = 0
            mem[_3208 + 192] = 0
            mem[_3208 + 224] = 0
            mem[_3208 + 256] = 0
            mem[mem[64] + 288] = 0
            require ext_code.size(employeesAddress)
            call employeesAddress.getSerializedEmployee(address rg1) with:
                 gas gas_remaining - 710 wei
                args msg.sender
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            require ext_call.success
            _3230 = mem[64]
            mem[64] = mem[64] + 288
            _3248 = mem[64]
            mem[64] = mem[64] + 288
            mem[_3248] = 0
            mem[_3248 + 32] = 0
            mem[_3248 + 64] = 0
            mem[_3248 + 96] = 0
            mem[_3248 + 128] = 0
            mem[_3248 + 160] = 0
            mem[_3248 + 192] = 0
            mem[_3248 + 224] = 0
            mem[_3248 + 256] = 0
            require mem[_3230 + 224] <= 4
            if mem[_3230 + 224] == 2:
                _3440 = mem[64]
                mem[64] = mem[64] + 288
                mem[_3440] = 0
                mem[_3440 + 32 len 256] = 0
            else:
                require mem[_3230 + 224] <= 4
                if mem[_3230 + 224] != 3:
                    emit ReturnCode(1);
                    return 1
                _3498 = mem[64]
                mem[64] = mem[64] + 288
                mem[_3498] = 0
                mem[_3498 + 32 len 256] = 0
            require block.timestamp <= test266151307()
            mem[mem[64] + 96] = 0
            mem[mem[64]] = 0xec4bfdd400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = mem[_3230]
            mem[mem[64] + 36 len 256] = mem[_3230 + 32 len 256]
            if uint32(stor0.field_168) > 0:
                mem[mem[64] + 292] = uint32(stor0.field_168)
                mem[mem[64] + 324] = 0
                mem[mem[64] + 356] = 0
                require ext_code.size(optionsCalculatorAddress)
                call optionsCalculatorAddress.0xec4bfdd4 with:
                     gas gas_remaining - 710 wei
                    args mem[mem[64] + 4 len 288], uint32(stor0.field_0), 0, 0
            else:
                mem[mem[64] + 292] = uint32(block.timestamp)
                mem[mem[64] + 324] = 0
                mem[mem[64] + 356] = 0
                require ext_code.size(optionsCalculatorAddress)
                call optionsCalculatorAddress.0xec4bfdd4 with:
                     gas gas_remaining - 710 wei
                    args mem[mem[64] + 4 len 288], block.timestamp << 224, 0, 0
            require ext_call.success
            stor10[address(msg.sender)] = 0
            mem[mem[64]] = 0xfc22d0e500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = ext_call.return_data[0]
            mem[mem[64] + 68] = ext_call.return_data[32]
            require ext_code.size(arg1)
            call arg1.migrate(address rg1, uint256 rg2, uint256 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, ext_call.return_data[0], ext_call.return_data[32]
            require ext_call.success
            require mem[_3230 + 224] <= 4
            if mem[_3230 + 224] == 2:
                totalExtraOptions -= mem[_3230 + 188 len 4]
            else:
                totalExtraOptions -= ext_call.return_data[32]
            require mem[_3230 + 224] <= 4
            if mem[_3230 + 224] == 2:
                totalPoolOptions -= mem[_3230 + 156 len 4]
            else:
                totalPoolOptions -= ext_call.return_data[0]
    else:
        if var85008 >= 0:
            require ext_code.size(employeesAddress)
            call employeesAddress.getSerializedEmployee(address rg1) with:
                 gas gas_remaining - 710 wei
                args msg.sender
            require ext_call.success
            require ext_call.return_data[224] <= 4
            if ext_call.return_data[224] != 2:
                require ext_call.return_data[224] <= 4
                if ext_call.return_data[224] != 3:
                    emit ReturnCode(1);
                    return 1
            require block.timestamp <= test266151307()
            require ext_code.size(optionsCalculatorAddress)
            if uint32(stor0.field_168) > 0:
                call optionsCalculatorAddress.0xec4bfdd4 with:
                     gas gas_remaining - 710 wei
                    args ext_call.return_data[0], ext_call.return_data[32 len 256], uint32(stor0.field_0), 0, 0
            else:
                call optionsCalculatorAddress.0xec4bfdd4 with:
                     gas gas_remaining - 710 wei
                    args ext_call.return_data[0], ext_call.return_data[32 len 256], block.timestamp << 224, 0, 0
            require ext_call.success
            stor10[address(msg.sender)] = 0
            require ext_code.size(arg1)
            call arg1.migrate(address rg1, uint256 rg2, uint256 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, ext_call.return_data[0], ext_call.return_data[32]
            require ext_call.success
            require ext_call.return_data[224] <= 4
            if ext_call.return_data[224] == 2:
                totalExtraOptions -= ext_call.return_data[188 len 4]
            else:
                totalExtraOptions -= ext_call.return_data[32]
            require ext_call.return_data[224] <= 4
            if ext_call.return_data[224] == 2:
                totalPoolOptions -= ext_call.return_data[156 len 4]
            else:
                totalPoolOptions -= ext_call.return_data[0]
        else:
            mem[992] = 0
            mem[960] = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
            mem[964] = var87005
            require ext_code.size(employeesAddress)
            call employeesAddress.mem[var89003 len 4] with:
                 gas gas_remaining - 710 wei
                args mem[var89003 + 4 len var89004 - 4]
            mem[var89005] = ext_call.return_data[0]
            require ext_call.success
            mem[992] = 0
            require ext_code.size(employeesAddress)
            call employeesAddress.0x949d225d with:
                 gas gas_remaining - 710 wei
            mem[960] = ext_call.return_data[0]
            require ext_call.success
            s = var91006
            t = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
            idx = var91008
            t = var91010
            while idx + 1 < uint16(ext_call.return_data[0]):
                require ext_code.size(employeesAddress)
                call employeesAddress.0xedf26d9b with:
                     gas gas_remaining - 710 wei
                    args (idx + 1)
                require ext_call.success
                if not address(ext_call.return_data[0]):
                    mem[mem[64] + 32] = 0
                    require ext_code.size(employeesAddress)
                    call employeesAddress.0x949d225d with:
                         gas gas_remaining - 710 wei
                    mem[mem[64]] = ext_call.return_data[0]
                    require ext_call.success
                    s = s
                    t = ext_call.return_data[0]
                    idx = idx + 1
                    t = t
                    continue 
                mem[mem[64] + 288] = 0
                require ext_code.size(employeesAddress)
                call employeesAddress.getSerializedEmployee(address rg1) with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0])
                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                require ext_call.success
                _3207 = mem[64]
                mem[64] = mem[64] + 288
                _3216 = mem[64]
                mem[64] = mem[64] + 288
                mem[_3216] = 0
                mem[_3216 + 32] = 0
                mem[_3216 + 64] = 0
                mem[_3216 + 96] = 0
                mem[_3216 + 128] = 0
                mem[_3216 + 160] = 0
                mem[_3216 + 192] = 0
                mem[_3216 + 224] = 0
                mem[_3216 + 256] = 0
                require mem[_3207 + 224] <= 4
                if mem[_3207 + 224] == 1:
                    if uint32(block.timestamp) > mem[_3207 + 60 len 4]:
                        _3350 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_3350] = 0
                        mem[_3350 + 32] = 0
                        mem[_3350 + 64] = 0
                        mem[_3350 + 96] = 0
                        mem[_3350 + 128] = 0
                        mem[_3350 + 160] = 0
                        mem[_3350 + 192] = 0
                        mem[_3350 + 224] = 0
                        mem[_3350 + 256] = 0
                        mem[mem[64] + 32] = 0
                        mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(employeesAddress)
                        call employeesAddress.mem[var124003 len 4] with:
                             gas gas_remaining - 710 wei
                            args mem[var124003 + 4 len var124004 - 4]
                        mem[var124005] = ext_call.return_data[0]
                        require ext_call.success
                        if var126006 >= 0:
                            remainingPoolOptions += var126010
                        else:
                            mem[mem[64] + 32] = 0
                            mem[mem[64]] = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = var128003
                            require ext_code.size(employeesAddress)
                            call employeesAddress.mem[var130003 len 4] with:
                                 gas gas_remaining - 710 wei
                                args mem[var130003 + 4 len var130004 - 4]
                            mem[var130005] = ext_call.return_data[0]
                            require ext_call.success
                            mem[mem[64] + 32] = 0
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0x949d225d with:
                                 gas gas_remaining - 710 wei
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                            t = var132004
                            u = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                            s = var132006
                            u = var132007
                            v = var132010
                            while s + 1 < uint16(ext_call.return_data[0]):
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0xedf26d9b with:
                                     gas gas_remaining - 710 wei
                                    args (s + 1)
                                require ext_call.success
                                if not address(ext_call.return_data[0]):
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x949d225d with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    mem[mem[64] + 32] = 0
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x949d225d with:
                                         gas gas_remaining - 710 wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    require ext_call.success
                                    t = t
                                    u = ext_call.return_data[0]
                                    s = s + 1
                                    u = u
                                    v = v
                                    continue 
                                _8946 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_8946] = 0
                                mem[_8946 + 32] = 0
                                mem[_8946 + 64] = 0
                                mem[_8946 + 96] = 0
                                mem[_8946 + 128] = 0
                                mem[_8946 + 160] = 0
                                mem[_8946 + 192] = 0
                                mem[_8946 + 224] = 0
                                mem[_8946 + 256] = 0
                                mem[mem[64] + 288] = 0
                                require ext_code.size(employeesAddress)
                                call employeesAddress.getSerializedEmployee(address rg1) with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0])
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                require ext_call.success
                                _9099 = mem[64]
                                mem[64] = mem[64] + 288
                                _9159 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_9159] = 0
                                mem[_9159 + 32] = 0
                                mem[_9159 + 64] = 0
                                mem[_9159 + 96] = 0
                                mem[_9159 + 128] = 0
                                mem[_9159 + 160] = 0
                                mem[_9159 + 192] = 0
                                mem[_9159 + 224] = 0
                                mem[_9159 + 256] = 0
                                if mem[_9099 + 156 len 4] <= 0:
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x949d225d with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    mem[mem[64] + 32] = 0
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x949d225d with:
                                         gas gas_remaining - 710 wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    require ext_call.success
                                    t = t
                                    u = ext_call.return_data[0]
                                    s = s + 1
                                    u = _9099
                                    v = v
                                    continue 
                                require mem[_9099 + 224] <= 4
                                if mem[_9099 + 224] == 1:
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 4] = v
                                    require ext_code.size(optionsCalculatorAddress)
                                    call optionsCalculatorAddress.0xdcec5ecc with:
                                         gas gas_remaining - 710 wei
                                        args v
                                    mem[mem[64]] = ext_call.return_data[0]
                                    require ext_call.success
                                    mem[_9099 + 128] = uint32(ext_call.return_data[0] + mem[_9099 + 128])
                                    _9635 = mem[_9099]
                                    _9636 = mem[_9099 + 32]
                                    _9637 = mem[_9099 + 64]
                                    _9638 = mem[_9099 + 96]
                                    _9639 = mem[_9099 + 128]
                                    _9640 = mem[_9099 + 160]
                                    _9641 = mem[_9099 + 192]
                                    _9642 = mem[_9099 + 224]
                                    mem[mem[64] + 36] = mem[_9099 + 28 len 4]
                                    mem[mem[64] + 68] = uint32(_9636)
                                    mem[mem[64] + 100] = uint32(_9637)
                                    mem[mem[64] + 132] = uint32(_9638)
                                    mem[mem[64] + 164] = uint32(_9639)
                                    mem[mem[64] + 196] = uint32(_9640)
                                    mem[mem[64] + 228] = uint32(_9641)
                                    require _9642 <= 4
                                    mem[mem[64] + 260] = uint8(_9642)
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x73ece9c4 with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), _9635 << 224, _9636 << 224, _9637 << 224, _9638 << 224, _9639 << 224, _9640 << 224, _9641 << 224, uint8(_9642)
                                else:
                                    require mem[_9099 + 224] <= 4
                                    if mem[_9099 + 224] != 2:
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x949d225d with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        mem[mem[64] + 32] = 0
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x949d225d with:
                                             gas gas_remaining - 710 wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        require ext_call.success
                                        t = t
                                        u = ext_call.return_data[0]
                                        s = s + 1
                                        u = _9099
                                        v = v
                                        continue 
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 4] = v
                                    require ext_code.size(optionsCalculatorAddress)
                                    call optionsCalculatorAddress.0xdcec5ecc with:
                                         gas gas_remaining - 710 wei
                                        args v
                                    mem[mem[64]] = ext_call.return_data[0]
                                    require ext_call.success
                                    mem[_9099 + 128] = uint32(ext_call.return_data[0] + mem[_9099 + 128])
                                    _9725 = mem[_9099]
                                    _9726 = mem[_9099 + 32]
                                    _9727 = mem[_9099 + 64]
                                    _9728 = mem[_9099 + 96]
                                    _9729 = mem[_9099 + 128]
                                    _9730 = mem[_9099 + 160]
                                    _9731 = mem[_9099 + 192]
                                    _9732 = mem[_9099 + 224]
                                    mem[mem[64] + 36] = mem[_9099 + 28 len 4]
                                    mem[mem[64] + 68] = uint32(_9726)
                                    mem[mem[64] + 100] = uint32(_9727)
                                    mem[mem[64] + 132] = uint32(_9728)
                                    mem[mem[64] + 164] = uint32(_9729)
                                    mem[mem[64] + 196] = uint32(_9730)
                                    mem[mem[64] + 228] = uint32(_9731)
                                    require _9732 <= 4
                                    mem[mem[64] + 260] = uint8(_9732)
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x73ece9c4 with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), _9725 << 224, _9726 << 224, _9727 << 224, _9728 << 224, _9729 << 224, _9730 << 224, _9731 << 224, uint8(_9732)
                                require ext_call.success
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x949d225d with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                mem[mem[64] + 32] = 0
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x949d225d with:
                                     gas gas_remaining - 710 wei
                                mem[mem[64]] = ext_call.return_data[0]
                                require ext_call.success
                                t = ext_call.return_data[0]
                                u = ext_call.return_data[0]
                                s = s + 1
                                u = _9099
                                v = v - uint32(ext_call.return_data[0])
                                continue 
                            remainingPoolOptions += v
                        totalExtraOptions -= mem[_3207 + 188 len 4]
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        require ext_code.size(employeesAddress)
                        call employeesAddress.0xd108177a with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0])
                        mem[mem[64]] = ext_call.return_data[0]
                        require ext_call.success
                require mem[_3207 + 224] <= 4
                if mem[_3207 + 224] == 3:
                    if uint32(block.timestamp) > mem[_3207 + 124 len 4]:
                        mem[mem[64] + 64] = 0
                        mem[mem[64]] = 0xb1989a2b00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint32(block.timestamp)
                        mem[mem[64] + 36] = mem[_3207]
                        t = _3207
                        u = mem[64] + 36
                        s = 288
                        while s > 32:
                            mem[mem[64] + 32] = 0
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0x949d225d with:
                                 gas gas_remaining - 710 wei
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                            mem[u + 32] = mem[t + 32]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        require ext_code.size(optionsCalculatorAddress)
                        call optionsCalculatorAddress.mem[mem[64] len 4] with:
                             gas gas_remaining - 710 wei
                            args mem[mem[64] + 4 len 320]
                        require ext_call.success
                        if ext_call.return_data[0] > 0:
                            mem[mem[64] + 36] = uint32(block.timestamp)
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0x2462f6f1 with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), uint32(block.timestamp)
                            require ext_call.success
                            remainingPoolOptions += ext_call.return_data[0]
                            totalExtraOptions -= ext_call.return_data[32]
                        else:
                            if ext_call.return_data[32] > 0:
                                mem[mem[64] + 36] = uint32(block.timestamp)
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x2462f6f1 with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), uint32(block.timestamp)
                                require ext_call.success
                                remainingPoolOptions += ext_call.return_data[0]
                                totalExtraOptions -= ext_call.return_data[32]
                mem[mem[64] + 32] = 0
                require ext_code.size(employeesAddress)
                call employeesAddress.0x949d225d with:
                     gas gas_remaining - 710 wei
                mem[mem[64]] = ext_call.return_data[0]
                require ext_call.success
                s = _3207
                t = ext_call.return_data[0]
                idx = idx + 1
                t = _3207
                continue 
            _3211 = mem[64]
            mem[64] = mem[64] + 288
            mem[_3211] = 0
            mem[_3211 + 32] = 0
            mem[_3211 + 64] = 0
            mem[_3211 + 96] = 0
            mem[_3211 + 128] = 0
            mem[_3211 + 160] = 0
            mem[_3211 + 192] = 0
            mem[_3211 + 224] = 0
            mem[_3211 + 256] = 0
            mem[mem[64] + 288] = 0
            require ext_code.size(employeesAddress)
            call employeesAddress.getSerializedEmployee(address rg1) with:
                 gas gas_remaining - 710 wei
                args msg.sender
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            require ext_call.success
            _3233 = mem[64]
            mem[64] = mem[64] + 288
            _3251 = mem[64]
            mem[64] = mem[64] + 288
            mem[_3251] = 0
            mem[_3251 + 32] = 0
            mem[_3251 + 64] = 0
            mem[_3251 + 96] = 0
            mem[_3251 + 128] = 0
            mem[_3251 + 160] = 0
            mem[_3251 + 192] = 0
            mem[_3251 + 224] = 0
            mem[_3251 + 256] = 0
            require mem[_3233 + 224] <= 4
            if mem[_3233 + 224] == 2:
                _3450 = mem[64]
                mem[64] = mem[64] + 288
                mem[_3450] = 0
                mem[_3450 + 32 len 256] = 0
            else:
                require mem[_3233 + 224] <= 4
                if mem[_3233 + 224] != 3:
                    emit ReturnCode(1);
                    return 1
                _3505 = mem[64]
                mem[64] = mem[64] + 288
                mem[_3505] = 0
                mem[_3505 + 32 len 256] = 0
            require block.timestamp <= test266151307()
            mem[mem[64] + 96] = 0
            mem[mem[64]] = 0xec4bfdd400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = mem[_3233]
            mem[mem[64] + 36 len 256] = mem[_3233 + 32 len 256]
            if uint32(stor0.field_168) > 0:
                mem[mem[64] + 292] = uint32(stor0.field_168)
                mem[mem[64] + 324] = 0
                mem[mem[64] + 356] = 0
                require ext_code.size(optionsCalculatorAddress)
                call optionsCalculatorAddress.0xec4bfdd4 with:
                     gas gas_remaining - 710 wei
                    args mem[mem[64] + 4 len 288], uint32(stor0.field_0), 0, 0
            else:
                mem[mem[64] + 292] = uint32(block.timestamp)
                mem[mem[64] + 324] = 0
                mem[mem[64] + 356] = 0
                require ext_code.size(optionsCalculatorAddress)
                call optionsCalculatorAddress.0xec4bfdd4 with:
                     gas gas_remaining - 710 wei
                    args mem[mem[64] + 4 len 288], block.timestamp << 224, 0, 0
            require ext_call.success
            stor10[address(msg.sender)] = 0
            mem[mem[64]] = 0xfc22d0e500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = ext_call.return_data[0]
            mem[mem[64] + 68] = ext_call.return_data[32]
            require ext_code.size(arg1)
            call arg1.migrate(address rg1, uint256 rg2, uint256 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, ext_call.return_data[0], ext_call.return_data[32]
            require ext_call.success
            require mem[_3233 + 224] <= 4
            if mem[_3233 + 224] == 2:
                totalExtraOptions -= mem[_3233 + 188 len 4]
            else:
                totalExtraOptions -= ext_call.return_data[32]
            require mem[_3233 + 224] <= 4
            if mem[_3233 + 224] == 2:
                totalPoolOptions -= mem[_3233 + 156 len 4]
            else:
                totalPoolOptions -= ext_call.return_data[0]
    require ext_code.size(employeesAddress)
    call employeesAddress.0xd108177a with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    emit EmployeeMigrated(address(arg1), ext_call.return_data[0], ext_call.return_data[32], msg.sender);
    return 0
}

function terminateEmployee(address arg1, uint32 arg2, uint8 arg3) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    require esopState <= 2
    require esopState == 1
    require companyAddress == msg.sender
    require ext_code.size(employeesAddress)
    call employeesAddress.hasEmployee(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0]
    require codeUpdateState <= 1
    require not codeUpdateState
    require arg3 <= 1
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    require ext_code.size(employeesAddress)
    call employeesAddress.getSerializedEmployee(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    mem[672 len 288] = ext_call.return_data[0 len 288]
    require ext_call.success
    mem[960] = 0
    mem[992] = 0
    mem[1024] = 0
    mem[1056] = 0
    mem[1088] = 0
    mem[1120] = 0
    mem[1152] = 0
    mem[1184] = 0
    mem[1216] = 0
    if arg2 < ext_call.return_data[28 len 4]:
        emit ReturnCode(3);
        return 3
    require ext_call.return_data[224] <= 4
    if ext_call.return_data[224] == 1:
        require ext_code.size(employeesAddress)
        call employeesAddress.0xd108177a with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        mem[64] = 1536
        mem[1248] = 0
        mem[1280] = 0
        mem[1312] = 0
        mem[1344] = 0
        mem[1376] = 0
        mem[1408] = 0
        mem[1440] = 0
        mem[1472] = 0
        mem[1504] = 0
        mem[1568] = 0
        mem[1536] = 0x949d225d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(employeesAddress)
        call employeesAddress.mem[var95003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var95003 + 4 len var95004 - 4]
        mem[var95005] = ext_call.return_data[0]
        require ext_call.success
        if var97006 >= 0:
            remainingPoolOptions += var97010
        else:
            mem[1568] = 0
            mem[1536] = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
            mem[1540] = var99003
            require ext_code.size(employeesAddress)
            call employeesAddress.mem[var101003 len 4] with:
                 gas gas_remaining - 710 wei
                args mem[var101003 + 4 len var101004 - 4]
            mem[var101005] = ext_call.return_data[0]
            require ext_call.success
            mem[1568] = 0
            require ext_code.size(employeesAddress)
            call employeesAddress.0x949d225d with:
                 gas gas_remaining - 710 wei
            mem[1536] = ext_call.return_data[0]
            require ext_call.success
            s = var103004
            t = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
            idx = var103006
            t = var103007
            u = var103010
            while idx + 1 < uint16(ext_call.return_data[0]):
                require ext_code.size(employeesAddress)
                call employeesAddress.0xedf26d9b with:
                     gas gas_remaining - 710 wei
                    args (idx + 1)
                require ext_call.success
                if not address(ext_call.return_data[0]):
                    mem[mem[64] + 32] = 0
                    mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(employeesAddress)
                    call employeesAddress.0x949d225d with:
                         gas gas_remaining - 710 wei
                        args mem[mem[64] + 4 len -mem[64] + 1536]
                    mem[mem[64]] = ext_call.return_data[0]
                    require ext_call.success
                    s = s
                    t = ext_call.return_data[0]
                    idx = idx + 1
                    t = t
                    u = u
                    continue 
                _4228 = mem[64]
                mem[64] = mem[64] + 288
                mem[_4228] = 0
                mem[_4228 + 32] = 0
                mem[_4228 + 64] = 0
                mem[_4228 + 96] = 0
                mem[_4228 + 128] = 0
                mem[_4228 + 160] = 0
                mem[_4228 + 192] = 0
                mem[_4228 + 224] = 0
                mem[_4228 + 256] = 0
                mem[mem[64] + 288] = 0
                require ext_code.size(employeesAddress)
                call employeesAddress.getSerializedEmployee(address rg1) with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0])
                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                require ext_call.success
                _4269 = mem[64]
                mem[64] = mem[64] + 288
                _4282 = mem[64]
                mem[64] = mem[64] + 288
                mem[_4282] = 0
                mem[_4282 + 32] = 0
                mem[_4282 + 64] = 0
                mem[_4282 + 96] = 0
                mem[_4282 + 128] = 0
                mem[_4282 + 160] = 0
                mem[_4282 + 192] = 0
                mem[_4282 + 224] = 0
                mem[_4282 + 256] = 0
                if mem[_4269 + 156 len 4] <= 0:
                    mem[mem[64] + 32] = 0
                    mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(employeesAddress)
                    call employeesAddress.0x949d225d with:
                         gas gas_remaining - 710 wei
                        args mem[mem[64] + 4 len -mem[64] + 1536]
                    mem[mem[64]] = ext_call.return_data[0]
                    require ext_call.success
                    s = s
                    t = ext_call.return_data[0]
                    idx = idx + 1
                    t = _4269
                    u = u
                    continue 
                require mem[_4269 + 224] <= 4
                if mem[_4269 + 224] == 1:
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 4] = u
                    require ext_code.size(optionsCalculatorAddress)
                    call optionsCalculatorAddress.0xdcec5ecc with:
                         gas gas_remaining - 710 wei
                        args u
                    mem[mem[64]] = ext_call.return_data[0]
                    require ext_call.success
                    mem[_4269 + 128] = uint32(ext_call.return_data[0] + mem[_4269 + 128])
                    _4778 = mem[_4269]
                    _4779 = mem[_4269 + 32]
                    _4780 = mem[_4269 + 64]
                    _4781 = mem[_4269 + 96]
                    _4782 = mem[_4269 + 128]
                    _4783 = mem[_4269 + 160]
                    _4784 = mem[_4269 + 192]
                    _4785 = mem[_4269 + 224]
                    mem[mem[64] + 36] = mem[_4269 + 28 len 4]
                    mem[mem[64] + 68] = uint32(_4779)
                    mem[mem[64] + 100] = uint32(_4780)
                    mem[mem[64] + 132] = uint32(_4781)
                    mem[mem[64] + 164] = uint32(_4782)
                    mem[mem[64] + 196] = uint32(_4783)
                    mem[mem[64] + 228] = uint32(_4784)
                    require _4785 <= 4
                    mem[mem[64] + 260] = uint8(_4785)
                    require ext_code.size(employeesAddress)
                    call employeesAddress.0x73ece9c4 with:
                         gas gas_remaining - 710 wei
                        args address(ext_call.return_data[0]), _4778 << 224, _4779 << 224, _4780 << 224, _4781 << 224, _4782 << 224, _4783 << 224, _4784 << 224, uint8(_4785)
                else:
                    require mem[_4269 + 224] <= 4
                    mem[mem[64] + 32] = 0
                    if mem[_4269 + 224] != 2:
                        mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(employeesAddress)
                        call employeesAddress.0x949d225d with:
                             gas gas_remaining - 710 wei
                            args mem[mem[64] + 4 len -mem[64] + 1536]
                        mem[mem[64]] = ext_call.return_data[0]
                        require ext_call.success
                        s = s
                        t = ext_call.return_data[0]
                        idx = idx + 1
                        t = _4269
                        u = u
                        continue 
                    mem[mem[64] + 4] = u
                    require ext_code.size(optionsCalculatorAddress)
                    call optionsCalculatorAddress.0xdcec5ecc with:
                         gas gas_remaining - 710 wei
                        args u
                    mem[mem[64]] = ext_call.return_data[0]
                    require ext_call.success
                    mem[_4269 + 128] = uint32(ext_call.return_data[0] + mem[_4269 + 128])
                    _4921 = mem[_4269]
                    _4922 = mem[_4269 + 32]
                    _4923 = mem[_4269 + 64]
                    _4924 = mem[_4269 + 96]
                    _4925 = mem[_4269 + 128]
                    _4926 = mem[_4269 + 160]
                    _4927 = mem[_4269 + 192]
                    _4928 = mem[_4269 + 224]
                    mem[mem[64] + 36] = mem[_4269 + 28 len 4]
                    mem[mem[64] + 68] = uint32(_4922)
                    mem[mem[64] + 100] = uint32(_4923)
                    mem[mem[64] + 132] = uint32(_4924)
                    mem[mem[64] + 164] = uint32(_4925)
                    mem[mem[64] + 196] = uint32(_4926)
                    mem[mem[64] + 228] = uint32(_4927)
                    require _4928 <= 4
                    mem[mem[64] + 260] = uint8(_4928)
                    require ext_code.size(employeesAddress)
                    call employeesAddress.0x73ece9c4 with:
                         gas gas_remaining - 710 wei
                        args address(ext_call.return_data[0]), _4921 << 224, _4922 << 224, _4923 << 224, _4924 << 224, _4925 << 224, _4926 << 224, _4927 << 224, uint8(_4928)
                require ext_call.success
                mem[mem[64] + 32] = 0
                mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                require ext_code.size(employeesAddress)
                call employeesAddress.0x949d225d with:
                     gas gas_remaining - 710 wei
                    args mem[mem[64] + 4 len -mem[64] + 1536]
                mem[mem[64]] = ext_call.return_data[0]
                require ext_call.success
                s = ext_call.return_data[0]
                t = ext_call.return_data[0]
                idx = idx + 1
                t = _4269
                u = u - uint32(ext_call.return_data[0])
                continue 
            remainingPoolOptions += u
        totalExtraOptions -= uint32(ext_call.return_data[160])
        emit TerminateEmployee(companyAddress, arg2 << 224, 1, arg1);
    else:
        require ext_call.return_data[224] <= 4
        if ext_call.return_data[224] != 2:
            emit ReturnCode(1);
            return 1
        require arg3 <= 1
        if arg3:
            require arg3 <= 1
            if arg3 != 1:
                mem[64] = 1536
                mem[1248] = 0
                mem[1280] = 0
                mem[1312] = 0
                mem[1344] = 0
                mem[1376] = 0
                mem[1408] = 0
                mem[1440] = 0
                mem[1472] = 0
                mem[1504] = 0
                mem[1568] = 0
                mem[1536] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                require ext_code.size(employeesAddress)
                call employeesAddress.mem[var94003 len 4] with:
                     gas gas_remaining - 710 wei
                    args mem[var94003 + 4 len var94004 - 4]
                mem[var94005] = ext_call.return_data[0]
                require ext_call.success
                if var96006 >= 0:
                    remainingPoolOptions += var96010
                else:
                    mem[1568] = 0
                    mem[1536] = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                    mem[1540] = var98003
                    require ext_code.size(employeesAddress)
                    call employeesAddress.mem[var100003 len 4] with:
                         gas gas_remaining - 710 wei
                        args mem[var100003 + 4 len var100004 - 4]
                    mem[var100005] = ext_call.return_data[0]
                    require ext_call.success
                    mem[1568] = 0
                    require ext_code.size(employeesAddress)
                    call employeesAddress.0x949d225d with:
                         gas gas_remaining - 710 wei
                    mem[1536] = ext_call.return_data[0]
                    require ext_call.success
                    s = var102004
                    t = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                    idx = var102006
                    t = var102007
                    u = var102010
                    while idx + 1 < uint16(ext_call.return_data[0]):
                        require ext_code.size(employeesAddress)
                        call employeesAddress.0xedf26d9b with:
                             gas gas_remaining - 710 wei
                            args (idx + 1)
                        require ext_call.success
                        if not address(ext_call.return_data[0]):
                            mem[mem[64] + 32] = 0
                            mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0x949d225d with:
                                 gas gas_remaining - 710 wei
                                args mem[mem[64] + 4 len -mem[64] + 1536]
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                            s = s
                            t = ext_call.return_data[0]
                            idx = idx + 1
                            t = t
                            u = u
                            continue 
                        _4223 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_4223] = 0
                        mem[_4223 + 32] = 0
                        mem[_4223 + 64] = 0
                        mem[_4223 + 96] = 0
                        mem[_4223 + 128] = 0
                        mem[_4223 + 160] = 0
                        mem[_4223 + 192] = 0
                        mem[_4223 + 224] = 0
                        mem[_4223 + 256] = 0
                        mem[mem[64] + 288] = 0
                        require ext_code.size(employeesAddress)
                        call employeesAddress.getSerializedEmployee(address rg1) with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0])
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        require ext_call.success
                        _4254 = mem[64]
                        mem[64] = mem[64] + 288
                        _4277 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_4277] = 0
                        mem[_4277 + 32] = 0
                        mem[_4277 + 64] = 0
                        mem[_4277 + 96] = 0
                        mem[_4277 + 128] = 0
                        mem[_4277 + 160] = 0
                        mem[_4277 + 192] = 0
                        mem[_4277 + 224] = 0
                        mem[_4277 + 256] = 0
                        if mem[_4254 + 156 len 4] <= 0:
                            mem[mem[64] + 32] = 0
                            mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0x949d225d with:
                                 gas gas_remaining - 710 wei
                                args mem[mem[64] + 4 len -mem[64] + 1536]
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                            s = s
                            t = ext_call.return_data[0]
                            idx = idx + 1
                            t = _4254
                            u = u
                            continue 
                        require mem[_4254 + 224] <= 4
                        if mem[_4254 + 224] == 1:
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 4] = u
                            require ext_code.size(optionsCalculatorAddress)
                            call optionsCalculatorAddress.0xdcec5ecc with:
                                 gas gas_remaining - 710 wei
                                args u
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                            mem[_4254 + 128] = uint32(ext_call.return_data[0] + mem[_4254 + 128])
                            _4703 = mem[_4254]
                            _4704 = mem[_4254 + 32]
                            _4705 = mem[_4254 + 64]
                            _4706 = mem[_4254 + 96]
                            _4707 = mem[_4254 + 128]
                            _4708 = mem[_4254 + 160]
                            _4709 = mem[_4254 + 192]
                            _4710 = mem[_4254 + 224]
                            mem[mem[64] + 36] = mem[_4254 + 28 len 4]
                            mem[mem[64] + 68] = uint32(_4704)
                            mem[mem[64] + 100] = uint32(_4705)
                            mem[mem[64] + 132] = uint32(_4706)
                            mem[mem[64] + 164] = uint32(_4707)
                            mem[mem[64] + 196] = uint32(_4708)
                            mem[mem[64] + 228] = uint32(_4709)
                            require _4710 <= 4
                            mem[mem[64] + 260] = uint8(_4710)
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0x73ece9c4 with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), _4703 << 224, _4704 << 224, _4705 << 224, _4706 << 224, _4707 << 224, _4708 << 224, _4709 << 224, uint8(_4710)
                        else:
                            require mem[_4254 + 224] <= 4
                            mem[mem[64] + 32] = 0
                            if mem[_4254 + 224] != 2:
                                mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x949d225d with:
                                     gas gas_remaining - 710 wei
                                    args mem[mem[64] + 4 len -mem[64] + 1536]
                                mem[mem[64]] = ext_call.return_data[0]
                                require ext_call.success
                                s = s
                                t = ext_call.return_data[0]
                                idx = idx + 1
                                t = _4254
                                u = u
                                continue 
                            mem[mem[64] + 4] = u
                            require ext_code.size(optionsCalculatorAddress)
                            call optionsCalculatorAddress.0xdcec5ecc with:
                                 gas gas_remaining - 710 wei
                                args u
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                            mem[_4254 + 128] = uint32(ext_call.return_data[0] + mem[_4254 + 128])
                            _4871 = mem[_4254]
                            _4872 = mem[_4254 + 32]
                            _4873 = mem[_4254 + 64]
                            _4874 = mem[_4254 + 96]
                            _4875 = mem[_4254 + 128]
                            _4876 = mem[_4254 + 160]
                            _4877 = mem[_4254 + 192]
                            _4878 = mem[_4254 + 224]
                            mem[mem[64] + 36] = mem[_4254 + 28 len 4]
                            mem[mem[64] + 68] = uint32(_4872)
                            mem[mem[64] + 100] = uint32(_4873)
                            mem[mem[64] + 132] = uint32(_4874)
                            mem[mem[64] + 164] = uint32(_4875)
                            mem[mem[64] + 196] = uint32(_4876)
                            mem[mem[64] + 228] = uint32(_4877)
                            require _4878 <= 4
                            mem[mem[64] + 260] = uint8(_4878)
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0x73ece9c4 with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), _4871 << 224, _4872 << 224, _4873 << 224, _4874 << 224, _4875 << 224, _4876 << 224, _4877 << 224, uint8(_4878)
                        require ext_call.success
                        mem[mem[64] + 32] = 0
                        mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(employeesAddress)
                        call employeesAddress.0x949d225d with:
                             gas gas_remaining - 710 wei
                            args mem[mem[64] + 4 len -mem[64] + 1536]
                        mem[mem[64]] = ext_call.return_data[0]
                        require ext_call.success
                        s = ext_call.return_data[0]
                        t = ext_call.return_data[0]
                        idx = idx + 1
                        t = _4254
                        u = u - uint32(ext_call.return_data[0])
                        continue 
                    remainingPoolOptions += u
            else:
                require ext_code.size(employeesAddress)
                call employeesAddress.0xd108177a with:
                     gas gas_remaining - 710 wei
                    args arg1
                require ext_call.success
                mem[64] = 1536
                mem[1248] = 0
                mem[1280] = 0
                mem[1312] = 0
                mem[1344] = 0
                mem[1376] = 0
                mem[1408] = 0
                mem[1440] = 0
                mem[1472] = 0
                mem[1504] = 0
                mem[1568] = 0
                mem[1536] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                require ext_code.size(employeesAddress)
                call employeesAddress.mem[var97003 len 4] with:
                     gas gas_remaining - 710 wei
                    args mem[var97003 + 4 len var97004 - 4]
                mem[var97005] = ext_call.return_data[0]
                require ext_call.success
                if var99006 >= 0:
                    remainingPoolOptions += var99010
                else:
                    mem[1568] = 0
                    mem[1536] = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                    mem[1540] = var101003
                    require ext_code.size(employeesAddress)
                    call employeesAddress.mem[var103003 len 4] with:
                         gas gas_remaining - 710 wei
                        args mem[var103003 + 4 len var103004 - 4]
                    mem[var103005] = ext_call.return_data[0]
                    require ext_call.success
                    mem[1568] = 0
                    require ext_code.size(employeesAddress)
                    call employeesAddress.0x949d225d with:
                         gas gas_remaining - 710 wei
                    mem[1536] = ext_call.return_data[0]
                    require ext_call.success
                    s = var105004
                    t = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                    idx = var105006
                    t = var105007
                    u = var105010
                    while idx + 1 < uint16(ext_call.return_data[0]):
                        require ext_code.size(employeesAddress)
                        call employeesAddress.0xedf26d9b with:
                             gas gas_remaining - 710 wei
                            args (idx + 1)
                        require ext_call.success
                        if not address(ext_call.return_data[0]):
                            mem[mem[64] + 32] = 0
                            mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0x949d225d with:
                                 gas gas_remaining - 710 wei
                                args mem[mem[64] + 4 len -mem[64] + 1536]
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                            s = s
                            t = ext_call.return_data[0]
                            idx = idx + 1
                            t = t
                            u = u
                            continue 
                        _4224 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_4224] = 0
                        mem[_4224 + 32] = 0
                        mem[_4224 + 64] = 0
                        mem[_4224 + 96] = 0
                        mem[_4224 + 128] = 0
                        mem[_4224 + 160] = 0
                        mem[_4224 + 192] = 0
                        mem[_4224 + 224] = 0
                        mem[_4224 + 256] = 0
                        mem[mem[64] + 288] = 0
                        require ext_code.size(employeesAddress)
                        call employeesAddress.getSerializedEmployee(address rg1) with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0])
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        require ext_call.success
                        _4257 = mem[64]
                        mem[64] = mem[64] + 288
                        _4278 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_4278] = 0
                        mem[_4278 + 32] = 0
                        mem[_4278 + 64] = 0
                        mem[_4278 + 96] = 0
                        mem[_4278 + 128] = 0
                        mem[_4278 + 160] = 0
                        mem[_4278 + 192] = 0
                        mem[_4278 + 224] = 0
                        mem[_4278 + 256] = 0
                        if mem[_4257 + 156 len 4] <= 0:
                            mem[mem[64] + 32] = 0
                            mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0x949d225d with:
                                 gas gas_remaining - 710 wei
                                args mem[mem[64] + 4 len -mem[64] + 1536]
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                            s = s
                            t = ext_call.return_data[0]
                            idx = idx + 1
                            t = _4257
                            u = u
                            continue 
                        require mem[_4257 + 224] <= 4
                        if mem[_4257 + 224] == 1:
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 4] = u
                            require ext_code.size(optionsCalculatorAddress)
                            call optionsCalculatorAddress.0xdcec5ecc with:
                                 gas gas_remaining - 710 wei
                                args u
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                            mem[_4257 + 128] = uint32(ext_call.return_data[0] + mem[_4257 + 128])
                            _4718 = mem[_4257]
                            _4719 = mem[_4257 + 32]
                            _4720 = mem[_4257 + 64]
                            _4721 = mem[_4257 + 96]
                            _4722 = mem[_4257 + 128]
                            _4723 = mem[_4257 + 160]
                            _4724 = mem[_4257 + 192]
                            _4725 = mem[_4257 + 224]
                            mem[mem[64] + 36] = mem[_4257 + 28 len 4]
                            mem[mem[64] + 68] = uint32(_4719)
                            mem[mem[64] + 100] = uint32(_4720)
                            mem[mem[64] + 132] = uint32(_4721)
                            mem[mem[64] + 164] = uint32(_4722)
                            mem[mem[64] + 196] = uint32(_4723)
                            mem[mem[64] + 228] = uint32(_4724)
                            require _4725 <= 4
                            mem[mem[64] + 260] = uint8(_4725)
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0x73ece9c4 with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), _4718 << 224, _4719 << 224, _4720 << 224, _4721 << 224, _4722 << 224, _4723 << 224, _4724 << 224, uint8(_4725)
                        else:
                            require mem[_4257 + 224] <= 4
                            mem[mem[64] + 32] = 0
                            if mem[_4257 + 224] != 2:
                                mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x949d225d with:
                                     gas gas_remaining - 710 wei
                                    args mem[mem[64] + 4 len -mem[64] + 1536]
                                mem[mem[64]] = ext_call.return_data[0]
                                require ext_call.success
                                s = s
                                t = ext_call.return_data[0]
                                idx = idx + 1
                                t = _4257
                                u = u
                                continue 
                            mem[mem[64] + 4] = u
                            require ext_code.size(optionsCalculatorAddress)
                            call optionsCalculatorAddress.0xdcec5ecc with:
                                 gas gas_remaining - 710 wei
                                args u
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                            mem[_4257 + 128] = uint32(ext_call.return_data[0] + mem[_4257 + 128])
                            _4881 = mem[_4257]
                            _4882 = mem[_4257 + 32]
                            _4883 = mem[_4257 + 64]
                            _4884 = mem[_4257 + 96]
                            _4885 = mem[_4257 + 128]
                            _4886 = mem[_4257 + 160]
                            _4887 = mem[_4257 + 192]
                            _4888 = mem[_4257 + 224]
                            mem[mem[64] + 36] = mem[_4257 + 28 len 4]
                            mem[mem[64] + 68] = uint32(_4882)
                            mem[mem[64] + 100] = uint32(_4883)
                            mem[mem[64] + 132] = uint32(_4884)
                            mem[mem[64] + 164] = uint32(_4885)
                            mem[mem[64] + 196] = uint32(_4886)
                            mem[mem[64] + 228] = uint32(_4887)
                            require _4888 <= 4
                            mem[mem[64] + 260] = uint8(_4888)
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0x73ece9c4 with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), _4881 << 224, _4882 << 224, _4883 << 224, _4884 << 224, _4885 << 224, _4886 << 224, _4887 << 224, uint8(_4888)
                        require ext_call.success
                        mem[mem[64] + 32] = 0
                        mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(employeesAddress)
                        call employeesAddress.0x949d225d with:
                             gas gas_remaining - 710 wei
                            args mem[mem[64] + 4 len -mem[64] + 1536]
                        mem[mem[64]] = ext_call.return_data[0]
                        require ext_call.success
                        s = ext_call.return_data[0]
                        t = ext_call.return_data[0]
                        idx = idx + 1
                        t = _4257
                        u = u - uint32(ext_call.return_data[0])
                        continue 
                    remainingPoolOptions += u
                totalExtraOptions -= uint32(ext_call.return_data[160])
        else:
            if ext_call.return_data[220 len 4] <= 0:
                require ext_code.size(optionsCalculatorAddress)
                call optionsCalculatorAddress.0x2c244618 with:
                     gas gas_remaining - 710 wei
                    args arg2 << 224, ext_call.return_data[0] << 224, uint32(ext_call.return_data[128])
                require ext_call.success
                require ext_code.size(optionsCalculatorAddress)
                call optionsCalculatorAddress.0x2c244618 with:
                     gas gas_remaining - 710 wei
                    args arg2 << 224, ext_call.return_data[0] << 224, uint32(ext_call.return_data[160])
                require ext_call.success
                require ext_code.size(employeesAddress)
                call employeesAddress.0x281336b4 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), ext_call.return_data[0] << 224, arg2 << 224, arg2 << 224, 3
                require ext_call.success
                mem[64] = 1536
                mem[1248] = 0
                mem[1280] = 0
                mem[1312] = 0
                mem[1344] = 0
                mem[1376] = 0
                mem[1408] = 0
                mem[1440] = 0
                mem[1472] = 0
                mem[1504] = 0
                mem[1568] = 0
                mem[1536] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                require ext_code.size(employeesAddress)
                call employeesAddress.mem[var101003 len 4] with:
                     gas gas_remaining - 710 wei
                    args mem[var101003 + 4 len var101004 - 4]
                mem[var101005] = ext_call.return_data[0]
                require ext_call.success
                if var103006 >= 0:
                    remainingPoolOptions += var103010
                else:
                    mem[1568] = 0
                    mem[1536] = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                    mem[1540] = var105003
                    require ext_code.size(employeesAddress)
                    call employeesAddress.mem[var107003 len 4] with:
                         gas gas_remaining - 710 wei
                        args mem[var107003 + 4 len var107004 - 4]
                    mem[var107005] = ext_call.return_data[0]
                    require ext_call.success
                    mem[1568] = 0
                    require ext_code.size(employeesAddress)
                    call employeesAddress.0x949d225d with:
                         gas gas_remaining - 710 wei
                    mem[1536] = ext_call.return_data[0]
                    require ext_call.success
                    s = var109004
                    t = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                    idx = var109006
                    t = var109007
                    u = var109010
                    while idx + 1 < uint16(ext_call.return_data[0]):
                        require ext_code.size(employeesAddress)
                        call employeesAddress.0xedf26d9b with:
                             gas gas_remaining - 710 wei
                            args (idx + 1)
                        require ext_call.success
                        if not address(ext_call.return_data[0]):
                            mem[mem[64] + 32] = 0
                            mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0x949d225d with:
                                 gas gas_remaining - 710 wei
                                args mem[mem[64] + 4 len -mem[64] + 1536]
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                            s = s
                            t = ext_call.return_data[0]
                            idx = idx + 1
                            t = t
                            u = u
                            continue 
                        _4225 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_4225] = 0
                        mem[_4225 + 32] = 0
                        mem[_4225 + 64] = 0
                        mem[_4225 + 96] = 0
                        mem[_4225 + 128] = 0
                        mem[_4225 + 160] = 0
                        mem[_4225 + 192] = 0
                        mem[_4225 + 224] = 0
                        mem[_4225 + 256] = 0
                        mem[mem[64] + 288] = 0
                        require ext_code.size(employeesAddress)
                        call employeesAddress.getSerializedEmployee(address rg1) with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0])
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        require ext_call.success
                        _4260 = mem[64]
                        mem[64] = mem[64] + 288
                        _4279 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_4279] = 0
                        mem[_4279 + 32] = 0
                        mem[_4279 + 64] = 0
                        mem[_4279 + 96] = 0
                        mem[_4279 + 128] = 0
                        mem[_4279 + 160] = 0
                        mem[_4279 + 192] = 0
                        mem[_4279 + 224] = 0
                        mem[_4279 + 256] = 0
                        if mem[_4260 + 156 len 4] <= 0:
                            mem[mem[64] + 32] = 0
                            mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0x949d225d with:
                                 gas gas_remaining - 710 wei
                                args mem[mem[64] + 4 len -mem[64] + 1536]
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                            s = s
                            t = ext_call.return_data[0]
                            idx = idx + 1
                            t = _4260
                            u = u
                            continue 
                        require mem[_4260 + 224] <= 4
                        if mem[_4260 + 224] == 1:
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 4] = u
                            require ext_code.size(optionsCalculatorAddress)
                            call optionsCalculatorAddress.0xdcec5ecc with:
                                 gas gas_remaining - 710 wei
                                args u
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                            mem[_4260 + 128] = uint32(ext_call.return_data[0] + mem[_4260 + 128])
                            _4733 = mem[_4260]
                            _4734 = mem[_4260 + 32]
                            _4735 = mem[_4260 + 64]
                            _4736 = mem[_4260 + 96]
                            _4737 = mem[_4260 + 128]
                            _4738 = mem[_4260 + 160]
                            _4739 = mem[_4260 + 192]
                            _4740 = mem[_4260 + 224]
                            mem[mem[64] + 36] = mem[_4260 + 28 len 4]
                            mem[mem[64] + 68] = uint32(_4734)
                            mem[mem[64] + 100] = uint32(_4735)
                            mem[mem[64] + 132] = uint32(_4736)
                            mem[mem[64] + 164] = uint32(_4737)
                            mem[mem[64] + 196] = uint32(_4738)
                            mem[mem[64] + 228] = uint32(_4739)
                            require _4740 <= 4
                            mem[mem[64] + 260] = uint8(_4740)
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0x73ece9c4 with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), _4733 << 224, _4734 << 224, _4735 << 224, _4736 << 224, _4737 << 224, _4738 << 224, _4739 << 224, uint8(_4740)
                        else:
                            require mem[_4260 + 224] <= 4
                            mem[mem[64] + 32] = 0
                            if mem[_4260 + 224] != 2:
                                mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x949d225d with:
                                     gas gas_remaining - 710 wei
                                    args mem[mem[64] + 4 len -mem[64] + 1536]
                                mem[mem[64]] = ext_call.return_data[0]
                                require ext_call.success
                                s = s
                                t = ext_call.return_data[0]
                                idx = idx + 1
                                t = _4260
                                u = u
                                continue 
                            mem[mem[64] + 4] = u
                            require ext_code.size(optionsCalculatorAddress)
                            call optionsCalculatorAddress.0xdcec5ecc with:
                                 gas gas_remaining - 710 wei
                                args u
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                            mem[_4260 + 128] = uint32(ext_call.return_data[0] + mem[_4260 + 128])
                            _4891 = mem[_4260]
                            _4892 = mem[_4260 + 32]
                            _4893 = mem[_4260 + 64]
                            _4894 = mem[_4260 + 96]
                            _4895 = mem[_4260 + 128]
                            _4896 = mem[_4260 + 160]
                            _4897 = mem[_4260 + 192]
                            _4898 = mem[_4260 + 224]
                            mem[mem[64] + 36] = mem[_4260 + 28 len 4]
                            mem[mem[64] + 68] = uint32(_4892)
                            mem[mem[64] + 100] = uint32(_4893)
                            mem[mem[64] + 132] = uint32(_4894)
                            mem[mem[64] + 164] = uint32(_4895)
                            mem[mem[64] + 196] = uint32(_4896)
                            mem[mem[64] + 228] = uint32(_4897)
                            require _4898 <= 4
                            mem[mem[64] + 260] = uint8(_4898)
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0x73ece9c4 with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), _4891 << 224, _4892 << 224, _4893 << 224, _4894 << 224, _4895 << 224, _4896 << 224, _4897 << 224, uint8(_4898)
                        require ext_call.success
                        mem[mem[64] + 32] = 0
                        mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(employeesAddress)
                        call employeesAddress.0x949d225d with:
                             gas gas_remaining - 710 wei
                            args mem[mem[64] + 4 len -mem[64] + 1536]
                        mem[mem[64]] = ext_call.return_data[0]
                        require ext_call.success
                        s = ext_call.return_data[0]
                        t = ext_call.return_data[0]
                        idx = idx + 1
                        t = _4260
                        u = u - uint32(ext_call.return_data[0])
                        continue 
                    remainingPoolOptions += u
            else:
                if ext_call.return_data[220 len 4] >= arg2:
                    require ext_code.size(optionsCalculatorAddress)
                    call optionsCalculatorAddress.0x2c244618 with:
                         gas gas_remaining - 710 wei
                        args arg2 << 224, ext_call.return_data[0] << 224, uint32(ext_call.return_data[128])
                    require ext_call.success
                    require ext_code.size(optionsCalculatorAddress)
                    call optionsCalculatorAddress.0x2c244618 with:
                         gas gas_remaining - 710 wei
                        args arg2 << 224, ext_call.return_data[0] << 224, uint32(ext_call.return_data[160])
                    require ext_call.success
                    require ext_code.size(employeesAddress)
                    call employeesAddress.0x281336b4 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), ext_call.return_data[0] << 224, arg2 << 224, arg2 << 224, 3
                    require ext_call.success
                    mem[64] = 1536
                    mem[1248] = 0
                    mem[1280] = 0
                    mem[1312] = 0
                    mem[1344] = 0
                    mem[1376] = 0
                    mem[1408] = 0
                    mem[1440] = 0
                    mem[1472] = 0
                    mem[1504] = 0
                    mem[1568] = 0
                    mem[1536] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(employeesAddress)
                    call employeesAddress.mem[var102003 len 4] with:
                         gas gas_remaining - 710 wei
                        args mem[var102003 + 4 len var102004 - 4]
                    mem[var102005] = ext_call.return_data[0]
                    require ext_call.success
                    if var104006 >= 0:
                        remainingPoolOptions += var104010
                    else:
                        mem[1568] = 0
                        mem[1536] = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                        mem[1540] = var106003
                        require ext_code.size(employeesAddress)
                        call employeesAddress.mem[var108003 len 4] with:
                             gas gas_remaining - 710 wei
                            args mem[var108003 + 4 len var108004 - 4]
                        mem[var108005] = ext_call.return_data[0]
                        require ext_call.success
                        mem[1568] = 0
                        require ext_code.size(employeesAddress)
                        call employeesAddress.0x949d225d with:
                             gas gas_remaining - 710 wei
                        mem[1536] = ext_call.return_data[0]
                        require ext_call.success
                        s = var110004
                        t = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                        idx = var110006
                        t = var110007
                        u = var110010
                        while idx + 1 < uint16(ext_call.return_data[0]):
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0xedf26d9b with:
                                 gas gas_remaining - 710 wei
                                args (idx + 1)
                            require ext_call.success
                            if not address(ext_call.return_data[0]):
                                mem[mem[64] + 32] = 0
                                mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x949d225d with:
                                     gas gas_remaining - 710 wei
                                    args mem[mem[64] + 4 len -mem[64] + 1536]
                                mem[mem[64]] = ext_call.return_data[0]
                                require ext_call.success
                                s = s
                                t = ext_call.return_data[0]
                                idx = idx + 1
                                t = t
                                u = u
                                continue 
                            _4226 = mem[64]
                            mem[64] = mem[64] + 288
                            mem[_4226] = 0
                            mem[_4226 + 32] = 0
                            mem[_4226 + 64] = 0
                            mem[_4226 + 96] = 0
                            mem[_4226 + 128] = 0
                            mem[_4226 + 160] = 0
                            mem[_4226 + 192] = 0
                            mem[_4226 + 224] = 0
                            mem[_4226 + 256] = 0
                            mem[mem[64] + 288] = 0
                            require ext_code.size(employeesAddress)
                            call employeesAddress.getSerializedEmployee(address rg1) with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0])
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            require ext_call.success
                            _4263 = mem[64]
                            mem[64] = mem[64] + 288
                            _4280 = mem[64]
                            mem[64] = mem[64] + 288
                            mem[_4280] = 0
                            mem[_4280 + 32] = 0
                            mem[_4280 + 64] = 0
                            mem[_4280 + 96] = 0
                            mem[_4280 + 128] = 0
                            mem[_4280 + 160] = 0
                            mem[_4280 + 192] = 0
                            mem[_4280 + 224] = 0
                            mem[_4280 + 256] = 0
                            if mem[_4263 + 156 len 4] <= 0:
                                mem[mem[64] + 32] = 0
                                mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x949d225d with:
                                     gas gas_remaining - 710 wei
                                    args mem[mem[64] + 4 len -mem[64] + 1536]
                                mem[mem[64]] = ext_call.return_data[0]
                                require ext_call.success
                                s = s
                                t = ext_call.return_data[0]
                                idx = idx + 1
                                t = _4263
                                u = u
                                continue 
                            require mem[_4263 + 224] <= 4
                            if mem[_4263 + 224] == 1:
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 4] = u
                                require ext_code.size(optionsCalculatorAddress)
                                call optionsCalculatorAddress.0xdcec5ecc with:
                                     gas gas_remaining - 710 wei
                                    args u
                                mem[mem[64]] = ext_call.return_data[0]
                                require ext_call.success
                                mem[_4263 + 128] = uint32(ext_call.return_data[0] + mem[_4263 + 128])
                                _4748 = mem[_4263]
                                _4749 = mem[_4263 + 32]
                                _4750 = mem[_4263 + 64]
                                _4751 = mem[_4263 + 96]
                                _4752 = mem[_4263 + 128]
                                _4753 = mem[_4263 + 160]
                                _4754 = mem[_4263 + 192]
                                _4755 = mem[_4263 + 224]
                                mem[mem[64] + 36] = mem[_4263 + 28 len 4]
                                mem[mem[64] + 68] = uint32(_4749)
                                mem[mem[64] + 100] = uint32(_4750)
                                mem[mem[64] + 132] = uint32(_4751)
                                mem[mem[64] + 164] = uint32(_4752)
                                mem[mem[64] + 196] = uint32(_4753)
                                mem[mem[64] + 228] = uint32(_4754)
                                require _4755 <= 4
                                mem[mem[64] + 260] = uint8(_4755)
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x73ece9c4 with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), _4748 << 224, _4749 << 224, _4750 << 224, _4751 << 224, _4752 << 224, _4753 << 224, _4754 << 224, uint8(_4755)
                            else:
                                require mem[_4263 + 224] <= 4
                                mem[mem[64] + 32] = 0
                                if mem[_4263 + 224] != 2:
                                    mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x949d225d with:
                                         gas gas_remaining - 710 wei
                                        args mem[mem[64] + 4 len -mem[64] + 1536]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    require ext_call.success
                                    s = s
                                    t = ext_call.return_data[0]
                                    idx = idx + 1
                                    t = _4263
                                    u = u
                                    continue 
                                mem[mem[64] + 4] = u
                                require ext_code.size(optionsCalculatorAddress)
                                call optionsCalculatorAddress.0xdcec5ecc with:
                                     gas gas_remaining - 710 wei
                                    args u
                                mem[mem[64]] = ext_call.return_data[0]
                                require ext_call.success
                                mem[_4263 + 128] = uint32(ext_call.return_data[0] + mem[_4263 + 128])
                                _4901 = mem[_4263]
                                _4902 = mem[_4263 + 32]
                                _4903 = mem[_4263 + 64]
                                _4904 = mem[_4263 + 96]
                                _4905 = mem[_4263 + 128]
                                _4906 = mem[_4263 + 160]
                                _4907 = mem[_4263 + 192]
                                _4908 = mem[_4263 + 224]
                                mem[mem[64] + 36] = mem[_4263 + 28 len 4]
                                mem[mem[64] + 68] = uint32(_4902)
                                mem[mem[64] + 100] = uint32(_4903)
                                mem[mem[64] + 132] = uint32(_4904)
                                mem[mem[64] + 164] = uint32(_4905)
                                mem[mem[64] + 196] = uint32(_4906)
                                mem[mem[64] + 228] = uint32(_4907)
                                require _4908 <= 4
                                mem[mem[64] + 260] = uint8(_4908)
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x73ece9c4 with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), _4901 << 224, _4902 << 224, _4903 << 224, _4904 << 224, _4905 << 224, _4906 << 224, _4907 << 224, uint8(_4908)
                            require ext_call.success
                            mem[mem[64] + 32] = 0
                            mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0x949d225d with:
                                 gas gas_remaining - 710 wei
                                args mem[mem[64] + 4 len -mem[64] + 1536]
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                            s = ext_call.return_data[0]
                            t = ext_call.return_data[0]
                            idx = idx + 1
                            t = _4263
                            u = u - uint32(ext_call.return_data[0])
                            continue 
                        remainingPoolOptions += u
                else:
                    mem[672] = uint32(arg2 - ext_call.return_data[192] + ext_call.return_data[0])
                    require ext_code.size(optionsCalculatorAddress)
                    call optionsCalculatorAddress.0x2c244618 with:
                         gas gas_remaining - 710 wei
                        args arg2 << 224, arg2 - ext_call.return_data[192] + ext_call.return_data[0] << 224, uint32(ext_call.return_data[128])
                    require ext_call.success
                    require ext_code.size(optionsCalculatorAddress)
                    call optionsCalculatorAddress.0x2c244618 with:
                         gas gas_remaining - 710 wei
                        args arg2 << 224, arg2 - ext_call.return_data[192] + ext_call.return_data[0] << 224, uint32(ext_call.return_data[160])
                    require ext_call.success
                    require ext_code.size(employeesAddress)
                    call employeesAddress.0x281336b4 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), arg2 - ext_call.return_data[192] + ext_call.return_data[0] << 224, arg2 << 224, arg2 << 224, 3
                    require ext_call.success
                    mem[64] = 1536
                    mem[1248] = 0
                    mem[1280] = 0
                    mem[1312] = 0
                    mem[1344] = 0
                    mem[1376] = 0
                    mem[1408] = 0
                    mem[1440] = 0
                    mem[1472] = 0
                    mem[1504] = 0
                    mem[1568] = 0
                    mem[1536] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(employeesAddress)
                    call employeesAddress.mem[var103003 len 4] with:
                         gas gas_remaining - 710 wei
                        args mem[var103003 + 4 len var103004 - 4]
                    mem[var103005] = ext_call.return_data[0]
                    require ext_call.success
                    if var105006 >= 0:
                        remainingPoolOptions += var105010
                    else:
                        mem[1568] = 0
                        mem[1536] = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                        mem[1540] = var107003
                        require ext_code.size(employeesAddress)
                        call employeesAddress.mem[var109003 len 4] with:
                             gas gas_remaining - 710 wei
                            args mem[var109003 + 4 len var109004 - 4]
                        mem[var109005] = ext_call.return_data[0]
                        require ext_call.success
                        mem[1568] = 0
                        require ext_code.size(employeesAddress)
                        call employeesAddress.0x949d225d with:
                             gas gas_remaining - 710 wei
                        mem[1536] = ext_call.return_data[0]
                        require ext_call.success
                        s = var111004
                        t = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                        idx = var111006
                        t = var111007
                        u = var111010
                        while idx + 1 < uint16(ext_call.return_data[0]):
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0xedf26d9b with:
                                 gas gas_remaining - 710 wei
                                args (idx + 1)
                            require ext_call.success
                            if not address(ext_call.return_data[0]):
                                mem[mem[64] + 32] = 0
                                mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x949d225d with:
                                     gas gas_remaining - 710 wei
                                    args mem[mem[64] + 4 len -mem[64] + 1536]
                                mem[mem[64]] = ext_call.return_data[0]
                                require ext_call.success
                                s = s
                                t = ext_call.return_data[0]
                                idx = idx + 1
                                t = t
                                u = u
                                continue 
                            _4227 = mem[64]
                            mem[64] = mem[64] + 288
                            mem[_4227] = 0
                            mem[_4227 + 32] = 0
                            mem[_4227 + 64] = 0
                            mem[_4227 + 96] = 0
                            mem[_4227 + 128] = 0
                            mem[_4227 + 160] = 0
                            mem[_4227 + 192] = 0
                            mem[_4227 + 224] = 0
                            mem[_4227 + 256] = 0
                            mem[mem[64] + 288] = 0
                            require ext_code.size(employeesAddress)
                            call employeesAddress.getSerializedEmployee(address rg1) with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0])
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            require ext_call.success
                            _4266 = mem[64]
                            mem[64] = mem[64] + 288
                            _4281 = mem[64]
                            mem[64] = mem[64] + 288
                            mem[_4281] = 0
                            mem[_4281 + 32] = 0
                            mem[_4281 + 64] = 0
                            mem[_4281 + 96] = 0
                            mem[_4281 + 128] = 0
                            mem[_4281 + 160] = 0
                            mem[_4281 + 192] = 0
                            mem[_4281 + 224] = 0
                            mem[_4281 + 256] = 0
                            if mem[_4266 + 156 len 4] <= 0:
                                mem[mem[64] + 32] = 0
                                mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x949d225d with:
                                     gas gas_remaining - 710 wei
                                    args mem[mem[64] + 4 len -mem[64] + 1536]
                                mem[mem[64]] = ext_call.return_data[0]
                                require ext_call.success
                                s = s
                                t = ext_call.return_data[0]
                                idx = idx + 1
                                t = _4266
                                u = u
                                continue 
                            require mem[_4266 + 224] <= 4
                            if mem[_4266 + 224] == 1:
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 4] = u
                                require ext_code.size(optionsCalculatorAddress)
                                call optionsCalculatorAddress.0xdcec5ecc with:
                                     gas gas_remaining - 710 wei
                                    args u
                                mem[mem[64]] = ext_call.return_data[0]
                                require ext_call.success
                                mem[_4266 + 128] = uint32(ext_call.return_data[0] + mem[_4266 + 128])
                                _4763 = mem[_4266]
                                _4764 = mem[_4266 + 32]
                                _4765 = mem[_4266 + 64]
                                _4766 = mem[_4266 + 96]
                                _4767 = mem[_4266 + 128]
                                _4768 = mem[_4266 + 160]
                                _4769 = mem[_4266 + 192]
                                _4770 = mem[_4266 + 224]
                                mem[mem[64] + 36] = mem[_4266 + 28 len 4]
                                mem[mem[64] + 68] = uint32(_4764)
                                mem[mem[64] + 100] = uint32(_4765)
                                mem[mem[64] + 132] = uint32(_4766)
                                mem[mem[64] + 164] = uint32(_4767)
                                mem[mem[64] + 196] = uint32(_4768)
                                mem[mem[64] + 228] = uint32(_4769)
                                require _4770 <= 4
                                mem[mem[64] + 260] = uint8(_4770)
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x73ece9c4 with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), _4763 << 224, _4764 << 224, _4765 << 224, _4766 << 224, _4767 << 224, _4768 << 224, _4769 << 224, uint8(_4770)
                            else:
                                require mem[_4266 + 224] <= 4
                                mem[mem[64] + 32] = 0
                                if mem[_4266 + 224] != 2:
                                    mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x949d225d with:
                                         gas gas_remaining - 710 wei
                                        args mem[mem[64] + 4 len -mem[64] + 1536]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    require ext_call.success
                                    s = s
                                    t = ext_call.return_data[0]
                                    idx = idx + 1
                                    t = _4266
                                    u = u
                                    continue 
                                mem[mem[64] + 4] = u
                                require ext_code.size(optionsCalculatorAddress)
                                call optionsCalculatorAddress.0xdcec5ecc with:
                                     gas gas_remaining - 710 wei
                                    args u
                                mem[mem[64]] = ext_call.return_data[0]
                                require ext_call.success
                                mem[_4266 + 128] = uint32(ext_call.return_data[0] + mem[_4266 + 128])
                                _4911 = mem[_4266]
                                _4912 = mem[_4266 + 32]
                                _4913 = mem[_4266 + 64]
                                _4914 = mem[_4266 + 96]
                                _4915 = mem[_4266 + 128]
                                _4916 = mem[_4266 + 160]
                                _4917 = mem[_4266 + 192]
                                _4918 = mem[_4266 + 224]
                                mem[mem[64] + 36] = mem[_4266 + 28 len 4]
                                mem[mem[64] + 68] = uint32(_4912)
                                mem[mem[64] + 100] = uint32(_4913)
                                mem[mem[64] + 132] = uint32(_4914)
                                mem[mem[64] + 164] = uint32(_4915)
                                mem[mem[64] + 196] = uint32(_4916)
                                mem[mem[64] + 228] = uint32(_4917)
                                require _4918 <= 4
                                mem[mem[64] + 260] = uint8(_4918)
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x73ece9c4 with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), _4911 << 224, _4912 << 224, _4913 << 224, _4914 << 224, _4915 << 224, _4916 << 224, _4917 << 224, uint8(_4918)
                            require ext_call.success
                            mem[mem[64] + 32] = 0
                            mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0x949d225d with:
                                 gas gas_remaining - 710 wei
                                args mem[mem[64] + 4 len -mem[64] + 1536]
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                            s = ext_call.return_data[0]
                            t = ext_call.return_data[0]
                            idx = idx + 1
                            t = _4266
                            u = u - uint32(ext_call.return_data[0])
                            continue 
                        remainingPoolOptions += u
            totalExtraOptions = totalExtraOptions - uint32(ext_call.return_data[160]) + ext_call.return_data[0]
        require arg3 <= 1
        emit TerminateEmployee(companyAddress, arg2 << 224, arg3, arg1);
    return 0
}

function offerOptionsConversion(address arg1) {
    require esopState <= 2
    require esopState == 1
    require companyAddress == msg.sender
    require codeUpdateState <= 1
    require not codeUpdateState
    require block.timestamp <= test266151307()
    require ext_code.size(arg1)
    call arg1.getExercisePeriodDeadline() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if uint32(stor0.field_168) > 0:
        if uint32(ext_call.return_data[0] - uint32(stor0.field_168)) < 336 * 24 * 3600:
            emit ReturnCode(2);
            return 2
        require ext_code.size(arg1)
        call arg1.getESOP() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[12 len 20] != this.address:
            emit ReturnCode(3);
            return 3
        mem[96] = 0
        mem[128] = 0
        mem[160] = 0
        mem[192] = 0
        mem[224] = 0
        mem[256] = 0
        mem[288] = 0
        mem[320] = 0
        mem[352] = 0
        mem[64] = 672
        mem[384] = 0
        mem[416 len 256] = 0
        require esopState <= 2
        require esopState == 1
        require codeUpdateState <= 1
        require not codeUpdateState
        require block.timestamp <= test266151307()
        mem[704] = 0
        mem[672] = 0x949d225d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(employeesAddress)
        call employeesAddress.mem[var87003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var87003 + 4 len var87004 - 4]
        mem[var87005] = ext_call.return_data[0]
        require ext_call.success
        if uint32(stor0.field_168) > 0:
            if var89008 < 0:
                mem[704] = 0
                mem[672] = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                mem[676] = var91005
                require ext_code.size(employeesAddress)
                call employeesAddress.mem[var93003 len 4] with:
                     gas gas_remaining - 710 wei
                    args mem[var93003 + 4 len var93004 - 4]
                mem[var93005] = ext_call.return_data[0]
                require ext_call.success
                mem[704] = 0
                require ext_code.size(employeesAddress)
                call employeesAddress.0x949d225d with:
                     gas gas_remaining - 710 wei
                mem[672] = ext_call.return_data[0]
                require ext_call.success
                s = var95006
                t = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                idx = var95008
                t = var95010
                while idx + 1 < uint16(ext_call.return_data[0]):
                    require ext_code.size(employeesAddress)
                    call employeesAddress.0xedf26d9b with:
                         gas gas_remaining - 710 wei
                        args (idx + 1)
                    require ext_call.success
                    if not address(ext_call.return_data[0]):
                        mem[mem[64] + 32] = 0
                        require ext_code.size(employeesAddress)
                        call employeesAddress.0x949d225d with:
                             gas gas_remaining - 710 wei
                        mem[mem[64]] = ext_call.return_data[0]
                        require ext_call.success
                        s = s
                        t = ext_call.return_data[0]
                        idx = idx + 1
                        t = t
                        continue 
                    mem[mem[64] + 288] = 0
                    require ext_code.size(employeesAddress)
                    call employeesAddress.getSerializedEmployee(address rg1) with:
                         gas gas_remaining - 710 wei
                        args address(ext_call.return_data[0])
                    mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                    require ext_call.success
                    _5085 = mem[64]
                    mem[64] = mem[64] + 288
                    _5107 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_5107] = 0
                    mem[_5107 + 32] = 0
                    mem[_5107 + 64] = 0
                    mem[_5107 + 96] = 0
                    mem[_5107 + 128] = 0
                    mem[_5107 + 160] = 0
                    mem[_5107 + 192] = 0
                    mem[_5107 + 224] = 0
                    mem[_5107 + 256] = 0
                    require mem[_5085 + 224] <= 4
                    if mem[_5085 + 224] == 1:
                        if uint32(stor0.field_168) > mem[_5085 + 60 len 4]:
                            _5358 = mem[64]
                            mem[64] = mem[64] + 288
                            mem[_5358] = 0
                            mem[_5358 + 32] = 0
                            mem[_5358 + 64] = 0
                            mem[_5358 + 96] = 0
                            mem[_5358 + 128] = 0
                            mem[_5358 + 160] = 0
                            mem[_5358 + 192] = 0
                            mem[_5358 + 224] = 0
                            mem[_5358 + 256] = 0
                            mem[mem[64] + 32] = 0
                            mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(employeesAddress)
                            call employeesAddress.mem[var128003 len 4] with:
                                 gas gas_remaining - 710 wei
                                args mem[var128003 + 4 len var128004 - 4]
                            mem[var128005] = ext_call.return_data[0]
                            require ext_call.success
                            if var130006 >= 0:
                                remainingPoolOptions += var130010
                            else:
                                mem[mem[64] + 32] = 0
                                mem[mem[64]] = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = var132003
                                require ext_code.size(employeesAddress)
                                call employeesAddress.mem[var134003 len 4] with:
                                     gas gas_remaining - 710 wei
                                    args mem[var134003 + 4 len var134004 - 4]
                                mem[var134005] = ext_call.return_data[0]
                                require ext_call.success
                                mem[mem[64] + 32] = 0
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x949d225d with:
                                     gas gas_remaining - 710 wei
                                mem[mem[64]] = ext_call.return_data[0]
                                require ext_call.success
                                t = var136004
                                u = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                                s = var136006
                                u = var136007
                                v = var136010
                                while s + 1 < uint16(ext_call.return_data[0]):
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0xedf26d9b with:
                                         gas gas_remaining - 710 wei
                                        args (s + 1)
                                    require ext_call.success
                                    if not address(ext_call.return_data[0]):
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x949d225d with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        mem[mem[64] + 32] = 0
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x949d225d with:
                                             gas gas_remaining - 710 wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        require ext_call.success
                                        t = t
                                        u = ext_call.return_data[0]
                                        s = s + 1
                                        u = u
                                        v = v
                                        continue 
                                    _14989 = mem[64]
                                    mem[64] = mem[64] + 288
                                    mem[_14989] = 0
                                    mem[_14989 + 32] = 0
                                    mem[_14989 + 64] = 0
                                    mem[_14989 + 96] = 0
                                    mem[_14989 + 128] = 0
                                    mem[_14989 + 160] = 0
                                    mem[_14989 + 192] = 0
                                    mem[_14989 + 224] = 0
                                    mem[_14989 + 256] = 0
                                    mem[mem[64] + 288] = 0
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.getSerializedEmployee(address rg1) with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0])
                                    mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                    require ext_call.success
                                    _15293 = mem[64]
                                    mem[64] = mem[64] + 288
                                    _15422 = mem[64]
                                    mem[64] = mem[64] + 288
                                    mem[_15422] = 0
                                    mem[_15422 + 32] = 0
                                    mem[_15422 + 64] = 0
                                    mem[_15422 + 96] = 0
                                    mem[_15422 + 128] = 0
                                    mem[_15422 + 160] = 0
                                    mem[_15422 + 192] = 0
                                    mem[_15422 + 224] = 0
                                    mem[_15422 + 256] = 0
                                    if mem[_15293 + 156 len 4] <= 0:
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x949d225d with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        mem[mem[64] + 32] = 0
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x949d225d with:
                                             gas gas_remaining - 710 wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        require ext_call.success
                                        t = t
                                        u = ext_call.return_data[0]
                                        s = s + 1
                                        u = _15293
                                        v = v
                                        continue 
                                    require mem[_15293 + 224] <= 4
                                    if mem[_15293 + 224] == 1:
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 4] = v
                                        require ext_code.size(optionsCalculatorAddress)
                                        call optionsCalculatorAddress.0xdcec5ecc with:
                                             gas gas_remaining - 710 wei
                                            args v
                                        mem[mem[64]] = ext_call.return_data[0]
                                        require ext_call.success
                                        mem[_15293 + 128] = uint32(ext_call.return_data[0] + mem[_15293 + 128])
                                        _16393 = mem[_15293]
                                        _16394 = mem[_15293 + 32]
                                        _16395 = mem[_15293 + 64]
                                        _16396 = mem[_15293 + 96]
                                        _16397 = mem[_15293 + 128]
                                        _16398 = mem[_15293 + 160]
                                        _16399 = mem[_15293 + 192]
                                        _16400 = mem[_15293 + 224]
                                        mem[mem[64] + 36] = mem[_15293 + 28 len 4]
                                        mem[mem[64] + 68] = uint32(_16394)
                                        mem[mem[64] + 100] = uint32(_16395)
                                        mem[mem[64] + 132] = uint32(_16396)
                                        mem[mem[64] + 164] = uint32(_16397)
                                        mem[mem[64] + 196] = uint32(_16398)
                                        mem[mem[64] + 228] = uint32(_16399)
                                        require _16400 <= 4
                                        mem[mem[64] + 260] = uint8(_16400)
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x73ece9c4 with:
                                             gas gas_remaining - 710 wei
                                            args address(ext_call.return_data[0]), _16393 << 224, _16394 << 224, _16395 << 224, _16396 << 224, _16397 << 224, _16398 << 224, _16399 << 224, uint8(_16400)
                                    else:
                                        require mem[_15293 + 224] <= 4
                                        if mem[_15293 + 224] != 2:
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x949d225d with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            mem[mem[64] + 32] = 0
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x949d225d with:
                                                 gas gas_remaining - 710 wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            require ext_call.success
                                            t = t
                                            u = ext_call.return_data[0]
                                            s = s + 1
                                            u = _15293
                                            v = v
                                            continue 
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 4] = v
                                        require ext_code.size(optionsCalculatorAddress)
                                        call optionsCalculatorAddress.0xdcec5ecc with:
                                             gas gas_remaining - 710 wei
                                            args v
                                        mem[mem[64]] = ext_call.return_data[0]
                                        require ext_call.success
                                        mem[_15293 + 128] = uint32(ext_call.return_data[0] + mem[_15293 + 128])
                                        _16525 = mem[_15293]
                                        _16526 = mem[_15293 + 32]
                                        _16527 = mem[_15293 + 64]
                                        _16528 = mem[_15293 + 96]
                                        _16529 = mem[_15293 + 128]
                                        _16530 = mem[_15293 + 160]
                                        _16531 = mem[_15293 + 192]
                                        _16532 = mem[_15293 + 224]
                                        mem[mem[64] + 36] = mem[_15293 + 28 len 4]
                                        mem[mem[64] + 68] = uint32(_16526)
                                        mem[mem[64] + 100] = uint32(_16527)
                                        mem[mem[64] + 132] = uint32(_16528)
                                        mem[mem[64] + 164] = uint32(_16529)
                                        mem[mem[64] + 196] = uint32(_16530)
                                        mem[mem[64] + 228] = uint32(_16531)
                                        require _16532 <= 4
                                        mem[mem[64] + 260] = uint8(_16532)
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x73ece9c4 with:
                                             gas gas_remaining - 710 wei
                                            args address(ext_call.return_data[0]), _16525 << 224, _16526 << 224, _16527 << 224, _16528 << 224, _16529 << 224, _16530 << 224, _16531 << 224, uint8(_16532)
                                    require ext_call.success
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x949d225d with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    mem[mem[64] + 32] = 0
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x949d225d with:
                                         gas gas_remaining - 710 wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    require ext_call.success
                                    t = ext_call.return_data[0]
                                    u = ext_call.return_data[0]
                                    s = s + 1
                                    u = _15293
                                    v = v - uint32(ext_call.return_data[0])
                                    continue 
                                remainingPoolOptions += v
                            totalExtraOptions -= mem[_5085 + 188 len 4]
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0xd108177a with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0])
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                    require mem[_5085 + 224] <= 4
                    if mem[_5085 + 224] == 3:
                        if uint32(stor0.field_168) > mem[_5085 + 124 len 4]:
                            mem[mem[64] + 64] = 0
                            mem[mem[64]] = 0xb1989a2b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint32(stor0.field_168)
                            mem[mem[64] + 36] = mem[_5085]
                            t = _5085
                            u = mem[64] + 36
                            s = 288
                            while s > 32:
                                mem[mem[64] + 32] = 0
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x949d225d with:
                                     gas gas_remaining - 710 wei
                                mem[mem[64]] = ext_call.return_data[0]
                                require ext_call.success
                                mem[u + 32] = mem[t + 32]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            require ext_code.size(optionsCalculatorAddress)
                            call optionsCalculatorAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining - 710 wei
                                args mem[mem[64] + 4 len 320]
                            require ext_call.success
                            if ext_call.return_data[0] > 0:
                                mem[mem[64] + 36] = uint32(stor0.field_168)
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x2462f6f1 with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), uint32(stor0.field_168)
                                require ext_call.success
                                remainingPoolOptions += ext_call.return_data[0]
                                totalExtraOptions -= ext_call.return_data[32]
                            else:
                                if ext_call.return_data[32] > 0:
                                    mem[mem[64] + 36] = uint32(stor0.field_168)
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x2462f6f1 with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), uint32(stor0.field_168)
                                    require ext_call.success
                                    remainingPoolOptions += ext_call.return_data[0]
                                    totalExtraOptions -= ext_call.return_data[32]
                    mem[mem[64] + 32] = 0
                    require ext_code.size(employeesAddress)
                    call employeesAddress.0x949d225d with:
                         gas gas_remaining - 710 wei
                    mem[mem[64]] = ext_call.return_data[0]
                    require ext_call.success
                    s = _5085
                    t = ext_call.return_data[0]
                    idx = idx + 1
                    t = _5085
                    continue 
        else:
            if var89008 < 0:
                mem[704] = 0
                mem[672] = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                mem[676] = var91005
                require ext_code.size(employeesAddress)
                call employeesAddress.mem[var93003 len 4] with:
                     gas gas_remaining - 710 wei
                    args mem[var93003 + 4 len var93004 - 4]
                mem[var93005] = ext_call.return_data[0]
                require ext_call.success
                mem[704] = 0
                require ext_code.size(employeesAddress)
                call employeesAddress.0x949d225d with:
                     gas gas_remaining - 710 wei
                mem[672] = ext_call.return_data[0]
                require ext_call.success
                s = var95006
                t = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                idx = var95008
                t = var95010
                while idx + 1 < uint16(ext_call.return_data[0]):
                    require ext_code.size(employeesAddress)
                    call employeesAddress.0xedf26d9b with:
                         gas gas_remaining - 710 wei
                        args (idx + 1)
                    require ext_call.success
                    if not address(ext_call.return_data[0]):
                        mem[mem[64] + 32] = 0
                        require ext_code.size(employeesAddress)
                        call employeesAddress.0x949d225d with:
                             gas gas_remaining - 710 wei
                        mem[mem[64]] = ext_call.return_data[0]
                        require ext_call.success
                        s = s
                        t = ext_call.return_data[0]
                        idx = idx + 1
                        t = t
                        continue 
                    mem[mem[64] + 288] = 0
                    require ext_code.size(employeesAddress)
                    call employeesAddress.getSerializedEmployee(address rg1) with:
                         gas gas_remaining - 710 wei
                        args address(ext_call.return_data[0])
                    mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                    require ext_call.success
                    _5086 = mem[64]
                    mem[64] = mem[64] + 288
                    _5111 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_5111] = 0
                    mem[_5111 + 32] = 0
                    mem[_5111 + 64] = 0
                    mem[_5111 + 96] = 0
                    mem[_5111 + 128] = 0
                    mem[_5111 + 160] = 0
                    mem[_5111 + 192] = 0
                    mem[_5111 + 224] = 0
                    mem[_5111 + 256] = 0
                    require mem[_5086 + 224] <= 4
                    if mem[_5086 + 224] == 1:
                        if uint32(block.timestamp) > mem[_5086 + 60 len 4]:
                            _5365 = mem[64]
                            mem[64] = mem[64] + 288
                            mem[_5365] = 0
                            mem[_5365 + 32] = 0
                            mem[_5365 + 64] = 0
                            mem[_5365 + 96] = 0
                            mem[_5365 + 128] = 0
                            mem[_5365 + 160] = 0
                            mem[_5365 + 192] = 0
                            mem[_5365 + 224] = 0
                            mem[_5365 + 256] = 0
                            mem[mem[64] + 32] = 0
                            mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(employeesAddress)
                            call employeesAddress.mem[var128003 len 4] with:
                                 gas gas_remaining - 710 wei
                                args mem[var128003 + 4 len var128004 - 4]
                            mem[var128005] = ext_call.return_data[0]
                            require ext_call.success
                            if var130006 >= 0:
                                remainingPoolOptions += var130010
                            else:
                                mem[mem[64] + 32] = 0
                                mem[mem[64]] = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = var132003
                                require ext_code.size(employeesAddress)
                                call employeesAddress.mem[var134003 len 4] with:
                                     gas gas_remaining - 710 wei
                                    args mem[var134003 + 4 len var134004 - 4]
                                mem[var134005] = ext_call.return_data[0]
                                require ext_call.success
                                mem[mem[64] + 32] = 0
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x949d225d with:
                                     gas gas_remaining - 710 wei
                                mem[mem[64]] = ext_call.return_data[0]
                                require ext_call.success
                                t = var136004
                                u = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                                s = var136006
                                u = var136007
                                v = var136010
                                while s + 1 < uint16(ext_call.return_data[0]):
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0xedf26d9b with:
                                         gas gas_remaining - 710 wei
                                        args (s + 1)
                                    require ext_call.success
                                    if not address(ext_call.return_data[0]):
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x949d225d with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        mem[mem[64] + 32] = 0
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x949d225d with:
                                             gas gas_remaining - 710 wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        require ext_call.success
                                        t = t
                                        u = ext_call.return_data[0]
                                        s = s + 1
                                        u = u
                                        v = v
                                        continue 
                                    _15005 = mem[64]
                                    mem[64] = mem[64] + 288
                                    mem[_15005] = 0
                                    mem[_15005 + 32] = 0
                                    mem[_15005 + 64] = 0
                                    mem[_15005 + 96] = 0
                                    mem[_15005 + 128] = 0
                                    mem[_15005 + 160] = 0
                                    mem[_15005 + 192] = 0
                                    mem[_15005 + 224] = 0
                                    mem[_15005 + 256] = 0
                                    mem[mem[64] + 288] = 0
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.getSerializedEmployee(address rg1) with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0])
                                    mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                    require ext_call.success
                                    _15310 = mem[64]
                                    mem[64] = mem[64] + 288
                                    _15438 = mem[64]
                                    mem[64] = mem[64] + 288
                                    mem[_15438] = 0
                                    mem[_15438 + 32] = 0
                                    mem[_15438 + 64] = 0
                                    mem[_15438 + 96] = 0
                                    mem[_15438 + 128] = 0
                                    mem[_15438 + 160] = 0
                                    mem[_15438 + 192] = 0
                                    mem[_15438 + 224] = 0
                                    mem[_15438 + 256] = 0
                                    if mem[_15310 + 156 len 4] <= 0:
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x949d225d with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        mem[mem[64] + 32] = 0
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x949d225d with:
                                             gas gas_remaining - 710 wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        require ext_call.success
                                        t = t
                                        u = ext_call.return_data[0]
                                        s = s + 1
                                        u = _15310
                                        v = v
                                        continue 
                                    require mem[_15310 + 224] <= 4
                                    if mem[_15310 + 224] == 1:
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 4] = v
                                        require ext_code.size(optionsCalculatorAddress)
                                        call optionsCalculatorAddress.0xdcec5ecc with:
                                             gas gas_remaining - 710 wei
                                            args v
                                        mem[mem[64]] = ext_call.return_data[0]
                                        require ext_call.success
                                        mem[_15310 + 128] = uint32(ext_call.return_data[0] + mem[_15310 + 128])
                                        _16411 = mem[_15310]
                                        _16412 = mem[_15310 + 32]
                                        _16413 = mem[_15310 + 64]
                                        _16414 = mem[_15310 + 96]
                                        _16415 = mem[_15310 + 128]
                                        _16416 = mem[_15310 + 160]
                                        _16417 = mem[_15310 + 192]
                                        _16418 = mem[_15310 + 224]
                                        mem[mem[64] + 36] = mem[_15310 + 28 len 4]
                                        mem[mem[64] + 68] = uint32(_16412)
                                        mem[mem[64] + 100] = uint32(_16413)
                                        mem[mem[64] + 132] = uint32(_16414)
                                        mem[mem[64] + 164] = uint32(_16415)
                                        mem[mem[64] + 196] = uint32(_16416)
                                        mem[mem[64] + 228] = uint32(_16417)
                                        require _16418 <= 4
                                        mem[mem[64] + 260] = uint8(_16418)
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x73ece9c4 with:
                                             gas gas_remaining - 710 wei
                                            args address(ext_call.return_data[0]), _16411 << 224, _16412 << 224, _16413 << 224, _16414 << 224, _16415 << 224, _16416 << 224, _16417 << 224, uint8(_16418)
                                    else:
                                        require mem[_15310 + 224] <= 4
                                        if mem[_15310 + 224] != 2:
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x949d225d with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            mem[mem[64] + 32] = 0
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x949d225d with:
                                                 gas gas_remaining - 710 wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            require ext_call.success
                                            t = t
                                            u = ext_call.return_data[0]
                                            s = s + 1
                                            u = _15310
                                            v = v
                                            continue 
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 4] = v
                                        require ext_code.size(optionsCalculatorAddress)
                                        call optionsCalculatorAddress.0xdcec5ecc with:
                                             gas gas_remaining - 710 wei
                                            args v
                                        mem[mem[64]] = ext_call.return_data[0]
                                        require ext_call.success
                                        mem[_15310 + 128] = uint32(ext_call.return_data[0] + mem[_15310 + 128])
                                        _16536 = mem[_15310]
                                        _16537 = mem[_15310 + 32]
                                        _16538 = mem[_15310 + 64]
                                        _16539 = mem[_15310 + 96]
                                        _16540 = mem[_15310 + 128]
                                        _16541 = mem[_15310 + 160]
                                        _16542 = mem[_15310 + 192]
                                        _16543 = mem[_15310 + 224]
                                        mem[mem[64] + 36] = mem[_15310 + 28 len 4]
                                        mem[mem[64] + 68] = uint32(_16537)
                                        mem[mem[64] + 100] = uint32(_16538)
                                        mem[mem[64] + 132] = uint32(_16539)
                                        mem[mem[64] + 164] = uint32(_16540)
                                        mem[mem[64] + 196] = uint32(_16541)
                                        mem[mem[64] + 228] = uint32(_16542)
                                        require _16543 <= 4
                                        mem[mem[64] + 260] = uint8(_16543)
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x73ece9c4 with:
                                             gas gas_remaining - 710 wei
                                            args address(ext_call.return_data[0]), _16536 << 224, _16537 << 224, _16538 << 224, _16539 << 224, _16540 << 224, _16541 << 224, _16542 << 224, uint8(_16543)
                                    require ext_call.success
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x949d225d with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    mem[mem[64] + 32] = 0
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x949d225d with:
                                         gas gas_remaining - 710 wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    require ext_call.success
                                    t = ext_call.return_data[0]
                                    u = ext_call.return_data[0]
                                    s = s + 1
                                    u = _15310
                                    v = v - uint32(ext_call.return_data[0])
                                    continue 
                                remainingPoolOptions += v
                            totalExtraOptions -= mem[_5086 + 188 len 4]
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0xd108177a with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0])
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                    require mem[_5086 + 224] <= 4
                    if mem[_5086 + 224] == 3:
                        if uint32(block.timestamp) > mem[_5086 + 124 len 4]:
                            mem[mem[64] + 64] = 0
                            mem[mem[64]] = 0xb1989a2b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint32(block.timestamp)
                            mem[mem[64] + 36] = mem[_5086]
                            t = _5086
                            u = mem[64] + 36
                            s = 288
                            while s > 32:
                                mem[mem[64] + 32] = 0
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x949d225d with:
                                     gas gas_remaining - 710 wei
                                mem[mem[64]] = ext_call.return_data[0]
                                require ext_call.success
                                mem[u + 32] = mem[t + 32]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            require ext_code.size(optionsCalculatorAddress)
                            call optionsCalculatorAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining - 710 wei
                                args mem[mem[64] + 4 len 320]
                            require ext_call.success
                            if ext_call.return_data[0] > 0:
                                mem[mem[64] + 36] = uint32(block.timestamp)
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x2462f6f1 with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), uint32(block.timestamp)
                                require ext_call.success
                                remainingPoolOptions += ext_call.return_data[0]
                                totalExtraOptions -= ext_call.return_data[32]
                            else:
                                if ext_call.return_data[32] > 0:
                                    mem[mem[64] + 36] = uint32(block.timestamp)
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x2462f6f1 with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), uint32(block.timestamp)
                                    require ext_call.success
                                    remainingPoolOptions += ext_call.return_data[0]
                                    totalExtraOptions -= ext_call.return_data[32]
                    mem[mem[64] + 32] = 0
                    require ext_code.size(employeesAddress)
                    call employeesAddress.0x949d225d with:
                         gas gas_remaining - 710 wei
                    mem[mem[64]] = ext_call.return_data[0]
                    require ext_call.success
                    s = _5086
                    t = ext_call.return_data[0]
                    idx = idx + 1
                    t = _5086
                    continue 
        conversionOfferedAt = uint32(stor0.field_168)
        require ext_code.size(arg1)
        call arg1.getExercisePeriodDeadline() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        exerciseOptionsDeadline = uint32(ext_call.return_data[0])
        optionsConverterAddress = arg1
        stor9 = 0
        esopState = 2
        emit OptionsConversionOffered(companyAddress, address(arg1), uint32(stor0.field_0), exerciseOptionsDeadline);
    else:
        if uint32(ext_call.return_data[0] - block.timestamp) < 336 * 24 * 3600:
            emit ReturnCode(2);
            return 2
        require ext_code.size(arg1)
        call arg1.getESOP() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[12 len 20] != this.address:
            emit ReturnCode(3);
            return 3
        mem[96] = 0
        mem[128] = 0
        mem[160] = 0
        mem[192] = 0
        mem[224] = 0
        mem[256] = 0
        mem[288] = 0
        mem[320] = 0
        mem[352] = 0
        mem[64] = 672
        mem[384] = 0
        mem[416 len 256] = 0
        require esopState <= 2
        require esopState == 1
        require codeUpdateState <= 1
        require not codeUpdateState
        require block.timestamp <= test266151307()
        mem[704] = 0
        mem[672] = 0x949d225d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(employeesAddress)
        call employeesAddress.mem[var87003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var87003 + 4 len var87004 - 4]
        mem[var87005] = ext_call.return_data[0]
        require ext_call.success
        if uint32(stor0.field_168) > 0:
            if var89008 < 0:
                mem[704] = 0
                mem[672] = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                mem[676] = var91005
                require ext_code.size(employeesAddress)
                call employeesAddress.mem[var93003 len 4] with:
                     gas gas_remaining - 710 wei
                    args mem[var93003 + 4 len var93004 - 4]
                mem[var93005] = ext_call.return_data[0]
                require ext_call.success
                mem[704] = 0
                require ext_code.size(employeesAddress)
                call employeesAddress.0x949d225d with:
                     gas gas_remaining - 710 wei
                mem[672] = ext_call.return_data[0]
                require ext_call.success
                s = var95006
                t = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                idx = var95008
                t = var95010
                while idx + 1 < uint16(ext_call.return_data[0]):
                    require ext_code.size(employeesAddress)
                    call employeesAddress.0xedf26d9b with:
                         gas gas_remaining - 710 wei
                        args (idx + 1)
                    require ext_call.success
                    if not address(ext_call.return_data[0]):
                        mem[mem[64] + 32] = 0
                        require ext_code.size(employeesAddress)
                        call employeesAddress.0x949d225d with:
                             gas gas_remaining - 710 wei
                        mem[mem[64]] = ext_call.return_data[0]
                        require ext_call.success
                        s = s
                        t = ext_call.return_data[0]
                        idx = idx + 1
                        t = t
                        continue 
                    mem[mem[64] + 288] = 0
                    require ext_code.size(employeesAddress)
                    call employeesAddress.getSerializedEmployee(address rg1) with:
                         gas gas_remaining - 710 wei
                        args address(ext_call.return_data[0])
                    mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                    require ext_call.success
                    _5087 = mem[64]
                    mem[64] = mem[64] + 288
                    _5115 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_5115] = 0
                    mem[_5115 + 32] = 0
                    mem[_5115 + 64] = 0
                    mem[_5115 + 96] = 0
                    mem[_5115 + 128] = 0
                    mem[_5115 + 160] = 0
                    mem[_5115 + 192] = 0
                    mem[_5115 + 224] = 0
                    mem[_5115 + 256] = 0
                    require mem[_5087 + 224] <= 4
                    if mem[_5087 + 224] == 1:
                        if uint32(stor0.field_168) > mem[_5087 + 60 len 4]:
                            _5372 = mem[64]
                            mem[64] = mem[64] + 288
                            mem[_5372] = 0
                            mem[_5372 + 32] = 0
                            mem[_5372 + 64] = 0
                            mem[_5372 + 96] = 0
                            mem[_5372 + 128] = 0
                            mem[_5372 + 160] = 0
                            mem[_5372 + 192] = 0
                            mem[_5372 + 224] = 0
                            mem[_5372 + 256] = 0
                            mem[mem[64] + 32] = 0
                            mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(employeesAddress)
                            call employeesAddress.mem[var128003 len 4] with:
                                 gas gas_remaining - 710 wei
                                args mem[var128003 + 4 len var128004 - 4]
                            mem[var128005] = ext_call.return_data[0]
                            require ext_call.success
                            if var130006 >= 0:
                                remainingPoolOptions += var130010
                            else:
                                mem[mem[64] + 32] = 0
                                mem[mem[64]] = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = var132003
                                require ext_code.size(employeesAddress)
                                call employeesAddress.mem[var134003 len 4] with:
                                     gas gas_remaining - 710 wei
                                    args mem[var134003 + 4 len var134004 - 4]
                                mem[var134005] = ext_call.return_data[0]
                                require ext_call.success
                                mem[mem[64] + 32] = 0
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x949d225d with:
                                     gas gas_remaining - 710 wei
                                mem[mem[64]] = ext_call.return_data[0]
                                require ext_call.success
                                t = var136004
                                u = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                                s = var136006
                                u = var136007
                                v = var136010
                                while s + 1 < uint16(ext_call.return_data[0]):
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0xedf26d9b with:
                                         gas gas_remaining - 710 wei
                                        args (s + 1)
                                    require ext_call.success
                                    if not address(ext_call.return_data[0]):
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x949d225d with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        mem[mem[64] + 32] = 0
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x949d225d with:
                                             gas gas_remaining - 710 wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        require ext_call.success
                                        t = t
                                        u = ext_call.return_data[0]
                                        s = s + 1
                                        u = u
                                        v = v
                                        continue 
                                    _15021 = mem[64]
                                    mem[64] = mem[64] + 288
                                    mem[_15021] = 0
                                    mem[_15021 + 32] = 0
                                    mem[_15021 + 64] = 0
                                    mem[_15021 + 96] = 0
                                    mem[_15021 + 128] = 0
                                    mem[_15021 + 160] = 0
                                    mem[_15021 + 192] = 0
                                    mem[_15021 + 224] = 0
                                    mem[_15021 + 256] = 0
                                    mem[mem[64] + 288] = 0
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.getSerializedEmployee(address rg1) with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0])
                                    mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                    require ext_call.success
                                    _15327 = mem[64]
                                    mem[64] = mem[64] + 288
                                    _15454 = mem[64]
                                    mem[64] = mem[64] + 288
                                    mem[_15454] = 0
                                    mem[_15454 + 32] = 0
                                    mem[_15454 + 64] = 0
                                    mem[_15454 + 96] = 0
                                    mem[_15454 + 128] = 0
                                    mem[_15454 + 160] = 0
                                    mem[_15454 + 192] = 0
                                    mem[_15454 + 224] = 0
                                    mem[_15454 + 256] = 0
                                    if mem[_15327 + 156 len 4] <= 0:
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x949d225d with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        mem[mem[64] + 32] = 0
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x949d225d with:
                                             gas gas_remaining - 710 wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        require ext_call.success
                                        t = t
                                        u = ext_call.return_data[0]
                                        s = s + 1
                                        u = _15327
                                        v = v
                                        continue 
                                    require mem[_15327 + 224] <= 4
                                    if mem[_15327 + 224] == 1:
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 4] = v
                                        require ext_code.size(optionsCalculatorAddress)
                                        call optionsCalculatorAddress.0xdcec5ecc with:
                                             gas gas_remaining - 710 wei
                                            args v
                                        mem[mem[64]] = ext_call.return_data[0]
                                        require ext_call.success
                                        mem[_15327 + 128] = uint32(ext_call.return_data[0] + mem[_15327 + 128])
                                        _16429 = mem[_15327]
                                        _16430 = mem[_15327 + 32]
                                        _16431 = mem[_15327 + 64]
                                        _16432 = mem[_15327 + 96]
                                        _16433 = mem[_15327 + 128]
                                        _16434 = mem[_15327 + 160]
                                        _16435 = mem[_15327 + 192]
                                        _16436 = mem[_15327 + 224]
                                        mem[mem[64] + 36] = mem[_15327 + 28 len 4]
                                        mem[mem[64] + 68] = uint32(_16430)
                                        mem[mem[64] + 100] = uint32(_16431)
                                        mem[mem[64] + 132] = uint32(_16432)
                                        mem[mem[64] + 164] = uint32(_16433)
                                        mem[mem[64] + 196] = uint32(_16434)
                                        mem[mem[64] + 228] = uint32(_16435)
                                        require _16436 <= 4
                                        mem[mem[64] + 260] = uint8(_16436)
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x73ece9c4 with:
                                             gas gas_remaining - 710 wei
                                            args address(ext_call.return_data[0]), _16429 << 224, _16430 << 224, _16431 << 224, _16432 << 224, _16433 << 224, _16434 << 224, _16435 << 224, uint8(_16436)
                                    else:
                                        require mem[_15327 + 224] <= 4
                                        if mem[_15327 + 224] != 2:
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x949d225d with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            mem[mem[64] + 32] = 0
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x949d225d with:
                                                 gas gas_remaining - 710 wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            require ext_call.success
                                            t = t
                                            u = ext_call.return_data[0]
                                            s = s + 1
                                            u = _15327
                                            v = v
                                            continue 
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 4] = v
                                        require ext_code.size(optionsCalculatorAddress)
                                        call optionsCalculatorAddress.0xdcec5ecc with:
                                             gas gas_remaining - 710 wei
                                            args v
                                        mem[mem[64]] = ext_call.return_data[0]
                                        require ext_call.success
                                        mem[_15327 + 128] = uint32(ext_call.return_data[0] + mem[_15327 + 128])
                                        _16547 = mem[_15327]
                                        _16548 = mem[_15327 + 32]
                                        _16549 = mem[_15327 + 64]
                                        _16550 = mem[_15327 + 96]
                                        _16551 = mem[_15327 + 128]
                                        _16552 = mem[_15327 + 160]
                                        _16553 = mem[_15327 + 192]
                                        _16554 = mem[_15327 + 224]
                                        mem[mem[64] + 36] = mem[_15327 + 28 len 4]
                                        mem[mem[64] + 68] = uint32(_16548)
                                        mem[mem[64] + 100] = uint32(_16549)
                                        mem[mem[64] + 132] = uint32(_16550)
                                        mem[mem[64] + 164] = uint32(_16551)
                                        mem[mem[64] + 196] = uint32(_16552)
                                        mem[mem[64] + 228] = uint32(_16553)
                                        require _16554 <= 4
                                        mem[mem[64] + 260] = uint8(_16554)
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x73ece9c4 with:
                                             gas gas_remaining - 710 wei
                                            args address(ext_call.return_data[0]), _16547 << 224, _16548 << 224, _16549 << 224, _16550 << 224, _16551 << 224, _16552 << 224, _16553 << 224, uint8(_16554)
                                    require ext_call.success
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x949d225d with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    mem[mem[64] + 32] = 0
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x949d225d with:
                                         gas gas_remaining - 710 wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    require ext_call.success
                                    t = ext_call.return_data[0]
                                    u = ext_call.return_data[0]
                                    s = s + 1
                                    u = _15327
                                    v = v - uint32(ext_call.return_data[0])
                                    continue 
                                remainingPoolOptions += v
                            totalExtraOptions -= mem[_5087 + 188 len 4]
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0xd108177a with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0])
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                    require mem[_5087 + 224] <= 4
                    if mem[_5087 + 224] == 3:
                        if uint32(stor0.field_168) > mem[_5087 + 124 len 4]:
                            mem[mem[64] + 64] = 0
                            mem[mem[64]] = 0xb1989a2b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint32(stor0.field_168)
                            mem[mem[64] + 36] = mem[_5087]
                            t = _5087
                            u = mem[64] + 36
                            s = 288
                            while s > 32:
                                mem[mem[64] + 32] = 0
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x949d225d with:
                                     gas gas_remaining - 710 wei
                                mem[mem[64]] = ext_call.return_data[0]
                                require ext_call.success
                                mem[u + 32] = mem[t + 32]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            require ext_code.size(optionsCalculatorAddress)
                            call optionsCalculatorAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining - 710 wei
                                args mem[mem[64] + 4 len 320]
                            require ext_call.success
                            if ext_call.return_data[0] > 0:
                                mem[mem[64] + 36] = uint32(stor0.field_168)
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x2462f6f1 with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), uint32(stor0.field_168)
                                require ext_call.success
                                remainingPoolOptions += ext_call.return_data[0]
                                totalExtraOptions -= ext_call.return_data[32]
                            else:
                                if ext_call.return_data[32] > 0:
                                    mem[mem[64] + 36] = uint32(stor0.field_168)
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x2462f6f1 with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), uint32(stor0.field_168)
                                    require ext_call.success
                                    remainingPoolOptions += ext_call.return_data[0]
                                    totalExtraOptions -= ext_call.return_data[32]
                    mem[mem[64] + 32] = 0
                    require ext_code.size(employeesAddress)
                    call employeesAddress.0x949d225d with:
                         gas gas_remaining - 710 wei
                    mem[mem[64]] = ext_call.return_data[0]
                    require ext_call.success
                    s = _5087
                    t = ext_call.return_data[0]
                    idx = idx + 1
                    t = _5087
                    continue 
        else:
            if var89008 < 0:
                mem[704] = 0
                mem[672] = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                mem[676] = var91005
                require ext_code.size(employeesAddress)
                call employeesAddress.mem[var93003 len 4] with:
                     gas gas_remaining - 710 wei
                    args mem[var93003 + 4 len var93004 - 4]
                mem[var93005] = ext_call.return_data[0]
                require ext_call.success
                mem[704] = 0
                require ext_code.size(employeesAddress)
                call employeesAddress.0x949d225d with:
                     gas gas_remaining - 710 wei
                mem[672] = ext_call.return_data[0]
                require ext_call.success
                s = var95006
                t = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                idx = var95008
                t = var95010
                while idx + 1 < uint16(ext_call.return_data[0]):
                    require ext_code.size(employeesAddress)
                    call employeesAddress.0xedf26d9b with:
                         gas gas_remaining - 710 wei
                        args (idx + 1)
                    require ext_call.success
                    if not address(ext_call.return_data[0]):
                        mem[mem[64] + 32] = 0
                        require ext_code.size(employeesAddress)
                        call employeesAddress.0x949d225d with:
                             gas gas_remaining - 710 wei
                        mem[mem[64]] = ext_call.return_data[0]
                        require ext_call.success
                        s = s
                        t = ext_call.return_data[0]
                        idx = idx + 1
                        t = t
                        continue 
                    mem[mem[64] + 288] = 0
                    require ext_code.size(employeesAddress)
                    call employeesAddress.getSerializedEmployee(address rg1) with:
                         gas gas_remaining - 710 wei
                        args address(ext_call.return_data[0])
                    mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                    require ext_call.success
                    _5088 = mem[64]
                    mem[64] = mem[64] + 288
                    _5119 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_5119] = 0
                    mem[_5119 + 32] = 0
                    mem[_5119 + 64] = 0
                    mem[_5119 + 96] = 0
                    mem[_5119 + 128] = 0
                    mem[_5119 + 160] = 0
                    mem[_5119 + 192] = 0
                    mem[_5119 + 224] = 0
                    mem[_5119 + 256] = 0
                    require mem[_5088 + 224] <= 4
                    if mem[_5088 + 224] == 1:
                        if uint32(block.timestamp) > mem[_5088 + 60 len 4]:
                            _5379 = mem[64]
                            mem[64] = mem[64] + 288
                            mem[_5379] = 0
                            mem[_5379 + 32] = 0
                            mem[_5379 + 64] = 0
                            mem[_5379 + 96] = 0
                            mem[_5379 + 128] = 0
                            mem[_5379 + 160] = 0
                            mem[_5379 + 192] = 0
                            mem[_5379 + 224] = 0
                            mem[_5379 + 256] = 0
                            mem[mem[64] + 32] = 0
                            mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(employeesAddress)
                            call employeesAddress.mem[var128003 len 4] with:
                                 gas gas_remaining - 710 wei
                                args mem[var128003 + 4 len var128004 - 4]
                            mem[var128005] = ext_call.return_data[0]
                            require ext_call.success
                            if var130006 >= 0:
                                remainingPoolOptions += var130010
                            else:
                                mem[mem[64] + 32] = 0
                                mem[mem[64]] = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = var132003
                                require ext_code.size(employeesAddress)
                                call employeesAddress.mem[var134003 len 4] with:
                                     gas gas_remaining - 710 wei
                                    args mem[var134003 + 4 len var134004 - 4]
                                mem[var134005] = ext_call.return_data[0]
                                require ext_call.success
                                mem[mem[64] + 32] = 0
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x949d225d with:
                                     gas gas_remaining - 710 wei
                                mem[mem[64]] = ext_call.return_data[0]
                                require ext_call.success
                                t = var136004
                                u = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                                s = var136006
                                u = var136007
                                v = var136010
                                while s + 1 < uint16(ext_call.return_data[0]):
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0xedf26d9b with:
                                         gas gas_remaining - 710 wei
                                        args (s + 1)
                                    require ext_call.success
                                    if not address(ext_call.return_data[0]):
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x949d225d with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        mem[mem[64] + 32] = 0
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x949d225d with:
                                             gas gas_remaining - 710 wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        require ext_call.success
                                        t = t
                                        u = ext_call.return_data[0]
                                        s = s + 1
                                        u = u
                                        v = v
                                        continue 
                                    _15037 = mem[64]
                                    mem[64] = mem[64] + 288
                                    mem[_15037] = 0
                                    mem[_15037 + 32] = 0
                                    mem[_15037 + 64] = 0
                                    mem[_15037 + 96] = 0
                                    mem[_15037 + 128] = 0
                                    mem[_15037 + 160] = 0
                                    mem[_15037 + 192] = 0
                                    mem[_15037 + 224] = 0
                                    mem[_15037 + 256] = 0
                                    mem[mem[64] + 288] = 0
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.getSerializedEmployee(address rg1) with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0])
                                    mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                    require ext_call.success
                                    _15344 = mem[64]
                                    mem[64] = mem[64] + 288
                                    _15470 = mem[64]
                                    mem[64] = mem[64] + 288
                                    mem[_15470] = 0
                                    mem[_15470 + 32] = 0
                                    mem[_15470 + 64] = 0
                                    mem[_15470 + 96] = 0
                                    mem[_15470 + 128] = 0
                                    mem[_15470 + 160] = 0
                                    mem[_15470 + 192] = 0
                                    mem[_15470 + 224] = 0
                                    mem[_15470 + 256] = 0
                                    if mem[_15344 + 156 len 4] <= 0:
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x949d225d with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        mem[mem[64] + 32] = 0
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x949d225d with:
                                             gas gas_remaining - 710 wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        require ext_call.success
                                        t = t
                                        u = ext_call.return_data[0]
                                        s = s + 1
                                        u = _15344
                                        v = v
                                        continue 
                                    require mem[_15344 + 224] <= 4
                                    if mem[_15344 + 224] == 1:
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 4] = v
                                        require ext_code.size(optionsCalculatorAddress)
                                        call optionsCalculatorAddress.0xdcec5ecc with:
                                             gas gas_remaining - 710 wei
                                            args v
                                        mem[mem[64]] = ext_call.return_data[0]
                                        require ext_call.success
                                        mem[_15344 + 128] = uint32(ext_call.return_data[0] + mem[_15344 + 128])
                                        _16447 = mem[_15344]
                                        _16448 = mem[_15344 + 32]
                                        _16449 = mem[_15344 + 64]
                                        _16450 = mem[_15344 + 96]
                                        _16451 = mem[_15344 + 128]
                                        _16452 = mem[_15344 + 160]
                                        _16453 = mem[_15344 + 192]
                                        _16454 = mem[_15344 + 224]
                                        mem[mem[64] + 36] = mem[_15344 + 28 len 4]
                                        mem[mem[64] + 68] = uint32(_16448)
                                        mem[mem[64] + 100] = uint32(_16449)
                                        mem[mem[64] + 132] = uint32(_16450)
                                        mem[mem[64] + 164] = uint32(_16451)
                                        mem[mem[64] + 196] = uint32(_16452)
                                        mem[mem[64] + 228] = uint32(_16453)
                                        require _16454 <= 4
                                        mem[mem[64] + 260] = uint8(_16454)
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x73ece9c4 with:
                                             gas gas_remaining - 710 wei
                                            args address(ext_call.return_data[0]), _16447 << 224, _16448 << 224, _16449 << 224, _16450 << 224, _16451 << 224, _16452 << 224, _16453 << 224, uint8(_16454)
                                    else:
                                        require mem[_15344 + 224] <= 4
                                        if mem[_15344 + 224] != 2:
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x949d225d with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            mem[mem[64] + 32] = 0
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x949d225d with:
                                                 gas gas_remaining - 710 wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            require ext_call.success
                                            t = t
                                            u = ext_call.return_data[0]
                                            s = s + 1
                                            u = _15344
                                            v = v
                                            continue 
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 4] = v
                                        require ext_code.size(optionsCalculatorAddress)
                                        call optionsCalculatorAddress.0xdcec5ecc with:
                                             gas gas_remaining - 710 wei
                                            args v
                                        mem[mem[64]] = ext_call.return_data[0]
                                        require ext_call.success
                                        mem[_15344 + 128] = uint32(ext_call.return_data[0] + mem[_15344 + 128])
                                        _16558 = mem[_15344]
                                        _16559 = mem[_15344 + 32]
                                        _16560 = mem[_15344 + 64]
                                        _16561 = mem[_15344 + 96]
                                        _16562 = mem[_15344 + 128]
                                        _16563 = mem[_15344 + 160]
                                        _16564 = mem[_15344 + 192]
                                        _16565 = mem[_15344 + 224]
                                        mem[mem[64] + 36] = mem[_15344 + 28 len 4]
                                        mem[mem[64] + 68] = uint32(_16559)
                                        mem[mem[64] + 100] = uint32(_16560)
                                        mem[mem[64] + 132] = uint32(_16561)
                                        mem[mem[64] + 164] = uint32(_16562)
                                        mem[mem[64] + 196] = uint32(_16563)
                                        mem[mem[64] + 228] = uint32(_16564)
                                        require _16565 <= 4
                                        mem[mem[64] + 260] = uint8(_16565)
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x73ece9c4 with:
                                             gas gas_remaining - 710 wei
                                            args address(ext_call.return_data[0]), _16558 << 224, _16559 << 224, _16560 << 224, _16561 << 224, _16562 << 224, _16563 << 224, _16564 << 224, uint8(_16565)
                                    require ext_call.success
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x949d225d with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    mem[mem[64] + 32] = 0
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x949d225d with:
                                         gas gas_remaining - 710 wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    require ext_call.success
                                    t = ext_call.return_data[0]
                                    u = ext_call.return_data[0]
                                    s = s + 1
                                    u = _15344
                                    v = v - uint32(ext_call.return_data[0])
                                    continue 
                                remainingPoolOptions += v
                            totalExtraOptions -= mem[_5088 + 188 len 4]
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0xd108177a with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0])
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                    require mem[_5088 + 224] <= 4
                    if mem[_5088 + 224] == 3:
                        if uint32(block.timestamp) > mem[_5088 + 124 len 4]:
                            mem[mem[64] + 64] = 0
                            mem[mem[64]] = 0xb1989a2b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint32(block.timestamp)
                            mem[mem[64] + 36] = mem[_5088]
                            t = _5088
                            u = mem[64] + 36
                            s = 288
                            while s > 32:
                                mem[mem[64] + 32] = 0
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x949d225d with:
                                     gas gas_remaining - 710 wei
                                mem[mem[64]] = ext_call.return_data[0]
                                require ext_call.success
                                mem[u + 32] = mem[t + 32]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            require ext_code.size(optionsCalculatorAddress)
                            call optionsCalculatorAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining - 710 wei
                                args mem[mem[64] + 4 len 320]
                            require ext_call.success
                            if ext_call.return_data[0] > 0:
                                mem[mem[64] + 36] = uint32(block.timestamp)
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0x2462f6f1 with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), uint32(block.timestamp)
                                require ext_call.success
                                remainingPoolOptions += ext_call.return_data[0]
                                totalExtraOptions -= ext_call.return_data[32]
                            else:
                                if ext_call.return_data[32] > 0:
                                    mem[mem[64] + 36] = uint32(block.timestamp)
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x2462f6f1 with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), uint32(block.timestamp)
                                    require ext_call.success
                                    remainingPoolOptions += ext_call.return_data[0]
                                    totalExtraOptions -= ext_call.return_data[32]
                    mem[mem[64] + 32] = 0
                    require ext_code.size(employeesAddress)
                    call employeesAddress.0x949d225d with:
                         gas gas_remaining - 710 wei
                    mem[mem[64]] = ext_call.return_data[0]
                    require ext_call.success
                    s = _5088
                    t = ext_call.return_data[0]
                    idx = idx + 1
                    t = _5088
                    continue 
        conversionOfferedAt = uint32(block.timestamp)
        require ext_code.size(arg1)
        call arg1.getExercisePeriodDeadline() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        exerciseOptionsDeadline = uint32(ext_call.return_data[0])
        optionsConverterAddress = arg1
        stor9 = 0
        esopState = 2
        emit OptionsConversionOffered(companyAddress, address(arg1), block.timestamp << 224, exerciseOptionsDeadline);
    return 0
}

function offerOptionsToEmployee(address arg1, uint32 arg2, uint32 arg3, uint32 arg4, bool arg5) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    require esopState <= 2
    require esopState == 1
    require companyAddress == msg.sender
    require codeUpdateState <= 1
    require not codeUpdateState
    require ext_code.size(employeesAddress)
    call employeesAddress.hasEmployee(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[0]:
        emit ReturnCode(1);
        return 1
    require block.timestamp <= test266151307()
    if uint32(stor0.field_168) > 0:
        if arg3 < uint32(uint32(stor0.field_168) + (336 * 24 * 3600)):
            emit ReturnCode(2);
            return 2
        if arg5:
            mem[384] = 0
            mem[416] = 0
            mem[448] = 0
            mem[480] = 0
            mem[512] = 0
            mem[544] = 0
            mem[576] = 0
            mem[608] = 0
            mem[640] = 0
            mem[64] = 960
            mem[672] = 0
            mem[704 len 256] = 0
            require esopState <= 2
            require esopState == 1
            require codeUpdateState <= 1
            require not codeUpdateState
            require block.timestamp <= test266151307()
            mem[992] = 0
            mem[960] = 0x949d225d00000000000000000000000000000000000000000000000000000000
            require ext_code.size(employeesAddress)
            call employeesAddress.mem[var89003 len 4] with:
                 gas gas_remaining - 710 wei
                args mem[var89003 + 4 len var89004 - 4]
            mem[var89005] = ext_call.return_data[0]
            require ext_call.success
            if uint32(stor0.field_168) > 0:
                if var91008 < 0:
                    mem[992] = 0
                    mem[960] = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                    mem[964] = var93005
                    require ext_code.size(employeesAddress)
                    call employeesAddress.mem[var95003 len 4] with:
                         gas gas_remaining - 710 wei
                        args mem[var95003 + 4 len var95004 - 4]
                    mem[var95005] = ext_call.return_data[0]
                    require ext_call.success
                    mem[992] = 0
                    require ext_code.size(employeesAddress)
                    call employeesAddress.0x949d225d with:
                         gas gas_remaining - 710 wei
                    mem[960] = ext_call.return_data[0]
                    require ext_call.success
                    s = var97006
                    t = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                    idx = var97008
                    t = var97010
                    while idx + 1 < uint16(ext_call.return_data[0]):
                        require ext_code.size(employeesAddress)
                        call employeesAddress.0xedf26d9b with:
                             gas gas_remaining - 710 wei
                            args (idx + 1)
                        require ext_call.success
                        if not address(ext_call.return_data[0]):
                            mem[mem[64] + 32] = 0
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0x949d225d with:
                                 gas gas_remaining - 710 wei
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                            s = s
                            t = ext_call.return_data[0]
                            idx = idx + 1
                            t = t
                            continue 
                        mem[mem[64] + 288] = 0
                        require ext_code.size(employeesAddress)
                        call employeesAddress.getSerializedEmployee(address rg1) with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0])
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        require ext_call.success
                        _6896 = mem[64]
                        mem[64] = mem[64] + 288
                        _6919 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_6919] = 0
                        mem[_6919 + 32] = 0
                        mem[_6919 + 64] = 0
                        mem[_6919 + 96] = 0
                        mem[_6919 + 128] = 0
                        mem[_6919 + 160] = 0
                        mem[_6919 + 192] = 0
                        mem[_6919 + 224] = 0
                        mem[_6919 + 256] = 0
                        require mem[_6896 + 224] <= 4
                        if mem[_6896 + 224] == 1:
                            if uint32(stor0.field_168) > mem[_6896 + 60 len 4]:
                                _7226 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_7226] = 0
                                mem[_7226 + 32] = 0
                                mem[_7226 + 64] = 0
                                mem[_7226 + 96] = 0
                                mem[_7226 + 128] = 0
                                mem[_7226 + 160] = 0
                                mem[_7226 + 192] = 0
                                mem[_7226 + 224] = 0
                                mem[_7226 + 256] = 0
                                mem[mem[64] + 32] = 0
                                mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(employeesAddress)
                                call employeesAddress.mem[var130003 len 4] with:
                                     gas gas_remaining - 710 wei
                                    args mem[var130003 + 4 len var130004 - 4]
                                mem[var130005] = ext_call.return_data[0]
                                require ext_call.success
                                if var132006 >= 0:
                                    remainingPoolOptions += var132010
                                else:
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64]] = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = var134003
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.mem[var136003 len 4] with:
                                         gas gas_remaining - 710 wei
                                        args mem[var136003 + 4 len var136004 - 4]
                                    mem[var136005] = ext_call.return_data[0]
                                    require ext_call.success
                                    mem[mem[64] + 32] = 0
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x949d225d with:
                                         gas gas_remaining - 710 wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    require ext_call.success
                                    t = var138004
                                    u = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                                    s = var138006
                                    u = var138007
                                    v = var138010
                                    while s + 1 < uint16(ext_call.return_data[0]):
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0xedf26d9b with:
                                             gas gas_remaining - 710 wei
                                            args (s + 1)
                                        require ext_call.success
                                        if not address(ext_call.return_data[0]):
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x949d225d with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            mem[mem[64] + 32] = 0
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x949d225d with:
                                                 gas gas_remaining - 710 wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            require ext_call.success
                                            t = t
                                            u = ext_call.return_data[0]
                                            s = s + 1
                                            u = u
                                            v = v
                                            continue 
                                        _19169 = mem[64]
                                        mem[64] = mem[64] + 288
                                        mem[_19169] = 0
                                        mem[_19169 + 32] = 0
                                        mem[_19169 + 64] = 0
                                        mem[_19169 + 96] = 0
                                        mem[_19169 + 128] = 0
                                        mem[_19169 + 160] = 0
                                        mem[_19169 + 192] = 0
                                        mem[_19169 + 224] = 0
                                        mem[_19169 + 256] = 0
                                        mem[mem[64] + 288] = 0
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.getSerializedEmployee(address rg1) with:
                                             gas gas_remaining - 710 wei
                                            args address(ext_call.return_data[0])
                                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                        require ext_call.success
                                        _19505 = mem[64]
                                        mem[64] = mem[64] + 288
                                        _19770 = mem[64]
                                        mem[64] = mem[64] + 288
                                        mem[_19770] = 0
                                        mem[_19770 + 32] = 0
                                        mem[_19770 + 64] = 0
                                        mem[_19770 + 96] = 0
                                        mem[_19770 + 128] = 0
                                        mem[_19770 + 160] = 0
                                        mem[_19770 + 192] = 0
                                        mem[_19770 + 224] = 0
                                        mem[_19770 + 256] = 0
                                        if mem[_19505 + 156 len 4] <= 0:
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x949d225d with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            mem[mem[64] + 32] = 0
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x949d225d with:
                                                 gas gas_remaining - 710 wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            require ext_call.success
                                            t = t
                                            u = ext_call.return_data[0]
                                            s = s + 1
                                            u = _19505
                                            v = v
                                            continue 
                                        require mem[_19505 + 224] <= 4
                                        if mem[_19505 + 224] == 1:
                                            mem[mem[64] + 32] = 0
                                            mem[mem[64] + 4] = v
                                            require ext_code.size(optionsCalculatorAddress)
                                            call optionsCalculatorAddress.0xdcec5ecc with:
                                                 gas gas_remaining - 710 wei
                                                args v
                                            mem[mem[64]] = ext_call.return_data[0]
                                            require ext_call.success
                                            mem[_19505 + 128] = uint32(ext_call.return_data[0] + mem[_19505 + 128])
                                            _21201 = mem[_19505]
                                            _21202 = mem[_19505 + 32]
                                            _21203 = mem[_19505 + 64]
                                            _21204 = mem[_19505 + 96]
                                            _21205 = mem[_19505 + 128]
                                            _21206 = mem[_19505 + 160]
                                            _21207 = mem[_19505 + 192]
                                            _21208 = mem[_19505 + 224]
                                            mem[mem[64] + 36] = mem[_19505 + 28 len 4]
                                            mem[mem[64] + 68] = uint32(_21202)
                                            mem[mem[64] + 100] = uint32(_21203)
                                            mem[mem[64] + 132] = uint32(_21204)
                                            mem[mem[64] + 164] = uint32(_21205)
                                            mem[mem[64] + 196] = uint32(_21206)
                                            mem[mem[64] + 228] = uint32(_21207)
                                            require _21208 <= 4
                                            mem[mem[64] + 260] = uint8(_21208)
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x73ece9c4 with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), _21201 << 224, _21202 << 224, _21203 << 224, _21204 << 224, _21205 << 224, _21206 << 224, _21207 << 224, uint8(_21208)
                                        else:
                                            require mem[_19505 + 224] <= 4
                                            if mem[_19505 + 224] != 2:
                                                require ext_code.size(employeesAddress)
                                                call employeesAddress.0x949d225d with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                mem[mem[64] + 32] = 0
                                                require ext_code.size(employeesAddress)
                                                call employeesAddress.0x949d225d with:
                                                     gas gas_remaining - 710 wei
                                                mem[mem[64]] = ext_call.return_data[0]
                                                require ext_call.success
                                                t = t
                                                u = ext_call.return_data[0]
                                                s = s + 1
                                                u = _19505
                                                v = v
                                                continue 
                                            mem[mem[64] + 32] = 0
                                            mem[mem[64] + 4] = v
                                            require ext_code.size(optionsCalculatorAddress)
                                            call optionsCalculatorAddress.0xdcec5ecc with:
                                                 gas gas_remaining - 710 wei
                                                args v
                                            mem[mem[64]] = ext_call.return_data[0]
                                            require ext_call.success
                                            mem[_19505 + 128] = uint32(ext_call.return_data[0] + mem[_19505 + 128])
                                            _21385 = mem[_19505]
                                            _21386 = mem[_19505 + 32]
                                            _21387 = mem[_19505 + 64]
                                            _21388 = mem[_19505 + 96]
                                            _21389 = mem[_19505 + 128]
                                            _21390 = mem[_19505 + 160]
                                            _21391 = mem[_19505 + 192]
                                            _21392 = mem[_19505 + 224]
                                            mem[mem[64] + 36] = mem[_19505 + 28 len 4]
                                            mem[mem[64] + 68] = uint32(_21386)
                                            mem[mem[64] + 100] = uint32(_21387)
                                            mem[mem[64] + 132] = uint32(_21388)
                                            mem[mem[64] + 164] = uint32(_21389)
                                            mem[mem[64] + 196] = uint32(_21390)
                                            mem[mem[64] + 228] = uint32(_21391)
                                            require _21392 <= 4
                                            mem[mem[64] + 260] = uint8(_21392)
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x73ece9c4 with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), _21385 << 224, _21386 << 224, _21387 << 224, _21388 << 224, _21389 << 224, _21390 << 224, _21391 << 224, uint8(_21392)
                                        require ext_call.success
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x949d225d with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        mem[mem[64] + 32] = 0
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x949d225d with:
                                             gas gas_remaining - 710 wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        require ext_call.success
                                        t = ext_call.return_data[0]
                                        u = ext_call.return_data[0]
                                        s = s + 1
                                        u = _19505
                                        v = v - uint32(ext_call.return_data[0])
                                        continue 
                                    remainingPoolOptions += v
                                totalExtraOptions -= mem[_6896 + 188 len 4]
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 4] = address(ext_call.return_data[0])
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0xd108177a with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0])
                                mem[mem[64]] = ext_call.return_data[0]
                                require ext_call.success
                        require mem[_6896 + 224] <= 4
                        if mem[_6896 + 224] == 3:
                            if uint32(stor0.field_168) > mem[_6896 + 124 len 4]:
                                mem[mem[64] + 64] = 0
                                mem[mem[64]] = 0xb1989a2b00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint32(stor0.field_168)
                                mem[mem[64] + 36] = mem[_6896]
                                t = _6896
                                u = mem[64] + 36
                                s = 288
                                while s > 32:
                                    mem[mem[64] + 32] = 0
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x949d225d with:
                                         gas gas_remaining - 710 wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    require ext_call.success
                                    mem[u + 32] = mem[t + 32]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                require ext_code.size(optionsCalculatorAddress)
                                call optionsCalculatorAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining - 710 wei
                                    args mem[mem[64] + 4 len 320]
                                require ext_call.success
                                if ext_call.return_data[0] > 0:
                                    mem[mem[64] + 36] = uint32(stor0.field_168)
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x2462f6f1 with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), uint32(stor0.field_168)
                                    require ext_call.success
                                    remainingPoolOptions += ext_call.return_data[0]
                                    totalExtraOptions -= ext_call.return_data[32]
                                else:
                                    if ext_call.return_data[32] > 0:
                                        mem[mem[64] + 36] = uint32(stor0.field_168)
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x2462f6f1 with:
                                             gas gas_remaining - 710 wei
                                            args address(ext_call.return_data[0]), uint32(stor0.field_168)
                                        require ext_call.success
                                        remainingPoolOptions += ext_call.return_data[0]
                                        totalExtraOptions -= ext_call.return_data[32]
                        mem[mem[64] + 32] = 0
                        require ext_code.size(employeesAddress)
                        call employeesAddress.0x949d225d with:
                             gas gas_remaining - 710 wei
                        mem[mem[64]] = ext_call.return_data[0]
                        require ext_call.success
                        s = _6896
                        t = ext_call.return_data[0]
                        idx = idx + 1
                        t = _6896
                        continue 
            else:
                if var91008 < 0:
                    mem[992] = 0
                    mem[960] = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                    mem[964] = var93005
                    require ext_code.size(employeesAddress)
                    call employeesAddress.mem[var95003 len 4] with:
                         gas gas_remaining - 710 wei
                        args mem[var95003 + 4 len var95004 - 4]
                    mem[var95005] = ext_call.return_data[0]
                    require ext_call.success
                    mem[992] = 0
                    require ext_code.size(employeesAddress)
                    call employeesAddress.0x949d225d with:
                         gas gas_remaining - 710 wei
                    mem[960] = ext_call.return_data[0]
                    require ext_call.success
                    s = var97006
                    t = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                    idx = var97008
                    t = var97010
                    while idx + 1 < uint16(ext_call.return_data[0]):
                        require ext_code.size(employeesAddress)
                        call employeesAddress.0xedf26d9b with:
                             gas gas_remaining - 710 wei
                            args (idx + 1)
                        require ext_call.success
                        if not address(ext_call.return_data[0]):
                            mem[mem[64] + 32] = 0
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0x949d225d with:
                                 gas gas_remaining - 710 wei
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                            s = s
                            t = ext_call.return_data[0]
                            idx = idx + 1
                            t = t
                            continue 
                        mem[mem[64] + 288] = 0
                        require ext_code.size(employeesAddress)
                        call employeesAddress.getSerializedEmployee(address rg1) with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0])
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        require ext_call.success
                        _6900 = mem[64]
                        mem[64] = mem[64] + 288
                        _6923 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_6923] = 0
                        mem[_6923 + 32] = 0
                        mem[_6923 + 64] = 0
                        mem[_6923 + 96] = 0
                        mem[_6923 + 128] = 0
                        mem[_6923 + 160] = 0
                        mem[_6923 + 192] = 0
                        mem[_6923 + 224] = 0
                        mem[_6923 + 256] = 0
                        require mem[_6900 + 224] <= 4
                        if mem[_6900 + 224] == 1:
                            if uint32(block.timestamp) > mem[_6900 + 60 len 4]:
                                _7233 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_7233] = 0
                                mem[_7233 + 32] = 0
                                mem[_7233 + 64] = 0
                                mem[_7233 + 96] = 0
                                mem[_7233 + 128] = 0
                                mem[_7233 + 160] = 0
                                mem[_7233 + 192] = 0
                                mem[_7233 + 224] = 0
                                mem[_7233 + 256] = 0
                                mem[mem[64] + 32] = 0
                                mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(employeesAddress)
                                call employeesAddress.mem[var130003 len 4] with:
                                     gas gas_remaining - 710 wei
                                    args mem[var130003 + 4 len var130004 - 4]
                                mem[var130005] = ext_call.return_data[0]
                                require ext_call.success
                                if var132006 >= 0:
                                    remainingPoolOptions += var132010
                                else:
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64]] = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = var134003
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.mem[var136003 len 4] with:
                                         gas gas_remaining - 710 wei
                                        args mem[var136003 + 4 len var136004 - 4]
                                    mem[var136005] = ext_call.return_data[0]
                                    require ext_call.success
                                    mem[mem[64] + 32] = 0
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x949d225d with:
                                         gas gas_remaining - 710 wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    require ext_call.success
                                    t = var138004
                                    u = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                                    s = var138006
                                    u = var138007
                                    v = var138010
                                    while s + 1 < uint16(ext_call.return_data[0]):
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0xedf26d9b with:
                                             gas gas_remaining - 710 wei
                                            args (s + 1)
                                        require ext_call.success
                                        if not address(ext_call.return_data[0]):
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x949d225d with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            mem[mem[64] + 32] = 0
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x949d225d with:
                                                 gas gas_remaining - 710 wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            require ext_call.success
                                            t = t
                                            u = ext_call.return_data[0]
                                            s = s + 1
                                            u = u
                                            v = v
                                            continue 
                                        _19197 = mem[64]
                                        mem[64] = mem[64] + 288
                                        mem[_19197] = 0
                                        mem[_19197 + 32] = 0
                                        mem[_19197 + 64] = 0
                                        mem[_19197 + 96] = 0
                                        mem[_19197 + 128] = 0
                                        mem[_19197 + 160] = 0
                                        mem[_19197 + 192] = 0
                                        mem[_19197 + 224] = 0
                                        mem[_19197 + 256] = 0
                                        mem[mem[64] + 288] = 0
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.getSerializedEmployee(address rg1) with:
                                             gas gas_remaining - 710 wei
                                            args address(ext_call.return_data[0])
                                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                        require ext_call.success
                                        _19522 = mem[64]
                                        mem[64] = mem[64] + 288
                                        _19796 = mem[64]
                                        mem[64] = mem[64] + 288
                                        mem[_19796] = 0
                                        mem[_19796 + 32] = 0
                                        mem[_19796 + 64] = 0
                                        mem[_19796 + 96] = 0
                                        mem[_19796 + 128] = 0
                                        mem[_19796 + 160] = 0
                                        mem[_19796 + 192] = 0
                                        mem[_19796 + 224] = 0
                                        mem[_19796 + 256] = 0
                                        if mem[_19522 + 156 len 4] <= 0:
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x949d225d with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            mem[mem[64] + 32] = 0
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x949d225d with:
                                                 gas gas_remaining - 710 wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            require ext_call.success
                                            t = t
                                            u = ext_call.return_data[0]
                                            s = s + 1
                                            u = _19522
                                            v = v
                                            continue 
                                        require mem[_19522 + 224] <= 4
                                        if mem[_19522 + 224] == 1:
                                            mem[mem[64] + 32] = 0
                                            mem[mem[64] + 4] = v
                                            require ext_code.size(optionsCalculatorAddress)
                                            call optionsCalculatorAddress.0xdcec5ecc with:
                                                 gas gas_remaining - 710 wei
                                                args v
                                            mem[mem[64]] = ext_call.return_data[0]
                                            require ext_call.success
                                            mem[_19522 + 128] = uint32(ext_call.return_data[0] + mem[_19522 + 128])
                                            _21220 = mem[_19522]
                                            _21221 = mem[_19522 + 32]
                                            _21222 = mem[_19522 + 64]
                                            _21223 = mem[_19522 + 96]
                                            _21224 = mem[_19522 + 128]
                                            _21225 = mem[_19522 + 160]
                                            _21226 = mem[_19522 + 192]
                                            _21227 = mem[_19522 + 224]
                                            mem[mem[64] + 36] = mem[_19522 + 28 len 4]
                                            mem[mem[64] + 68] = uint32(_21221)
                                            mem[mem[64] + 100] = uint32(_21222)
                                            mem[mem[64] + 132] = uint32(_21223)
                                            mem[mem[64] + 164] = uint32(_21224)
                                            mem[mem[64] + 196] = uint32(_21225)
                                            mem[mem[64] + 228] = uint32(_21226)
                                            require _21227 <= 4
                                            mem[mem[64] + 260] = uint8(_21227)
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x73ece9c4 with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), _21220 << 224, _21221 << 224, _21222 << 224, _21223 << 224, _21224 << 224, _21225 << 224, _21226 << 224, uint8(_21227)
                                        else:
                                            require mem[_19522 + 224] <= 4
                                            if mem[_19522 + 224] != 2:
                                                require ext_code.size(employeesAddress)
                                                call employeesAddress.0x949d225d with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                mem[mem[64] + 32] = 0
                                                require ext_code.size(employeesAddress)
                                                call employeesAddress.0x949d225d with:
                                                     gas gas_remaining - 710 wei
                                                mem[mem[64]] = ext_call.return_data[0]
                                                require ext_call.success
                                                t = t
                                                u = ext_call.return_data[0]
                                                s = s + 1
                                                u = _19522
                                                v = v
                                                continue 
                                            mem[mem[64] + 32] = 0
                                            mem[mem[64] + 4] = v
                                            require ext_code.size(optionsCalculatorAddress)
                                            call optionsCalculatorAddress.0xdcec5ecc with:
                                                 gas gas_remaining - 710 wei
                                                args v
                                            mem[mem[64]] = ext_call.return_data[0]
                                            require ext_call.success
                                            mem[_19522 + 128] = uint32(ext_call.return_data[0] + mem[_19522 + 128])
                                            _21400 = mem[_19522]
                                            _21401 = mem[_19522 + 32]
                                            _21402 = mem[_19522 + 64]
                                            _21403 = mem[_19522 + 96]
                                            _21404 = mem[_19522 + 128]
                                            _21405 = mem[_19522 + 160]
                                            _21406 = mem[_19522 + 192]
                                            _21407 = mem[_19522 + 224]
                                            mem[mem[64] + 36] = mem[_19522 + 28 len 4]
                                            mem[mem[64] + 68] = uint32(_21401)
                                            mem[mem[64] + 100] = uint32(_21402)
                                            mem[mem[64] + 132] = uint32(_21403)
                                            mem[mem[64] + 164] = uint32(_21404)
                                            mem[mem[64] + 196] = uint32(_21405)
                                            mem[mem[64] + 228] = uint32(_21406)
                                            require _21407 <= 4
                                            mem[mem[64] + 260] = uint8(_21407)
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x73ece9c4 with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), _21400 << 224, _21401 << 224, _21402 << 224, _21403 << 224, _21404 << 224, _21405 << 224, _21406 << 224, uint8(_21407)
                                        require ext_call.success
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x949d225d with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        mem[mem[64] + 32] = 0
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x949d225d with:
                                             gas gas_remaining - 710 wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        require ext_call.success
                                        t = ext_call.return_data[0]
                                        u = ext_call.return_data[0]
                                        s = s + 1
                                        u = _19522
                                        v = v - uint32(ext_call.return_data[0])
                                        continue 
                                    remainingPoolOptions += v
                                totalExtraOptions -= mem[_6900 + 188 len 4]
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 4] = address(ext_call.return_data[0])
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0xd108177a with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0])
                                mem[mem[64]] = ext_call.return_data[0]
                                require ext_call.success
                        require mem[_6900 + 224] <= 4
                        if mem[_6900 + 224] == 3:
                            if uint32(block.timestamp) > mem[_6900 + 124 len 4]:
                                mem[mem[64] + 64] = 0
                                mem[mem[64]] = 0xb1989a2b00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint32(block.timestamp)
                                mem[mem[64] + 36] = mem[_6900]
                                t = _6900
                                u = mem[64] + 36
                                s = 288
                                while s > 32:
                                    mem[mem[64] + 32] = 0
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x949d225d with:
                                         gas gas_remaining - 710 wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    require ext_call.success
                                    mem[u + 32] = mem[t + 32]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                require ext_code.size(optionsCalculatorAddress)
                                call optionsCalculatorAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining - 710 wei
                                    args mem[mem[64] + 4 len 320]
                                require ext_call.success
                                if ext_call.return_data[0] > 0:
                                    mem[mem[64] + 36] = uint32(block.timestamp)
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x2462f6f1 with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), uint32(block.timestamp)
                                    require ext_call.success
                                    remainingPoolOptions += ext_call.return_data[0]
                                    totalExtraOptions -= ext_call.return_data[32]
                                else:
                                    if ext_call.return_data[32] > 0:
                                        mem[mem[64] + 36] = uint32(block.timestamp)
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x2462f6f1 with:
                                             gas gas_remaining - 710 wei
                                            args address(ext_call.return_data[0]), uint32(block.timestamp)
                                        require ext_call.success
                                        remainingPoolOptions += ext_call.return_data[0]
                                        totalExtraOptions -= ext_call.return_data[32]
                        mem[mem[64] + 32] = 0
                        require ext_code.size(employeesAddress)
                        call employeesAddress.0x949d225d with:
                             gas gas_remaining - 710 wei
                        mem[mem[64]] = ext_call.return_data[0]
                        require ext_call.success
                        s = _6900
                        t = ext_call.return_data[0]
                        idx = idx + 1
                        t = _6900
                        continue 
    else:
        if arg3 < uint32(block.timestamp + (336 * 24 * 3600)):
            emit ReturnCode(2);
            return 2
        if arg5:
            mem[384] = 0
            mem[416] = 0
            mem[448] = 0
            mem[480] = 0
            mem[512] = 0
            mem[544] = 0
            mem[576] = 0
            mem[608] = 0
            mem[640] = 0
            mem[64] = 960
            mem[672] = 0
            mem[704 len 256] = 0
            require esopState <= 2
            require esopState == 1
            require codeUpdateState <= 1
            require not codeUpdateState
            require block.timestamp <= test266151307()
            mem[992] = 0
            mem[960] = 0x949d225d00000000000000000000000000000000000000000000000000000000
            require ext_code.size(employeesAddress)
            call employeesAddress.mem[var89003 len 4] with:
                 gas gas_remaining - 710 wei
                args mem[var89003 + 4 len var89004 - 4]
            mem[var89005] = ext_call.return_data[0]
            require ext_call.success
            if uint32(stor0.field_168) > 0:
                if var91008 < 0:
                    mem[992] = 0
                    mem[960] = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                    mem[964] = var93005
                    require ext_code.size(employeesAddress)
                    call employeesAddress.mem[var95003 len 4] with:
                         gas gas_remaining - 710 wei
                        args mem[var95003 + 4 len var95004 - 4]
                    mem[var95005] = ext_call.return_data[0]
                    require ext_call.success
                    mem[992] = 0
                    require ext_code.size(employeesAddress)
                    call employeesAddress.0x949d225d with:
                         gas gas_remaining - 710 wei
                    mem[960] = ext_call.return_data[0]
                    require ext_call.success
                    s = var97006
                    t = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                    idx = var97008
                    t = var97010
                    while idx + 1 < uint16(ext_call.return_data[0]):
                        require ext_code.size(employeesAddress)
                        call employeesAddress.0xedf26d9b with:
                             gas gas_remaining - 710 wei
                            args (idx + 1)
                        require ext_call.success
                        if not address(ext_call.return_data[0]):
                            mem[mem[64] + 32] = 0
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0x949d225d with:
                                 gas gas_remaining - 710 wei
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                            s = s
                            t = ext_call.return_data[0]
                            idx = idx + 1
                            t = t
                            continue 
                        mem[mem[64] + 288] = 0
                        require ext_code.size(employeesAddress)
                        call employeesAddress.getSerializedEmployee(address rg1) with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0])
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        require ext_call.success
                        _6904 = mem[64]
                        mem[64] = mem[64] + 288
                        _6927 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_6927] = 0
                        mem[_6927 + 32] = 0
                        mem[_6927 + 64] = 0
                        mem[_6927 + 96] = 0
                        mem[_6927 + 128] = 0
                        mem[_6927 + 160] = 0
                        mem[_6927 + 192] = 0
                        mem[_6927 + 224] = 0
                        mem[_6927 + 256] = 0
                        require mem[_6904 + 224] <= 4
                        if mem[_6904 + 224] == 1:
                            if uint32(stor0.field_168) > mem[_6904 + 60 len 4]:
                                _7240 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_7240] = 0
                                mem[_7240 + 32] = 0
                                mem[_7240 + 64] = 0
                                mem[_7240 + 96] = 0
                                mem[_7240 + 128] = 0
                                mem[_7240 + 160] = 0
                                mem[_7240 + 192] = 0
                                mem[_7240 + 224] = 0
                                mem[_7240 + 256] = 0
                                mem[mem[64] + 32] = 0
                                mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(employeesAddress)
                                call employeesAddress.mem[var130003 len 4] with:
                                     gas gas_remaining - 710 wei
                                    args mem[var130003 + 4 len var130004 - 4]
                                mem[var130005] = ext_call.return_data[0]
                                require ext_call.success
                                if var132006 >= 0:
                                    remainingPoolOptions += var132010
                                else:
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64]] = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = var134003
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.mem[var136003 len 4] with:
                                         gas gas_remaining - 710 wei
                                        args mem[var136003 + 4 len var136004 - 4]
                                    mem[var136005] = ext_call.return_data[0]
                                    require ext_call.success
                                    mem[mem[64] + 32] = 0
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x949d225d with:
                                         gas gas_remaining - 710 wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    require ext_call.success
                                    t = var138004
                                    u = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                                    s = var138006
                                    u = var138007
                                    v = var138010
                                    while s + 1 < uint16(ext_call.return_data[0]):
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0xedf26d9b with:
                                             gas gas_remaining - 710 wei
                                            args (s + 1)
                                        require ext_call.success
                                        if not address(ext_call.return_data[0]):
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x949d225d with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            mem[mem[64] + 32] = 0
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x949d225d with:
                                                 gas gas_remaining - 710 wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            require ext_call.success
                                            t = t
                                            u = ext_call.return_data[0]
                                            s = s + 1
                                            u = u
                                            v = v
                                            continue 
                                        _19225 = mem[64]
                                        mem[64] = mem[64] + 288
                                        mem[_19225] = 0
                                        mem[_19225 + 32] = 0
                                        mem[_19225 + 64] = 0
                                        mem[_19225 + 96] = 0
                                        mem[_19225 + 128] = 0
                                        mem[_19225 + 160] = 0
                                        mem[_19225 + 192] = 0
                                        mem[_19225 + 224] = 0
                                        mem[_19225 + 256] = 0
                                        mem[mem[64] + 288] = 0
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.getSerializedEmployee(address rg1) with:
                                             gas gas_remaining - 710 wei
                                            args address(ext_call.return_data[0])
                                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                        require ext_call.success
                                        _19539 = mem[64]
                                        mem[64] = mem[64] + 288
                                        _19822 = mem[64]
                                        mem[64] = mem[64] + 288
                                        mem[_19822] = 0
                                        mem[_19822 + 32] = 0
                                        mem[_19822 + 64] = 0
                                        mem[_19822 + 96] = 0
                                        mem[_19822 + 128] = 0
                                        mem[_19822 + 160] = 0
                                        mem[_19822 + 192] = 0
                                        mem[_19822 + 224] = 0
                                        mem[_19822 + 256] = 0
                                        if mem[_19539 + 156 len 4] <= 0:
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x949d225d with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            mem[mem[64] + 32] = 0
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x949d225d with:
                                                 gas gas_remaining - 710 wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            require ext_call.success
                                            t = t
                                            u = ext_call.return_data[0]
                                            s = s + 1
                                            u = _19539
                                            v = v
                                            continue 
                                        require mem[_19539 + 224] <= 4
                                        if mem[_19539 + 224] == 1:
                                            mem[mem[64] + 32] = 0
                                            mem[mem[64] + 4] = v
                                            require ext_code.size(optionsCalculatorAddress)
                                            call optionsCalculatorAddress.0xdcec5ecc with:
                                                 gas gas_remaining - 710 wei
                                                args v
                                            mem[mem[64]] = ext_call.return_data[0]
                                            require ext_call.success
                                            mem[_19539 + 128] = uint32(ext_call.return_data[0] + mem[_19539 + 128])
                                            _21239 = mem[_19539]
                                            _21240 = mem[_19539 + 32]
                                            _21241 = mem[_19539 + 64]
                                            _21242 = mem[_19539 + 96]
                                            _21243 = mem[_19539 + 128]
                                            _21244 = mem[_19539 + 160]
                                            _21245 = mem[_19539 + 192]
                                            _21246 = mem[_19539 + 224]
                                            mem[mem[64] + 36] = mem[_19539 + 28 len 4]
                                            mem[mem[64] + 68] = uint32(_21240)
                                            mem[mem[64] + 100] = uint32(_21241)
                                            mem[mem[64] + 132] = uint32(_21242)
                                            mem[mem[64] + 164] = uint32(_21243)
                                            mem[mem[64] + 196] = uint32(_21244)
                                            mem[mem[64] + 228] = uint32(_21245)
                                            require _21246 <= 4
                                            mem[mem[64] + 260] = uint8(_21246)
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x73ece9c4 with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), _21239 << 224, _21240 << 224, _21241 << 224, _21242 << 224, _21243 << 224, _21244 << 224, _21245 << 224, uint8(_21246)
                                        else:
                                            require mem[_19539 + 224] <= 4
                                            if mem[_19539 + 224] != 2:
                                                require ext_code.size(employeesAddress)
                                                call employeesAddress.0x949d225d with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                mem[mem[64] + 32] = 0
                                                require ext_code.size(employeesAddress)
                                                call employeesAddress.0x949d225d with:
                                                     gas gas_remaining - 710 wei
                                                mem[mem[64]] = ext_call.return_data[0]
                                                require ext_call.success
                                                t = t
                                                u = ext_call.return_data[0]
                                                s = s + 1
                                                u = _19539
                                                v = v
                                                continue 
                                            mem[mem[64] + 32] = 0
                                            mem[mem[64] + 4] = v
                                            require ext_code.size(optionsCalculatorAddress)
                                            call optionsCalculatorAddress.0xdcec5ecc with:
                                                 gas gas_remaining - 710 wei
                                                args v
                                            mem[mem[64]] = ext_call.return_data[0]
                                            require ext_call.success
                                            mem[_19539 + 128] = uint32(ext_call.return_data[0] + mem[_19539 + 128])
                                            _21415 = mem[_19539]
                                            _21416 = mem[_19539 + 32]
                                            _21417 = mem[_19539 + 64]
                                            _21418 = mem[_19539 + 96]
                                            _21419 = mem[_19539 + 128]
                                            _21420 = mem[_19539 + 160]
                                            _21421 = mem[_19539 + 192]
                                            _21422 = mem[_19539 + 224]
                                            mem[mem[64] + 36] = mem[_19539 + 28 len 4]
                                            mem[mem[64] + 68] = uint32(_21416)
                                            mem[mem[64] + 100] = uint32(_21417)
                                            mem[mem[64] + 132] = uint32(_21418)
                                            mem[mem[64] + 164] = uint32(_21419)
                                            mem[mem[64] + 196] = uint32(_21420)
                                            mem[mem[64] + 228] = uint32(_21421)
                                            require _21422 <= 4
                                            mem[mem[64] + 260] = uint8(_21422)
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x73ece9c4 with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), _21415 << 224, _21416 << 224, _21417 << 224, _21418 << 224, _21419 << 224, _21420 << 224, _21421 << 224, uint8(_21422)
                                        require ext_call.success
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x949d225d with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        mem[mem[64] + 32] = 0
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x949d225d with:
                                             gas gas_remaining - 710 wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        require ext_call.success
                                        t = ext_call.return_data[0]
                                        u = ext_call.return_data[0]
                                        s = s + 1
                                        u = _19539
                                        v = v - uint32(ext_call.return_data[0])
                                        continue 
                                    remainingPoolOptions += v
                                totalExtraOptions -= mem[_6904 + 188 len 4]
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 4] = address(ext_call.return_data[0])
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0xd108177a with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0])
                                mem[mem[64]] = ext_call.return_data[0]
                                require ext_call.success
                        require mem[_6904 + 224] <= 4
                        if mem[_6904 + 224] == 3:
                            if uint32(stor0.field_168) > mem[_6904 + 124 len 4]:
                                mem[mem[64] + 64] = 0
                                mem[mem[64]] = 0xb1989a2b00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint32(stor0.field_168)
                                mem[mem[64] + 36] = mem[_6904]
                                t = _6904
                                u = mem[64] + 36
                                s = 288
                                while s > 32:
                                    mem[mem[64] + 32] = 0
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x949d225d with:
                                         gas gas_remaining - 710 wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    require ext_call.success
                                    mem[u + 32] = mem[t + 32]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                require ext_code.size(optionsCalculatorAddress)
                                call optionsCalculatorAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining - 710 wei
                                    args mem[mem[64] + 4 len 320]
                                require ext_call.success
                                if ext_call.return_data[0] > 0:
                                    mem[mem[64] + 36] = uint32(stor0.field_168)
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x2462f6f1 with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), uint32(stor0.field_168)
                                    require ext_call.success
                                    remainingPoolOptions += ext_call.return_data[0]
                                    totalExtraOptions -= ext_call.return_data[32]
                                else:
                                    if ext_call.return_data[32] > 0:
                                        mem[mem[64] + 36] = uint32(stor0.field_168)
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x2462f6f1 with:
                                             gas gas_remaining - 710 wei
                                            args address(ext_call.return_data[0]), uint32(stor0.field_168)
                                        require ext_call.success
                                        remainingPoolOptions += ext_call.return_data[0]
                                        totalExtraOptions -= ext_call.return_data[32]
                        mem[mem[64] + 32] = 0
                        require ext_code.size(employeesAddress)
                        call employeesAddress.0x949d225d with:
                             gas gas_remaining - 710 wei
                        mem[mem[64]] = ext_call.return_data[0]
                        require ext_call.success
                        s = _6904
                        t = ext_call.return_data[0]
                        idx = idx + 1
                        t = _6904
                        continue 
            else:
                if var91008 < 0:
                    mem[992] = 0
                    mem[960] = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                    mem[964] = var93005
                    require ext_code.size(employeesAddress)
                    call employeesAddress.mem[var95003 len 4] with:
                         gas gas_remaining - 710 wei
                        args mem[var95003 + 4 len var95004 - 4]
                    mem[var95005] = ext_call.return_data[0]
                    require ext_call.success
                    mem[992] = 0
                    require ext_code.size(employeesAddress)
                    call employeesAddress.0x949d225d with:
                         gas gas_remaining - 710 wei
                    mem[960] = ext_call.return_data[0]
                    require ext_call.success
                    s = var97006
                    t = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                    idx = var97008
                    t = var97010
                    while idx + 1 < uint16(ext_call.return_data[0]):
                        require ext_code.size(employeesAddress)
                        call employeesAddress.0xedf26d9b with:
                             gas gas_remaining - 710 wei
                            args (idx + 1)
                        require ext_call.success
                        if not address(ext_call.return_data[0]):
                            mem[mem[64] + 32] = 0
                            require ext_code.size(employeesAddress)
                            call employeesAddress.0x949d225d with:
                                 gas gas_remaining - 710 wei
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                            s = s
                            t = ext_call.return_data[0]
                            idx = idx + 1
                            t = t
                            continue 
                        mem[mem[64] + 288] = 0
                        require ext_code.size(employeesAddress)
                        call employeesAddress.getSerializedEmployee(address rg1) with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0])
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        require ext_call.success
                        _6908 = mem[64]
                        mem[64] = mem[64] + 288
                        _6931 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_6931] = 0
                        mem[_6931 + 32] = 0
                        mem[_6931 + 64] = 0
                        mem[_6931 + 96] = 0
                        mem[_6931 + 128] = 0
                        mem[_6931 + 160] = 0
                        mem[_6931 + 192] = 0
                        mem[_6931 + 224] = 0
                        mem[_6931 + 256] = 0
                        require mem[_6908 + 224] <= 4
                        if mem[_6908 + 224] == 1:
                            if uint32(block.timestamp) > mem[_6908 + 60 len 4]:
                                _7247 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_7247] = 0
                                mem[_7247 + 32] = 0
                                mem[_7247 + 64] = 0
                                mem[_7247 + 96] = 0
                                mem[_7247 + 128] = 0
                                mem[_7247 + 160] = 0
                                mem[_7247 + 192] = 0
                                mem[_7247 + 224] = 0
                                mem[_7247 + 256] = 0
                                mem[mem[64] + 32] = 0
                                mem[mem[64]] = 0x949d225d00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(employeesAddress)
                                call employeesAddress.mem[var130003 len 4] with:
                                     gas gas_remaining - 710 wei
                                    args mem[var130003 + 4 len var130004 - 4]
                                mem[var130005] = ext_call.return_data[0]
                                require ext_call.success
                                if var132006 >= 0:
                                    remainingPoolOptions += var132010
                                else:
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64]] = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = var134003
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.mem[var136003 len 4] with:
                                         gas gas_remaining - 710 wei
                                        args mem[var136003 + 4 len var136004 - 4]
                                    mem[var136005] = ext_call.return_data[0]
                                    require ext_call.success
                                    mem[mem[64] + 32] = 0
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x949d225d with:
                                         gas gas_remaining - 710 wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    require ext_call.success
                                    t = var138004
                                    u = 0xedf26d9b00000000000000000000000000000000000000000000000000000000
                                    s = var138006
                                    u = var138007
                                    v = var138010
                                    while s + 1 < uint16(ext_call.return_data[0]):
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0xedf26d9b with:
                                             gas gas_remaining - 710 wei
                                            args (s + 1)
                                        require ext_call.success
                                        if not address(ext_call.return_data[0]):
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x949d225d with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            mem[mem[64] + 32] = 0
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x949d225d with:
                                                 gas gas_remaining - 710 wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            require ext_call.success
                                            t = t
                                            u = ext_call.return_data[0]
                                            s = s + 1
                                            u = u
                                            v = v
                                            continue 
                                        _19253 = mem[64]
                                        mem[64] = mem[64] + 288
                                        mem[_19253] = 0
                                        mem[_19253 + 32] = 0
                                        mem[_19253 + 64] = 0
                                        mem[_19253 + 96] = 0
                                        mem[_19253 + 128] = 0
                                        mem[_19253 + 160] = 0
                                        mem[_19253 + 192] = 0
                                        mem[_19253 + 224] = 0
                                        mem[_19253 + 256] = 0
                                        mem[mem[64] + 288] = 0
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.getSerializedEmployee(address rg1) with:
                                             gas gas_remaining - 710 wei
                                            args address(ext_call.return_data[0])
                                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                        require ext_call.success
                                        _19556 = mem[64]
                                        mem[64] = mem[64] + 288
                                        _19848 = mem[64]
                                        mem[64] = mem[64] + 288
                                        mem[_19848] = 0
                                        mem[_19848 + 32] = 0
                                        mem[_19848 + 64] = 0
                                        mem[_19848 + 96] = 0
                                        mem[_19848 + 128] = 0
                                        mem[_19848 + 160] = 0
                                        mem[_19848 + 192] = 0
                                        mem[_19848 + 224] = 0
                                        mem[_19848 + 256] = 0
                                        if mem[_19556 + 156 len 4] <= 0:
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x949d225d with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            mem[mem[64] + 32] = 0
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x949d225d with:
                                                 gas gas_remaining - 710 wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            require ext_call.success
                                            t = t
                                            u = ext_call.return_data[0]
                                            s = s + 1
                                            u = _19556
                                            v = v
                                            continue 
                                        require mem[_19556 + 224] <= 4
                                        if mem[_19556 + 224] == 1:
                                            mem[mem[64] + 32] = 0
                                            mem[mem[64] + 4] = v
                                            require ext_code.size(optionsCalculatorAddress)
                                            call optionsCalculatorAddress.0xdcec5ecc with:
                                                 gas gas_remaining - 710 wei
                                                args v
                                            mem[mem[64]] = ext_call.return_data[0]
                                            require ext_call.success
                                            mem[_19556 + 128] = uint32(ext_call.return_data[0] + mem[_19556 + 128])
                                            _21258 = mem[_19556]
                                            _21259 = mem[_19556 + 32]
                                            _21260 = mem[_19556 + 64]
                                            _21261 = mem[_19556 + 96]
                                            _21262 = mem[_19556 + 128]
                                            _21263 = mem[_19556 + 160]
                                            _21264 = mem[_19556 + 192]
                                            _21265 = mem[_19556 + 224]
                                            mem[mem[64] + 36] = mem[_19556 + 28 len 4]
                                            mem[mem[64] + 68] = uint32(_21259)
                                            mem[mem[64] + 100] = uint32(_21260)
                                            mem[mem[64] + 132] = uint32(_21261)
                                            mem[mem[64] + 164] = uint32(_21262)
                                            mem[mem[64] + 196] = uint32(_21263)
                                            mem[mem[64] + 228] = uint32(_21264)
                                            require _21265 <= 4
                                            mem[mem[64] + 260] = uint8(_21265)
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x73ece9c4 with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), _21258 << 224, _21259 << 224, _21260 << 224, _21261 << 224, _21262 << 224, _21263 << 224, _21264 << 224, uint8(_21265)
                                        else:
                                            require mem[_19556 + 224] <= 4
                                            if mem[_19556 + 224] != 2:
                                                require ext_code.size(employeesAddress)
                                                call employeesAddress.0x949d225d with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                mem[mem[64] + 32] = 0
                                                require ext_code.size(employeesAddress)
                                                call employeesAddress.0x949d225d with:
                                                     gas gas_remaining - 710 wei
                                                mem[mem[64]] = ext_call.return_data[0]
                                                require ext_call.success
                                                t = t
                                                u = ext_call.return_data[0]
                                                s = s + 1
                                                u = _19556
                                                v = v
                                                continue 
                                            mem[mem[64] + 32] = 0
                                            mem[mem[64] + 4] = v
                                            require ext_code.size(optionsCalculatorAddress)
                                            call optionsCalculatorAddress.0xdcec5ecc with:
                                                 gas gas_remaining - 710 wei
                                                args v
                                            mem[mem[64]] = ext_call.return_data[0]
                                            require ext_call.success
                                            mem[_19556 + 128] = uint32(ext_call.return_data[0] + mem[_19556 + 128])
                                            _21430 = mem[_19556]
                                            _21431 = mem[_19556 + 32]
                                            _21432 = mem[_19556 + 64]
                                            _21433 = mem[_19556 + 96]
                                            _21434 = mem[_19556 + 128]
                                            _21435 = mem[_19556 + 160]
                                            _21436 = mem[_19556 + 192]
                                            _21437 = mem[_19556 + 224]
                                            mem[mem[64] + 36] = mem[_19556 + 28 len 4]
                                            mem[mem[64] + 68] = uint32(_21431)
                                            mem[mem[64] + 100] = uint32(_21432)
                                            mem[mem[64] + 132] = uint32(_21433)
                                            mem[mem[64] + 164] = uint32(_21434)
                                            mem[mem[64] + 196] = uint32(_21435)
                                            mem[mem[64] + 228] = uint32(_21436)
                                            require _21437 <= 4
                                            mem[mem[64] + 260] = uint8(_21437)
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x73ece9c4 with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), _21430 << 224, _21431 << 224, _21432 << 224, _21433 << 224, _21434 << 224, _21435 << 224, _21436 << 224, uint8(_21437)
                                        require ext_call.success
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x949d225d with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        mem[mem[64] + 32] = 0
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x949d225d with:
                                             gas gas_remaining - 710 wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        require ext_call.success
                                        t = ext_call.return_data[0]
                                        u = ext_call.return_data[0]
                                        s = s + 1
                                        u = _19556
                                        v = v - uint32(ext_call.return_data[0])
                                        continue 
                                    remainingPoolOptions += v
                                totalExtraOptions -= mem[_6908 + 188 len 4]
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 4] = address(ext_call.return_data[0])
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0xd108177a with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0])
                                mem[mem[64]] = ext_call.return_data[0]
                                require ext_call.success
                        require mem[_6908 + 224] <= 4
                        if mem[_6908 + 224] == 3:
                            if uint32(block.timestamp) > mem[_6908 + 124 len 4]:
                                mem[mem[64] + 64] = 0
                                mem[mem[64]] = 0xb1989a2b00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint32(block.timestamp)
                                mem[mem[64] + 36] = mem[_6908]
                                t = _6908
                                u = mem[64] + 36
                                s = 288
                                while s > 32:
                                    mem[mem[64] + 32] = 0
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x949d225d with:
                                         gas gas_remaining - 710 wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    require ext_call.success
                                    mem[u + 32] = mem[t + 32]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                require ext_code.size(optionsCalculatorAddress)
                                call optionsCalculatorAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining - 710 wei
                                    args mem[mem[64] + 4 len 320]
                                require ext_call.success
                                if ext_call.return_data[0] > 0:
                                    mem[mem[64] + 36] = uint32(block.timestamp)
                                    require ext_code.size(employeesAddress)
                                    call employeesAddress.0x2462f6f1 with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), uint32(block.timestamp)
                                    require ext_call.success
                                    remainingPoolOptions += ext_call.return_data[0]
                                    totalExtraOptions -= ext_call.return_data[32]
                                else:
                                    if ext_call.return_data[32] > 0:
                                        mem[mem[64] + 36] = uint32(block.timestamp)
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.0x2462f6f1 with:
                                             gas gas_remaining - 710 wei
                                            args address(ext_call.return_data[0]), uint32(block.timestamp)
                                        require ext_call.success
                                        remainingPoolOptions += ext_call.return_data[0]
                                        totalExtraOptions -= ext_call.return_data[32]
                        mem[mem[64] + 32] = 0
                        require ext_code.size(employeesAddress)
                        call employeesAddress.0x949d225d with:
                             gas gas_remaining - 710 wei
                        mem[mem[64]] = ext_call.return_data[0]
                        require ext_call.success
                        s = _6908
                        t = ext_call.return_data[0]
                        idx = idx + 1
                        t = _6908
                        continue 
    require ext_code.size(optionsCalculatorAddress)
    call optionsCalculatorAddress.0xdcec5ecc with:
         gas gas_remaining - 710 wei
        args remainingPoolOptions
    require ext_call.success
    require ext_call.return_data[0] <= test266151307()
    require ext_code.size(employeesAddress)
    call employeesAddress.0x73ece9c4 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2 << 224, arg3 << 224, 0, 0, ext_call.return_data[0] << 224, arg4 << 224, 0, 1
    require ext_call.success
    remainingPoolOptions -= ext_call.return_data[0]
    totalExtraOptions += arg4
    emit ESOPOffered(companyAddress, ext_call.return_data[0] << 224, arg4, arg1);
    return 0
}



}
