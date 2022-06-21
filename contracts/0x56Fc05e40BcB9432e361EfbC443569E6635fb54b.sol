contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 3340]




// =====================  Runtime code  =====================


function sub_1ca4695f(?) payable {
    require ext_code.size(address(call.data[36]))
    call address(call.data[36]).0x70a08231 with:
         gas gas_remaining - 710 wei
        args address(call.data[4])
    require ext_call.success
    if Mask(8, 248, call.data[4]):
        if ext_call.return_data[0] <= call.data[68]:
            return call.data[132], 1
        if ext_call.return_data[0] >= call.data[100]:
            return 0
        if call.data[100] - call.data[68]:
            return (call.data[100] * call.data[132]) - (ext_call.return_data[0] * call.data[132]) / call.data[100] - call.data[68], 1
    else:
        if ext_call.return_data[0] >= call.data[68]:
            return call.data[132], 0
        if ext_call.return_data[0] <= call.data[100]:
            return 0
        if call.data[68] - call.data[100]:
            return (ext_call.return_data[0] * call.data[132]) - (call.data[100] * call.data[132]) / call.data[68] - call.data[100], 0
    revert
}

function sub_51d88471(?) payable {
    if not Mask(8, 248, call.data[4]):
        require ext_code.size(address(call.data[4]))
        call address(call.data[4]).0xfc0c546a with:
             gas gas_remaining - 710 wei
        require ext_call.success
        mem[612 len 0] = None
        require ext_code.size(0x6690819cb98c1211a8e38790d6cd48316ed518db)
        call 0x6690819cb98c1211a8e38790d6cd48316ed518db.convert(address[] arg1, uint256 arg2, uint256 arg3) with:
           value call.data[132] wei
             gas gas_remaining - 9710 wei
            args Array(len=5, data=mem[612 len 160]), call.data[132], 1
        require ext_call.success
        require ext_call.return_data[0] > 0
    else:
        require ext_code.size(address(call.data[36]))
        call address(call.data[36]).0x70a08231 with:
             gas gas_remaining - 710 wei
            args address(this.address)
        require ext_call.success
        if call.data[132] >= ext_call.return_data[0]:
            if ext_call.return_data[0]:
                require ext_code.size(address(call.data[4]))
                call address(call.data[4]).0xfc0c546a with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(address(call.data[36]))
                call address(call.data[36]).0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args 0x6690819cb98c1211a8e38790d6cd48316ed518db, ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
                mem[612 len 0] = None
                require ext_code.size(0x6690819cb98c1211a8e38790d6cd48316ed518db)
                call 0x6690819cb98c1211a8e38790d6cd48316ed518db.convert(address[] arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining - 710 wei
                    args Array(len=5, data=mem[612 len 160]), ext_call.return_data[0], 1
                require ext_call.success
                require ext_call.return_data[0] > 0
        else:
            if call.data[132]:
                require ext_code.size(address(call.data[4]))
                call address(call.data[4]).0xfc0c546a with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(address(call.data[36]))
                call address(call.data[36]).0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args 0x6690819cb98c1211a8e38790d6cd48316ed518db, call.data[132]
                require ext_call.success
                require ext_call.return_data[0]
                mem[612 len 0] = None
                require ext_code.size(0x6690819cb98c1211a8e38790d6cd48316ed518db)
                call 0x6690819cb98c1211a8e38790d6cd48316ed518db.convert(address[] arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining - 710 wei
                    args Array(len=5, data=mem[612 len 160]), call.data[132], 1
                require ext_call.success
                require ext_call.return_data[0] > 0
}

function _fallback() payable {
    if unknown_0x1ca4695f(?????) == uint32(call.func_hash):
        require ext_code.size(address(call.data[36]))
        call address(call.data[36]).0x70a08231 with:
             gas gas_remaining - 710 wei
            args address(call.data[4])
        require ext_call.success
        if Mask(8, 248, call.data[4]):
            if ext_call.return_data[0] <= call.data[68]:
                return call.data[132], 1
            if ext_call.return_data[0] >= call.data[100]:
                return 0
            if call.data[100] - call.data[68]:
                return (call.data[100] * call.data[132]) - (ext_call.return_data[0] * call.data[132]) / call.data[100] - call.data[68], 1
        else:
            if ext_call.return_data[0] >= call.data[68]:
                return call.data[132], 0
            if ext_call.return_data[0] <= call.data[100]:
                return 0
            if call.data[68] - call.data[100]:
                return (ext_call.return_data[0] * call.data[132]) - (call.data[100] * call.data[132]) / call.data[68] - call.data[100], 0
        revert
    require unknown_0x51d88471(?????) == uint32(call.func_hash)
    if not Mask(8, 248, call.data[4]):
        require ext_code.size(address(call.data[4]))
        call address(call.data[4]).0xfc0c546a with:
             gas gas_remaining - 710 wei
        require ext_call.success
        mem[612 len 0] = None
        require ext_code.size(0x6690819cb98c1211a8e38790d6cd48316ed518db)
        call 0x6690819cb98c1211a8e38790d6cd48316ed518db.convert(address[] arg1, uint256 arg2, uint256 arg3) with:
           value call.data[132] wei
             gas gas_remaining - 9710 wei
            args Array(len=5, data=mem[612 len 160]), call.data[132], 1
        require ext_call.success
        require ext_call.return_data[0] > 0
    else:
        require ext_code.size(address(call.data[36]))
        call address(call.data[36]).0x70a08231 with:
             gas gas_remaining - 710 wei
            args address(this.address)
        require ext_call.success
        if call.data[132] >= ext_call.return_data[0]:
            if ext_call.return_data[0]:
                require ext_code.size(address(call.data[4]))
                call address(call.data[4]).0xfc0c546a with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(address(call.data[36]))
                call address(call.data[36]).0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args 0x6690819cb98c1211a8e38790d6cd48316ed518db, ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
                mem[612 len 0] = None
                require ext_code.size(0x6690819cb98c1211a8e38790d6cd48316ed518db)
                call 0x6690819cb98c1211a8e38790d6cd48316ed518db.convert(address[] arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining - 710 wei
                    args Array(len=5, data=mem[612 len 160]), ext_call.return_data[0], 1
                require ext_call.success
                require ext_call.return_data[0] > 0
        else:
            if call.data[132]:
                require ext_code.size(address(call.data[4]))
                call address(call.data[4]).0xfc0c546a with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(address(call.data[36]))
                call address(call.data[36]).0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args 0x6690819cb98c1211a8e38790d6cd48316ed518db, call.data[132]
                require ext_call.success
                require ext_call.return_data[0]
                mem[612 len 0] = None
                require ext_code.size(0x6690819cb98c1211a8e38790d6cd48316ed518db)
                call 0x6690819cb98c1211a8e38790d6cd48316ed518db.convert(address[] arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining - 710 wei
                    args Array(len=5, data=mem[612 len 160]), call.data[132], 1
                require ext_call.success
                require ext_call.return_data[0] > 0
}



}
