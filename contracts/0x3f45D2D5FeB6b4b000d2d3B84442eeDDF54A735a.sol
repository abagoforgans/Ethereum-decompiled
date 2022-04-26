contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;
uint256 stor5;
uint256 stor6;
address stor7;
uint8 stor10;

function _fallback() payable {
    stor10 = 1
    require not msg.value
    stor0 = msg.sender
    stor2 = code.data[20126 len 20]
    stor3 = code.data[20158 len 20]
    stor6 = 1
    if not stor6 <= 1:
        mem[0] = 6
        idx = 5
        while sha3(6) + (5 * stor6) > idx + sha3(mem[0]):
            Mask(168, 0, stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 2].length:
                mem[0] = idx + sha3(mem[0]) + 2
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            Mask(136, 0, stor[idx + sha3(mem[0]) + 3]) = 0
            address(stor[idx + sha3(mem[0]) + 4]) = 0
            idx = idx + 5
            continue 
    stor5 = 1
    if not stor5 <= 1:
        mem[0] = 5
        idx = 4
        while sha3(5) + (4 * stor5) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            uint64(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            mem[0] = idx + sha3(mem[0]) + 2
            s = sha3(idx + sha3(mem[0]) + 2)
            while sha3(idx + sha3(mem[0]) + 2) + (uint256(stor[idx + sha3(mem[0]) + 2]) + 3 / 4) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            Mask(200, 0, stor[idx + sha3(mem[0]) + 3]) = 0
            idx = idx + 4
            continue 
    stor7 = code.data[20094 len 20]
    return code.data[684 len 19398]
}



// =====================  Runtime code  =====================


#
#  - isProjectCanceled(uint64 arg1)
#  - confirmPayment(uint64 arg1, uint256 arg2)
#  - withdraw(uint64 arg1, uint256 arg2)
#  - transfer(uint64 arg1, uint64 arg2, uint256 arg3, uint64 arg4)
#  - normalizePledge(uint64 arg1)
#  - mWithdraw(uint256[] arg1)
#  - addProject(string arg1, string arg2, address arg3, uint64 arg4, uint64 arg5, address arg6)
#  - mConfirmPayment(uint256[] arg1)
#  - cancelPledge(uint64 arg1, uint256 arg2)
#  - donate(uint64 arg1, uint64 arg2)
#  - mNormalizePledge(uint64[] arg1)
#  - mTransfer(uint64 arg1, uint256[] arg2, uint64 arg3)
#  - cancelPayment(uint64 arg1, uint256 arg2)
#  - mCancelPayment(uint256[] arg1)
#
address owner;
address newOwnerCandidate;
uint8 stor10;
address escapeHatchCallerAddress;
address escapeHatchDestinationAddress;
mapping of uint8 stor4;
array of struct pledge;
array of struct stor6;
address vaultAddress;
mapping of uint8 stor9;

function getPledgeDelegate(uint64 arg1, uint256 arg2) {
    require arg1 < pledge.length
    require arg2 - 1 < uint256(pledge[4 * uint64(arg1)].field_512)
    require stor((0.25 / arg2 - 1) + sha3((4 * uint64(arg1)) + ('name', 'stor5', 5) + 2))[uint8(arg2 - 1)] < stor6.length
    mem[160] = uint256(stor[sha3((5 * stor((0.25 / arg2 - 1) + sha3((4 * uint64(arg1)) + ('name', 'stor5', 5) + 2))[uint8(arg2 - 1)]) + ('name', 'stor6', 6) + 1)].field_0)
    idx = 160
    s = 0
    while stor[(5 * stor((0.25 / arg2 - 1) + sha3((4 * uint64(arg1)) + ('name', 'stor5', 5) + 2))[uint8(arg2 - 1)]) + ('name', 'stor6', 6) + 1].length + 128 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((5 * stor((0.25 / arg2 - 1) + sha3((4 * uint64(arg1)) + ('name', 'stor5', 5) + 2))[uint8(arg2 - 1)]) + ('name', 'stor6', 6) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return uint64(stor[(0.25 / arg2 - 1) + sha3((4 * uint64(arg1)) + ('name', 'pledge', 5) + 2)].field_(64 * arg2 - 1 % 4) - 192), 
           address(stor6[stor((0.25 / arg2 - 1) + sha3((4 * uint64(arg1)) + ('name', 'stor5', 5) + 2))[uint8(arg2 - 1)]].field_0),
           Array(len=stor[(5 * stor((0.25 / arg2 - 1) + sha3((4 * uint64(arg1)) + ('name', 'stor5', 5) + 2))[uint8(arg2 - 1)]) + ('name', 'stor6', 6) + 1].length, data=mem[160 len stor[(5 * stor((0.25 / arg2 - 1) + sha3((4 * uint64(arg1)) + ('name', 'stor5', 5) + 2))[uint8(arg2 - 1)]) + ('name', 'stor6', 6) + 1].length])
}

function escapeHatchCaller() {
    return escapeHatchCallerAddress
}

function getPledge(uint64 arg1) {
    require arg1 < pledge.length
    require uint8(pledge[4 * uint64(arg1)].field_960) <= 2
    return uint256(pledge[4 * uint64(arg1)].field_0), 
           uint64(pledge[4 * uint64(arg1)].field_256),
           uint64(pledge[4 * uint64(arg1)].field_512),
           uint64(pledge[4 * uint64(arg1)].field_768),
           uint64(pledge[4 * uint64(arg1)].field_832),
           uint64(pledge[4 * uint64(arg1)].field_768),
           uint8(pledge[4 * uint64(arg1)].field_960)
}

function usePluginWhitelist() {
    return bool(stor10)
}

function owner() {
    return owner
}

function newOwnerCandidate() {
    return newOwnerCandidate
}

function escapeHatchDestination() {
    return escapeHatchDestinationAddress
}

function vault() {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function numberOfPledges() {
    return (pledge.length - 1)
}

function numberOfPledgeAdmins() {
    return (stor6.length - 1)
}

function isTokenEscapable(address arg1) {
    return not bool(stor4[address(arg1)])
}

function addValidPlugin(bytes32 arg1) {
    require owner == msg.sender
    stor9[arg1] = 1
}

function useWhitelist(bool arg1) {
    require owner == msg.sender
    stor10 = uint8(arg1)
}

function removeValidPlugin(bytes32 arg1) {
    require owner == msg.sender
    stor9[arg1] = 0
}

function proposeOwnership(address arg1) {
    require owner == msg.sender
    newOwnerCandidate = arg1
    emit OwnershipRequested(msg.sender, arg1);
}

function removeOwnership(address arg1) {
    require owner == msg.sender
    require arg1 == 3500
    owner = 0
    newOwnerCandidate = 0
    emit OwnershipRemoved()
}

function changeHatchEscapeCaller(address arg1) {
    if escapeHatchCallerAddress != msg.sender:
        require owner == msg.sender
    escapeHatchCallerAddress = arg1
}

function changeOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
    newOwnerCandidate = 0
    emit OwnershipTransferred(owner, arg1);
}

function acceptOwnership() {
    require newOwnerCandidate == msg.sender
    owner = newOwnerCandidate
    newOwnerCandidate = 0
    emit OwnershipTransferred(owner, newOwnerCandidate);
}

function updateGiver(uint64 arg1, address arg2, string arg3, string arg4, uint64 arg5) {
    require arg1 < stor6.length
    require uint8(stor6[arg1].field_0) <= 2
    require not uint8(stor6[arg1].field_0)
    require address(stor6[arg1].field_8) == msg.sender
    address(stor6[arg1].field_8) = arg2
    uint256(stor[sha3((5 * arg1) + ('name', 'stor6', 6) + 1)][].field_0) = Array(len=arg3.length, data=arg3[all])
    uint256(stor[sha3((5 * arg1) + ('name', 'stor6', 6) + 2)][].field_0) = Array(len=arg4.length, data=arg4[all])
    uint64(stor6[arg1].field_768) = arg5
    emit GiverUpdated(arg1);
}

function updateProject(uint64 arg1, address arg2, string arg3, string arg4, uint64 arg5) {
    require arg1 < stor6.length
    require uint8(stor6[arg1].field_0) <= 2
    require uint8(stor6[arg1].field_0) == 2
    require address(stor6[arg1].field_8) == msg.sender
    address(stor6[arg1].field_8) = arg2
    uint256(stor[sha3((5 * arg1) + ('name', 'stor6', 6) + 1)][].field_0) = Array(len=arg3.length, data=arg3[all])
    uint256(stor[sha3((5 * arg1) + ('name', 'stor6', 6) + 2)][].field_0) = Array(len=arg4.length, data=arg4[all])
    uint64(stor6[arg1].field_768) = arg5
    emit ProjectUpdated(arg1);
}

function updateDelegate(uint64 arg1, address arg2, string arg3, string arg4, uint64 arg5) {
    require arg1 < stor6.length
    require uint8(stor6[arg1].field_0) <= 2
    require uint8(stor6[arg1].field_0) == 1
    require address(stor6[arg1].field_8) == msg.sender
    address(stor6[arg1].field_8) = arg2
    uint256(stor[sha3((5 * arg1) + ('name', 'stor6', 6) + 1)][].field_0) = Array(len=arg3.length, data=arg3[all])
    uint256(stor[sha3((5 * arg1) + ('name', 'stor6', 6) + 2)][].field_0) = Array(len=arg4.length, data=arg4[all])
    uint64(stor6[arg1].field_768) = arg5
    emit DelegateUpdated(arg1);
}

function getCodeHash(address arg1) {
    mem[96] = 0
    mem[64] = ceil32(ext_code.size(arg1)) + 129
    mem[128] = ext_code.size(arg1)
    mem[160 len ext_code.size(arg1)] = ext_code.copy(arg1, 0 len ext_code.size(arg1))
    mem[ceil32(ext_code.size(arg1)) + 129 len floor32(ext_code.size(arg1))] = mem[160 len floor32(ext_code.size(arg1))]
    mem[ceil32(ext_code.size(arg1)) + floor32(ext_code.size(arg1)) + -(ext_code.size(arg1) % 32) + 161 len ext_code.size(arg1) % 32] = mem[-(ext_code.size(arg1) % 32) + floor32(ext_code.size(arg1)) + 192 len ext_code.size(arg1) % 32]
    mem[ceil32(ext_code.size(arg1)) + 129] = sha3(mem[ceil32(ext_code.size(arg1)) + 129 len ext_code.size(arg1)])
    return memory
      from ceil32(ext_code.size(arg1)) + 129
       len 32
}

function isValidPlugin(address arg1) {
    if not stor10:
        return 1
    if not arg1:
        return 1
    mem[96] = 0
    mem[64] = ceil32(ext_code.size(arg1)) + 129
    mem[128] = ext_code.size(arg1)
    mem[160 len ext_code.size(arg1)] = ext_code.copy(arg1, 0 len ext_code.size(arg1))
    mem[ceil32(ext_code.size(arg1)) + 129 len floor32(ext_code.size(arg1))] = mem[160 len floor32(ext_code.size(arg1))]
    mem[ceil32(ext_code.size(arg1)) + floor32(ext_code.size(arg1)) + -(ext_code.size(arg1) % 32) + 161 len ext_code.size(arg1) % 32] = mem[-(ext_code.size(arg1) % 32) + floor32(ext_code.size(arg1)) + 192 len ext_code.size(arg1) % 32]
    mem[0] = sha3(mem[ceil32(ext_code.size(arg1)) + 129 len ext_code.size(arg1)])
    mem[32] = 9
    mem[ceil32(ext_code.size(arg1)) + 129] = bool(stor9[mem[0]])
    return memory
      from ceil32(ext_code.size(arg1)) + 129
       len 32
}

function cancelProject(uint64 arg1) {
    require arg1 < stor6.length
    require uint8(stor6[arg1].field_0) <= 2
    idx = 384
    s = 0
    while stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length + 352 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((5 * arg1) + ('name', 'stor6', 6) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    idx = ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length) + 416
    s = 0
    while ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length) + stor[(5 * arg1) + ('name', 'stor6', 6) + 2].length + 384 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((5 * arg1) + ('name', 'stor6', 6) + 2)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    if address(stor6[arg1].field_0) != msg.sender:
        require msg.sender == address(stor6[arg1].field_1024)
    uint8(stor6[arg1].field_896) = 1
    emit CancelProject(arg1);
}

function escapeHatch(address arg1) {
    if escapeHatchCallerAddress != msg.sender:
        require owner == msg.sender
    require not stor4[address(arg1)]
    if not arg1:
        call escapeHatchDestinationAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit EscapeHatchCalled(address(arg1), eth.balance(this.address));
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args escapeHatchDestinationAddress, ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        emit EscapeHatchCalled(address(arg1), ext_call.return_data[0]);
}

function addDelegate(string arg1, string arg2, uint64 arg3, address arg4) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    if stor10:
        if arg4:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
            mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(ext_code.size(arg4)) + 193
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = ext_code.size(arg4)
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len ext_code.size(arg4)] = ext_code.copy(arg4, 0 len ext_code.size(arg4))
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(ext_code.size(arg4)) + 193 len floor32(ext_code.size(arg4))] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(ext_code.size(arg4))]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(ext_code.size(arg4)) + floor32(ext_code.size(arg4)) + -(ext_code.size(arg4) % 32) + 225 len ext_code.size(arg4) % 32] = mem[ceil32(arg1.length) + ceil32(arg2.length) + -(ext_code.size(arg4) % 32) + floor32(ext_code.size(arg4)) + 256 len ext_code.size(arg4) % 32]
            mem[0] = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(ext_code.size(arg4)) + 193 len ext_code.size(arg4)])
            require stor9[mem[0]]
    stor6.length++
    if not stor6.length <= stor6.length + 1:
        mem[0] = 6
        idx = (5 * stor6.length) + 5
        while sha3(6) + (5 * stor6.length) > idx + sha3(mem[0]):
            Mask(168, 0, stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 2].length:
                mem[0] = idx + sha3(mem[0]) + 2
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            Mask(136, 0, stor[idx + sha3(mem[0]) + 3]) = 0
            address(stor[idx + sha3(mem[0]) + 4]) = 0
            idx = idx + 5
            continue 
    uint8(stor6[stor6.length].field_0) = 1
    address(stor6[stor6.length].field_8) = msg.sender
    uint256(stor[sha3((5 * stor6.length) + ('name', 'stor6', 6) + 1)][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint256(stor[sha3((5 * stor6.length) + ('name', 'stor6', 6) + 2)][].field_0) = Array(len=arg2.length, data=arg2[all])
    uint64(stor6[stor6.length].field_768) = arg3
    uint64(stor6[stor6.length].field_832) = 0
    stor6[stor6.length].field_1024 % 1 = 0
    uint128(stor6[stor6.length].field_896) = 0
    address(stor6[stor6.length].field_1024) = arg4
    emit DelegateAdded(uint64(stor6.length));
    return uint64(stor6.length)
}

function addGiver(string arg1, string arg2, uint64 arg3, address arg4) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    if stor10:
        if arg4:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
            mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(ext_code.size(arg4)) + 193
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = ext_code.size(arg4)
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len ext_code.size(arg4)] = ext_code.copy(arg4, 0 len ext_code.size(arg4))
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(ext_code.size(arg4)) + 193 len floor32(ext_code.size(arg4))] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(ext_code.size(arg4))]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(ext_code.size(arg4)) + floor32(ext_code.size(arg4)) + -(ext_code.size(arg4) % 32) + 225 len ext_code.size(arg4) % 32] = mem[ceil32(arg1.length) + ceil32(arg2.length) + -(ext_code.size(arg4) % 32) + floor32(ext_code.size(arg4)) + 256 len ext_code.size(arg4) % 32]
            mem[0] = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(ext_code.size(arg4)) + 193 len ext_code.size(arg4)])
            require stor9[mem[0]]
    stor6.length++
    if not stor6.length <= stor6.length + 1:
        mem[0] = 6
        idx = (5 * stor6.length) + 5
        while sha3(6) + (5 * stor6.length) > idx + sha3(mem[0]):
            Mask(168, 0, stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 2].length:
                mem[0] = idx + sha3(mem[0]) + 2
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            Mask(136, 0, stor[idx + sha3(mem[0]) + 3]) = 0
            address(stor[idx + sha3(mem[0]) + 4]) = 0
            idx = idx + 5
            continue 
    uint8(stor6[stor6.length].field_0) = 0
    stor6[stor6.length].field_256 % 1 = 0
    address(stor6[stor6.length].field_8) = msg.sender
    uint256(stor[sha3((5 * stor6.length) + ('name', 'stor6', 6) + 1)][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint256(stor[sha3((5 * stor6.length) + ('name', 'stor6', 6) + 2)][].field_0) = Array(len=arg2.length, data=arg2[all])
    uint64(stor6[stor6.length].field_768) = arg3
    uint64(stor6[stor6.length].field_832) = 0
    stor6[stor6.length].field_1024 % 1 = 0
    uint128(stor6[stor6.length].field_896) = 0
    address(stor6[stor6.length].field_1024) = arg4
    emit GiverAdded(uint64(stor6.length));
    return uint64(stor6.length)
}

function getPledgeAdmin(uint64 arg1) {
    mem[96] = 0
    mem[128] = 0
    require arg1 < stor6.length
    mem[160] = stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length
    mem[192] = uint256(stor[sha3((5 * arg1) + ('name', 'stor6', 6) + 1)].field_0)
    idx = 192
    s = 0
    while stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length + 160 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((5 * arg1) + ('name', 'stor6', 6) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 2].length) + 224
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length) + 192] = stor[(5 * arg1) + ('name', 'stor6', 6) + 2].length
    mem[0] = (5 * arg1) + sha3(6) + 2
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length) + 224] = uint256(stor[sha3((5 * arg1) + ('name', 'stor6', 6) + 2)].field_0)
    idx = ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length) + 224
    s = 0
    while ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length) + stor[(5 * arg1) + ('name', 'stor6', 6) + 2].length + 192 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((5 * arg1) + ('name', 'stor6', 6) + 2)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    require uint8(stor6[arg1].field_0) <= 2
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 2].length) + 224] = uint8(stor6[arg1].field_0)
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 2].length) + 256] = address(stor6[arg1].field_8)
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 2].length) + 352] = uint64(stor6[arg1].field_768)
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 2].length) + 384] = uint64(stor6[arg1].field_832)
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 2].length) + 416] = bool(uint8(stor6[arg1].field_896))
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 2].length) + 448] = address(stor6[arg1].field_1024)
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 2].length) + 288] = 256
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 2].length) + 480] = stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 2].length) + 512 len ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length)] = mem[192 len ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length)]
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 2].length) + 320] = stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length + 288
    mem[stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length + ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 2].length) + 512] = stor[(5 * arg1) + ('name', 'stor6', 6) + 2].length
    mem[stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length + ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 2].length) + 544 len ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 2].length)] = mem[ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length) + 224 len ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 2].length)]
    if not stor[(5 * arg1) + ('name', 'stor6', 6) + 2].length % 32:
        return uint8(stor6[arg1].field_0), 
               address(stor6[arg1].field_0),
               Array(len=stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length, data=mem[192 len ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length)], mem[(2 * ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length)) + ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 2].length) + 512 len stor[(5 * arg1) + ('name', 'stor6', 6) + 2].length + stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length + -ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length) + 32]),
               stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length + 288,
               uint64(stor6[arg1].field_768),
               uint64(stor6[arg1].field_768),
               bool(uint8(stor6[arg1].field_896)),
               address(stor6[arg1].field_1024)
    mem[floor32(stor[(5 * arg1) + ('name', 'stor6', 6) + 2].length) + stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length + ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 2].length) + 544] = mem[floor32(stor[(5 * arg1) + ('name', 'stor6', 6) + 2].length) + stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length + ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 2].length) + -stor[(5 * arg1) + ('name', 'stor6', 6) + 2].length % 32 + 576 len stor[(5 * arg1) + ('name', 'stor6', 6) + 2].length % 32]
    return uint8(stor6[arg1].field_0), 
           address(stor6[arg1].field_0),
           Array(len=stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length, data=mem[192 len ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length)], mem[(2 * ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length)) + ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 2].length) + 512 len floor32(stor[(5 * arg1) + ('name', 'stor6', 6) + 2].length) + stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length + -ceil32(stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length) + 64]),
           stor[(5 * arg1) + ('name', 'stor6', 6) + 1].length + 288,
           uint64(stor6[arg1].field_768),
           uint64(stor6[arg1].field_768),
           bool(uint8(stor6[arg1].field_896)),
           address(stor6[arg1].field_1024)
}



}
