contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 stor2;
mapping of address stor3;
mapping of address stor4;
address stor5;
address stor6;
array of struct stor7;

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawEth(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_8fc8617f(?) payable {
    require calldata.size - 4 >= 192
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 128] = arg5.length
    mem[ceil32(arg3.length) + 160 len arg5.length] = arg5[all]
    mem[ceil32(arg3.length) + arg5.length + 160] = 0
    require msg.sender == owner
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 160] = stor7[0].length
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 192] = stor7[0].field_0
    idx = ceil32(arg3.length) + ceil32(arg5.length) + 192
    s = 0
    while ceil32(arg3.length) + ceil32(arg5.length) + stor7[0].length + 160 > idx:
        mem[idx + 32] = stor7[0][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sha3(arg3[all]) == sha3(mem[ceil32(arg3.length) + ceil32(arg5.length) + 192 len 0, Mask(216, 0, stor7[0].length)]):
        if arg2 == stor1:
            mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + 228] = 0
            require ext_code.size(stor5)
            call stor5.swapEtherToToken(address arg1, uint256 arg2) with:
               value arg1 wei
                 gas gas_remaining wei
                args address(arg4), 0
        else:
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor6, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor6, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + 228] = arg1
            if arg4 == stor1:
                mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + 260] = 0
                require ext_code.size(stor5)
                call stor5.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(arg2), arg1, 0
            else:
                mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + 260] = arg4
                mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + 292] = 0
                require ext_code.size(stor5)
                call stor5.swapTokenToToken(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args address(arg2), arg1, address(arg4), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= 0
        mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + 192] = stor7['kyber'].length
        mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + 224] = stor7['kyber'].field_0
        idx = ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + 224
        s = 0
        while ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + stor7['kyber'].length + 192 > idx:
            mem[idx + 32] = stor7['kyber'][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]) == sha3(mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + 224 len stor7['kyber'].length]):
            if arg4 == stor1:
                require ext_code.size(stor5)
                call stor5.swapEtherToToken(address arg1, uint256 arg2) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                    args address(arg2), 0
            else:
                require ext_code.size(arg4)
                call arg4.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(arg4)
                call arg4.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(stor5)
                if arg2 != stor1:
                    call stor5.swapTokenToToken(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args address(arg4), ext_call.return_data[0], address(arg2), 0
                else:
                    call stor5.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg4), ext_call.return_data[0], 0
        else:
            mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + ceil32(stor7['kyber'].length) + 224] = stor7['uniswap'].length
            mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + ceil32(stor7['kyber'].length) + 256] = stor7['uniswap'].field_0
            idx = ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + ceil32(stor7['kyber'].length) + 256
            s = 0
            while ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + ceil32(stor7['kyber'].length) + stor7['uniswap'].length + 224 > idx:
                mem[idx + 32] = stor7['uniswap'][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]) != sha3(mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + ceil32(stor7['kyber'].length) + 256 len stor7['uniswap'].length]):
                require ext_call.return_data[0] >= arg6
                return ext_call.return_data[0]
            require block.timestamp + stor2 >= block.timestamp
            if arg4 == stor1:
                require ext_code.size(stor3[address(arg2)])
                call stor3[address(arg2)].ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                    args 1, block.timestamp + stor2
            else:
                require ext_code.size(arg4)
                call arg4.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4[address(arg4)], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(arg4)
                call arg4.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4[address(arg4)], ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(stor3[address(arg4)])
                if arg2 != stor1:
                    call stor3[address(arg4)].tokenToTokenSwapInput(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 1, 1, block.timestamp + stor2, arg2
                else:
                    call stor3[address(arg4)].tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 1, block.timestamp + stor2
    else:
        mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + 192] = stor7['uniswap'].length
        mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + 224] = stor7['uniswap'].field_0
        idx = ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + 224
        s = 0
        while ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + stor7['uniswap'].length + 192 > idx:
            mem[idx + 32] = stor7['uniswap'][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if sha3(arg3[all]) != sha3(mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + 224 len stor7['uniswap'].length]):
            mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + ceil32(stor7['uniswap'].length) + 224] = stor7['kyber'].length
            mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + ceil32(stor7['uniswap'].length) + 256] = stor7['kyber'].field_0
            idx = ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + ceil32(stor7['uniswap'].length) + 256
            s = 0
            while ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + ceil32(stor7['uniswap'].length) + stor7['kyber'].length + 224 > idx:
                mem[idx + 32] = stor7['kyber'][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]) == sha3(mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + ceil32(stor7['uniswap'].length) + 256 len stor7['kyber'].length]):
                if arg4 == stor1:
                    require ext_code.size(stor5)
                    call stor5.swapEtherToToken(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), 0
                else:
                    require ext_code.size(arg4)
                    call arg4.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor6, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(arg4)
                    call arg4.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor6, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(stor5)
                    if arg2 != stor1:
                        call stor5.swapTokenToToken(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args address(arg4), 0, address(arg2), 0
                    else:
                        call stor5.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg4), 0, 0
            else:
                mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + ceil32(stor7['uniswap'].length) + ceil32(stor7['kyber'].length) + 256] = stor7['uniswap'].length
                mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + ceil32(stor7['uniswap'].length) + ceil32(stor7['kyber'].length) + 288] = stor7['uniswap'].field_0
                idx = ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + ceil32(stor7['uniswap'].length) + ceil32(stor7['kyber'].length) + 288
                s = 0
                while ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + ceil32(stor7['uniswap'].length) + ceil32(stor7['kyber'].length) + stor7['uniswap'].length + 256 > idx:
                    mem[idx + 32] = stor7['uniswap'][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]) != sha3(mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + ceil32(stor7['uniswap'].length) + ceil32(stor7['kyber'].length) + 288 len stor7['uniswap'].length]):
                    require 0 >= arg6
                    return 0
                require block.timestamp + stor2 >= block.timestamp
                if arg4 == stor1:
                    require ext_code.size(stor3[address(arg2)])
                    call stor3[address(arg2)].ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 1, block.timestamp + stor2
                else:
                    require ext_code.size(arg4)
                    call arg4.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor4[address(arg4)], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(arg4)
                    call arg4.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor4[address(arg4)], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(stor3[address(arg4)])
                    if arg2 != stor1:
                        call stor3[address(arg4)].tokenToTokenSwapInput(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                             gas gas_remaining wei
                            args 0, 1, 1, block.timestamp + stor2, arg2
                    else:
                        call stor3[address(arg4)].tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 0, 1, block.timestamp + stor2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= 0
            require ext_call.return_data[0] >= arg6
            return ext_call.return_data[0]
        require block.timestamp + stor2 >= block.timestamp
        if arg2 == stor1:
            mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + ceil32(stor7['uniswap'].length) + 260] = block.timestamp + stor2
            require ext_code.size(stor3[address(arg4)])
            call stor3[address(arg4)].ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
               value arg1 wei
                 gas gas_remaining wei
                args 1, block.timestamp + stor2
        else:
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor4[address(arg2)], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor4[address(arg2)], arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + ceil32(stor7['uniswap'].length) + 260] = 1
            if arg4 == stor1:
                mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + ceil32(stor7['uniswap'].length) + 292] = block.timestamp + stor2
                require ext_code.size(stor3[address(arg2)])
                call stor3[address(arg2)].tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args arg1, 1, block.timestamp + stor2
            else:
                mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + ceil32(stor7['uniswap'].length) + 292] = 1
                mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + ceil32(stor7['uniswap'].length) + 324] = block.timestamp + stor2
                mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + ceil32(stor7['uniswap'].length) + 356] = arg4
                require ext_code.size(stor3[address(arg2)])
                call stor3[address(arg2)].tokenToTokenSwapInput(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                     gas gas_remaining wei
                    args arg1, 1, 1, block.timestamp + stor2, arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= 0
        mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + ceil32(stor7['uniswap'].length) + 224] = stor7['kyber'].length
        mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + ceil32(stor7['uniswap'].length) + 256] = stor7['kyber'].field_0
        idx = ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + ceil32(stor7['uniswap'].length) + 256
        s = 0
        while ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + ceil32(stor7['uniswap'].length) + stor7['kyber'].length + 224 > idx:
            mem[idx + 32] = stor7['kyber'][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]) == sha3(mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + ceil32(stor7['uniswap'].length) + 256 len stor7['kyber'].length]):
            if arg4 == stor1:
                require ext_code.size(stor5)
                call stor5.swapEtherToToken(address arg1, uint256 arg2) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                    args address(arg2), 0
            else:
                require ext_code.size(arg4)
                call arg4.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(arg4)
                call arg4.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(stor5)
                if arg2 != stor1:
                    call stor5.swapTokenToToken(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args address(arg4), ext_call.return_data[0], address(arg2), 0
                else:
                    call stor5.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg4), ext_call.return_data[0], 0
        else:
            mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + ceil32(stor7['uniswap'].length) + ceil32(stor7['kyber'].length) + 256] = stor7['uniswap'].length
            mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + ceil32(stor7['uniswap'].length) + ceil32(stor7['kyber'].length) + 288] = stor7['uniswap'].field_0
            idx = ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + ceil32(stor7['uniswap'].length) + ceil32(stor7['kyber'].length) + 288
            s = 0
            while ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + ceil32(stor7['uniswap'].length) + ceil32(stor7['kyber'].length) + stor7['uniswap'].length + 256 > idx:
                mem[idx + 32] = stor7['uniswap'][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]) != sha3(mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(stor7[0].length) + ceil32(stor7['uniswap'].length) + ceil32(stor7['kyber'].length) + 288 len stor7['uniswap'].length]):
                require ext_call.return_data[0] >= arg6
                return ext_call.return_data[0]
            require block.timestamp + stor2 >= block.timestamp
            if arg4 == stor1:
                require ext_code.size(stor3[address(arg2)])
                call stor3[address(arg2)].ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                    args 1, block.timestamp + stor2
            else:
                require ext_code.size(arg4)
                call arg4.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4[address(arg4)], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(arg4)
                call arg4.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4[address(arg4)], ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(stor3[address(arg4)])
                if arg2 != stor1:
                    call stor3[address(arg4)].tokenToTokenSwapInput(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 1, 1, block.timestamp + stor2, arg2
                else:
                    call stor3[address(arg4)].tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 1, block.timestamp + stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    require 2 * ext_call.return_data[0] >= arg6
    return (2 * ext_call.return_data[0])
}



}
