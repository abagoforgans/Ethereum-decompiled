contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;
address stor5;

function _fallback() {
    stor0 = msg.sender
    stor2 = code.data[21036 len 20]
    stor3 = code.data[21068 len 20]
    stor5 = code.data[21004 len 20]
    return code.data[149 len 20843]
}



// =====================  Runtime code  =====================


const onTransfer(address arg1, address arg2, uint256 arg3) = 0

const onApprove(address arg1, address arg2, uint256 arg3) = 0

const proxyPayment(address arg1) = 0


address owner;
address newOwnerCandidate;
address escapeHatchCallerAddress;
address escapeHatchDestinationAddress;
mapping of uint8 stor4;
address liquidPledgingAddress;
mapping of struct dac;

function escapeHatchCaller() {
    return escapeHatchCallerAddress
}

function getDac(uint64 arg1) {
    return dac[arg1 << 192].field_0, dac[arg1 << 192].field_256
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
    revert
}

function isTokenEscapable(address arg1) {
    return not bool(stor4[address(arg1)])
}

function proposeOwnership(address arg1) {
    require owner == msg.sender
    newOwnerCandidate = arg1
    emit OwnershipRequested(msg.sender, arg1);
}

function beforeTransfer(uint64 arg1, uint64 arg2, uint64 arg3, uint64 arg4, uint256 arg5) {
    require liquidPledgingAddress == msg.sender
    return arg5
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

function transfer(uint64 arg1, uint64 arg2, uint256 arg3, uint64 arg4) {
    require dac[arg1 << 192].field_256 == msg.sender
    require ext_code.size(liquidPledgingAddress)
    call liquidPledgingAddress.0x47c5ef43 with:
         gas gas_remaining - 710 wei
        args 0, 0, arg2 << 192, arg3, arg4
    require ext_call.success
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

function addDac(string arg1, string arg2, uint64 arg3, address arg4) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0x52dc7dcc00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 324 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 324] = arg2.length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 356 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        require ext_code.size(liquidPledgingAddress)
        call liquidPledgingAddress.addDelegate(string rg1, string rg2, uint64 rg3, address rg4) with:
             gas gas_remaining - 710 wei
            args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 324 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), arg1.length + 160, arg3 << 192, address(this.address)
    else:
        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 356] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 388 len arg2.length % 32]
        require ext_code.size(liquidPledgingAddress)
        call liquidPledgingAddress.addDelegate(string rg1, string rg2, uint64 rg3, address rg4) with:
             gas gas_remaining - 710 wei
            args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 324 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 160, arg3 << 192, address(this.address)
    require ext_call.success
    dac[ext_call.return_data[0] << 192].field_0 = arg4
    dac[ext_call.return_data[0] << 192].field_256 = msg.sender
}

function afterTransfer(uint64 arg1, uint64 arg2, uint64 arg3, uint64 arg4, uint256 arg5) {
    require msg.sender == liquidPledgingAddress
    require ext_code.size(liquidPledgingAddress)
    call liquidPledgingAddress.getPledge(uint64 rg1) with:
         gas gas_remaining - 710 wei
        args arg3
    require ext_call.success
    require ext_code.size(liquidPledgingAddress)
    call liquidPledgingAddress.getPledge(uint64 rg1) with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require ext_code.size(liquidPledgingAddress)
    call liquidPledgingAddress.getPledgeAdmin(uint64 rg1) with:
         gas gas_remaining - 710 wei
        args uint64(ext_call.return_data[32])
    require ext_call.success
    if arg4 == 1:
        if not uint64(ext_call.return_data[96]):
            require ext_call.return_data[0] <= 2
            if ext_call.return_data[0] == 2:
                if uint64(ext_call.return_data[32]) != uint64(ext_call.return_data[32]):
                    require ext_call.return_data[192] <= 2
                    if not ext_call.return_data[192]:
                        require ext_code.size(liquidPledgingAddress)
                        call liquidPledgingAddress.getPledgeDelegate(uint64 rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args arg2 << 192, 1
                        require ext_call.success
                        require dac[ext_call.return_data[24 len 8]].field_0
                        require ext_code.size(liquidPledgingAddress)
                        call liquidPledgingAddress.getPledgeAdmin(uint64 rg1) with:
                             gas gas_remaining - 710 wei
                            args uint64(ext_call.return_data[32])
                        require ext_call.success
                        require ext_code.size(dac[ext_call.return_data[24 len 8]].field_0)
                        call dac[ext_call.return_data[24 len 8]].field_0.generateTokens(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[32]), arg5
                        require ext_call.success
                        emit GenerateTokens(address(ext_call.return_data[32]), arg5, uint64(ext_call.return_data[0]));
    if arg4 == 257:
        require ext_code.size(liquidPledgingAddress)
        call liquidPledgingAddress.isProjectCanceled(uint64 rg1) with:
             gas gas_remaining - 710 wei
            args uint64(ext_call.return_data[32])
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_code.size(liquidPledgingAddress)
            call liquidPledgingAddress.getPledgeDelegate(uint64 rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args arg3 << 192, 1
            require ext_call.success
            require dac[ext_call.return_data[24 len 8]].field_0
            require ext_code.size(dac[ext_call.return_data[24 len 8]].field_0)
            call dac[ext_call.return_data[24 len 8]].field_0.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args address(ext_call.return_data[32])
            require ext_call.success
            if ext_call.return_data[0] >= arg5:
                require ext_code.size(dac[ext_call.return_data[24 len 8]].field_0)
                call dac[ext_call.return_data[24 len 8]].field_0.destroyTokens(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[32]), arg5
                require ext_call.success
                emit DestroyTokens(address(ext_call.return_data[32]), arg5, uint64(ext_call.return_data[32]));
}

function addDac(string arg1, string arg2, uint64 arg3, string arg4, string arg5) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg4.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg4.length] = arg4[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + 192] = arg5.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + 224 len arg5.length] = arg5[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 388 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 388] = arg2.length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 420 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        require ext_code.size(liquidPledgingAddress)
        call liquidPledgingAddress.addDelegate(string rg1, string rg2, uint64 rg3, address rg4) with:
             gas gas_remaining - 710 wei
            args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 388 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), arg1.length + 160, arg3 << 192, address(this.address)
    else:
        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 420] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg2.length % 32) + 452 len arg2.length % 32]
        require ext_code.size(liquidPledgingAddress)
        call liquidPledgingAddress.addDelegate(string rg1, string rg2, uint64 rg3, address rg4) with:
             gas gas_remaining - 710 wei
            args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 388 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 160, arg3 << 192, address(this.address)
    require ext_call.success
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 224 len 7622] = code.data[6433 len 7622]
    create contract with 0 wei
                    code: code.data[6433 len 7622]
    require create.new_address
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 224 len 6745] = code.data[14055 len 6745]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7225 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        mem[arg4.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7225] = arg5.length
        mem[arg4.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7257 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + arg5.length + 224 len ceil32(arg5.length) - arg5.length]
        if not arg5.length % 32:
            create contract with 0 wei
                            code: code.data[14055 len 6745], address(create.new_address), 0, 0, 224, 18, arg4.length + 256, 0, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(arg4.length)) + ceil32(arg5.length) + 7225 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]
        else:
            mem[floor32(arg5.length) + arg4.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7257] = mem[floor32(arg5.length) + arg4.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7289 len arg5.length % 32]
            create contract with 0 wei
                            code: code.data[14055 len 6745], address(create.new_address), 0, 0, 224, 18, arg4.length + 256, 0, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(arg4.length)) + ceil32(arg5.length) + 7225 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]
    else:
        mem[floor32(arg4.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7225] = mem[floor32(arg4.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 7257 len arg4.length % 32]
        mem[floor32(arg4.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7257] = arg5.length
        mem[floor32(arg4.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7289 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + arg5.length + 224 len ceil32(arg5.length) - arg5.length]
        if not arg5.length % 32:
            create contract with 0 wei
                            code: code.data[14055 len 6745], address(create.new_address), 0, 0, 224, 18, floor32(arg4.length) + 288, 0, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(arg4.length)) + ceil32(arg5.length) + 7225 len arg5.length + floor32(arg4.length) + -ceil32(arg4.length) + 64]
        else:
            mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7289] = mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7321 len arg5.length % 32]
            create contract with 0 wei
                            code: code.data[14055 len 6745], address(create.new_address), 0, 0, 224, 18, floor32(arg4.length) + 288, 0, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(arg4.length)) + ceil32(arg5.length) + 7225 len floor32(arg5.length) + floor32(arg4.length) + -ceil32(arg4.length) + 96]
    require create.new_address
    dac[ext_call.return_data[0] << 192].field_0 = address(create.new_address)
    dac[ext_call.return_data[0] << 192].field_256 = msg.sender
}



}
