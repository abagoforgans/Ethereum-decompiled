contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor1 = msg.sender
    stor0 = code.data[12605 len 20]
    return code.data[104 len 12489]
}



// =====================  Runtime code  =====================


#
#  - pay(uint256 arg1, uint256 arg2, address arg3)
#  - addInterest(uint256 arg1)
#  - lend(uint256 arg1)
#
const VERSION = 15


address tokenAddress;
uint8 stor1; offset 160
uint128 stor1; offset 160
address owner;
uint256 totalLenderBalance;
array of struct approvedTransfer;

function getApprovedTransfer(uint256 arg1) {
    require arg1 < approvedTransfer.length
    return address(approvedTransfer[arg1].field_4608)
}

function getInterestRate(uint256 arg1) {
    require arg1 < approvedTransfer.length
    return uint256(approvedTransfer[arg1].field_2816)
}

function deprecated() {
    return bool(uint8(stor1.field_160))
}

function getOracle(uint256 arg1) {
    require arg1 < approvedTransfer.length
    return address(approvedTransfer[arg1].field_0)
}

function getInterestTimestamp(uint256 arg1) {
    require arg1 < approvedTransfer.length
    return uint256(approvedTransfer[arg1].field_2048)
}

function getPaid(uint256 arg1) {
    require arg1 < approvedTransfer.length
    return uint256(approvedTransfer[arg1].field_2304)
}

function getDuesIn(uint256 arg1) {
    require arg1 < approvedTransfer.length
    return uint256(approvedTransfer[arg1].field_3584)
}

function getInterestRatePunitory(uint256 arg1) {
    require arg1 < approvedTransfer.length
    return uint256(approvedTransfer[arg1].field_3072)
}

function getLenderBalance(uint256 arg1) {
    require arg1 < approvedTransfer.length
    return uint256(approvedTransfer[arg1].field_4352)
}

function getDueTime(uint256 arg1) {
    require arg1 < approvedTransfer.length
    return uint256(approvedTransfer[arg1].field_3328)
}

function getStatus(uint256 arg1) {
    require arg1 < approvedTransfer.length
    require uint8(approvedTransfer[arg1].field_160) <= 3
    return uint8(approvedTransfer[arg1].field_160)
}

function getInterest(uint256 arg1) {
    require arg1 < approvedTransfer.length
    return uint256(approvedTransfer[arg1].field_1536)
}

function getTotalLoans() {
    return approvedTransfer.length
}

function getBorrower(uint256 arg1) {
    require arg1 < approvedTransfer.length
    return address(approvedTransfer[arg1].field_256)
}

function owner() {
    return owner
}

function getPunitoryInterest(uint256 arg1) {
    require arg1 < approvedTransfer.length
    return uint256(approvedTransfer[arg1].field_1792)
}

function getCosigner(uint256 arg1) {
    require arg1 < approvedTransfer.length
    return address(approvedTransfer[arg1].field_512)
}

function getAmount(uint256 arg1) {
    require arg1 < approvedTransfer.length
    return uint256(approvedTransfer[arg1].field_1280)
}

function getApprobation(uint256 arg1, address arg2) {
    require arg1 < approvedTransfer.length
    return bool(uint8(stor[(21 * arg1) + ('name', 'approvedTransfer', 3) + 20][address(arg2)].field_0))
}

function getCosignerFee(uint256 arg1) {
    require arg1 < approvedTransfer.length
    return uint256(approvedTransfer[arg1].field_2560)
}

function getCancelableAt(uint256 arg1) {
    require arg1 < approvedTransfer.length
    return uint256(approvedTransfer[arg1].field_4096)
}

function getCurrency(uint256 arg1) {
    return uint256(stor[(21 * arg1) + ('name', 'approvedTransfer', 3) + 15][0 len stor[(21 * arg1) + ('name', 'approvedTransfer', 3) + 15].length].field_0)
}

function getCreator(uint256 arg1) {
    require arg1 < approvedTransfer.length
    return address(approvedTransfer[arg1].field_1024)
}

function totalLenderBalance() {
    return totalLenderBalance
}

function getExpirationRequest(uint256 arg1) {
    require arg1 < approvedTransfer.length
    return uint256(approvedTransfer[arg1].field_4864)
}

function getLender(uint256 arg1) {
    require arg1 < approvedTransfer.length
    return address(approvedTransfer[arg1].field_768)
}

function token() {
    return tokenAddress
}

function getCurrencyLength(uint256 arg1) {
    require arg1 < approvedTransfer.length
    return stor[(21 * arg1) + ('name', 'approvedTransfer', 3) + 15].length
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function setDeprecated(bool arg1) {
    require owner == msg.sender
    Mask(96, 0, stor1.field_160) = Mask(96, 0, arg1)
}

function approveTransfer(uint256 arg1, address arg2) {
    require arg1 < approvedTransfer.length
    require address(approvedTransfer[arg1].field_768) == msg.sender
    address(approvedTransfer[arg1].field_4608) = arg2
    return 1
}

function approve(uint256 arg1) {
    require arg1 < approvedTransfer.length
    require uint8(approvedTransfer[arg1].field_160) <= 3
    require not uint8(approvedTransfer[arg1].field_160)
    uint8(stor[(21 * arg1) + ('name', 'approvedTransfer', 3) + 20][address(msg.sender)].field_0) = 1
    emit ApprovedBy(arg1, msg.sender);
    return 1
}

function transfer(uint256 arg1, address arg2) {
    require arg1 < approvedTransfer.length
    require uint8(approvedTransfer[arg1].field_160) <= 3
    require uint8(approvedTransfer[arg1].field_160) != 3
    if address(approvedTransfer[arg1].field_768) != msg.sender:
        require address(approvedTransfer[arg1].field_4608) == msg.sender
    require arg2
    emit Transfer(arg1, address(approvedTransfer[arg1].field_768), arg2);
    address(approvedTransfer[arg1].field_768) = arg2
    address(approvedTransfer[arg1].field_4608) = 0
    return 1
}

function getCurrencyHash(uint256 arg1) {
    require arg1 < approvedTransfer.length
    mem[96] = uint256(stor[sha3((21 * arg1) + ('name', 'approvedTransfer', 3) + 15)].field_0)
    idx = 96
    s = 0
    while stor[(21 * arg1) + ('name', 'approvedTransfer', 3) + 15].length + 96 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((21 * arg1) + ('name', 'approvedTransfer', 3) + 15)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[96] = sha3(mem[96 len stor[(21 * arg1) + ('name', 'approvedTransfer', 3) + 15].length])
    return memory
      from 96
       len 32
}

function destroy(uint256 arg1) {
    require arg1 < approvedTransfer.length
    require uint8(approvedTransfer[arg1].field_160) <= 3
    require uint8(approvedTransfer[arg1].field_160) != 3
    if address(approvedTransfer[arg1].field_768) != msg.sender:
        if address(approvedTransfer[arg1].field_256) != msg.sender:
            require address(approvedTransfer[arg1].field_512) == msg.sender
        require uint8(approvedTransfer[arg1].field_160) <= 3
        require not uint8(approvedTransfer[arg1].field_160)
    emit DestroyedBy(arg1, msg.sender);
    uint8(approvedTransfer[arg1].field_160) = 3
    return 1
}

function withdrawal(uint256 arg1, address arg2, uint256 arg3) {
    require arg1 < approvedTransfer.length
    require arg2
    if address(approvedTransfer[arg1].field_768) != msg.sender:
        return 0
    if uint256(approvedTransfer[arg1].field_4352) < arg3:
        return 0
    uint256(approvedTransfer[arg1].field_4352) -= arg3
    require totalLenderBalance >= arg3
    totalLenderBalance -= arg3
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}

function isApproved(uint256 arg1) {
    require arg1 < approvedTransfer.length
    if not uint8(stor[(21 * arg1) + ('name', 'approvedTransfer', 3) + 20][address(approvedTransfer[arg1].field_256)].field_0):
        return bool(uint8(stor[(21 * arg1) + ('name', 'approvedTransfer', 3) + 20][address(approvedTransfer[arg1].field_256)].field_0))
    if uint8(stor[(21 * arg1) + ('name', 'approvedTransfer', 3) + 20][address(approvedTransfer[arg1].field_512)].field_0):
        return bool(uint8(stor[(21 * arg1) + ('name', 'approvedTransfer', 3) + 20][address(approvedTransfer[arg1].field_512)].field_0))
    return not bool(address(approvedTransfer[arg1].field_512))
}

function emergencyWithdrawal(address arg1, address arg2, uint256 arg3) {
    require owner == msg.sender
    if tokenAddress == arg1:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_call.return_data[0] >= totalLenderBalance
        require ext_call.return_data[0] - totalLenderBalance >= arg3
    require arg2
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function getCurrencyByte(uint256 arg1, uint256 arg2) {
    require arg1 < approvedTransfer.length
    require arg2 < stor[(21 * arg1) + ('name', 'approvedTransfer', 3) + 15].length
    if not bool(approvedTransfer[arg1].field_3840):
        return (Mask(8, -(('type', 256, ('field', 3843, ('stor', ('array', ('mul', 21, ('param', 'arg1')), ('name', 'approvedTransfer', 3))))), 0) + 256, arg2) << (('type', 256, ('field', 3843, ('stor', ('array', ('mul', 21, ('param', 'arg1')), ('name', 'approvedTransfer', 3))))), 0) - 8)
    return (Mask(8, -(('type', 256, ('field', 3, ('stor', ('add', ('div', 0.03125, ('param', 'arg2')), ('sha3', ('add', 15, ('mul', 21, ('param', 'arg1')), ('name', 'approvedTransfer', 3))))))), 0) + 256, arg2 % 32) << (('type', 256, ('field', 3, ('stor', ('add', ('div', 0.03125, ('param', 'arg2')), ('sha3', ('add', 15, ('mul', 21, ('param', 'arg1')), ('name', 'approvedTransfer', 3))))))), 0) - 8)
}

function getPendingAmount(uint256 arg1) {
    require arg1 < approvedTransfer.length
    require uint256(approvedTransfer[arg1].field_1536) + uint256(approvedTransfer[arg1].field_1280) >= uint256(approvedTransfer[arg1].field_1280)
    require uint256(approvedTransfer[arg1].field_1536) + uint256(approvedTransfer[arg1].field_1280) >= uint256(approvedTransfer[arg1].field_1536)
    require uint256(approvedTransfer[arg1].field_1792) >= 0
    require uint256(approvedTransfer[arg1].field_1792) + uint256(approvedTransfer[arg1].field_1536) + uint256(approvedTransfer[arg1].field_1280) >= uint256(approvedTransfer[arg1].field_1792)
    require uint256(approvedTransfer[arg1].field_1792) + uint256(approvedTransfer[arg1].field_1536) + uint256(approvedTransfer[arg1].field_1280) >= uint256(approvedTransfer[arg1].field_2304)
    return (uint256(approvedTransfer[arg1].field_1792) + uint256(approvedTransfer[arg1].field_1536) + uint256(approvedTransfer[arg1].field_1280) - uint256(approvedTransfer[arg1].field_2304))
}

function getCurrencyDecimals(uint256 arg1) {
    require arg1 < approvedTransfer.length
    mem[164] = uint256(stor[sha3((21 * arg1) + ('name', 'approvedTransfer', 3) + 15)].field_0)
    idx = 164
    s = 0
    while stor[(21 * arg1) + ('name', 'approvedTransfer', 3) + 15].length + 164 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((21 * arg1) + ('name', 'approvedTransfer', 3) + 15)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(address(approvedTransfer[arg1].field_0))
    call address(approvedTransfer[arg1].field_0).getDecimals(string rg1) with:
         gas gas_remaining - 710 wei
        args Array(len=stor[(21 * arg1) + ('name', 'approvedTransfer', 3) + 15].length, data=mem[164 len stor[(21 * arg1) + ('name', 'approvedTransfer', 3) + 15].length + (floor32(stor[(21 * arg1) + ('name', 'approvedTransfer', 3) + 15].length - 1) + -stor[(21 * arg1) + ('name', 'approvedTransfer', 3) + 15].length + 32 % 32)])
    require ext_call.success
    return ext_call.return_data[0]
}

function calculateInterest(uint256 arg1, uint256 arg2, uint256 arg3) {
    require 100000 * arg3 / 100000 == arg3
    if not 100000 * arg3:
        if arg2:
            if not 100000 * arg1 * arg3 / arg2:
                if 100000 * arg3:
                    return arg2 * 100000 * arg1 * arg3 / arg2 / 100000 * arg3, 100000 * arg1 * arg3 / arg2
            else:
                if 100000 * arg1 * arg3 / arg2:
                    if arg2 * 100000 * arg1 * arg3 / arg2 / 100000 * arg1 * arg3 / arg2 == arg2:
                        if 100000 * arg3:
                            return arg2 * 100000 * arg1 * arg3 / arg2 / 100000 * arg3, 100000 * arg1 * arg3 / arg2
    else:
        if 100000 * arg3:
            if 100000 * arg1 * arg3 / 100000 * arg3 == arg1:
                if arg2:
                    if not 100000 * arg1 * arg3 / arg2:
                        if 100000 * arg3:
                            return arg2 * 100000 * arg1 * arg3 / arg2 / 100000 * arg3, 100000 * arg1 * arg3 / arg2
                    else:
                        if 100000 * arg1 * arg3 / arg2:
                            if arg2 * 100000 * arg1 * arg3 / arg2 / 100000 * arg1 * arg3 / arg2 == arg2:
                                if 100000 * arg3:
                                    return arg2 * 100000 * arg1 * arg3 / arg2 / 100000 * arg3, 100000 * arg1 * arg3 / arg2
    revert
}

function getLoanConfig(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require arg1 < approvedTransfer.length
    mem[100] = 32
    mem[132] = stor[(21 * arg1) + ('name', 'approvedTransfer', 3) + 15].length
    mem[164] = uint256(stor[sha3((21 * arg1) + ('name', 'approvedTransfer', 3) + 15)].field_0)
    idx = 164
    s = 0
    while stor[(21 * arg1) + ('name', 'approvedTransfer', 3) + 15].length + 164 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((21 * arg1) + ('name', 'approvedTransfer', 3) + 15)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(address(approvedTransfer[arg1].field_0))
    call address(approvedTransfer[arg1].field_0).getDecimals(string rg1) with:
         gas gas_remaining - 710 wei
        args Array(len=stor[(21 * arg1) + ('name', 'approvedTransfer', 3) + 15].length, data=mem[164 len stor[(21 * arg1) + ('name', 'approvedTransfer', 3) + 15].length + (floor32(stor[(21 * arg1) + ('name', 'approvedTransfer', 3) + 15].length - 1) + -stor[(21 * arg1) + ('name', 'approvedTransfer', 3) + 15].length + 32 % 32)])
    require ext_call.success
    mem[0] = (21 * arg1) + sha3(3) + 15
    mem[96] = uint256(stor[sha3((21 * arg1) + ('name', 'approvedTransfer', 3) + 15)].field_0)
    idx = mem[64]
    s = 0
    while stor[(21 * arg1) + ('name', 'approvedTransfer', 3) + 15].length + 96 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3(mem[0]) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return address(approvedTransfer[arg1].field_0), 
           address(approvedTransfer[arg1].field_256),
           address(approvedTransfer[arg1].field_768),
           address(approvedTransfer[arg1].field_1024),
           uint256(approvedTransfer[arg1].field_1280),
           uint256(approvedTransfer[arg1].field_2560),
           uint256(approvedTransfer[arg1].field_2816),
           uint256(approvedTransfer[arg1].field_3072),
           uint256(approvedTransfer[arg1].field_3584),
           uint256(approvedTransfer[arg1].field_4096),
           ext_call.return_data[0],
           sha3(mem[mem[64] len stor[(21 * arg1) + ('name', 'approvedTransfer', 3) + 15].length + -mem[64] + 96]),
           uint256(approvedTransfer[arg1].field_4864)
}

function getLoanState(uint256 arg1) {
    require arg1 < approvedTransfer.length
    if not uint8(stor[(21 * arg1) + ('name', 'approvedTransfer', 3) + 20][address(approvedTransfer[arg1].field_256)].field_0):
        if uint8(approvedTransfer[arg1].field_160) <= 3:
            return uint256(approvedTransfer[arg1].field_1536), 
                   uint256(approvedTransfer[arg1].field_1792),
                   uint256(approvedTransfer[arg1].field_2048),
                   uint256(approvedTransfer[arg1].field_2304),
                   uint256(approvedTransfer[arg1].field_3328),
                   uint8(approvedTransfer[arg1].field_0),
                   uint256(approvedTransfer[arg1].field_4352),
                   address(approvedTransfer[arg1].field_4608),
                   bool(uint8(stor[(21 * arg1) + ('name', 'approvedTransfer', 3) + 20][address(approvedTransfer[arg1].field_256)].field_0))
    else:
        if uint8(stor[(21 * arg1) + ('name', 'approvedTransfer', 3) + 20][address(approvedTransfer[arg1].field_512)].field_0):
            if uint8(approvedTransfer[arg1].field_160) <= 3:
                return uint256(approvedTransfer[arg1].field_1536), 
                       uint256(approvedTransfer[arg1].field_1792),
                       uint256(approvedTransfer[arg1].field_2048),
                       uint256(approvedTransfer[arg1].field_2304),
                       uint256(approvedTransfer[arg1].field_3328),
                       uint8(approvedTransfer[arg1].field_0),
                       uint256(approvedTransfer[arg1].field_4352),
                       address(approvedTransfer[arg1].field_4608),
                       bool(uint8(stor[(21 * arg1) + ('name', 'approvedTransfer', 3) + 20][address(approvedTransfer[arg1].field_512)].field_0))
        else:
            if uint8(approvedTransfer[arg1].field_160) <= 3:
                return uint256(approvedTransfer[arg1].field_1536), 
                       uint256(approvedTransfer[arg1].field_1792),
                       uint256(approvedTransfer[arg1].field_2048),
                       uint256(approvedTransfer[arg1].field_2304),
                       uint256(approvedTransfer[arg1].field_3328),
                       uint8(approvedTransfer[arg1].field_0),
                       uint256(approvedTransfer[arg1].field_4352),
                       address(approvedTransfer[arg1].field_4608),
                       not bool(address(approvedTransfer[arg1].field_512))
    ('gt', ('type', 8, ('field', 160, ('stor', ('array', ('mul', 21, ('param', 'arg1')), ('name', 'approvedTransfer', 3))))), 3)
    revert
}

function createLoan(address arg1, address arg2, address arg3, uint256 arg4, string arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, uint256 arg11) {
    require not uint8(stor1.field_160)
    require arg10 <= arg9
    if not arg1:
        require not arg5.length
    if not arg3:
        require not arg4
    require arg2
    require arg6
    require arg8
    require arg7
    require arg11 > block.timestamp
    approvedTransfer.length++
    if not approvedTransfer.length > approvedTransfer.length + 1:
        address(approvedTransfer[approvedTransfer.length].field_0) = arg1
    else:
        mem[0] = 3
        idx = (21 * approvedTransfer.length) + 21
        while sha3(3) + (21 * approvedTransfer.length) > idx + sha3(mem[0]):
            Mask(168, 0, stor[idx + sha3(mem[0])]) = 0
            address(stor[idx + sha3(mem[0]) + 1]) = 0
            address(stor[idx + sha3(mem[0]) + 2]) = 0
            address(stor[idx + sha3(mem[0]) + 3]) = 0
            address(stor[idx + sha3(mem[0]) + 4]) = 0
            uint256(stor[idx + sha3(mem[0]) + 5]) = 0
            uint256(stor[idx + sha3(mem[0]) + 6]) = 0
            uint256(stor[idx + sha3(mem[0]) + 7]) = 0
            uint256(stor[idx + sha3(mem[0]) + 8]) = 0
            uint256(stor[idx + sha3(mem[0]) + 9]) = 0
            uint256(stor[idx + sha3(mem[0]) + 10]) = 0
            uint256(stor[idx + sha3(mem[0]) + 11]) = 0
            uint256(stor[idx + sha3(mem[0]) + 12]) = 0
            uint256(stor[idx + sha3(mem[0]) + 13]) = 0
            uint256(stor[idx + sha3(mem[0]) + 14]) = 0
            uint256(stor[idx + sha3(mem[0]) + 15]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 15].length:
                mem[0] = idx + sha3(mem[0]) + 15
                s = sha3(idx + sha3(mem[0]) + 15)
                while sha3(idx + sha3(mem[0]) + 15) + (stor[idx + sha3(mem[0]) + 15].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 16]) = 0
            uint256(stor[idx + sha3(mem[0]) + 17]) = 0
            address(stor[idx + sha3(mem[0]) + 18]) = 0
            uint256(stor[idx + sha3(mem[0]) + 19]) = 0
            idx = idx + 21
            continue 
        address(approvedTransfer[approvedTransfer.length].field_0) = uint64(arg1) << 96
    uint8(approvedTransfer[approvedTransfer.length].field_160) = 0
    approvedTransfer[approvedTransfer.length].field_256 % 1 = 0
    address(approvedTransfer[approvedTransfer.length].field_256) = arg2
    address(approvedTransfer[approvedTransfer.length].field_512) = arg3
    address(approvedTransfer[approvedTransfer.length].field_768) = 0
    approvedTransfer[approvedTransfer.length].field_1024 % 1 = 0
    address(approvedTransfer[approvedTransfer.length].field_1024) = msg.sender
    uint256(approvedTransfer[approvedTransfer.length].field_1280) = arg6
    uint256(approvedTransfer[approvedTransfer.length].field_1536) = 0
    uint256(approvedTransfer[approvedTransfer.length].field_1792) = 0
    uint256(approvedTransfer[approvedTransfer.length].field_2048) = 0
    uint256(approvedTransfer[approvedTransfer.length].field_2304) = 0
    uint256(approvedTransfer[approvedTransfer.length].field_2560) = arg4
    uint256(approvedTransfer[approvedTransfer.length].field_2816) = arg7
    uint256(approvedTransfer[approvedTransfer.length].field_3072) = arg8
    uint256(approvedTransfer[approvedTransfer.length].field_3328) = 0
    uint256(approvedTransfer[approvedTransfer.length].field_3584) = arg9
    uint256(stor[sha3((21 * approvedTransfer.length) + ('name', 'approvedTransfer', 3) + 15)][].field_0) = Array(len=arg5.length, data=arg5[all])
    uint256(approvedTransfer[approvedTransfer.length].field_4096) = arg10
    uint256(approvedTransfer[approvedTransfer.length].field_4352) = 0
    address(approvedTransfer[approvedTransfer.length].field_4608) = 0
    approvedTransfer[approvedTransfer.length].field_4864 % 1 = 0
    uint256(approvedTransfer[approvedTransfer.length].field_4864) = arg11
    emit CreatedLoan(approvedTransfer.length, address(arg2), msg.sender);
    return approvedTransfer.length
}



}
