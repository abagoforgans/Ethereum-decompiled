contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function destroy() {
    require msg.sender == stor2
    selfdestruct(stor2)
}

function _fallback() payable {
  stop
}

function settleJackpot() {
    require msg.sender == stor2
    if block.number > 2125 * 3600:
        require ext_code.size(stor0)
        call stor0.seasonalNumberEndPrev() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 1:
            require ext_code.size(stor0)
            call stor0.numberEnd() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[324 len 0] = None
            mem[388 len 0] = None
            if (Mask(48, 179, block.hash(2125 * 3600)) >> 179 % ext_call.return_data[0]) + 1 > 2087:
                require ext_code.size(stor0)
                call stor0.0x62eb78db with:
                     gas gas_remaining wei
                    args 64, 128, 1, mem[324], 1, mem[388]
            else:
                require ext_code.size(stor1)
                call stor1.0x62eb78db with:
                     gas gas_remaining wei
                    args 64, 128, 1, mem[324], 1, mem[388]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_call.return_data[0] - 1563
            mem[324 len 0] = None
            mem[388 len 0] = None
            if (Mask(48, 179, block.hash(2125 * 3600)) >> 179 % ext_call.return_data[0] - 1563) + 1564 > 2087:
                require ext_code.size(stor0)
                call stor0.0x62eb78db with:
                     gas gas_remaining wei
                    args 64, 128, 1, 0, mem[324], 1, 0, mem[388]
            else:
                require ext_code.size(stor1)
                call stor1.0x62eb78db with:
                     gas gas_remaining wei
                    args 64, 128, 1, 0, mem[324], 1, 0, mem[388]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor0)
            call stor0.0xad1b1f8b with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
