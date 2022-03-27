contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() {
    mem[96 len 96] = code.data[887 len 96]
    mem[64] = 192
    stor0 = code.data[931 len 20]
    stor1 = code.data[963 len 20]
    stor2 = code.data[899 len 20]
    mem[224] = 0
    mem[192] = 0xf39c219700000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor2)
    call stor2.mem[var21003 len 4] with:
         gas gas_remaining - 50 wei
        args mem[var21003 + 4 len var21004 - 4]
    mem[var21005] = ext_call.return_data[0]
    require ext_call.success
    if var23005 <= 0xf39c219700000000000000000000000000000000000000000000000000000000:
        mem[224] = 0
        mem[192] = 0xe8a96b4600000000000000000000000000000000000000000000000000000000
        mem[196] = var25002
        require ext_code.size(stor2)
        call stor2.mem[var27003 len 4] with:
             gas gas_remaining - 50 wei
            args mem[var27003 + 4 len var27004 - 4]
        mem[var27005] = ext_call.return_data[0]
        require ext_call.success
        mem[224] = 0
        mem[192] = 0x3b3e67c500000000000000000000000000000000000000000000000000000000
        mem[196] = var29005
        require ext_code.size(stor2)
        call stor2.mem[var31003 len 4] with:
             gas gas_remaining - 50 wei
            args mem[var31003 + 4 len var31004 - 4]
        mem[var31005] = ext_call.return_data[0]
        require ext_call.success
        mem[192] = 0x4665328700000000000000000000000000000000000000000000000000000000
        mem[196] = address(var33004)
        mem[228] = 0x3b3e67c500000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor0)
        call stor0.mem[var35003 len 4] with:
             gas gas_remaining - 50 wei
            args mem[var35003 + 4 len var35004 - 4]
        require ext_call.success
        mem[224] = 0
        mem[192] = 0x9105d74800000000000000000000000000000000000000000000000000000000
        mem[196] = var37005
        require ext_code.size(stor2)
        call stor2.mem[var39003 len 4] with:
             gas gas_remaining - 50 wei
            args mem[var39003 + 4 len var39004 - 4]
        mem[var39005] = ext_call.return_data[0]
        require ext_call.success
        mem[192] = 0x4665328700000000000000000000000000000000000000000000000000000000
        mem[196] = address(var41004)
        mem[228] = 0x9105d74800000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor1)
        call stor1.mem[var43003 len 4] with:
             gas gas_remaining - 50 wei
            args mem[var43003 + 4 len var43004 - 4]
        require ext_call.success
        require ext_code.size(stor2)
        call stor2.numberOfPartners() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        s = var45004
        idx = var45005
        while idx + 1 <= ext_call.return_data[0]:
            require ext_code.size(stor2)
            call stor2.getHolder(uint256 rg1) with:
                 gas gas_remaining - 50 wei
                args (idx + 1)
            require ext_call.success
            require ext_code.size(stor2)
            call stor2.0x3b3e67c5 with:
                 gas gas_remaining - 50 wei
                args (idx + 1)
            require ext_call.success
            require ext_code.size(stor0)
            call stor0.0x46653287 with:
                 gas gas_remaining - 50 wei
                args address(ext_call.return_data[0]), ext_call.return_data[0]
            require ext_call.success
            require ext_code.size(stor2)
            call stor2.getTokenBalance(uint256 rg1) with:
                 gas gas_remaining - 50 wei
                args (idx + 1)
            require ext_call.success
            mem[228] = ext_call.return_data[0]
            require ext_code.size(stor1)
            call stor1.0x46653287 with:
                 gas gas_remaining - 50 wei
                args address(ext_call.return_data[0]), ext_call.return_data[0]
            require ext_call.success
            mem[224] = 0
            require ext_code.size(stor2)
            call stor2.numberOfPartners() with:
                 gas gas_remaining - 50 wei
            mem[192] = ext_call.return_data[0]
            require ext_call.success
            s = ext_call.return_data[0]
            idx = idx + 1
            continue 
    return code.data[878 len 9]
}



// =====================  Runtime code  =====================


function _fallback() payable {
    revert 
}



}
