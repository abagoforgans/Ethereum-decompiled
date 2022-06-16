contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;

function depositX() payable {
  stop
}

function _fallback() payable {
  stop
}

function sub_cfcaa498(?) {
    require 0xb3e20b057cbf2c0d9d099bac6772af0c948c6a == msg.sender
    stor0[address(arg1)] = 1
}

function sub_5781aa86(?) {
    if msg.sender != 0xed7ce3de532213314bb07622d8bf606a4ba03cf1:
        if msg.sender != 0xe185e2ab092e8a046cbb815174d9d6aae1c91d9a:
            if msg.sender != 0x44dba507b909a6f92f3a708a844d4c4f23622bee:
                if not stor0[msg.sender]:
                    require 0xb3e20b057cbf2c0d9d099bac6772af0c948c6a == msg.sender
    call 0x00b3e20b057cbf2c0d9d099bac6772af0c948c6a with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_92379af7(?) {
    if msg.sender != 0xed7ce3de532213314bb07622d8bf606a4ba03cf1:
        if msg.sender != 0xe185e2ab092e8a046cbb815174d9d6aae1c91d9a:
            if msg.sender != 0x44dba507b909a6f92f3a708a844d4c4f23622bee:
                if not stor0[msg.sender]:
                    require 0xb3e20b057cbf2c0d9d099bac6772af0c948c6a == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args 0xb3e20b057cbf2c0d9d099bac6772af0c948c6a, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_6bbc0545(?) {
    if msg.sender != 0xed7ce3de532213314bb07622d8bf606a4ba03cf1:
        if msg.sender != 0xe185e2ab092e8a046cbb815174d9d6aae1c91d9a:
            if msg.sender != 0x44dba507b909a6f92f3a708a844d4c4f23622bee:
                if not stor0[msg.sender]:
                    require 0xb3e20b057cbf2c0d9d099bac6772af0c948c6a == msg.sender
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function sub_ed2969f3(?) {
    if msg.sender != 0xed7ce3de532213314bb07622d8bf606a4ba03cf1:
        if msg.sender != 0xe185e2ab092e8a046cbb815174d9d6aae1c91d9a:
            if msg.sender != 0x44dba507b909a6f92f3a708a844d4c4f23622bee:
                if not stor0[msg.sender]:
                    require 0xb3e20b057cbf2c0d9d099bac6772af0c948c6a == msg.sender
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function sub_90b7cc6f(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if msg.sender != 0xed7ce3de532213314bb07622d8bf606a4ba03cf1:
        if msg.sender != 0xe185e2ab092e8a046cbb815174d9d6aae1c91d9a:
            if msg.sender != 0x44dba507b909a6f92f3a708a844d4c4f23622bee:
                if not stor0[msg.sender]:
                    require 0xb3e20b057cbf2c0d9d099bac6772af0c948c6a == msg.sender
    require arg1.length - 1 < arg1.length
    if not arg5:
        require ext_code.size(mem[(32 * arg1.length - 1) + 140 len 20])
        call mem[(32 * arg1.length - 1) + 140 len 20].0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= arg6:
            return 0
    else:
        require ext_code.size(arg5)
        call arg5.getConnectorBalance(address arg1) with:
             gas gas_remaining wei
            args mem[(32 * arg1.length - 1) + 140 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= arg6:
            return 0
    if block.number > arg7:
        return 0
    if arg8 > 0:
        require ext_code.size(0xf23afaf9624bd66a11a8a6b906f6a061ab587fb8)
        call 0xf23afaf9624bd66a11a8a6b906f6a061ab587fb8.refund(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg8, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(arg4)
    call arg4.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_45b65046(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if msg.sender != 0xed7ce3de532213314bb07622d8bf606a4ba03cf1:
        if msg.sender != 0xe185e2ab092e8a046cbb815174d9d6aae1c91d9a:
            if msg.sender != 0x44dba507b909a6f92f3a708a844d4c4f23622bee:
                if not stor0[msg.sender]:
                    require 0xb3e20b057cbf2c0d9d099bac6772af0c948c6a == msg.sender
    require 0 < arg1.length
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(mem[140 len 20])
    if arg3:
        call mem[140 len 20].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    call mem[140 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg4), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg5 > 0:
        require ext_code.size(0xf23afaf9624bd66a11a8a6b906f6a061ab587fb8)
        call 0xf23afaf9624bd66a11a8a6b906f6a061ab587fb8.refund(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg5, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(arg4)
    call arg4.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), ext_call.return_data[0], arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_efbd869f(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if msg.sender != 0xed7ce3de532213314bb07622d8bf606a4ba03cf1:
        if msg.sender != 0xe185e2ab092e8a046cbb815174d9d6aae1c91d9a:
            if msg.sender != 0x44dba507b909a6f92f3a708a844d4c4f23622bee:
                if not stor0[msg.sender]:
                    require 0xb3e20b057cbf2c0d9d099bac6772af0c948c6a == msg.sender
    require arg1.length - 1 < arg1.length
    if not arg5:
        require ext_code.size(mem[(32 * arg1.length - 1) + 140 len 20])
        call mem[(32 * arg1.length - 1) + 140 len 20].0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= arg6:
            return 0
    else:
        require ext_code.size(arg5)
        call arg5.getConnectorBalance(address arg1) with:
             gas gas_remaining wei
            args mem[(32 * arg1.length - 1) + 140 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= arg6:
            return 0
    if block.number > arg7:
        return 0
    if arg8 > 0:
        require ext_code.size(0xf23afaf9624bd66a11a8a6b906f6a061ab587fb8)
        call 0xf23afaf9624bd66a11a8a6b906f6a061ab587fb8.refund(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg8, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + 388 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(arg4)
    call arg4.quickConvertPrioritized(address[] arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 388 len (32 * arg1.length) - floor32(arg1.length)]), arg2, arg3, arg9, arg10 << 248, arg11, arg12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_85d1f8fb(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if msg.sender != 0xed7ce3de532213314bb07622d8bf606a4ba03cf1:
        if msg.sender != 0xe185e2ab092e8a046cbb815174d9d6aae1c91d9a:
            if msg.sender != 0x44dba507b909a6f92f3a708a844d4c4f23622bee:
                if not stor0[msg.sender]:
                    require 0xb3e20b057cbf2c0d9d099bac6772af0c948c6a == msg.sender
    require 0 < arg1.length
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(mem[140 len 20])
    if arg3:
        call mem[140 len 20].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    call mem[140 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg4), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg5 > 0:
        require ext_code.size(0xf23afaf9624bd66a11a8a6b906f6a061ab587fb8)
        call 0xf23afaf9624bd66a11a8a6b906f6a061ab587fb8.refund(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg5, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + 388 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(arg4)
    call arg4.quickConvertPrioritized(address[] arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 388 len (32 * arg1.length) - floor32(arg1.length)]), ext_call.return_data[0], arg2, arg6, arg7 << 248, arg8, arg9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
