contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[59 len 13852]
}



// =====================  Runtime code  =====================


address owner;
address coinAddress;

function coin() {
    return coinAddress
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function setCoin(address arg1) {
    require owner == msg.sender
    coinAddress = arg1
}

function makeProject(address arg1, string arg2, uint256 arg3, uint256 arg4) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len 11005] = code.data[2804 len 11005]
    mem[ceil32(arg2.length) + 11293 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        create contract with 0 wei
                        code: code.data[2804 len 11005], address(arg1), Array(len=arg4, data=arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256), arg3
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 11293] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 11325 len arg2.length % 32]
        create contract with 0 wei
                        code: code.data[2804 len 11005], address(arg1), Array(len=arg4, data=arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 11293 len floor32(arg2.length) + -ceil32(arg2.length) + 32]), arg3
    require create.new_address
    return address(create.new_address)
}

function cashBackFromProject(address arg1, address arg2) {
    require coinAddress == msg.sender
    require ext_code.size(arg2)
    call arg2.isFundingState() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg2)
    if ext_call.return_data[0]:
        call arg2.fundingEndTime() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if block.timestamp > ext_call.return_data[0]:
            require ext_code.size(arg2)
            call arg2.0xdc8452cd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(arg2)
            call arg2.earned() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(arg2)
            if ext_call.return_data[0] < ext_call.return_data[0]:
                call arg2.projectFundingFail() with:
                     gas gas_remaining - 710 wei
            else:
                call arg2.projectWorkStarted() with:
                     gas gas_remaining - 710 wei
            require ext_call.success
    call arg2.isFundingFailState() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg2)
    if not ext_call.return_data[0]:
        call arg2.isWorkFailState() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    call arg2.calcInvesting(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return 1, ext_call.return_data[0]
}

function withdrawFromProject(address arg1, address arg2, uint256 arg3) {
    require coinAddress == msg.sender
    require ext_code.size(arg2)
    call arg2.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == arg1
    require ext_code.size(arg2)
    call arg2.isFundingState() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg2)
    if ext_call.return_data[0]:
        call arg2.fundingEndTime() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if block.timestamp > ext_call.return_data[0]:
            require ext_code.size(arg2)
            call arg2.0xdc8452cd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(arg2)
            call arg2.earned() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(arg2)
            if ext_call.return_data[0] < ext_call.return_data[0]:
                call arg2.projectFundingFail() with:
                     gas gas_remaining - 710 wei
            else:
                call arg2.projectWorkStarted() with:
                     gas gas_remaining - 710 wei
            require ext_call.success
    call arg2.isWorkflowState() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg2)
    if not ext_call.return_data[0]:
        call arg2.isSuccessDoneState() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    call arg2.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg3
    require ext_call.success
    if ext_call.return_data[0] <= 0:
        return 0, ext_call.return_data[0]
    return 1, ext_call.return_data[0]
}

function buyProduct(address arg1, address arg2, uint256 arg3) {
    require coinAddress == msg.sender
    require ext_code.size(arg1)
    call arg1.project() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).isFundingState() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    if ext_call.return_data[0]:
        call address(ext_call.return_data[0]).fundingEndTime() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if block.timestamp > ext_call.return_data[0]:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xdc8452cd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).earned() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            if ext_call.return_data[0] < ext_call.return_data[0]:
                call address(ext_call.return_data[0]).projectFundingFail() with:
                     gas gas_remaining - 710 wei
            else:
                call address(ext_call.return_data[0]).projectWorkStarted() with:
                     gas gas_remaining - 710 wei
            require ext_call.success
    call address(ext_call.return_data[0]).isFundingState() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.buy(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa035b1fe with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).addEarned(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args (arg3 * ext_call.return_data[0])
    require ext_call.success
}



}
