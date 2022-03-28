contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    mem[96 len -1560] = code.data[2725 len -1560]
    mem[64] = -1464
    if 10^18 != msg.value:
        selfdestruct(msg.sender)
    stor0 = msg.sender or Mask(96, 160, stor0)
    call 0x019d7e5ae8d2ba9a292244311dc7355058ab1b08.join() with:
       value msg.value wei
         gas gas_remaining - 34050 wei
    require ext_call.success
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        if mem[(32 * idx) + mem[96] + 140 len 20] != this.address:
            require idx < mem[mem[96] + 96]
            mem[-1464] = 0x119ada700000000000000000000000000000000000000000000000000000000
            mem[-1460] = mem[(32 * idx) + mem[96] + 140 len 20]
            call 0x019d7e5ae8d2ba9a292244311dc7355058ab1b08.eliminate(address rg1) with:
                 gas 15000 wei
                args mem[(32 * idx) + mem[96] + 140 len 20]
            require ext_call.success
        idx = idx + 1
        continue 
    call 0x019d7e5ae8d2ba9a292244311dc7355058ab1b08.lastPing(address rg1) with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0]:
        if block.timestamp <= 0:
            call 0x019d7e5ae8d2ba9a292244311dc7355058ab1b08.countRemaining() with:
                 gas gas_remaining - 25050 wei
            require ext_call.success
        else:
            if block.timestamp <= ext_call.return_data[0]:
                call 0x019d7e5ae8d2ba9a292244311dc7355058ab1b08.countRemaining() with:
                     gas gas_remaining - 25050 wei
                require ext_call.success
            else:
                call 0x019d7e5ae8d2ba9a292244311dc7355058ab1b08.idle() with:
                     gas 8000 wei
                require ext_call.success
                call 0x019d7e5ae8d2ba9a292244311dc7355058ab1b08.countRemaining() with:
                     gas gas_remaining - 25050 wei
        if ext_call.return_data[0] == 1:
            if eth.balance(0x19d7e5ae8d2ba9a292244311dc7355058ab1b08) > 0:
                call 0x019d7e5ae8d2ba9a292244311dc7355058ab1b08.claimReward() with:
                     gas gas_remaining - 25050 wei
                require ext_call.success
    return code.data[1165 len 1560]
}



// =====================  Runtime code  =====================


address stor0;

function execute(address arg1, uint256 arg2, bytes arg3) payable {
    mem[128 len arg3.length] = arg3[all]
    if stor0 != msg.sender:
        # nil
    else:
        mem[ceil32(arg3.length) + 128 len arg3.length] = arg3[all]
        if not arg3.length % 32:
            call arg1 with:
               value arg2 wei
                 gas gas_remaining - 34050 wei
                args arg3[all]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
            call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
               value arg2 wei
                 gas gas_remaining - 34050 wei
                args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
        if ext_call.success:
        # nil
}

function sub_43c84e40(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if mem[(32 * idx) + 140 len 20] != this.address:
            require idx < arg1.length
            _41 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 128] = 0x119ada700000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + 132] = address(_41)
            call 0x019d7e5ae8d2ba9a292244311dc7355058ab1b08.eliminate(address rg1) with:
                 gas 15000 wei
                args address(_41)
            require ext_call.success
        idx = idx + 1
        continue 
    call 0x019d7e5ae8d2ba9a292244311dc7355058ab1b08.lastPing(address rg1) with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0]:
        if block.timestamp <= 0:
            call 0x019d7e5ae8d2ba9a292244311dc7355058ab1b08.countRemaining() with:
                 gas gas_remaining - 25050 wei
            require ext_call.success
        else:
            if block.timestamp <= ext_call.return_data[0]:
                call 0x019d7e5ae8d2ba9a292244311dc7355058ab1b08.countRemaining() with:
                     gas gas_remaining - 25050 wei
                require ext_call.success
            else:
                call 0x019d7e5ae8d2ba9a292244311dc7355058ab1b08.idle() with:
                     gas 8000 wei
                require ext_call.success
                call 0x019d7e5ae8d2ba9a292244311dc7355058ab1b08.countRemaining() with:
                     gas gas_remaining - 25050 wei
        if ext_call.return_data[0] == 1:
            if eth.balance(0x19d7e5ae8d2ba9a292244311dc7355058ab1b08) > 0:
                call 0x019d7e5ae8d2ba9a292244311dc7355058ab1b08.claimReward() with:
                     gas gas_remaining - 25050 wei
                require ext_call.success
}

function _fallback() payable {
    if gas_remaining > 20000:
        idx = 0
        while idx < 0:
            require idx < 0
            if mem[(32 * idx) + 140 len 20] != this.address:
                require idx < 0
                _63 = mem[(32 * idx) + 128]
                mem[128] = 0x119ada700000000000000000000000000000000000000000000000000000000
                mem[132] = address(_63)
                call 0x019d7e5ae8d2ba9a292244311dc7355058ab1b08.eliminate(address rg1) with:
                     gas 15000 wei
                    args address(_63)
                require ext_call.success
            idx = idx + 1
            continue 
        call 0x019d7e5ae8d2ba9a292244311dc7355058ab1b08.lastPing(address rg1) with:
             gas gas_remaining - 25050 wei
            args this.address
        require ext_call.success
        if ext_call.return_data[0]:
            if block.timestamp <= 0:
                call 0x019d7e5ae8d2ba9a292244311dc7355058ab1b08.countRemaining() with:
                     gas gas_remaining - 25050 wei
                require ext_call.success
            else:
                if block.timestamp <= ext_call.return_data[0]:
                    call 0x019d7e5ae8d2ba9a292244311dc7355058ab1b08.countRemaining() with:
                         gas gas_remaining - 25050 wei
                    require ext_call.success
                else:
                    call 0x019d7e5ae8d2ba9a292244311dc7355058ab1b08.idle() with:
                         gas 8000 wei
                    require ext_call.success
                    call 0x019d7e5ae8d2ba9a292244311dc7355058ab1b08.countRemaining() with:
                         gas gas_remaining - 25050 wei
            if ext_call.return_data[0] == 1:
                if eth.balance(0x19d7e5ae8d2ba9a292244311dc7355058ab1b08) > 0:
                    call 0x019d7e5ae8d2ba9a292244311dc7355058ab1b08.claimReward() with:
                         gas gas_remaining - 25050 wei
                    require ext_call.success
    if msg.value > 0:
        if gas_remaining > 15000:
            call stor0 with:
               value msg.value wei
                 gas 0 wei
}



}
