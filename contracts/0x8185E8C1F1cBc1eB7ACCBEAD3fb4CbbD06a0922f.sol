contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor3;
address stor6;
uint8 stor7;
address stor7; offset 8
uint256 stor8;
uint256 stor9;
uint256 stor10;

function _fallback() payable {
    stor6 = 0x2accab9cb7a48c3e82286f0b2f8798d201f4ec3f
    uint8(stor7.field_0) = 0
    Mask(152, 0, stor7.field_8) = 0xea03ee7110fafb324d4a931979ef4578bffb6a
    stor8 = 5 * 10^14
    stor9 = 500
    stor10 = 10^18
    require not msg.value
    stor0 = msg.sender
    bool(stor3.length) = 0
    stor3.length.field_1 = 5
    stor3.length.field_8 = '1.0.0' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[558 len 6536]
}



// =====================  Runtime code  =====================


address stor0;
address newAddress;
uint256 deprecatedSince;
array of uint256 version;
array of uint256 newVersion;
array of uint256 reason;
address stor6;
address stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
mapping of uint8 stor11;

function newVersion() {
    return newVersion[0 len newVersion.length]
}

function version() {
    return version[0 len version.length]
}

function deprecatedSince() {
    return deprecatedSince
}

function newAddress() {
    return newAddress
}

function reason() {
    return reason[0 len reason.length]
}

function isDeprecated() {
    return not not deprecatedSince
}

function updateDonor(address arg1) {
    require msg.sender == stor0
    stor7 = arg1
}

function updateDecimals(uint256 arg1) {
    require msg.sender == stor0
    stor10 = arg1
}

function updateEtherAmount(uint256 arg1) {
    require msg.sender == stor0
    stor8 = arg1
}

function updateTokenAmount(uint256 arg1) {
    require msg.sender == stor0
    stor9 = arg1
}

function updateTokenContract(address arg1) {
    require msg.sender == stor0
    stor6 = arg1
}

function updateEtherAndtokenAmount(uint256 arg1, uint256 arg2) {
    require msg.sender == stor0
    stor8 = arg1
    stor9 = arg2
}

function transferOwnership(address arg1) {
    require msg.sender == stor0
    require arg1
    emit OwnershipTransferred(stor0, arg1);
    stor0 = arg1
}

function updateEtherAndtokenAmount(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == stor0
    stor7 = arg1
    stor8 = arg2
    stor9 = arg3
}

function redeemEthers(address arg1, uint256 arg2) {
    require msg.sender == stor0
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function updateParameters(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require msg.sender == stor0
    stor6 = arg1
    stor7 = arg2
    stor8 = arg3
    stor9 = arg4
    stor10 = arg5
}

function isOpen() {
    require ext_code.size(stor6)
    call stor6.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args stor7, this.address
    require ext_call.success
    return ext_call.return_data[0] >= stor9 * stor10
}

function redeemTokens(address arg1, address arg2, uint256 arg3) {
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function isOpenFor(address arg1) {
    if stor11[stor6][address(arg1)]:
        return not bool(stor11[stor6][address(arg1)])
    require ext_code.size(stor6)
    call stor6.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args stor7, this.address
    require ext_call.success
    return ext_call.return_data[0] >= stor9 * stor10
}

function _fallback() payable {
    require msg.value >= stor8
    require not stor11[stor6][address(msg.sender)]
    require ext_code.size(stor6)
    call stor6.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args stor7, this.address
    require ext_call.success
    require ext_call.return_data[0] >= stor9 * stor10
    require ext_code.size(stor6)
    call stor6.0x23b872dd with:
         gas gas_remaining - 710 wei
        args stor7, msg.sender, stor9 * stor10
    require ext_call.success
    stor11[stor6][address(msg.sender)] = uint8(bool(ext_call.return_data[0]))
}

function setDeprecated(address arg1, string arg2, string arg3) {
    require msg.sender == stor0
    require not deprecatedSince
    require arg1 != this.address
    deprecatedSince = block.timestamp
    newAddress = arg1
    newVersion.length = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        newVersion[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg2.length + 31) >> 5
    while newVersion.length + 31 / 32 > idx:
        newVersion[idx] = 0
        idx = idx + 1
        continue 
    reason.length = (2 * arg3.length) + 1
    s = 0
    idx = arg3 + 36
    while arg3 + arg3.length + 36 > idx:
        reason[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg3.length + 31) >> 5
    while reason.length + 31 / 32 > idx:
        reason[idx] = 0
        idx = idx + 1
        continue 
    emit 0xd114bcca: address(arg1), Array(len=arg2.length, data=arg2[all]), arg2.length + 128
    require ext_code.size(arg1)
    call arg1.0xc7178230 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    return 1
}

function transferBatch(address[] arg1) {
    require msg.sender == stor0
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = sha3(stor6, 11)
        if not stor11[stor6][address(cd[((32 * idx) + arg1 + 36)])]:
            mem[100] = stor7
            mem[132] = this.address
            require ext_code.size(stor6)
            call stor6.0xdd62ed3e with:
                 gas gas_remaining - 710 wei
                args stor7, this.address
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0] >= stor9 * stor10:
                require idx < arg1.length
                mem[100] = stor7
                mem[132] = address(cd[((32 * idx) + arg1 + 36)])
                mem[164] = stor9 * stor10
                require ext_code.size(stor6)
                call stor6.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args stor7, address(cd[((32 * idx) + arg1 + 36)]), stor9 * stor10
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                mem[32] = sha3(stor6, 11)
                stor11[stor6][address(cd[((32 * idx) + arg1 + 36)])] = uint8(bool(ext_call.return_data[0]))
        idx = idx + 1
        continue 
}



}
