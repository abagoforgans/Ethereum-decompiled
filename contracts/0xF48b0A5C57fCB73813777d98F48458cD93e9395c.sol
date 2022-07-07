contract main {




// =====================  Runtime code  =====================


mapping of uint256 stor0;

function _fallback() payable {
    revert
}

function getBalance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        return eth.balance(arg2)
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_0519a54b(?) payable {
    require calldata.size - 4 >= 224
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    if arg6:
        mem[(32 * arg4.length) + (32 * arg5.length) + 260 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
        require ext_code.size(arg3)
        staticcall arg3.getReturnByPath(address[] arg1, uint256 arg2) with:
                gas gas_remaining wei
               args Array(len=arg4.length, data=call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg4.length) + (32 * arg5.length) + floor32(arg4.length) + 260 len (32 * arg4.length) - floor32(arg4.length)]), arg7
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(arg2)
        staticcall arg2.searchBestRate(address arg1, address arg2, uint256 arg3, bool arg4) with:
                gas gas_remaining wei
               args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0], 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
            require ext_call.return_data[0] <= 10000000000 * 10^18
            require ext_call.return_data[32] <= 1000000 * 10^18
            if ext_call.return_data[32] <= 0:
                revert with 0, 'e1'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'e1'
            if ext_call.return_data[32] * ext_call.return_data[0] / 10^18 <= 0:
                revert with 0, 'e1'
            return ext_call.return_data[0], ext_call.return_data[32] * ext_call.return_data[0] / 10^18
        if stor0[address(arg1)]:
            require ext_call.return_data[0] <= 10000000000 * 10^18
            require ext_call.return_data[32] <= 1000000 * 10^18
            if 18 >= stor0[address(arg1)]:
                require -stor0[address(arg1)] + 18 <= 18
                if ext_call.return_data[32] <= 0:
                    revert with 0, 'e1'
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'e1'
                if 10^(-stor0[address(arg1)] + 18) * ext_call.return_data[32] * ext_call.return_data[0] / 10^18 <= 0:
                    revert with 0, 'e1'
                return ext_call.return_data[0], 10^(-stor0[address(arg1)] + 18) * ext_call.return_data[32] * ext_call.return_data[0] / 10^18
            require stor0[address(arg1)] - 18 <= 18
            require 10^18 * 10^(stor0[address(arg1)] - 18)
            if ext_call.return_data[32] <= 0:
                revert with 0, 'e1'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'e1'
            if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * 10^(stor0[address(arg1)] - 18) <= 0:
                revert with 0, 'e1'
            return ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * 10^(stor0[address(arg1)] - 18)
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= 10000000000 * 10^18
        require ext_call.return_data[32] <= 1000000 * 10^18
        if 18 >= ext_call.return_data[0]:
            require -ext_call.return_data[0] + 18 <= 18
            if ext_call.return_data[32] <= 0:
                revert with 0, 'e1'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'e1'
            if 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[32] * ext_call.return_data[0] / 10^18 <= 0:
                revert with 0, 'e1'
            return ext_call.return_data[0], 
                   10^(-ext_call.return_data[0] + 18) * ext_call.return_data[32] * ext_call.return_data[0] / 10^18
        require ext_call.return_data[0] - 18 <= 18
        require 10^18 * 10^(ext_call.return_data[0] - 18)
        if ext_call.return_data[32] <= 0:
            revert with 0, 'e1'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'e1'
        if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * 10^(ext_call.return_data[0] - 18) <= 0:
            revert with 0, 'e1'
        return ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * 10^(ext_call.return_data[0] - 18)
    mem[(32 * arg4.length) + (32 * arg5.length) + 260] = 1
    require ext_code.size(arg2)
    staticcall arg2.searchBestRate(address arg1, address arg2, uint256 arg3, bool arg4) with:
            gas gas_remaining wei
           args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(arg1), arg7, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        require arg7 <= 10000000000 * 10^18
        require ext_call.return_data[32] <= 1000000 * 10^18
        mem[(32 * arg4.length) + (32 * arg5.length) + 260 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
        require ext_code.size(arg3)
        staticcall arg3.getReturnByPath(address[] arg1, uint256 arg2) with:
                gas gas_remaining wei
               args Array(len=arg5.length, data=call.data[arg5 + 36 len floor32(arg5.length)], mem[(32 * arg4.length) + (32 * arg5.length) + floor32(arg5.length) + 260 len (32 * arg5.length) - floor32(arg5.length)]), ext_call.return_data[32] * arg7 / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[32] <= 0:
            revert with 0, 'e1'
        if ext_call.return_data[32] * arg7 / 10^18 <= 0:
            revert with 0, 'e1'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'e1'
        return ext_call.return_data[32] * arg7 / 10^18, ext_call.return_data[0]
    if stor0[address(arg1)]:
        require arg7 <= 10000000000 * 10^18
        require ext_call.return_data[32] <= 1000000 * 10^18
        if stor0[address(arg1)] >= 18:
            require stor0[address(arg1)] - 18 <= 18
            mem[(32 * arg4.length) + (32 * arg5.length) + 260 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
            require ext_code.size(arg3)
            staticcall arg3.getReturnByPath(address[] arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args Array(len=arg5.length, data=call.data[arg5 + 36 len floor32(arg5.length)], mem[(32 * arg4.length) + (32 * arg5.length) + floor32(arg5.length) + 260 len (32 * arg5.length) - floor32(arg5.length)]), 10^(stor0[address(arg1)] - 18) * ext_call.return_data[32] * arg7 / 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[32] <= 0:
                revert with 0, 'e1'
            if 10^(stor0[address(arg1)] - 18) * ext_call.return_data[32] * arg7 / 10^18 <= 0:
                revert with 0, 'e1'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'e1'
            return 10^(stor0[address(arg1)] - 18) * ext_call.return_data[32] * arg7 / 10^18, ext_call.return_data[0]
        require -stor0[address(arg1)] + 18 <= 18
        require 10^18 * 10^(-stor0[address(arg1)] + 18)
        mem[(32 * arg4.length) + (32 * arg5.length) + 260 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
        require ext_code.size(arg3)
        staticcall arg3.getReturnByPath(address[] arg1, uint256 arg2) with:
                gas gas_remaining wei
               args Array(len=arg5.length, data=call.data[arg5 + 36 len floor32(arg5.length)], mem[(32 * arg4.length) + (32 * arg5.length) + floor32(arg5.length) + 260 len (32 * arg5.length) - floor32(arg5.length)]), arg7 * ext_call.return_data[32] / 10^18 * 10^(-stor0[address(arg1)] + 18)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[32] <= 0:
            revert with 0, 'e1'
        if arg7 * ext_call.return_data[32] / 10^18 * 10^(-stor0[address(arg1)] + 18) <= 0:
            revert with 0, 'e1'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'e1'
        return arg7 * ext_call.return_data[32] / 10^18 * 10^(-stor0[address(arg1)] + 18), ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg7 <= 10000000000 * 10^18
    require ext_call.return_data[32] <= 1000000 * 10^18
    if ext_call.return_data[0] >= 18:
        require ext_call.return_data[0] - 18 <= 18
        mem[(32 * arg4.length) + (32 * arg5.length) + 260 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
        require ext_code.size(arg3)
        staticcall arg3.getReturnByPath(address[] arg1, uint256 arg2) with:
                gas gas_remaining wei
               args Array(len=arg5.length, data=call.data[arg5 + 36 len floor32(arg5.length)], mem[(32 * arg4.length) + (32 * arg5.length) + floor32(arg5.length) + 260 len (32 * arg5.length) - floor32(arg5.length)]), 10^(ext_call.return_data[0] - 18) * ext_call.return_data[32] * arg7 / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[32] <= 0:
            revert with 0, 'e1'
        if 10^(ext_call.return_data[0] - 18) * ext_call.return_data[32] * arg7 / 10^18 <= 0:
            revert with 0, 'e1'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'e1'
        return 10^(ext_call.return_data[0] - 18) * ext_call.return_data[32] * arg7 / 10^18, ext_call.return_data[0]
    require -ext_call.return_data[0] + 18 <= 18
    require 10^18 * 10^(-ext_call.return_data[0] + 18)
    mem[(32 * arg4.length) + (32 * arg5.length) + 260 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
    require ext_code.size(arg3)
    staticcall arg3.getReturnByPath(address[] arg1, uint256 arg2) with:
            gas gas_remaining wei
           args Array(len=arg5.length, data=call.data[arg5 + 36 len floor32(arg5.length)], mem[(32 * arg4.length) + (32 * arg5.length) + floor32(arg5.length) + 260 len (32 * arg5.length) - floor32(arg5.length)]), arg7 * ext_call.return_data[32] / 10^18 * 10^(-ext_call.return_data[0] + 18)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] <= 0:
        revert with 0, 'e1'
    if arg7 * ext_call.return_data[32] / 10^18 * 10^(-ext_call.return_data[0] + 18) <= 0:
        revert with 0, 'e1'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'e1'
    return arg7 * ext_call.return_data[32] / 10^18 * 10^(-ext_call.return_data[0] + 18), ext_call.return_data[0]
}

function sub_7b24e20d(?) payable {
    require calldata.size - 4 >= 320
    require cd[132] <= 4294967296
    require cd[132] + 36 <= calldata.size
    require ('cd', 132).length <= 4294967296 and cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] <= 4294967296
    require cd[164] + 36 <= calldata.size
    require ('cd', 164).length <= 4294967296 and cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    if cd[196]:
        mem[(32 * ('cd', 164).length) + (32 * ('cd', 132).length) + 708 len floor32(('cd', 132).length)] = call.data[cd[132] + 36 len floor32(('cd', 132).length)]
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).getReturnByPath(address[] arg1, uint256 arg2) with:
                gas gas_remaining wei
               args Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len floor32(('cd', 132).length)], mem[(32 * ('cd', 164).length) + (32 * ('cd', 132).length) + floor32(('cd', 132).length) + 708 len (32 * ('cd', 132).length) - floor32(('cd', 132).length)]), cd[228]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).searchBestRate(address arg1, address arg2, uint256 arg3, bool arg4) with:
                gas gas_remaining wei
               args address(cd[4]), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0], 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[4]):
            require ext_call.return_data[0] <= 10000000000 * 10^18
            require ext_call.return_data[32] <= 1000000 * 10^18
            if ext_call.return_data[32] <= 0:
                revert with 0, 'e1'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'e1'
            if ext_call.return_data[32] * ext_call.return_data[0] / 10^18 <= 0:
                revert with 0, 'e1'
            require cd[260] + cd[228] >= cd[228]
            if ext_call.return_data[32] * ext_call.return_data[0] / 10^18 < cd[260] + cd[228]:
                return cd[228], ext_call.return_data[0], ext_call.return_data[32] * ext_call.return_data[0] / 10^18, code.data[3996 len 128]
            if cd[196]:
                require 1 < ('cd', 132).length
                require ext_code.size(address(('cd', 132)[1]))
                staticcall address(('cd', 132)[1]).0x8da5cb5b with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                   value cd[228] wei
                     gas gas_remaining wei
                    args Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len floor32(('cd', 132).length)]), cd[228], 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(cd[4]))
                call address(cd[4]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(cd[68]))
                call address(cd[68]).swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(cd[4]), ext_call.return_data[0], 0
            else:
                require ext_code.size(address(cd[68]))
                call address(cd[68]).swapEtherToToken(address arg1, uint256 arg2) with:
                   value cd[228] wei
                     gas gas_remaining wei
                    args address(cd[4]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < ('cd', 164).length
                require ext_code.size(address(('cd', 164)[1]))
                staticcall address(('cd', 164)[1]).0x8da5cb5b with:
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
                    args Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len floor32(('cd', 164).length)]), ext_call.return_data[0], 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require cd[292] + eth.balance(this.address) >= eth.balance(this.address)
            if eth.balance(this.address) < cd[292] + eth.balance(this.address):
                revert with 0, 'e2'
            return cd[228], 
                   ext_call.return_data[0],
                   ext_call.return_data[32] * ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   eth.balance(this.address),
                   eth.balance(this.address)
        if stor0[address(cd[4])]:
            require ext_call.return_data[0] <= 10000000000 * 10^18
            require ext_call.return_data[32] <= 1000000 * 10^18
            if 18 >= stor0[address(cd[4])]:
                require -stor0[address(cd[4])] + 18 <= 18
                if ext_call.return_data[32] <= 0:
                    revert with 0, 'e1'
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'e1'
                if 10^(-stor0[address(cd[4])] + 18) * ext_call.return_data[32] * ext_call.return_data[0] / 10^18 <= 0:
                    revert with 0, 'e1'
                require cd[260] + cd[228] >= cd[228]
                if 10^(-stor0[address(cd[4])] + 18) * ext_call.return_data[32] * ext_call.return_data[0] / 10^18 < cd[260] + cd[228]:
                    return cd[228], 
                           ext_call.return_data[0],
                           10^(-stor0[address(cd[4])] + 18) * ext_call.return_data[32] * ext_call.return_data[0] / 10^18,
                           code.data[3996 len 128]
                if cd[196]:
                    require 1 < ('cd', 132).length
                    require ext_code.size(address(('cd', 132)[1]))
                    staticcall address(('cd', 132)[1]).0x8da5cb5b with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                       value cd[228] wei
                         gas gas_remaining wei
                        args Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len floor32(('cd', 132).length)]), cd[228], 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(cd[4]), ext_call.return_data[0], 0
                else:
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).swapEtherToToken(address arg1, uint256 arg2) with:
                       value cd[228] wei
                         gas gas_remaining wei
                        args address(cd[4]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 1 < ('cd', 164).length
                    require ext_code.size(address(('cd', 164)[1]))
                    staticcall address(('cd', 164)[1]).0x8da5cb5b with:
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
                        args Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len floor32(('cd', 164).length)]), ext_call.return_data[0], 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require cd[292] + eth.balance(this.address) >= eth.balance(this.address)
                if eth.balance(this.address) < cd[292] + eth.balance(this.address):
                    revert with 0, 'e2'
                return cd[228], 
                       ext_call.return_data[0],
                       10^(-stor0[address(cd[4])] + 18) * ext_call.return_data[32] * ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       eth.balance(this.address),
                       eth.balance(this.address)
            require stor0[address(cd[4])] - 18 <= 18
            require 10^18 * 10^(stor0[address(cd[4])] - 18)
            if ext_call.return_data[32] <= 0:
                revert with 0, 'e1'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'e1'
            if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * 10^(stor0[address(cd[4])] - 18) <= 0:
                revert with 0, 'e1'
            require cd[260] + cd[228] >= cd[228]
            if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * 10^(stor0[address(cd[4])] - 18) < cd[260] + cd[228]:
                return cd[228], 
                       ext_call.return_data[0],
                       ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * 10^(stor0[address(cd[4])] - 18),
                       code.data[3996 len 128]
            if cd[196]:
                require 1 < ('cd', 132).length
                require ext_code.size(address(('cd', 132)[1]))
                staticcall address(('cd', 132)[1]).0x8da5cb5b with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                   value cd[228] wei
                     gas gas_remaining wei
                    args Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len floor32(('cd', 132).length)]), cd[228], 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(cd[4]))
                call address(cd[4]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(cd[68]))
                call address(cd[68]).swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(cd[4]), ext_call.return_data[0], 0
            else:
                require ext_code.size(address(cd[68]))
                call address(cd[68]).swapEtherToToken(address arg1, uint256 arg2) with:
                   value cd[228] wei
                     gas gas_remaining wei
                    args address(cd[4]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < ('cd', 164).length
                require ext_code.size(address(('cd', 164)[1]))
                staticcall address(('cd', 164)[1]).0x8da5cb5b with:
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
                    args Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len floor32(('cd', 164).length)]), ext_call.return_data[0], 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require cd[292] + eth.balance(this.address) >= eth.balance(this.address)
            if eth.balance(this.address) < cd[292] + eth.balance(this.address):
                revert with 0, 'e2'
            return cd[228], 
                   ext_call.return_data[0],
                   ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * 10^(stor0[address(cd[4])] - 18),
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   eth.balance(this.address),
                   eth.balance(this.address)
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= 10000000000 * 10^18
        require ext_call.return_data[32] <= 1000000 * 10^18
        if 18 >= ext_call.return_data[0]:
            require -ext_call.return_data[0] + 18 <= 18
            if ext_call.return_data[32] <= 0:
                revert with 0, 'e1'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'e1'
            if 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[32] * ext_call.return_data[0] / 10^18 <= 0:
                revert with 0, 'e1'
            require cd[260] + cd[228] >= cd[228]
            if 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[32] * ext_call.return_data[0] / 10^18 < cd[260] + cd[228]:
                return cd[228], 
                       ext_call.return_data[0],
                       10^(-ext_call.return_data[0] + 18) * ext_call.return_data[32] * ext_call.return_data[0] / 10^18,
                       code.data[3996 len 128]
            if cd[196]:
                require 1 < ('cd', 132).length
                require ext_code.size(address(('cd', 132)[1]))
                staticcall address(('cd', 132)[1]).0x8da5cb5b with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                   value cd[228] wei
                     gas gas_remaining wei
                    args Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len floor32(('cd', 132).length)]), cd[228], 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(cd[4]))
                call address(cd[4]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(cd[68]))
                call address(cd[68]).swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(cd[4]), ext_call.return_data[0], 0
            else:
                require ext_code.size(address(cd[68]))
                call address(cd[68]).swapEtherToToken(address arg1, uint256 arg2) with:
                   value cd[228] wei
                     gas gas_remaining wei
                    args address(cd[4]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < ('cd', 164).length
                require ext_code.size(address(('cd', 164)[1]))
                staticcall address(('cd', 164)[1]).0x8da5cb5b with:
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
                    args Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len floor32(('cd', 164).length)]), ext_call.return_data[0], 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require cd[292] + eth.balance(this.address) >= eth.balance(this.address)
            if eth.balance(this.address) < cd[292] + eth.balance(this.address):
                revert with 0, 'e2'
            return cd[228], 
                   ext_call.return_data[0],
                   10^(-ext_call.return_data[0] + 18) * ext_call.return_data[32] * ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   eth.balance(this.address),
                   eth.balance(this.address)
        require ext_call.return_data[0] - 18 <= 18
        require 10^18 * 10^(ext_call.return_data[0] - 18)
        if ext_call.return_data[32] <= 0:
            revert with 0, 'e1'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'e1'
        if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * 10^(ext_call.return_data[0] - 18) <= 0:
            revert with 0, 'e1'
        require cd[260] + cd[228] >= cd[228]
        if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * 10^(ext_call.return_data[0] - 18) < cd[260] + cd[228]:
            return cd[228], 
                   ext_call.return_data[0],
                   ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * 10^(ext_call.return_data[0] - 18),
                   code.data[3996 len 128]
        if cd[196]:
            require 1 < ('cd', 132).length
            require ext_code.size(address(('cd', 132)[1]))
            staticcall address(('cd', 132)[1]).0x8da5cb5b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
               value cd[228] wei
                 gas gas_remaining wei
                args Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len floor32(('cd', 132).length)]), cd[228], 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[4]))
            call address(cd[4]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[68]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[68]))
            call address(cd[68]).swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(cd[4]), ext_call.return_data[0], 0
        else:
            require ext_code.size(address(cd[68]))
            call address(cd[68]).swapEtherToToken(address arg1, uint256 arg2) with:
               value cd[228] wei
                 gas gas_remaining wei
                args address(cd[4]), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 < ('cd', 164).length
            require ext_code.size(address(('cd', 164)[1]))
            staticcall address(('cd', 164)[1]).0x8da5cb5b with:
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
                args Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len floor32(('cd', 164).length)]), ext_call.return_data[0], 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require cd[292] + eth.balance(this.address) >= eth.balance(this.address)
        if eth.balance(this.address) < cd[292] + eth.balance(this.address):
            revert with 0, 'e2'
        return cd[228], 
               ext_call.return_data[0],
               ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * 10^(ext_call.return_data[0] - 18),
               ext_call.return_data[0],
               ext_call.return_data[0],
               eth.balance(this.address),
               eth.balance(this.address)
    mem[(32 * ('cd', 164).length) + (32 * ('cd', 132).length) + 708] = 1
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).searchBestRate(address arg1, address arg2, uint256 arg3, bool arg4) with:
            gas gas_remaining wei
           args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(cd[4]), cd[228], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[4]):
        require cd[228] <= 10000000000 * 10^18
        require ext_call.return_data[32] <= 1000000 * 10^18
        mem[(32 * ('cd', 164).length) + (32 * ('cd', 132).length) + 708 len floor32(('cd', 164).length)] = call.data[cd[164] + 36 len floor32(('cd', 164).length)]
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).getReturnByPath(address[] arg1, uint256 arg2) with:
                gas gas_remaining wei
               args Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len floor32(('cd', 164).length)], mem[(32 * ('cd', 164).length) + (32 * ('cd', 132).length) + floor32(('cd', 164).length) + 708 len (32 * ('cd', 164).length) - floor32(('cd', 164).length)]), ext_call.return_data[32] * cd[228] / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[32] <= 0:
            revert with 0, 'e1'
        if ext_call.return_data[32] * cd[228] / 10^18 <= 0:
            revert with 0, 'e1'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'e1'
        require cd[260] + cd[228] >= cd[228]
        if ext_call.return_data[0] < cd[260] + cd[228]:
            return cd[228], ext_call.return_data[32] * cd[228] / 10^18, ext_call.return_data[0], code.data[3996 len 128]
        if cd[196]:
            require 1 < ('cd', 132).length
            require ext_code.size(address(('cd', 132)[1]))
            staticcall address(('cd', 132)[1]).0x8da5cb5b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
               value cd[228] wei
                 gas gas_remaining wei
                args Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len floor32(('cd', 132).length)]), cd[228], 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[4]))
            call address(cd[4]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[68]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[68]))
            call address(cd[68]).swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(cd[4]), ext_call.return_data[0], 0
        else:
            require ext_code.size(address(cd[68]))
            call address(cd[68]).swapEtherToToken(address arg1, uint256 arg2) with:
               value cd[228] wei
                 gas gas_remaining wei
                args address(cd[4]), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 < ('cd', 164).length
            require ext_code.size(address(('cd', 164)[1]))
            staticcall address(('cd', 164)[1]).0x8da5cb5b with:
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
                args Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len floor32(('cd', 164).length)]), ext_call.return_data[0], 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require cd[292] + eth.balance(this.address) >= eth.balance(this.address)
        if eth.balance(this.address) < cd[292] + eth.balance(this.address):
            revert with 0, 'e2'
        return cd[228], 
               ext_call.return_data[32] * cd[228] / 10^18,
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               eth.balance(this.address),
               eth.balance(this.address)
    if stor0[address(cd[4])]:
        require cd[228] <= 10000000000 * 10^18
        require ext_call.return_data[32] <= 1000000 * 10^18
        if stor0[address(cd[4])] >= 18:
            require stor0[address(cd[4])] - 18 <= 18
            mem[(32 * ('cd', 164).length) + (32 * ('cd', 132).length) + 708 len floor32(('cd', 164).length)] = call.data[cd[164] + 36 len floor32(('cd', 164).length)]
            require ext_code.size(address(cd[100]))
            staticcall address(cd[100]).getReturnByPath(address[] arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len floor32(('cd', 164).length)], mem[(32 * ('cd', 164).length) + (32 * ('cd', 132).length) + floor32(('cd', 164).length) + 708 len (32 * ('cd', 164).length) - floor32(('cd', 164).length)]), 10^(stor0[address(cd[4])] - 18) * ext_call.return_data[32] * cd[228] / 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[32] <= 0:
                revert with 0, 'e1'
            if 10^(stor0[address(cd[4])] - 18) * ext_call.return_data[32] * cd[228] / 10^18 <= 0:
                revert with 0, 'e1'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'e1'
            require cd[260] + cd[228] >= cd[228]
            if ext_call.return_data[0] < cd[260] + cd[228]:
                return cd[228], 
                       10^(stor0[address(cd[4])] - 18) * ext_call.return_data[32] * cd[228] / 10^18,
                       ext_call.return_data[0],
                       code.data[3996 len 128]
            if cd[196]:
                require 1 < ('cd', 132).length
                require ext_code.size(address(('cd', 132)[1]))
                staticcall address(('cd', 132)[1]).0x8da5cb5b with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                   value cd[228] wei
                     gas gas_remaining wei
                    args Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len floor32(('cd', 132).length)]), cd[228], 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(cd[4]))
                call address(cd[4]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(cd[68]))
                call address(cd[68]).swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(cd[4]), ext_call.return_data[0], 0
            else:
                require ext_code.size(address(cd[68]))
                call address(cd[68]).swapEtherToToken(address arg1, uint256 arg2) with:
                   value cd[228] wei
                     gas gas_remaining wei
                    args address(cd[4]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < ('cd', 164).length
                require ext_code.size(address(('cd', 164)[1]))
                staticcall address(('cd', 164)[1]).0x8da5cb5b with:
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
                    args Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len floor32(('cd', 164).length)]), ext_call.return_data[0], 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require cd[292] + eth.balance(this.address) >= eth.balance(this.address)
            if eth.balance(this.address) < cd[292] + eth.balance(this.address):
                revert with 0, 'e2'
            return cd[228], 
                   10^(stor0[address(cd[4])] - 18) * ext_call.return_data[32] * cd[228] / 10^18,
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   eth.balance(this.address),
                   eth.balance(this.address)
        require -stor0[address(cd[4])] + 18 <= 18
        require 10^18 * 10^(-stor0[address(cd[4])] + 18)
        mem[(32 * ('cd', 164).length) + (32 * ('cd', 132).length) + 708 len floor32(('cd', 164).length)] = call.data[cd[164] + 36 len floor32(('cd', 164).length)]
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).getReturnByPath(address[] arg1, uint256 arg2) with:
                gas gas_remaining wei
               args Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len floor32(('cd', 164).length)], mem[(32 * ('cd', 164).length) + (32 * ('cd', 132).length) + floor32(('cd', 164).length) + 708 len (32 * ('cd', 164).length) - floor32(('cd', 164).length)]), cd[228] * ext_call.return_data[32] / 10^18 * 10^(-stor0[address(cd[4])] + 18)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[32] <= 0:
            revert with 0, 'e1'
        if cd[228] * ext_call.return_data[32] / 10^18 * 10^(-stor0[address(cd[4])] + 18) <= 0:
            revert with 0, 'e1'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'e1'
        require cd[260] + cd[228] >= cd[228]
        if ext_call.return_data[0] < cd[260] + cd[228]:
            return cd[228], 
                   cd[228] * ext_call.return_data[32] / 10^18 * 10^(-stor0[address(cd[4])] + 18),
                   ext_call.return_data[0],
                   code.data[3996 len 128]
        if cd[196]:
            require 1 < ('cd', 132).length
            require ext_code.size(address(('cd', 132)[1]))
            staticcall address(('cd', 132)[1]).0x8da5cb5b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
               value cd[228] wei
                 gas gas_remaining wei
                args Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len floor32(('cd', 132).length)]), cd[228], 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[4]))
            call address(cd[4]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[68]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[68]))
            call address(cd[68]).swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(cd[4]), ext_call.return_data[0], 0
        else:
            require ext_code.size(address(cd[68]))
            call address(cd[68]).swapEtherToToken(address arg1, uint256 arg2) with:
               value cd[228] wei
                 gas gas_remaining wei
                args address(cd[4]), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 < ('cd', 164).length
            require ext_code.size(address(('cd', 164)[1]))
            staticcall address(('cd', 164)[1]).0x8da5cb5b with:
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
                args Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len floor32(('cd', 164).length)]), ext_call.return_data[0], 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require cd[292] + eth.balance(this.address) >= eth.balance(this.address)
        if eth.balance(this.address) < cd[292] + eth.balance(this.address):
            revert with 0, 'e2'
        return cd[228], 
               cd[228] * ext_call.return_data[32] / 10^18 * 10^(-stor0[address(cd[4])] + 18),
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               eth.balance(this.address),
               eth.balance(this.address)
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require cd[228] <= 10000000000 * 10^18
    require ext_call.return_data[32] <= 1000000 * 10^18
    if ext_call.return_data[0] >= 18:
        require ext_call.return_data[0] - 18 <= 18
        mem[(32 * ('cd', 164).length) + (32 * ('cd', 132).length) + 708 len floor32(('cd', 164).length)] = call.data[cd[164] + 36 len floor32(('cd', 164).length)]
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).getReturnByPath(address[] arg1, uint256 arg2) with:
                gas gas_remaining wei
               args Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len floor32(('cd', 164).length)], mem[(32 * ('cd', 164).length) + (32 * ('cd', 132).length) + floor32(('cd', 164).length) + 708 len (32 * ('cd', 164).length) - floor32(('cd', 164).length)]), 10^(ext_call.return_data[0] - 18) * ext_call.return_data[32] * cd[228] / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[32] <= 0:
            revert with 0, 'e1'
        if 10^(ext_call.return_data[0] - 18) * ext_call.return_data[32] * cd[228] / 10^18 <= 0:
            revert with 0, 'e1'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'e1'
        require cd[260] + cd[228] >= cd[228]
        if ext_call.return_data[0] < cd[260] + cd[228]:
            return cd[228], 
                   10^(ext_call.return_data[0] - 18) * ext_call.return_data[32] * cd[228] / 10^18,
                   ext_call.return_data[0],
                   code.data[3996 len 128]
        if cd[196]:
            require 1 < ('cd', 132).length
            require ext_code.size(address(('cd', 132)[1]))
            staticcall address(('cd', 132)[1]).0x8da5cb5b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
               value cd[228] wei
                 gas gas_remaining wei
                args Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len floor32(('cd', 132).length)]), cd[228], 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[4]))
            call address(cd[4]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[68]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[68]))
            call address(cd[68]).swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(cd[4]), ext_call.return_data[0], 0
        else:
            require ext_code.size(address(cd[68]))
            call address(cd[68]).swapEtherToToken(address arg1, uint256 arg2) with:
               value cd[228] wei
                 gas gas_remaining wei
                args address(cd[4]), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 < ('cd', 164).length
            require ext_code.size(address(('cd', 164)[1]))
            staticcall address(('cd', 164)[1]).0x8da5cb5b with:
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
                args Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len floor32(('cd', 164).length)]), ext_call.return_data[0], 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require cd[292] + eth.balance(this.address) >= eth.balance(this.address)
        if eth.balance(this.address) < cd[292] + eth.balance(this.address):
            revert with 0, 'e2'
        return cd[228], 
               10^(ext_call.return_data[0] - 18) * ext_call.return_data[32] * cd[228] / 10^18,
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               eth.balance(this.address),
               eth.balance(this.address)
    require -ext_call.return_data[0] + 18 <= 18
    require 10^18 * 10^(-ext_call.return_data[0] + 18)
    mem[(32 * ('cd', 164).length) + (32 * ('cd', 132).length) + 708 len floor32(('cd', 164).length)] = call.data[cd[164] + 36 len floor32(('cd', 164).length)]
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).getReturnByPath(address[] arg1, uint256 arg2) with:
            gas gas_remaining wei
           args Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len floor32(('cd', 164).length)], mem[(32 * ('cd', 164).length) + (32 * ('cd', 132).length) + floor32(('cd', 164).length) + 708 len (32 * ('cd', 164).length) - floor32(('cd', 164).length)]), cd[228] * ext_call.return_data[32] / 10^18 * 10^(-ext_call.return_data[0] + 18)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] <= 0:
        revert with 0, 'e1'
    if cd[228] * ext_call.return_data[32] / 10^18 * 10^(-ext_call.return_data[0] + 18) <= 0:
        revert with 0, 'e1'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'e1'
    require cd[260] + cd[228] >= cd[228]
    if ext_call.return_data[0] < cd[260] + cd[228]:
        return cd[228], 
               cd[228] * ext_call.return_data[32] / 10^18 * 10^(-ext_call.return_data[0] + 18),
               ext_call.return_data[0],
               code.data[3996 len 128]
    if cd[196]:
        require 1 < ('cd', 132).length
        require ext_code.size(address(('cd', 132)[1]))
        staticcall address(('cd', 132)[1]).0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
           value cd[228] wei
             gas gas_remaining wei
            args Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len floor32(('cd', 132).length)]), cd[228], 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[4]))
        call address(cd[4]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[68]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[68]))
        call address(cd[68]).swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(cd[4]), ext_call.return_data[0], 0
    else:
        require ext_code.size(address(cd[68]))
        call address(cd[68]).swapEtherToToken(address arg1, uint256 arg2) with:
           value cd[228] wei
             gas gas_remaining wei
            args address(cd[4]), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 1 < ('cd', 164).length
        require ext_code.size(address(('cd', 164)[1]))
        staticcall address(('cd', 164)[1]).0x8da5cb5b with:
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
            args Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len floor32(('cd', 164).length)]), ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require cd[292] + eth.balance(this.address) >= eth.balance(this.address)
    if eth.balance(this.address) < cd[292] + eth.balance(this.address):
        revert with 0, 'e2'
    return cd[228], 
           cd[228] * ext_call.return_data[32] / 10^18 * 10^(-ext_call.return_data[0] + 18),
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           eth.balance(this.address),
           eth.balance(this.address)
}



}
