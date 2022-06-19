contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
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

function sub_a3e56eda(?) payable {
    if stor0 != msg.sender:
        require msg.sender == stor1
    require eth.balance(arg1) == arg2
    idx = 0
    while idx < 6:
        mem[100] = 1
        mem[132] = block.timestamp + 9999
        require ext_code.size(address(arg1))
        call address(arg1).ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
           value arg3 / 6 wei
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
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), -1
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

function sub_ef93a42d(?) {
    if stor0 != msg.sender:
        require msg.sender == stor1
    require eth.balance(arg1) == arg3
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
    if ext_call.return_data[0] < 1:
        require ext_code.size(arg2)
        call arg2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    idx = 0
    while idx < 6:
        mem[100] = ext_call.return_data[0]
        mem[132] = 1
        mem[164] = block.timestamp + 9999
        require ext_code.size(address(arg1))
        call address(arg1).tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1, block.timestamp + 9999
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function sub_7c1ce4d5(?) payable {
    if stor0 != msg.sender:
        require msg.sender == stor1
    mem[420 len 0] = None
    require ext_code.size(arg2)
    call arg2.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
       value arg5 wei
         gas gas_remaining wei
        args Array(len=5, data=mem[420 len 160]), arg5, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor0 != msg.sender:
        require msg.sender == stor1
    require eth.balance(arg1) == arg4
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
        args address(this.address), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 1:
        require ext_code.size(arg3)
        call arg3.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    idx = 0
    while idx < 6:
        mem[292] = ext_call.return_data[0]
        mem[324] = 1
        mem[356] = block.timestamp + 9999
        require ext_code.size(address(arg1))
        call address(arg1).tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1, block.timestamp + 9999
        mem[288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    require eth.balance(this.address) > eth.balance(this.address)
}

function sub_2752ceee(?) payable {
    if stor0 != msg.sender:
        require msg.sender == stor1
    require eth.balance(arg1) == arg4
    idx = 0
    while idx < 6:
        mem[100] = 1
        mem[132] = block.timestamp + 9999
        require ext_code.size(address(arg1))
        call address(arg1).ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
           value arg5 / 6 wei
             gas gas_remaining wei
            args 1, block.timestamp + 9999
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
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
        call arg3.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), -1
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



}
