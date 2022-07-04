contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_e3928d6c(?) payable {
    require calldata.size - 4 >= 320
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= 4294967296
    require cd[132] + 36 <= calldata.size
    require ('cd', 132).length <= 4294967296 and cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).0x70a08231 with:
            gas gas_remaining wei
           args address(cd[36])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10000000 * 10^18 * ext_call.return_data[0] / 10000000 * 10^18 == ext_call.return_data[0]
    require eth.balance(cd[36])
    mem[(32 * ('cd', 100).length) + 708] = 32
    mem[(32 * ('cd', 100).length) + 740] = ('cd', 100).length
    mem[(32 * ('cd', 100).length) + 772 len floor32(('cd', 100).length)] = call.data[cd[100] + 36 len floor32(('cd', 100).length)]
    require ext_code.size(address(cd[68]))
    staticcall address(cd[68]).0x78981741 with:
            gas gas_remaining wei
           args mem[(32 * ('cd', 100).length) + 708 len (96 * ('cd', 100).length) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 10000000 * 10^18 * ext_call.return_data[0] / eth.balance(cd[36]):
        if not (10000000 * 10^18 * ext_call.return_data[0] / eth.balance(cd[36])) - ext_call.return_data[0]:
            require cd[164]
            if 0 / cd[164] < cd[228]:
                return code.data[3399 len 64], 1, 0 / cd[164], code.data[3527 len 96]
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).getEthToTokenInputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args (0 / cd[164])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 932 len floor32(('cd', 132).length)] = call.data[cd[132] + 36 len floor32(('cd', 132).length)]
            require ext_code.size(address(cd[68]))
            staticcall address(cd[68]).getReturnByPath(address[] arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len floor32(('cd', 132).length)], mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + floor32(('cd', 132).length) + 932 len (32 * ('cd', 132).length) - floor32(('cd', 132).length)]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[0] <= 0:
                revert with 0, 'e1'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'e1'
            if (0 / cd[164]) + cd[260] > ext_call.return_data[0]:
                return ext_call.return_data[0], ext_call.return_data[0], 1, 0 / cd[164], code.data[3527 len 96]
            require ext_code.size(address(cd[36]))
            call address(cd[36]).ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
               value 0 / cd[164] wei
                 gas gas_remaining wei
                args 1, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 < ('cd', 132).length
            require ext_code.size(address(('cd', 132)[1]))
            staticcall address(('cd', 132)[1]).0x8da5cb5b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[4]))
            call address(cd[4]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len floor32(('cd', 132).length)]), ext_call.return_data[0], 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (0 / cd[164]) + cd[292] > ext_call.return_data[0]:
                revert with 0, 'e2'
            return ext_call.return_data[0], 
                   ext_call.return_data[0],
                   1,
                   0 / cd[164],
                   code.data[3527 len 32],
                   ext_call.return_data[0],
                   ext_call.return_data[0]
        require (10000000 * 10^18 * ext_call.return_data[0] / eth.balance(cd[36]) * cd[196]) - (ext_call.return_data[0] * cd[196]) / (10000000 * 10^18 * ext_call.return_data[0] / eth.balance(cd[36])) - ext_call.return_data[0] == cd[196]
        require cd[164]
        if (10000000 * 10^18 * ext_call.return_data[0] / eth.balance(cd[36]) * cd[196]) - (ext_call.return_data[0] * cd[196]) / cd[164] < cd[228]:
            return code.data[3399 len 64], 
                   1,
                   (10000000 * 10^18 * ext_call.return_data[0] / eth.balance(cd[36]) * cd[196]) - (ext_call.return_data[0] * cd[196]) / cd[164],
                   code.data[3527 len 96]
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).getEthToTokenInputPrice(uint256 arg1) with:
                gas gas_remaining wei
               args ((10000000 * 10^18 * ext_call.return_data[0] / eth.balance(cd[36]) * cd[196]) - (ext_call.return_data[0] * cd[196]) / cd[164])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 932 len floor32(('cd', 132).length)] = call.data[cd[132] + 36 len floor32(('cd', 132).length)]
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).getReturnByPath(address[] arg1, uint256 arg2) with:
                gas gas_remaining wei
               args Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len floor32(('cd', 132).length)], mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + floor32(('cd', 132).length) + 932 len (32 * ('cd', 132).length) - floor32(('cd', 132).length)]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] <= 0:
            revert with 0, 'e1'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'e1'
        if ((10000000 * 10^18 * ext_call.return_data[0] / eth.balance(cd[36]) * cd[196]) - (ext_call.return_data[0] * cd[196]) / cd[164]) + cd[260] > ext_call.return_data[0]:
            return ext_call.return_data[0], 
                   ext_call.return_data[0],
                   1,
                   (10000000 * 10^18 * ext_call.return_data[0] / eth.balance(cd[36]) * cd[196]) - (ext_call.return_data[0] * cd[196]) / cd[164],
                   code.data[3527 len 96]
        require ext_code.size(address(cd[36]))
        call address(cd[36]).ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
           value (10000000 * 10^18 * ext_call.return_data[0] / eth.balance(cd[36]) * cd[196]) - (ext_call.return_data[0] * cd[196]) / cd[164] wei
             gas gas_remaining wei
            args 1, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 1 < ('cd', 132).length
        require ext_code.size(address(('cd', 132)[1]))
        staticcall address(('cd', 132)[1]).0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[4]))
        call address(cd[4]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len floor32(('cd', 132).length)]), ext_call.return_data[0], 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ((10000000 * 10^18 * ext_call.return_data[0] / eth.balance(cd[36]) * cd[196]) - (ext_call.return_data[0] * cd[196]) / cd[164]) + cd[292] > ext_call.return_data[0]:
            revert with 0, 'e2'
        return ext_call.return_data[0], 
               ext_call.return_data[0],
               1,
               (10000000 * 10^18 * ext_call.return_data[0] / eth.balance(cd[36]) * cd[196]) - (ext_call.return_data[0] * cd[196]) / cd[164],
               code.data[3527 len 32],
               ext_call.return_data[0],
               ext_call.return_data[0]
    if not ext_call.return_data[0] - (10000000 * 10^18 * ext_call.return_data[0] / eth.balance(cd[36])):
        require cd[164]
        if 0 / cd[164] < cd[228]:
            return code.data[3399 len 64], 0, 0 / cd[164], code.data[3527 len 96]
        mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 868] = 0 / cd[164]
        mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 836] = 64
        mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 900] = ('cd', 100).length
        mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 932 len floor32(('cd', 100).length)] = call.data[cd[100] + 36 len floor32(('cd', 100).length)]
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).getReturnByPath(address[] arg1, uint256 arg2) with:
                gas gas_remaining wei
               args mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 836 len (161 * ('cd', 100).length) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).getTokenToEthInputPrice(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'e1'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'e1'
        if (0 / cd[164]) + cd[260] > ext_call.return_data[0]:
            return ext_call.return_data[0], ext_call.return_data[0], 0, 0 / cd[164], code.data[3527 len 96]
        require 1 < ('cd', 100).length
        require ext_code.size(address(('cd', 100)[1]))
        staticcall address(('cd', 100)[1]).0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
           value 0 / cd[164] wei
             gas gas_remaining wei
            args Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len floor32(('cd', 100).length)]), 0 / cd[164], 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[4]))
        call address(cd[4]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[36]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[36]))
        call address(cd[36]).tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (0 / cd[164]) + cd[292] > ext_call.return_data[0]:
            revert with 0, 'e2'
        return ext_call.return_data[0], 
               ext_call.return_data[0],
               0,
               0 / cd[164],
               code.data[3527 len 32],
               ext_call.return_data[0],
               ext_call.return_data[0]
    require (ext_call.return_data[0] * cd[196]) - (10000000 * 10^18 * ext_call.return_data[0] / eth.balance(cd[36]) * cd[196]) / ext_call.return_data[0] - (10000000 * 10^18 * ext_call.return_data[0] / eth.balance(cd[36])) == cd[196]
    require cd[164]
    if (ext_call.return_data[0] * cd[196]) - (10000000 * 10^18 * ext_call.return_data[0] / eth.balance(cd[36]) * cd[196]) / cd[164] < cd[228]:
        return code.data[3399 len 64], 
               0,
               (ext_call.return_data[0] * cd[196]) - (10000000 * 10^18 * ext_call.return_data[0] / eth.balance(cd[36]) * cd[196]) / cd[164],
               code.data[3527 len 96]
    mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 868] = (ext_call.return_data[0] * cd[196]) - (10000000 * 10^18 * ext_call.return_data[0] / eth.balance(cd[36]) * cd[196]) / cd[164]
    mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 836] = 64
    mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 900] = ('cd', 100).length
    mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 932 len floor32(('cd', 100).length)] = call.data[cd[100] + 36 len floor32(('cd', 100).length)]
    require ext_code.size(address(cd[68]))
    staticcall address(cd[68]).getReturnByPath(address[] arg1, uint256 arg2) with:
            gas gas_remaining wei
           args mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 836 len (161 * ('cd', 100).length) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).getTokenToEthInputPrice(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'e1'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'e1'
    if ((ext_call.return_data[0] * cd[196]) - (10000000 * 10^18 * ext_call.return_data[0] / eth.balance(cd[36]) * cd[196]) / cd[164]) + cd[260] > ext_call.return_data[0]:
        return ext_call.return_data[0], 
               ext_call.return_data[0],
               0,
               (ext_call.return_data[0] * cd[196]) - (10000000 * 10^18 * ext_call.return_data[0] / eth.balance(cd[36]) * cd[196]) / cd[164],
               code.data[3527 len 96]
    require 1 < ('cd', 100).length
    require ext_code.size(address(('cd', 100)[1]))
    staticcall address(('cd', 100)[1]).0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
       value (ext_call.return_data[0] * cd[196]) - (10000000 * 10^18 * ext_call.return_data[0] / eth.balance(cd[36]) * cd[196]) / cd[164] wei
         gas gas_remaining wei
        args Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len floor32(('cd', 100).length)]), (ext_call.return_data[0] * cd[196]) - (10000000 * 10^18 * ext_call.return_data[0] / eth.balance(cd[36]) * cd[196]) / cd[164], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cd[4]))
    call address(cd[4]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[36]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cd[36]))
    call address(cd[36]).tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ((ext_call.return_data[0] * cd[196]) - (10000000 * 10^18 * ext_call.return_data[0] / eth.balance(cd[36]) * cd[196]) / cd[164]) + cd[292] > ext_call.return_data[0]:
        revert with 0, 'e2'
    return ext_call.return_data[0], 
           ext_call.return_data[0],
           0,
           (ext_call.return_data[0] * cd[196]) - (10000000 * 10^18 * ext_call.return_data[0] / eth.balance(cd[36]) * cd[196]) / cd[164],
           code.data[3527 len 32],
           ext_call.return_data[0],
           ext_call.return_data[0]
}



}
