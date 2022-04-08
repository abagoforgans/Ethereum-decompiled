contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor4;
address stor5;
address stor7; offset 8

function _fallback() {
    stor0 = msg.sender
    stor4 = code.data[15422 len 20]
    stor5 = code.data[15454 len 20]
    stor7 = code.data[15518 len 20]
    stor1 = code.data[15486 len 20]
    return code.data[188 len 15222]
}



// =====================  Runtime code  =====================


#
#  - offerOptionsConversion(address arg1)
#
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
                        _6636 = mem[64]
                        mem[64] = mem[64] + 288
                        _6659 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_6659] = 0
                        mem[_6659 + 32] = 0
                        mem[_6659 + 64] = 0
                        mem[_6659 + 96] = 0
                        mem[_6659 + 128] = 0
                        mem[_6659 + 160] = 0
                        mem[_6659 + 192] = 0
                        mem[_6659 + 224] = 0
                        mem[_6659 + 256] = 0
                        require mem[_6636 + 224] <= 4
                        if mem[_6636 + 224] == 1:
                            if uint32(stor0.field_168) > mem[_6636 + 60 len 4]:
                                _6958 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_6958] = 0
                                mem[_6958 + 32] = 0
                                mem[_6958 + 64] = 0
                                mem[_6958 + 96] = 0
                                mem[_6958 + 128] = 0
                                mem[_6958 + 160] = 0
                                mem[_6958 + 192] = 0
                                mem[_6958 + 224] = 0
                                mem[_6958 + 256] = 0
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
                                        _18565 = mem[64]
                                        mem[64] = mem[64] + 288
                                        mem[_18565] = 0
                                        mem[_18565 + 32] = 0
                                        mem[_18565 + 64] = 0
                                        mem[_18565 + 96] = 0
                                        mem[_18565 + 128] = 0
                                        mem[_18565 + 160] = 0
                                        mem[_18565 + 192] = 0
                                        mem[_18565 + 224] = 0
                                        mem[_18565 + 256] = 0
                                        mem[mem[64] + 288] = 0
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.getSerializedEmployee(address rg1) with:
                                             gas gas_remaining - 710 wei
                                            args address(ext_call.return_data[0])
                                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                        require ext_call.success
                                        _18901 = mem[64]
                                        mem[64] = mem[64] + 288
                                        _19166 = mem[64]
                                        mem[64] = mem[64] + 288
                                        mem[_19166] = 0
                                        mem[_19166 + 32] = 0
                                        mem[_19166 + 64] = 0
                                        mem[_19166 + 96] = 0
                                        mem[_19166 + 128] = 0
                                        mem[_19166 + 160] = 0
                                        mem[_19166 + 192] = 0
                                        mem[_19166 + 224] = 0
                                        mem[_19166 + 256] = 0
                                        if mem[_18901 + 156 len 4] <= 0:
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
                                            u = _18901
                                            v = v
                                            continue 
                                        require mem[_18901 + 224] <= 4
                                        if mem[_18901 + 224] == 1:
                                            mem[mem[64] + 32] = 0
                                            mem[mem[64] + 4] = v
                                            require ext_code.size(optionsCalculatorAddress)
                                            call optionsCalculatorAddress.0xdcec5ecc with:
                                                 gas gas_remaining - 710 wei
                                                args v
                                            mem[mem[64]] = ext_call.return_data[0]
                                            require ext_call.success
                                            mem[_18901 + 128] = uint32(ext_call.return_data[0] + mem[_18901 + 128])
                                            _20517 = mem[_18901]
                                            _20518 = mem[_18901 + 32]
                                            _20519 = mem[_18901 + 64]
                                            _20520 = mem[_18901 + 96]
                                            _20521 = mem[_18901 + 128]
                                            _20522 = mem[_18901 + 160]
                                            _20523 = mem[_18901 + 192]
                                            _20524 = mem[_18901 + 224]
                                            mem[mem[64] + 36] = mem[_18901 + 28 len 4]
                                            mem[mem[64] + 68] = uint32(_20518)
                                            mem[mem[64] + 100] = uint32(_20519)
                                            mem[mem[64] + 132] = uint32(_20520)
                                            mem[mem[64] + 164] = uint32(_20521)
                                            mem[mem[64] + 196] = uint32(_20522)
                                            mem[mem[64] + 228] = uint32(_20523)
                                            require _20524 <= 4
                                            mem[mem[64] + 260] = uint8(_20524)
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x73ece9c4 with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), _20517 << 224, _20518 << 224, _20519 << 224, _20520 << 224, _20521 << 224, _20522 << 224, _20523 << 224, uint8(_20524)
                                        else:
                                            require mem[_18901 + 224] <= 4
                                            if mem[_18901 + 224] != 2:
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
                                                u = _18901
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
                                            mem[_18901 + 128] = uint32(ext_call.return_data[0] + mem[_18901 + 128])
                                            _20685 = mem[_18901]
                                            _20686 = mem[_18901 + 32]
                                            _20687 = mem[_18901 + 64]
                                            _20688 = mem[_18901 + 96]
                                            _20689 = mem[_18901 + 128]
                                            _20690 = mem[_18901 + 160]
                                            _20691 = mem[_18901 + 192]
                                            _20692 = mem[_18901 + 224]
                                            mem[mem[64] + 36] = mem[_18901 + 28 len 4]
                                            mem[mem[64] + 68] = uint32(_20686)
                                            mem[mem[64] + 100] = uint32(_20687)
                                            mem[mem[64] + 132] = uint32(_20688)
                                            mem[mem[64] + 164] = uint32(_20689)
                                            mem[mem[64] + 196] = uint32(_20690)
                                            mem[mem[64] + 228] = uint32(_20691)
                                            require _20692 <= 4
                                            mem[mem[64] + 260] = uint8(_20692)
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x73ece9c4 with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), _20685 << 224, _20686 << 224, _20687 << 224, _20688 << 224, _20689 << 224, _20690 << 224, _20691 << 224, uint8(_20692)
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
                                        u = _18901
                                        v = v - uint32(ext_call.return_data[0])
                                        continue 
                                    remainingPoolOptions += v
                                totalExtraOptions -= mem[_6636 + 188 len 4]
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 4] = address(ext_call.return_data[0])
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0xd108177a with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0])
                                mem[mem[64]] = ext_call.return_data[0]
                                require ext_call.success
                        require mem[_6636 + 224] <= 4
                        if mem[_6636 + 224] == 3:
                            if uint32(stor0.field_168) > mem[_6636 + 124 len 4]:
                                mem[mem[64] + 64] = 0
                                mem[mem[64]] = 0xb1989a2b00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint32(stor0.field_168)
                                mem[mem[64] + 36] = mem[_6636]
                                t = _6636
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
                        s = _6636
                        t = ext_call.return_data[0]
                        idx = idx + 1
                        t = _6636
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
                        _6640 = mem[64]
                        mem[64] = mem[64] + 288
                        _6663 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_6663] = 0
                        mem[_6663 + 32] = 0
                        mem[_6663 + 64] = 0
                        mem[_6663 + 96] = 0
                        mem[_6663 + 128] = 0
                        mem[_6663 + 160] = 0
                        mem[_6663 + 192] = 0
                        mem[_6663 + 224] = 0
                        mem[_6663 + 256] = 0
                        require mem[_6640 + 224] <= 4
                        if mem[_6640 + 224] == 1:
                            if uint32(block.timestamp) > mem[_6640 + 60 len 4]:
                                _6965 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_6965] = 0
                                mem[_6965 + 32] = 0
                                mem[_6965 + 64] = 0
                                mem[_6965 + 96] = 0
                                mem[_6965 + 128] = 0
                                mem[_6965 + 160] = 0
                                mem[_6965 + 192] = 0
                                mem[_6965 + 224] = 0
                                mem[_6965 + 256] = 0
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
                                        _18593 = mem[64]
                                        mem[64] = mem[64] + 288
                                        mem[_18593] = 0
                                        mem[_18593 + 32] = 0
                                        mem[_18593 + 64] = 0
                                        mem[_18593 + 96] = 0
                                        mem[_18593 + 128] = 0
                                        mem[_18593 + 160] = 0
                                        mem[_18593 + 192] = 0
                                        mem[_18593 + 224] = 0
                                        mem[_18593 + 256] = 0
                                        mem[mem[64] + 288] = 0
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.getSerializedEmployee(address rg1) with:
                                             gas gas_remaining - 710 wei
                                            args address(ext_call.return_data[0])
                                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                        require ext_call.success
                                        _18918 = mem[64]
                                        mem[64] = mem[64] + 288
                                        _19192 = mem[64]
                                        mem[64] = mem[64] + 288
                                        mem[_19192] = 0
                                        mem[_19192 + 32] = 0
                                        mem[_19192 + 64] = 0
                                        mem[_19192 + 96] = 0
                                        mem[_19192 + 128] = 0
                                        mem[_19192 + 160] = 0
                                        mem[_19192 + 192] = 0
                                        mem[_19192 + 224] = 0
                                        mem[_19192 + 256] = 0
                                        if mem[_18918 + 156 len 4] <= 0:
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
                                            u = _18918
                                            v = v
                                            continue 
                                        require mem[_18918 + 224] <= 4
                                        if mem[_18918 + 224] == 1:
                                            mem[mem[64] + 32] = 0
                                            mem[mem[64] + 4] = v
                                            require ext_code.size(optionsCalculatorAddress)
                                            call optionsCalculatorAddress.0xdcec5ecc with:
                                                 gas gas_remaining - 710 wei
                                                args v
                                            mem[mem[64]] = ext_call.return_data[0]
                                            require ext_call.success
                                            mem[_18918 + 128] = uint32(ext_call.return_data[0] + mem[_18918 + 128])
                                            _20536 = mem[_18918]
                                            _20537 = mem[_18918 + 32]
                                            _20538 = mem[_18918 + 64]
                                            _20539 = mem[_18918 + 96]
                                            _20540 = mem[_18918 + 128]
                                            _20541 = mem[_18918 + 160]
                                            _20542 = mem[_18918 + 192]
                                            _20543 = mem[_18918 + 224]
                                            mem[mem[64] + 36] = mem[_18918 + 28 len 4]
                                            mem[mem[64] + 68] = uint32(_20537)
                                            mem[mem[64] + 100] = uint32(_20538)
                                            mem[mem[64] + 132] = uint32(_20539)
                                            mem[mem[64] + 164] = uint32(_20540)
                                            mem[mem[64] + 196] = uint32(_20541)
                                            mem[mem[64] + 228] = uint32(_20542)
                                            require _20543 <= 4
                                            mem[mem[64] + 260] = uint8(_20543)
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x73ece9c4 with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), _20536 << 224, _20537 << 224, _20538 << 224, _20539 << 224, _20540 << 224, _20541 << 224, _20542 << 224, uint8(_20543)
                                        else:
                                            require mem[_18918 + 224] <= 4
                                            if mem[_18918 + 224] != 2:
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
                                                u = _18918
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
                                            mem[_18918 + 128] = uint32(ext_call.return_data[0] + mem[_18918 + 128])
                                            _20700 = mem[_18918]
                                            _20701 = mem[_18918 + 32]
                                            _20702 = mem[_18918 + 64]
                                            _20703 = mem[_18918 + 96]
                                            _20704 = mem[_18918 + 128]
                                            _20705 = mem[_18918 + 160]
                                            _20706 = mem[_18918 + 192]
                                            _20707 = mem[_18918 + 224]
                                            mem[mem[64] + 36] = mem[_18918 + 28 len 4]
                                            mem[mem[64] + 68] = uint32(_20701)
                                            mem[mem[64] + 100] = uint32(_20702)
                                            mem[mem[64] + 132] = uint32(_20703)
                                            mem[mem[64] + 164] = uint32(_20704)
                                            mem[mem[64] + 196] = uint32(_20705)
                                            mem[mem[64] + 228] = uint32(_20706)
                                            require _20707 <= 4
                                            mem[mem[64] + 260] = uint8(_20707)
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x73ece9c4 with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), _20700 << 224, _20701 << 224, _20702 << 224, _20703 << 224, _20704 << 224, _20705 << 224, _20706 << 224, uint8(_20707)
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
                                        u = _18918
                                        v = v - uint32(ext_call.return_data[0])
                                        continue 
                                    remainingPoolOptions += v
                                totalExtraOptions -= mem[_6640 + 188 len 4]
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 4] = address(ext_call.return_data[0])
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0xd108177a with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0])
                                mem[mem[64]] = ext_call.return_data[0]
                                require ext_call.success
                        require mem[_6640 + 224] <= 4
                        if mem[_6640 + 224] == 3:
                            if uint32(block.timestamp) > mem[_6640 + 124 len 4]:
                                mem[mem[64] + 64] = 0
                                mem[mem[64]] = 0xb1989a2b00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint32(block.timestamp)
                                mem[mem[64] + 36] = mem[_6640]
                                t = _6640
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
                        s = _6640
                        t = ext_call.return_data[0]
                        idx = idx + 1
                        t = _6640
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
                        _6644 = mem[64]
                        mem[64] = mem[64] + 288
                        _6667 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_6667] = 0
                        mem[_6667 + 32] = 0
                        mem[_6667 + 64] = 0
                        mem[_6667 + 96] = 0
                        mem[_6667 + 128] = 0
                        mem[_6667 + 160] = 0
                        mem[_6667 + 192] = 0
                        mem[_6667 + 224] = 0
                        mem[_6667 + 256] = 0
                        require mem[_6644 + 224] <= 4
                        if mem[_6644 + 224] == 1:
                            if uint32(stor0.field_168) > mem[_6644 + 60 len 4]:
                                _6972 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_6972] = 0
                                mem[_6972 + 32] = 0
                                mem[_6972 + 64] = 0
                                mem[_6972 + 96] = 0
                                mem[_6972 + 128] = 0
                                mem[_6972 + 160] = 0
                                mem[_6972 + 192] = 0
                                mem[_6972 + 224] = 0
                                mem[_6972 + 256] = 0
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
                                        _18621 = mem[64]
                                        mem[64] = mem[64] + 288
                                        mem[_18621] = 0
                                        mem[_18621 + 32] = 0
                                        mem[_18621 + 64] = 0
                                        mem[_18621 + 96] = 0
                                        mem[_18621 + 128] = 0
                                        mem[_18621 + 160] = 0
                                        mem[_18621 + 192] = 0
                                        mem[_18621 + 224] = 0
                                        mem[_18621 + 256] = 0
                                        mem[mem[64] + 288] = 0
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.getSerializedEmployee(address rg1) with:
                                             gas gas_remaining - 710 wei
                                            args address(ext_call.return_data[0])
                                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                        require ext_call.success
                                        _18935 = mem[64]
                                        mem[64] = mem[64] + 288
                                        _19218 = mem[64]
                                        mem[64] = mem[64] + 288
                                        mem[_19218] = 0
                                        mem[_19218 + 32] = 0
                                        mem[_19218 + 64] = 0
                                        mem[_19218 + 96] = 0
                                        mem[_19218 + 128] = 0
                                        mem[_19218 + 160] = 0
                                        mem[_19218 + 192] = 0
                                        mem[_19218 + 224] = 0
                                        mem[_19218 + 256] = 0
                                        if mem[_18935 + 156 len 4] <= 0:
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
                                            u = _18935
                                            v = v
                                            continue 
                                        require mem[_18935 + 224] <= 4
                                        if mem[_18935 + 224] == 1:
                                            mem[mem[64] + 32] = 0
                                            mem[mem[64] + 4] = v
                                            require ext_code.size(optionsCalculatorAddress)
                                            call optionsCalculatorAddress.0xdcec5ecc with:
                                                 gas gas_remaining - 710 wei
                                                args v
                                            mem[mem[64]] = ext_call.return_data[0]
                                            require ext_call.success
                                            mem[_18935 + 128] = uint32(ext_call.return_data[0] + mem[_18935 + 128])
                                            _20555 = mem[_18935]
                                            _20556 = mem[_18935 + 32]
                                            _20557 = mem[_18935 + 64]
                                            _20558 = mem[_18935 + 96]
                                            _20559 = mem[_18935 + 128]
                                            _20560 = mem[_18935 + 160]
                                            _20561 = mem[_18935 + 192]
                                            _20562 = mem[_18935 + 224]
                                            mem[mem[64] + 36] = mem[_18935 + 28 len 4]
                                            mem[mem[64] + 68] = uint32(_20556)
                                            mem[mem[64] + 100] = uint32(_20557)
                                            mem[mem[64] + 132] = uint32(_20558)
                                            mem[mem[64] + 164] = uint32(_20559)
                                            mem[mem[64] + 196] = uint32(_20560)
                                            mem[mem[64] + 228] = uint32(_20561)
                                            require _20562 <= 4
                                            mem[mem[64] + 260] = uint8(_20562)
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x73ece9c4 with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), _20555 << 224, _20556 << 224, _20557 << 224, _20558 << 224, _20559 << 224, _20560 << 224, _20561 << 224, uint8(_20562)
                                        else:
                                            require mem[_18935 + 224] <= 4
                                            if mem[_18935 + 224] != 2:
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
                                                u = _18935
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
                                            mem[_18935 + 128] = uint32(ext_call.return_data[0] + mem[_18935 + 128])
                                            _20715 = mem[_18935]
                                            _20716 = mem[_18935 + 32]
                                            _20717 = mem[_18935 + 64]
                                            _20718 = mem[_18935 + 96]
                                            _20719 = mem[_18935 + 128]
                                            _20720 = mem[_18935 + 160]
                                            _20721 = mem[_18935 + 192]
                                            _20722 = mem[_18935 + 224]
                                            mem[mem[64] + 36] = mem[_18935 + 28 len 4]
                                            mem[mem[64] + 68] = uint32(_20716)
                                            mem[mem[64] + 100] = uint32(_20717)
                                            mem[mem[64] + 132] = uint32(_20718)
                                            mem[mem[64] + 164] = uint32(_20719)
                                            mem[mem[64] + 196] = uint32(_20720)
                                            mem[mem[64] + 228] = uint32(_20721)
                                            require _20722 <= 4
                                            mem[mem[64] + 260] = uint8(_20722)
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x73ece9c4 with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), _20715 << 224, _20716 << 224, _20717 << 224, _20718 << 224, _20719 << 224, _20720 << 224, _20721 << 224, uint8(_20722)
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
                                        u = _18935
                                        v = v - uint32(ext_call.return_data[0])
                                        continue 
                                    remainingPoolOptions += v
                                totalExtraOptions -= mem[_6644 + 188 len 4]
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 4] = address(ext_call.return_data[0])
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0xd108177a with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0])
                                mem[mem[64]] = ext_call.return_data[0]
                                require ext_call.success
                        require mem[_6644 + 224] <= 4
                        if mem[_6644 + 224] == 3:
                            if uint32(stor0.field_168) > mem[_6644 + 124 len 4]:
                                mem[mem[64] + 64] = 0
                                mem[mem[64]] = 0xb1989a2b00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint32(stor0.field_168)
                                mem[mem[64] + 36] = mem[_6644]
                                t = _6644
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
                        s = _6644
                        t = ext_call.return_data[0]
                        idx = idx + 1
                        t = _6644
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
                        _6648 = mem[64]
                        mem[64] = mem[64] + 288
                        _6671 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_6671] = 0
                        mem[_6671 + 32] = 0
                        mem[_6671 + 64] = 0
                        mem[_6671 + 96] = 0
                        mem[_6671 + 128] = 0
                        mem[_6671 + 160] = 0
                        mem[_6671 + 192] = 0
                        mem[_6671 + 224] = 0
                        mem[_6671 + 256] = 0
                        require mem[_6648 + 224] <= 4
                        if mem[_6648 + 224] == 1:
                            if uint32(block.timestamp) > mem[_6648 + 60 len 4]:
                                _6979 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_6979] = 0
                                mem[_6979 + 32] = 0
                                mem[_6979 + 64] = 0
                                mem[_6979 + 96] = 0
                                mem[_6979 + 128] = 0
                                mem[_6979 + 160] = 0
                                mem[_6979 + 192] = 0
                                mem[_6979 + 224] = 0
                                mem[_6979 + 256] = 0
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
                                        _18649 = mem[64]
                                        mem[64] = mem[64] + 288
                                        mem[_18649] = 0
                                        mem[_18649 + 32] = 0
                                        mem[_18649 + 64] = 0
                                        mem[_18649 + 96] = 0
                                        mem[_18649 + 128] = 0
                                        mem[_18649 + 160] = 0
                                        mem[_18649 + 192] = 0
                                        mem[_18649 + 224] = 0
                                        mem[_18649 + 256] = 0
                                        mem[mem[64] + 288] = 0
                                        require ext_code.size(employeesAddress)
                                        call employeesAddress.getSerializedEmployee(address rg1) with:
                                             gas gas_remaining - 710 wei
                                            args address(ext_call.return_data[0])
                                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                        require ext_call.success
                                        _18952 = mem[64]
                                        mem[64] = mem[64] + 288
                                        _19244 = mem[64]
                                        mem[64] = mem[64] + 288
                                        mem[_19244] = 0
                                        mem[_19244 + 32] = 0
                                        mem[_19244 + 64] = 0
                                        mem[_19244 + 96] = 0
                                        mem[_19244 + 128] = 0
                                        mem[_19244 + 160] = 0
                                        mem[_19244 + 192] = 0
                                        mem[_19244 + 224] = 0
                                        mem[_19244 + 256] = 0
                                        if mem[_18952 + 156 len 4] <= 0:
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
                                            u = _18952
                                            v = v
                                            continue 
                                        require mem[_18952 + 224] <= 4
                                        if mem[_18952 + 224] == 1:
                                            mem[mem[64] + 32] = 0
                                            mem[mem[64] + 4] = v
                                            require ext_code.size(optionsCalculatorAddress)
                                            call optionsCalculatorAddress.0xdcec5ecc with:
                                                 gas gas_remaining - 710 wei
                                                args v
                                            mem[mem[64]] = ext_call.return_data[0]
                                            require ext_call.success
                                            mem[_18952 + 128] = uint32(ext_call.return_data[0] + mem[_18952 + 128])
                                            _20574 = mem[_18952]
                                            _20575 = mem[_18952 + 32]
                                            _20576 = mem[_18952 + 64]
                                            _20577 = mem[_18952 + 96]
                                            _20578 = mem[_18952 + 128]
                                            _20579 = mem[_18952 + 160]
                                            _20580 = mem[_18952 + 192]
                                            _20581 = mem[_18952 + 224]
                                            mem[mem[64] + 36] = mem[_18952 + 28 len 4]
                                            mem[mem[64] + 68] = uint32(_20575)
                                            mem[mem[64] + 100] = uint32(_20576)
                                            mem[mem[64] + 132] = uint32(_20577)
                                            mem[mem[64] + 164] = uint32(_20578)
                                            mem[mem[64] + 196] = uint32(_20579)
                                            mem[mem[64] + 228] = uint32(_20580)
                                            require _20581 <= 4
                                            mem[mem[64] + 260] = uint8(_20581)
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x73ece9c4 with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), _20574 << 224, _20575 << 224, _20576 << 224, _20577 << 224, _20578 << 224, _20579 << 224, _20580 << 224, uint8(_20581)
                                        else:
                                            require mem[_18952 + 224] <= 4
                                            if mem[_18952 + 224] != 2:
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
                                                u = _18952
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
                                            mem[_18952 + 128] = uint32(ext_call.return_data[0] + mem[_18952 + 128])
                                            _20730 = mem[_18952]
                                            _20731 = mem[_18952 + 32]
                                            _20732 = mem[_18952 + 64]
                                            _20733 = mem[_18952 + 96]
                                            _20734 = mem[_18952 + 128]
                                            _20735 = mem[_18952 + 160]
                                            _20736 = mem[_18952 + 192]
                                            _20737 = mem[_18952 + 224]
                                            mem[mem[64] + 36] = mem[_18952 + 28 len 4]
                                            mem[mem[64] + 68] = uint32(_20731)
                                            mem[mem[64] + 100] = uint32(_20732)
                                            mem[mem[64] + 132] = uint32(_20733)
                                            mem[mem[64] + 164] = uint32(_20734)
                                            mem[mem[64] + 196] = uint32(_20735)
                                            mem[mem[64] + 228] = uint32(_20736)
                                            require _20737 <= 4
                                            mem[mem[64] + 260] = uint8(_20737)
                                            require ext_code.size(employeesAddress)
                                            call employeesAddress.0x73ece9c4 with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), _20730 << 224, _20731 << 224, _20732 << 224, _20733 << 224, _20734 << 224, _20735 << 224, _20736 << 224, uint8(_20737)
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
                                        u = _18952
                                        v = v - uint32(ext_call.return_data[0])
                                        continue 
                                    remainingPoolOptions += v
                                totalExtraOptions -= mem[_6648 + 188 len 4]
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 4] = address(ext_call.return_data[0])
                                require ext_code.size(employeesAddress)
                                call employeesAddress.0xd108177a with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0])
                                mem[mem[64]] = ext_call.return_data[0]
                                require ext_call.success
                        require mem[_6648 + 224] <= 4
                        if mem[_6648 + 224] == 3:
                            if uint32(block.timestamp) > mem[_6648 + 124 len 4]:
                                mem[mem[64] + 64] = 0
                                mem[mem[64]] = 0xb1989a2b00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint32(block.timestamp)
                                mem[mem[64] + 36] = mem[_6648]
                                t = _6648
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
                        s = _6648
                        t = ext_call.return_data[0]
                        idx = idx + 1
                        t = _6648
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
