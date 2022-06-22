contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
  stop
}

function sub_ad03089f(?) {
    require msg.sender == stor0
    stor1 = arg1
}

function withdraw(uint256 arg1) {
    require msg.sender == stor0
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e35ee3a9(?) {
    if stor0 != msg.sender:
        require msg.sender == stor1
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_108be43d(?) {
    if stor0 != msg.sender:
        require msg.sender == stor1
    require ext_code.size(arg1)
    call arg1.tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args arg2, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_90b9435d(?) payable {
    if stor0 != msg.sender:
        require msg.sender == stor1
    mem[420 len 0] = None
    require ext_code.size(arg1)
    call arg1.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
       value arg2 wei
         gas gas_remaining wei
        args Array(len=5, data=mem[420 len 160]), arg2, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4ec64c71(?) payable {
    if stor0 != msg.sender:
        require msg.sender == stor1
    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(arg2)
    call arg2.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
       value msg.value wei
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_560855c3(?) payable {
    if stor0 != msg.sender:
        require msg.sender == stor1
    if eth.balance(arg1) != arg2:
        require not arg2
    idx = 0
    while idx < arg4:
        require arg4
        mem[100] = 1
        mem[132] = block.timestamp + 9999
        require ext_code.size(address(arg1))
        call address(arg1).ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
           value arg3 / arg4 wei
             gas gas_remaining wei
            args 1, block.timestamp + 9999
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function sub_e5b25d20(?) {
    if stor0 != msg.sender:
        require msg.sender == stor1
    require ext_code.size(arg1)
    call arg1.0xdd62ed3e with:
         gas gas_remaining wei
        args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        require ext_code.size(arg1)
        call arg1.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0] - 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_539c11a3(?) {
    require arg4
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = 0
    s = 0
    s = 0
    idx = 0
    s = 0
    t = eth.balance(arg1)
    u = ext_call.return_data[0]
    while uint8(idx) < arg4:
        require (1000 * u) + (997 * arg3 / arg4)
        s = 997 * arg3 / arg4 * t / (1000 * u) + (997 * arg3 / arg4)
        s = (1000 * u) + (997 * arg3 / arg4)
        s = 997 * arg3 / arg4 * t
        idx = idx + 1
        s = s + (997 * arg3 / arg4 * t / (1000 * u) + (997 * arg3 / arg4))
        t = t - (997 * arg3 / arg4 * t / (1000 * u) + (997 * arg3 / arg4))
        u = u + (arg3 / arg4)
        continue 
    return (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
}

function sub_3f29e3c7(?) {
    if stor0 != msg.sender:
        require msg.sender == stor1
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor0 != msg.sender:
        require msg.sender == stor1
    require ext_code.size(arg1)
    call arg1.0xdd62ed3e with:
         gas gas_remaining wei
        args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    if ext_call.return_data[0] < ext_call.return_data[0]:
        call arg1.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0] - 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[420 len 0] = None
    require ext_code.size(arg2)
    call arg2.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args Array(len=5, data=mem[420 len 160]), ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4018a667(?) {
    if stor0 != msg.sender:
        require msg.sender == stor1
    if eth.balance(arg1) != arg3:
        require not arg3
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor0 != msg.sender:
        require msg.sender == stor1
    require ext_code.size(arg2)
    call arg2.0xdd62ed3e with:
         gas gas_remaining wei
        args address(this.address), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        require ext_code.size(arg2)
        call arg2.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg2)
        call arg2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0] - 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    idx = 0
    while idx < arg4:
        require arg4
        mem[100] = ext_call.return_data[0] / arg4
        mem[132] = 1
        mem[164] = block.timestamp + 9999
        require ext_code.size(address(arg1))
        call address(arg1).tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args ext_call.return_data[0] / arg4, 1, block.timestamp + 9999
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function sub_3ffa3604(?) payable {
    if stor0 != msg.sender:
        require msg.sender == stor1
        if stor0 != msg.sender:
            require msg.sender == stor1
    if eth.balance(arg1) != arg4:
        require not arg4
    idx = 0
    while idx < arg6:
        require arg6
        mem[100] = 1
        mem[132] = block.timestamp + 9999
        require ext_code.size(address(arg1))
        call address(arg1).ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
           value arg5 / arg6 wei
             gas gas_remaining wei
            args 1, block.timestamp + 9999
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    require ext_code.size(arg3)
    call arg3.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > arg7
    if stor0 != msg.sender:
        require msg.sender == stor1
    require ext_code.size(arg3)
    call arg3.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor0 != msg.sender:
        require msg.sender == stor1
    require ext_code.size(arg3)
    call arg3.0xdd62ed3e with:
         gas gas_remaining wei
        args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    if ext_call.return_data[0] < ext_call.return_data[0]:
        call arg3.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg3)
        call arg3.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0] - 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    call arg3.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[420 len 0] = None
    require ext_code.size(arg2)
    call arg2.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args Array(len=5, data=mem[420 len 160]), ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require eth.balance(this.address) > eth.balance(this.address)
}

function sub_871e3edf(?) payable {
    if stor0 != msg.sender:
        require msg.sender == stor1
    require arg5
    require ext_code.size(arg3)
    call arg3.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = 0
    s = 0
    s = 0
    idx = 0
    s = 0
    t = eth.balance(arg1)
    u = ext_call.return_data[0]
    while uint8(idx) < arg5:
        require (1000 * u) + (997 * arg6 / arg5)
        s = 997 * arg6 / arg5 * t / (1000 * u) + (997 * arg6 / arg5)
        s = (1000 * u) + (997 * arg6 / arg5)
        s = 997 * arg6 / arg5 * t
        idx = idx + 1
        s = s + (997 * arg6 / arg5 * t / (1000 * u) + (997 * arg6 / arg5))
        t = t - (997 * arg6 / arg5 * t / (1000 * u) + (997 * arg6 / arg5))
        u = u + (arg6 / arg5)
        continue 
    require s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None > eth.balance(this.address) + arg7
    if stor0 != msg.sender:
        require msg.sender == stor1
    mem[420 len 0] = None
    require ext_code.size(arg2)
    call arg2.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
       value arg4 wei
         gas gas_remaining wei
        args Array(len=5, data=mem[420 len 160]), arg4, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor0 != msg.sender:
        require msg.sender == stor1
    require ext_code.size(arg3)
    call arg3.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor0 != msg.sender:
        require msg.sender == stor1
    require ext_code.size(arg3)
    call arg3.0xdd62ed3e with:
         gas gas_remaining wei
        args address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        require ext_code.size(arg3)
        call arg3.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg3)
        call arg3.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0] - 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    idx = 0
    while idx < arg5:
        require arg5
        mem[292] = ext_call.return_data[0] / arg5
        mem[324] = 1
        mem[356] = block.timestamp + 9999
        require ext_code.size(arg1)
        call arg1.tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args ext_call.return_data[0] / arg5, 1, block.timestamp + 9999
        mem[288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    require eth.balance(this.address) > eth.balance(this.address)
}



}
