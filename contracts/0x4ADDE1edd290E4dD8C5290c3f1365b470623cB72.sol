contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 stor6;

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_6eb84cd4(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    rate = arg1
    return 1
}

function sub_e79e6de3(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor6 = arg1
    return 1
}

function sub_cf2d90d5(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    weiRaised = arg1
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_bf1c0ec0(?) {
    require calldata.size - 4 >= 32
    if arg1 < 2 * 10^18:
        return 0
    if arg1 < 5 * 10^18:
        return 1
    if arg1 >= 10 * 10^18:
        return 40
    return 10
}

function sub_d36d7665(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1
}

function _fallback() payable {
    stor1++
    require msg.sender
    require msg.value >= stor6
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    emit 0x4ef13d59: msg.value, 64, 0, msg.sender, msg.sender
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value < 2 * 10^18:
        if not msg.value / 10^14:
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
        else:
            require msg.value / 10^14
            require msg.value / 10^14 * rate / msg.value / 10^14 == rate
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, msg.value / 10^14 * rate / 10
    else:
        if msg.value < 5 * 10^18:
            if not msg.value / 10^14:
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
            else:
                require msg.value / 10^14
                require msg.value / 10^14 * rate / msg.value / 10^14 == rate
                if not msg.value / 10^14 * rate / 10:
                    require msg.value / 10^14 * rate / 10 >= msg.value / 10^14 * rate / 10
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, msg.value / 10^14 * rate / 10
                else:
                    require msg.value / 10^14 * rate / 10
                    require msg.value / 10^14 * rate / 10 / msg.value / 10^14 * rate / 10 == 1
                    require (msg.value / 10^14 * rate / 10) + (msg.value / 10^14 * rate / 10 / 1000) >= msg.value / 10^14 * rate / 10
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (msg.value / 10^14 * rate / 10) + (msg.value / 10^14 * rate / 10 / 1000)
        else:
            if msg.value >= 10 * 10^18:
                if not msg.value / 10^14:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0
                else:
                    require msg.value / 10^14
                    require msg.value / 10^14 * rate / msg.value / 10^14 == rate
                    if not msg.value / 10^14 * rate / 10:
                        require msg.value / 10^14 * rate / 10 >= msg.value / 10^14 * rate / 10
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, msg.value / 10^14 * rate / 10
                    else:
                        require msg.value / 10^14 * rate / 10
                        require 40 * msg.value / 10^14 * rate / 10 / msg.value / 10^14 * rate / 10 == 40
                        require (msg.value / 10^14 * rate / 10) + (40 * msg.value / 10^14 * rate / 10 / 1000) >= msg.value / 10^14 * rate / 10
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (msg.value / 10^14 * rate / 10) + (40 * msg.value / 10^14 * rate / 10 / 1000)
            else:
                if not msg.value / 10^14:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0
                else:
                    require msg.value / 10^14
                    require msg.value / 10^14 * rate / msg.value / 10^14 == rate
                    if not msg.value / 10^14 * rate / 10:
                        require msg.value / 10^14 * rate / 10 >= msg.value / 10^14 * rate / 10
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, msg.value / 10^14 * rate / 10
                    else:
                        require msg.value / 10^14 * rate / 10
                        require 10 * msg.value / 10^14 * rate / 10 / msg.value / 10^14 * rate / 10 == 10
                        require (msg.value / 10^14 * rate / 10) + (10 * msg.value / 10^14 * rate / 10 / 1000) >= msg.value / 10^14 * rate / 10
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (msg.value / 10^14 * rate / 10) + (10 * msg.value / 10^14 * rate / 10 / 1000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require stor1 == stor1
}

function sub_7c2849a9(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    stor1++
    require arg1
    require msg.value >= stor6
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    mem[ceil32(arg2.length) + 128] = msg.value
    mem[ceil32(arg2.length) + 160] = 64
    mem[ceil32(arg2.length) + 224 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit 0x4ef13d59: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256, msg.sender, arg1
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 224] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 256 len arg2.length % 32]
        emit 0x4ef13d59: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 224 len floor32(arg2.length) + -ceil32(arg2.length) + 32], msg.sender, arg1
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value < 2 * 10^18:
        if not msg.value / 10^14:
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), 0
        else:
            require msg.value / 10^14
            require msg.value / 10^14 * rate / msg.value / 10^14 == rate
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), msg.value / 10^14 * rate / 10
    else:
        if msg.value < 5 * 10^18:
            if not msg.value / 10^14:
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), 0
            else:
                require msg.value / 10^14
                require msg.value / 10^14 * rate / msg.value / 10^14 == rate
                if not msg.value / 10^14 * rate / 10:
                    require msg.value / 10^14 * rate / 10 >= msg.value / 10^14 * rate / 10
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), msg.value / 10^14 * rate / 10
                else:
                    require msg.value / 10^14 * rate / 10
                    require msg.value / 10^14 * rate / 10 / msg.value / 10^14 * rate / 10 == 1
                    require (msg.value / 10^14 * rate / 10) + (msg.value / 10^14 * rate / 10 / 1000) >= msg.value / 10^14 * rate / 10
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), (msg.value / 10^14 * rate / 10) + (msg.value / 10^14 * rate / 10 / 1000)
        else:
            if msg.value >= 10 * 10^18:
                if not msg.value / 10^14:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), 0
                else:
                    require msg.value / 10^14
                    require msg.value / 10^14 * rate / msg.value / 10^14 == rate
                    if not msg.value / 10^14 * rate / 10:
                        require msg.value / 10^14 * rate / 10 >= msg.value / 10^14 * rate / 10
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), msg.value / 10^14 * rate / 10
                    else:
                        require msg.value / 10^14 * rate / 10
                        require 40 * msg.value / 10^14 * rate / 10 / msg.value / 10^14 * rate / 10 == 40
                        require (msg.value / 10^14 * rate / 10) + (40 * msg.value / 10^14 * rate / 10 / 1000) >= msg.value / 10^14 * rate / 10
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), (msg.value / 10^14 * rate / 10) + (40 * msg.value / 10^14 * rate / 10 / 1000)
            else:
                if not msg.value / 10^14:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), 0
                else:
                    require msg.value / 10^14
                    require msg.value / 10^14 * rate / msg.value / 10^14 == rate
                    if not msg.value / 10^14 * rate / 10:
                        require msg.value / 10^14 * rate / 10 >= msg.value / 10^14 * rate / 10
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), msg.value / 10^14 * rate / 10
                    else:
                        require msg.value / 10^14 * rate / 10
                        require 10 * msg.value / 10^14 * rate / 10 / msg.value / 10^14 * rate / 10 == 10
                        require (msg.value / 10^14 * rate / 10) + (10 * msg.value / 10^14 * rate / 10 / 1000) >= msg.value / 10^14 * rate / 10
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), (msg.value / 10^14 * rate / 10) + (10 * msg.value / 10^14 * rate / 10 / 1000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require stor1 == stor1
}



}
