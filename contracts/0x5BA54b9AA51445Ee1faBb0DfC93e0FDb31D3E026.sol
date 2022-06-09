contract main {




// =====================  Runtime code  =====================


array of struct stor0;
address stor1;
address stor2;
uint32 stor3; offset 160
address stor3;

function _fallback() payable {
    revert
}

function ceil(uint256 arg1, uint256 arg2) {
    require arg2
    return (arg1 + arg2 - 1 / arg2 * arg2)
}

function getParams() {
    if stor0.length + 1:
        mem[128 len 32 * stor0.length + 1] = code.data[3393 len 32 * stor0.length + 1]
    idx = 0
    while idx < stor0.length:
        require idx < stor0.length + 1
        mem[(32 * idx) + 128] = stor0[idx].field_0
        require idx < stor0.length
        mem[0] = 0
        require idx < stor0.length
        mem[(32 * idx) + (32 * stor0.length + 1) + 160] = stor0[idx].field_32
        idx = idx + 1
        continue 
    require stor0.length < stor0.length + 1
    mem[(32 * stor0.length + 1) + (32 * stor0.length) + 352 len floor32(stor0.length + 1)] = mem[128 len floor32(stor0.length + 1)]
    return Array(len=stor0.length + 1, data=mem[128 len floor32(stor0.length + 1)], mem[(32 * stor0.length + 1) + (32 * stor0.length) + floor32(stor0.length + 1) + 352 len (32 * stor0.length + 1) + (32 * stor0.length) + -floor32(stor0.length + 1) + 32]), 
           (32 * stor0.length + 1) + 192,
           stor1,
           stor2,
           address(stor3.field_0)
}

function sub_590aa479(?) payable {
    require Mask(56, 192, arg3) >> 192 == this.address % 72057594037927936
    if not arg4:
        signer = erecover(sha3(0, Mask(248, 0, arg3), arg4), arg3 << 248, arg1, arg2) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        require address(signer) == address(stor3.field_0)
        require address(arg3)
        require 0 < stor0.length
        if block.timestamp < uint32(stor0.field_0):
            require 0 < stor0.length
            require uint32(arg4) >= uint32(stor0.field_0)
            idx = 1
            while idx < stor0.length:
                mem[0] = 0
                if uint32(arg4) >= stor0[idx].field_0:
                    idx = idx + 1
                    continue 
                require idx - 1 >= stor0.length
                revert
            if uint32(arg4) < uint32(stor3.field_160):
                require stor0.length - 1 < stor0.length
            revert
        idx = 1
        while idx < stor0.length:
            mem[0] = 0
            if block.timestamp >= stor0[idx].field_0:
                idx = idx + 1
                continue 
            require idx - 1 < stor0.length
            require 0 < stor0.length
            require uint32(arg4) >= uint32(stor0.field_0)
            s = 1
            while s < stor0.length:
                mem[0] = 0
                if uint32(arg4) >= stor0[s].field_0:
                    s = s + 1
                    continue 
                require s - 1 < stor0.length
                require stor0[idx].field_0 == stor0[s].field_0
                require stor0[idx].field_0
                require stor0[idx].field_0
                require stor0[idx].field_0 * msg.value / stor0[idx].field_0 == msg.value
                require 10^16 * (stor0[idx].field_0 * msg.value / 10^9) + 9999999999999999 / 10^16 > 0
                if msg.value > 0:
                    call stor1 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor2)
                call stor2.0x23b872dd with:
                     gas gas_remaining wei
                    args stor1, address(arg3), 10^16 * (stor0[idx].field_0 * msg.value / 10^9) + 9999999999999999 / 10^16
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0x8e842cf6: msg.value, 10^16 * (stor0[idx].field_0 * msg.value / 10^9) + 9999999999999999 / 10^16, address(arg3), address(arg4), Mask(32, 160, arg3) << 64
            require uint32(arg4) < uint32(stor3.field_160)
            require stor0.length - 1 < stor0.length
            require stor0[idx].field_0 == stor0[stor0.length].field_0
            require stor0[idx].field_0
            require stor0[idx].field_0
            require stor0[idx].field_0 * msg.value / stor0[idx].field_0 == msg.value
            require 10^16 * (stor0[idx].field_0 * msg.value / 10^9) + 9999999999999999 / 10^16 > 0
            if msg.value > 0:
                call stor1 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args stor1, address(arg3), 10^16 * (stor0[idx].field_0 * msg.value / 10^9) + 9999999999999999 / 10^16
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0x8e842cf6: msg.value, 10^16 * (stor0[idx].field_0 * msg.value / 10^9) + 9999999999999999 / 10^16, address(arg3), address(arg4), Mask(32, 160, arg3) << 64
        if block.timestamp >= uint32(stor3.field_160):
            require 0 < stor0.length
            require uint32(arg4) >= uint32(stor0.field_0)
            idx = 1
            while idx < stor0.length:
                mem[0] = 0
                if uint32(arg4) >= stor0[idx].field_0:
                    idx = idx + 1
                    continue 
                require idx - 1 >= stor0.length
                revert
            if uint32(arg4) < uint32(stor3.field_160):
                require stor0.length - 1 < stor0.length
            revert
        require stor0.length - 1 < stor0.length
        require 0 < stor0.length
        require uint32(arg4) >= uint32(stor0.field_0)
        idx = 1
        while idx < stor0.length:
            mem[0] = 0
            if uint32(arg4) >= stor0[idx].field_0:
                idx = idx + 1
                continue 
            require idx - 1 < stor0.length
            require stor0[stor0.length].field_0 == stor0[idx].field_0
            require stor0[stor0.length].field_0
            require stor0[stor0.length].field_0
            require stor0[stor0.length].field_0 * msg.value / stor0[stor0.length].field_0 == msg.value
            require 10^16 * (stor0[stor0.length].field_0 * msg.value / 10^9) + 9999999999999999 / 10^16 > 0
            if msg.value > 0:
                call stor1 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args stor1, address(arg3), 10^16 * (stor0[stor0.length].field_0 * msg.value / 10^9) + 9999999999999999 / 10^16
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0x8e842cf6: msg.value, 10^16 * (stor0[stor0.length].field_0 * msg.value / 10^9) + 9999999999999999 / 10^16, address(arg3), address(arg4), Mask(32, 160, arg3) << 64
        require uint32(arg4) < uint32(stor3.field_160)
        require stor0.length - 1 < stor0.length
        require stor0[stor0.length].field_0 == stor0[stor0.length].field_0
        require stor0[stor0.length].field_0
        require stor0[stor0.length].field_0
        require stor0[stor0.length].field_0 * msg.value / stor0[stor0.length].field_0 == msg.value
        require 10^16 * (stor0[stor0.length].field_0 * msg.value / 10^9) + 9999999999999999 / 10^16 > 0
        if msg.value > 0:
            call stor1 with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor2)
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args stor1, address(arg3), 10^16 * (stor0[stor0.length].field_0 * msg.value / 10^9) + 9999999999999999 / 10^16
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x8e842cf6: msg.value, 10^16 * (stor0[stor0.length].field_0 * msg.value / 10^9) + 9999999999999999 / 10^16, address(arg3), address(arg4), Mask(32, 160, arg3) << 64
    else:
        require arg4
        require 10^9 * arg4 / arg4 == 10^9
        signer = erecover(sha3(0, Mask(248, 0, arg3), arg4), arg3 << 248, arg1, arg2) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        require address(signer) == address(stor3.field_0)
        require address(arg3)
        require 0 < stor0.length
        if block.timestamp < uint32(stor0.field_0):
            require 0 < stor0.length
            require uint32(arg4) >= uint32(stor0.field_0)
            idx = 1
            while idx < stor0.length:
                mem[0] = 0
                if uint32(arg4) >= stor0[idx].field_0:
                    idx = idx + 1
                    continue 
                require idx - 1 >= stor0.length
                revert
            if uint32(arg4) < uint32(stor3.field_160):
                require stor0.length - 1 < stor0.length
            revert
        idx = 1
        while idx < stor0.length:
            mem[0] = 0
            if block.timestamp >= stor0[idx].field_0:
                idx = idx + 1
                continue 
            require idx - 1 < stor0.length
            require 0 < stor0.length
            require uint32(arg4) >= uint32(stor0.field_0)
            s = 1
            while s < stor0.length:
                mem[0] = 0
                if uint32(arg4) >= stor0[s].field_0:
                    s = s + 1
                    continue 
                require s - 1 < stor0.length
                require stor0[idx].field_0 == stor0[s].field_0
                require stor0[idx].field_0
                require stor0[idx].field_0
                require 10^9 * stor0[idx].field_0 * arg4 / stor0[idx].field_0 == 10^9 * arg4
                require 10^16 * (10^9 * stor0[idx].field_0 * arg4 / 10^9) + 9999999999999999 / 10^16 > 0
                if msg.value > 0:
                    call stor1 with:
                       value 10^9 * arg4 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor2)
                call stor2.0x23b872dd with:
                     gas gas_remaining wei
                    args stor1, address(arg3), 10^16 * (10^9 * stor0[idx].field_0 * arg4 / 10^9) + 9999999999999999 / 10^16
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0x8e842cf6: 10^9 * arg4, 10^16 * (10^9 * stor0[idx].field_0 * arg4 / 10^9) + 9999999999999999 / 10^16, address(arg3), address(arg4), Mask(32, 160, arg3) << 64
            require uint32(arg4) < uint32(stor3.field_160)
            require stor0.length - 1 < stor0.length
            require stor0[idx].field_0 == stor0[stor0.length].field_0
            require stor0[idx].field_0
            require stor0[idx].field_0
            require 10^9 * stor0[idx].field_0 * arg4 / stor0[idx].field_0 == 10^9 * arg4
            require 10^16 * (10^9 * stor0[idx].field_0 * arg4 / 10^9) + 9999999999999999 / 10^16 > 0
            if msg.value > 0:
                call stor1 with:
                   value 10^9 * arg4 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args stor1, address(arg3), 10^16 * (10^9 * stor0[idx].field_0 * arg4 / 10^9) + 9999999999999999 / 10^16
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0x8e842cf6: 10^9 * arg4, 10^16 * (10^9 * stor0[idx].field_0 * arg4 / 10^9) + 9999999999999999 / 10^16, address(arg3), address(arg4), Mask(32, 160, arg3) << 64
        if block.timestamp >= uint32(stor3.field_160):
            require 0 < stor0.length
            require uint32(arg4) >= uint32(stor0.field_0)
            idx = 1
            while idx < stor0.length:
                mem[0] = 0
                if uint32(arg4) >= stor0[idx].field_0:
                    idx = idx + 1
                    continue 
                require idx - 1 >= stor0.length
                revert
            if uint32(arg4) < uint32(stor3.field_160):
                require stor0.length - 1 < stor0.length
            revert
        require stor0.length - 1 < stor0.length
        require 0 < stor0.length
        require uint32(arg4) >= uint32(stor0.field_0)
        idx = 1
        while idx < stor0.length:
            mem[0] = 0
            if uint32(arg4) >= stor0[idx].field_0:
                idx = idx + 1
                continue 
            require idx - 1 < stor0.length
            require stor0[stor0.length].field_0 == stor0[idx].field_0
            require stor0[stor0.length].field_0
            require stor0[stor0.length].field_0
            require 10^9 * stor0[stor0.length].field_0 * arg4 / stor0[stor0.length].field_0 == 10^9 * arg4
            require 10^16 * (10^9 * stor0[stor0.length].field_0 * arg4 / 10^9) + 9999999999999999 / 10^16 > 0
            if msg.value > 0:
                call stor1 with:
                   value 10^9 * arg4 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args stor1, address(arg3), 10^16 * (10^9 * stor0[stor0.length].field_0 * arg4 / 10^9) + 9999999999999999 / 10^16
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0x8e842cf6: 10^9 * arg4, 10^16 * (10^9 * stor0[stor0.length].field_0 * arg4 / 10^9) + 9999999999999999 / 10^16, address(arg3), address(arg4), Mask(32, 160, arg3) << 64
        require uint32(arg4) < uint32(stor3.field_160)
        require stor0.length - 1 < stor0.length
        require stor0[stor0.length].field_0 == stor0[stor0.length].field_0
        require stor0[stor0.length].field_0
        require stor0[stor0.length].field_0
        require 10^9 * stor0[stor0.length].field_0 * arg4 / stor0[stor0.length].field_0 == 10^9 * arg4
        require 10^16 * (10^9 * stor0[stor0.length].field_0 * arg4 / 10^9) + 9999999999999999 / 10^16 > 0
        if msg.value > 0:
            call stor1 with:
               value 10^9 * arg4 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor2)
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args stor1, address(arg3), 10^16 * (10^9 * stor0[stor0.length].field_0 * arg4 / 10^9) + 9999999999999999 / 10^16
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x8e842cf6: 10^9 * arg4, 10^16 * (10^9 * stor0[stor0.length].field_0 * arg4 / 10^9) + 9999999999999999 / 10^16, address(arg3), address(arg4), Mask(32, 160, arg3) << 64
}



}
