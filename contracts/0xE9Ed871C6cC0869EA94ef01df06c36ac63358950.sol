contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;

function _fallback() {
    stor0 = msg.sender
    stor2 = code.data[23869 len 20]
    stor3 = code.data[23901 len 20]
    return code.data[123 len 23734]
}



// =====================  Runtime code  =====================


address owner;
address newOwnerCandidate;
address escapeHatchCallerAddress;
address escapeHatchDestinationAddress;
mapping of uint8 stor4;

function escapeHatchCaller() {
    return escapeHatchCallerAddress
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

function deploy(address arg1, string arg2, string arg3, uint64 arg4, address arg5, string arg6, string arg7, address arg8, address arg9) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = arg6.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len arg6.length] = arg6[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg6.length) + 192] = arg7.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg6.length) + 224 len arg7.length] = arg7[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 224 len 20778] = code.data[2913 len 20778]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 21002] = arg1
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 21098] = arg8
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 21130] = arg9
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 21034] = 160
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 21162] = arg6.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 21194 len ceil32(arg6.length)] = arg6[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg6.length + 192 len ceil32(arg6.length) - arg6.length]
    if not arg6.length % 32:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 21066] = arg6.length + 192
        mem[arg6.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 21194] = arg7.length
        mem[arg6.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 21226 len ceil32(arg7.length)] = arg7[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg6.length) + arg7.length + 224 len ceil32(arg7.length) - arg7.length]
        if not arg7.length % 32:
            create contract with 0 wei
                            code: code.data[2913 len 20778], address(arg1), Array(len=address(arg9), data=arg6.length, Mask(8 * ceil32(arg6.length), -(8 * ceil32(arg6.length)) + 256, arg6[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg6.length + 192 len ceil32(arg6.length) - arg6.length]) << (8 * ceil32(arg6.length)) - 256, mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(arg6.length)) + ceil32(arg7.length) + 21194 len arg7.length + arg6.length + -ceil32(arg6.length) + 32]), arg6.length + 192, address(arg8)
        else:
            mem[floor32(arg7.length) + arg6.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 21226] = mem[floor32(arg7.length) + arg6.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + -(arg7.length % 32) + 21258 len arg7.length % 32]
            create contract with 0 wei
                            code: code.data[2913 len 20778], address(arg1), Array(len=address(arg9), data=arg6.length, Mask(8 * ceil32(arg6.length), -(8 * ceil32(arg6.length)) + 256, arg6[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg6.length + 192 len ceil32(arg6.length) - arg6.length]) << (8 * ceil32(arg6.length)) - 256, mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(arg6.length)) + ceil32(arg7.length) + 21194 len floor32(arg7.length) + arg6.length + -ceil32(arg6.length) + 64]), arg6.length + 192, address(arg8)
    else:
        mem[floor32(arg6.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 21194] = mem[floor32(arg6.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + -(arg6.length % 32) + 21226 len arg6.length % 32]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 21066] = floor32(arg6.length) + 224
        mem[floor32(arg6.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 21226] = arg7.length
        mem[floor32(arg6.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 21258 len ceil32(arg7.length)] = arg7[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg6.length) + arg7.length + 224 len ceil32(arg7.length) - arg7.length]
        if not arg7.length % 32:
            create contract with 0 wei
                            code: code.data[2913 len 20778], address(arg1), Array(len=address(arg9), data=arg6.length, Mask(8 * ceil32(arg6.length), -(8 * ceil32(arg6.length)) + 256, arg6[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg6.length + 192 len ceil32(arg6.length) - arg6.length]) << (8 * ceil32(arg6.length)) - 256, mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(arg6.length)) + ceil32(arg7.length) + 21194 len arg7.length + floor32(arg6.length) + -ceil32(arg6.length) + 64]), floor32(arg6.length) + 224, address(arg8)
        else:
            mem[floor32(arg7.length) + floor32(arg6.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 21258] = mem[floor32(arg7.length) + floor32(arg6.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + -(arg7.length % 32) + 21290 len arg7.length % 32]
            create contract with 0 wei
                            code: code.data[2913 len 20778], address(arg1), Array(len=address(arg9), data=arg6.length, Mask(8 * ceil32(arg6.length), -(8 * ceil32(arg6.length)) + 256, arg6[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg6.length + 192 len ceil32(arg6.length) - arg6.length]) << (8 * ceil32(arg6.length)) - 256, mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(arg6.length)) + ceil32(arg7.length) + 21194 len floor32(arg7.length) + floor32(arg6.length) + -ceil32(arg6.length) + 96]), floor32(arg6.length) + 224, address(arg8)
    require create.new_address
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 388 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 388] = arg3.length
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 420 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0x84e1ecc5 with:
             gas gas_remaining - 710 wei
            args Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 388 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 160, arg4 << 192, address(arg5)
    else:
        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 420] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + -(arg3.length % 32) + 452 len arg3.length % 32]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0x84e1ecc5 with:
             gas gas_remaining - 710 wei
            args Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 388 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 160, arg4 << 192, address(arg5)
    require ext_call.success
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x2af4c31e with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
}



}
