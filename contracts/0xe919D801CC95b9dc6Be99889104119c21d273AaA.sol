contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;
address stor5;

function _fallback() {
    stor0 = msg.sender
    stor2 = code.data[6418 len 20]
    stor3 = code.data[6450 len 20]
    stor5 = code.data[6386 len 20]
    return code.data[149 len 6225]
}



// =====================  Runtime code  =====================


address owner;
address newOwnerCandidate;
address escapeHatchCallerAddress;
address escapeHatchDestinationAddress;
mapping of uint8 stor4;
address liquidPledgingAddress;
mapping of struct milestone;

function escapeHatchCaller() {
    return escapeHatchCallerAddress
}

function getMilestone(uint64 arg1) {
    return milestone[arg1 << 192].field_0, 
           milestone[arg1 << 192].field_256,
           milestone[arg1 << 192].field_512,
           milestone[arg1 << 192].field_768,
           milestone[arg1 << 192].field_1024,
           milestone[arg1 << 192].field_1280,
           bool(milestone[arg1 << 192].field_1440)
}

function liquidPledging() {
    return liquidPledgingAddress
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

function _fallback() payable {
  stop
}

function isTokenEscapable(address arg1) {
    return not bool(stor4[address(arg1)])
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

function cancelMilestone(uint64 arg1) {
    if milestone[arg1 << 192].field_768 != msg.sender:
        require milestone[arg1 << 192].field_1024 == msg.sender
    require not milestone[arg1 << 192].field_1440
    require ext_code.size(liquidPledgingAddress)
    call liquidPledgingAddress.cancelProject(uint64 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function collect(uint64 arg1) {
    require milestone[arg1 << 192].field_1280 == msg.sender
    if milestone[arg1 << 192].field_512 > 0:
        require eth.balance(this.address) >= milestone[arg1 << 192].field_512
        milestone[arg1 << 192].field_512 = 0
        call milestone[arg1 << 192].field_1280 with:
           value milestone[arg1 << 192].field_512 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit PaymentCollected(arg1);
}

function acceptMilestone(uint64 arg1) {
    require ext_code.size(liquidPledgingAddress)
    call liquidPledgingAddress.isProjectCanceled(uint64 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require not ext_call.return_data[0]
    if milestone[arg1 << 192].field_768 != msg.sender:
        require milestone[arg1 << 192].field_1024 == msg.sender
    require not milestone[arg1 << 192].field_1440
    milestone[arg1 << 192].field_1440 = 1
    emit MilestoneAccepted(arg1);
}

function withdraw(uint64 arg1, uint64 arg2, uint256 arg3) {
    require milestone[arg1 << 192].field_1280 == msg.sender
    require milestone[arg1 << 192].field_1440
    require ext_code.size(liquidPledgingAddress)
    call liquidPledgingAddress.withdraw(uint64 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args arg2 << 192, arg3
    require ext_call.success
    require milestone[arg1 << 192].field_1280 == msg.sender
    if milestone[arg1 << 192].field_512 > 0:
        require eth.balance(this.address) >= milestone[arg1 << 192].field_512
        milestone[arg1 << 192].field_512 = 0
        call milestone[arg1 << 192].field_1280 with:
           value milestone[arg1 << 192].field_512 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit PaymentCollected(arg1);
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

function beforeTransfer(uint64 arg1, uint64 arg2, uint64 arg3, uint64 arg4, uint256 arg5) {
    require liquidPledgingAddress == msg.sender
    require ext_code.size(liquidPledgingAddress)
    call liquidPledgingAddress.getPledge(uint64 rg1) with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require ext_code.size(liquidPledgingAddress)
    call liquidPledgingAddress.getPledge(uint64 rg1) with:
         gas gas_remaining - 710 wei
        args arg3
    require ext_call.success
    if arg4 == 511:
        if not milestone[ext_call.return_data[120 len 8]].field_1440:
            return arg5
    else:
        if arg4 != 256:
            return arg5
        if uint64(ext_call.return_data[96]) == ext_call.return_data[56 len 8]:
            return arg5
        require ext_call.return_data[192] <= 2
        if ext_call.return_data[192]:
            return arg5
        if not milestone[ext_call.return_data[56 len 8]].field_1440:
            return arg5
    return 0
}

function afterTransfer(uint64 arg1, uint64 arg2, uint64 arg3, uint64 arg4, uint256 arg5) {
    require liquidPledgingAddress == msg.sender
    require ext_code.size(liquidPledgingAddress)
    call liquidPledgingAddress.getPledge(uint64 rg1) with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require ext_code.size(liquidPledgingAddress)
    call liquidPledgingAddress.getPledge(uint64 rg1) with:
         gas gas_remaining - 710 wei
        args arg3
    require ext_call.success
    if arg4 == 256:
        if ext_call.return_data[56 len 8] == uint64(ext_call.return_data[32]):
            require ext_call.return_data[192] <= 2
            if ext_call.return_data[192] == 2:
                milestone[ext_call.return_data[56 len 8]].field_512 += arg5
        else:
            milestone[ext_call.return_data[56 len 8]].field_256 += arg5
            if milestone[ext_call.return_data[56 len 8]].field_1440:
                if arg5 > 0:
                    milestone[ext_call.return_data[56 len 8]].field_256 -= arg5
                    require ext_code.size(liquidPledgingAddress)
                    call liquidPledgingAddress.cancelPledge(uint64 rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args arg3 << 192, arg5
                    require ext_call.success
            else:
                if milestone[ext_call.return_data[56 len 8]].field_256 > milestone[ext_call.return_data[56 len 8]].field_0:
                    if milestone[ext_call.return_data[56 len 8]].field_256 - milestone[ext_call.return_data[56 len 8]].field_0 > 0:
                        milestone[ext_call.return_data[56 len 8]].field_256 = milestone[ext_call.return_data[56 len 8]].field_0
                        require ext_code.size(liquidPledgingAddress)
                        call liquidPledgingAddress.cancelPledge(uint64 rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args arg3 << 192, milestone[ext_call.return_data[56 len 8]].field_256 - milestone[ext_call.return_data[56 len 8]].field_0
                        require ext_call.success
}

function mWithdraw(uint256[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = arg1.length
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _79 = mem[(32 * idx) + 128]
        mem[(64 * arg1.length) + 416] = 0
        require ext_code.size(liquidPledgingAddress)
        call liquidPledgingAddress.getPledge(uint64 rg1) with:
             gas gas_remaining - 710 wei
            args uint64(_79)
        mem[(64 * arg1.length) + 192 len 224] = ext_call.return_data[0 len 224]
        require ext_call.success
        require idx < mem[(32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * idx) + 192] = uint64(ext_call.return_data[32])
        mem[0] = uint64(ext_call.return_data[32])
        mem[32] = 6
        require milestone[ext_call.return_data[32] << 192].field_1280 == msg.sender
        require milestone[ext_call.return_data[32] << 192].field_1440
        s = sha3(ext_call.return_data[32] << 192, 6)
        s = ext_call.return_data[32]
        s = uint64(_79)
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + 192] = 0x57adafb600000000000000000000000000000000000000000000000000000000
    mem[(64 * arg1.length) + 196] = 32
    mem[(64 * arg1.length) + 228] = arg1.length
    mem[(64 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(liquidPledgingAddress)
    call liquidPledgingAddress.0x57adafb6 with:
         gas gas_remaining - 710 wei
        args mem[(64 * arg1.length) + 196 len (32 * arg1.length) + 64]
    require ext_call.success
    idx = 0
    while idx < mem[(32 * arg1.length) + 160]:
        require idx < mem[(32 * arg1.length) + 160]
        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 216 len 8]
        mem[32] = 6
        require milestone[mem[(32 * idx) + (32 * arg1.length) + 216 len 8]].field_1280 == msg.sender
        if milestone[mem[(32 * idx) + (32 * arg1.length) + 216 len 8]].field_512 > 0:
            require eth.balance(this.address) >= milestone[mem[(32 * idx) + (32 * arg1.length) + 216 len 8]].field_512
            milestone[mem[(32 * idx) + (32 * arg1.length) + 216 len 8]].field_512 = 0
            call milestone[mem[(32 * idx) + (32 * arg1.length) + 216 len 8]].field_1280 with:
               value milestone[mem[(32 * idx) + (32 * arg1.length) + 216 len 8]].field_512 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit PaymentCollected(mem[(32 * idx) + (32 * arg1.length) + 216 len 8]);
        idx = idx + 1
        continue 
}

function addMilestone(string arg1, string arg2, uint256 arg3, uint64 arg4, address arg5, address arg6, address arg7) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0x72116e9200000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 388 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 388] = arg2.length
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 420 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            require ext_code.size(liquidPledgingAddress)
            call liquidPledgingAddress.addProject(string rg1, string rg2, address rg3, uint64 rg4, uint64 rg5, address rg6) with:
                 gas gas_remaining - 710 wei
                args 192, arg1.length + 224, address(this.address), arg4 << 192, 0, address(this.address), arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 388 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 420] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 452 len arg2.length % 32]
            require ext_code.size(liquidPledgingAddress)
            call liquidPledgingAddress.addProject(string rg1, string rg2, address rg3, uint64 rg4, uint64 rg5, address rg6) with:
                 gas gas_remaining - 710 wei
                args 192, arg1.length + 224, address(this.address), arg4 << 192, 0, address(this.address), arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 388 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 388] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 420 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 420] = arg2.length
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 452 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            require ext_code.size(liquidPledgingAddress)
            call liquidPledgingAddress.addProject(string rg1, string rg2, address rg3, uint64 rg4, uint64 rg5, address rg6) with:
                 gas gas_remaining - 710 wei
                args 192, floor32(arg1.length) + 256, address(this.address), arg4 << 192, 0, address(this.address), arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 388 len arg2.length + floor32(arg1.length) + -ceil32(arg1.length) + 64]
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 452] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 484 len arg2.length % 32]
            require ext_code.size(liquidPledgingAddress)
            call liquidPledgingAddress.addProject(string rg1, string rg2, address rg3, uint64 rg4, uint64 rg5, address rg6) with:
                 gas gas_remaining - 710 wei
                args 192, floor32(arg1.length) + 256, address(this.address), arg4 << 192, 0, address(this.address), arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 388 len floor32(arg2.length) + floor32(arg1.length) + -ceil32(arg1.length) + 96]
    require ext_call.success
    milestone[ext_call.return_data[0] << 192].field_0 = arg3
    milestone[ext_call.return_data[0] << 192].field_256 = 0
    milestone[ext_call.return_data[0] << 192].field_512 = 0
    milestone[ext_call.return_data[0] << 192].field_768 = arg6
    milestone[ext_call.return_data[0] << 192].field_1024 = arg7
    milestone[ext_call.return_data[0] << 192].field_1280 = arg5
    milestone[ext_call.return_data[0] << 192].field_1440 = 0
}



}
