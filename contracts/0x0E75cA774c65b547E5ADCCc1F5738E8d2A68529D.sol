contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address stor1;
uint256 stor5;
address stor6;
uint256 stor7;
uint256 stor8;
address stor9;

function _fallback() payable {
    revert
}

function checkApproval(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg2)
    staticcall arg2.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_e2129205(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        _13 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = stor0
        require ext_code.size(address(_13))
        call address(_13).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + (32 * arg2.length) + 164], stor0
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function sub_799e5765(?) payable {
    require calldata.size - 4 >= 448
    if 'uniswap' == arg1:
        call arg2 with:
           value msg.value wei
             gas 100000 wei
    else:
        if 'bancor' == arg1:
            require ext_code.size(arg2)
            call arg2.convert(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args stor1, address(arg3), msg.value, stor5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        else:
            if arg1 != 'kyber':
                if 'forkdelta' == arg1:
                    require ext_code.size(arg2)
                    call arg2.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                         gas gas_remaining wei
                        args stor1, call.data[196], address(arg3), msg.value, call.data[228], call.data[260], address(call.data[356]), call.data[324] << 248, call.data[388], call.data[420], call.data[292]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(arg2)
                call arg2.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                     gas gas_remaining wei
                    args stor6, msg.value, address(arg3), this.address, stor7, stor8, stor9
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
}



}
