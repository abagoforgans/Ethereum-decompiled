contract main {


// =======================  Init code  ======================


address stor1;
address stor4;
address stor5;
address stor6;
address stor7;
address stor8;

function _fallback() payable {
    stor1 = msg.sender
    stor4 = 0x6690819cb98c1211a8e38790d6cd48316ed518db
    stor5 = 0xcbc6a023eb975a1e2630223a7959988948e664f3
    stor6 = 0x3839416bd0095d97be9b354cbfb0f6807d4d609e
    stor7 = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315
    stor8 = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
    require not msg.value
    return code.data[520 len 19606]
}



// =====================  Runtime code  =====================


#
#  - sub_636387ec(?)
#
const sub_52651c3a(?) = 0

const sub_674c7167(?) = ''

const sub_a34de41d(?) = ''

const sub_d42adb91(?) = 0


address sub_53b8cb76Address;
address stor1;
address stor2;
mapping of uint8 stor3;
address stor4;
address stor5;
address stor6;
address stor7;
address stor8;

function sub_53b8cb76(?) {
    return sub_53b8cb76Address
}

function _fallback() payable {
  stop
}

function sub_28474cdc(?) {
    require msg.sender == stor1
    stor4 = arg1
}

function sub_6ad419a8(?) {
    require msg.sender == stor1
    stor7 = arg1
}

function sub_97a93504(?) {
    require msg.sender == stor1
    stor5 = arg1
}

function sub_e46e3cf4(?) {
    require msg.sender == stor1
    stor8 = arg1
}

function sub_eb3eb261(?) {
    require msg.sender == stor1
    stor6 = arg1
}

function sub_ed15553b(?) {
    require msg.sender == stor1
    stor2 = arg1
}

function sub_747756ca(?) {
    require msg.sender == stor1
    stor3[address(arg1)] = 0
}

function sub_df1d5c8e(?) {
    require msg.sender == stor1
    stor3[address(arg1)] = 1
}

function sub_e26058df(?) {
    require msg.sender == stor1
    call stor1 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_3cf6697d(?) {
    require msg.sender == stor1
    require arg1 != msg.sender
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_24f331af(?) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_67b7ffd2(?) {
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    require ext_call.success
}

function sub_b65fa393(?) {
    require msg.sender == stor1
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, arg2
    require ext_call.success
}

function sub_a2e9f1d8(?) {
    require msg.sender == stor1
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    require ext_call.success
}

function sub_1b4a3ee2(?) {
    if not stor3[address(msg.sender)]:
        require msg.sender == stor1
    if arg1 == stor8:
        mem[320 len 0] = None
        return Array(len=3, data=mem[320 len 96])
    mem[384 len 0] = None
    return Array(len=5, data=mem[384 len 160])
}

function sub_4fd4f183(?) {
    if not stor3[address(msg.sender)]:
        require msg.sender == stor1
    if arg1 == stor8:
        mem[320 len 0] = None
        return Array(len=3, data=mem[320 len 96])
    mem[384 len 0] = None
    return Array(len=5, data=mem[384 len 160])
}

function sub_1c2bca9c(?) payable {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if not stor3[address(msg.sender)]:
        require msg.sender == stor1
    require ext_code.size(arg1)
    call arg1.token() with:
         gas gas_remaining wei
    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    require 0 < arg2.length
    if mem[140 len 20] == stor7:
        require eth.balance(this.address) >= arg3
        require arg2.length - 1 < arg2.length
        require arg2.length - 1 < arg2.length
        if mem[(32 * arg2.length - 1) + 140 len 20] == ext_call.return_data[12 len 20]:
            if mem[(32 * arg2.length - 1) + 140 len 20] == ext_call.return_data[12 len 20]:
                if arg7:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x18160ddd with:
                         gas gas_remaining wei
                    require ext_call.success
                    if ext_call.return_data[0] < arg7:
                        return 0
        else:
            if arg7:
                require ext_code.size(mem[(32 * arg2.length - 1) + 140 len 20])
                call mem[(32 * arg2.length - 1) + 140 len 20].0x70a08231 with:
                     gas gas_remaining wei
                    args arg6
                require ext_call.success
                if ext_call.return_data[0] < arg7:
                    return 0
            else:
                if mem[(32 * arg2.length - 1) + 140 len 20] == ext_call.return_data[12 len 20]:
                    if arg7:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x18160ddd with:
                             gas gas_remaining wei
                        require ext_call.success
                        if ext_call.return_data[0] < arg7:
                            return 0
        mem[(32 * arg2.length) + 164] = arg3
        mem[(32 * arg2.length) + 196] = arg4
        mem[(32 * arg2.length) + 132] = 96
        mem[(32 * arg2.length) + 228] = arg2.length
        mem[(32 * arg2.length) + 260 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        require ext_code.size(arg1)
        call arg1.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
           value arg3 wei
             gas gas_remaining wei
            args Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 260 len (32 * arg2.length) - floor32(arg2.length)]), arg3, arg4
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if arg5:
            if ext_call.return_data[0] > 0:
                require arg2.length - 1 < arg2.length
                require ext_code.size(mem[(32 * arg2.length - 1) + 140 len 20])
                call mem[(32 * arg2.length - 1) + 140 len 20].0xa9059cbb with:
                     gas gas_remaining wei
                    args stor1, ext_call.return_data[0]
                require ext_call.success
    else:
        require 0 < arg2.length
        if mem[140 len 20] != ext_call.return_data[12 len 20]:
            require 0 < arg2.length
            if not arg7:
                require 0 < arg2.length
                if mem[140 len 20] == ext_call.return_data[12 len 20]:
                    if mem[140 len 20] == ext_call.return_data[12 len 20]:
                        if arg7:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x18160ddd with:
                                 gas gas_remaining wei
                            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                            require ext_call.success
                            if ext_call.return_data[0] > arg7:
                                return 0
                else:
                    if arg7:
                        require ext_code.size(mem[140 len 20])
                        call mem[140 len 20].0x70a08231 with:
                             gas gas_remaining wei
                            args arg6
                        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                        require ext_call.success
                        if ext_call.return_data[0] > arg7:
                            return 0
                    else:
                        if mem[140 len 20] == ext_call.return_data[12 len 20]:
                            if arg7:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x18160ddd with:
                                     gas gas_remaining wei
                                mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                                require ext_call.success
                                if ext_call.return_data[0] > arg7:
                                    return 0
            else:
                require ext_code.size(mem[140 len 20])
                call mem[140 len 20].0x70a08231 with:
                     gas gas_remaining wei
                    args arg6
                mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                require ext_call.success
                if ext_call.return_data[0] > arg7:
                    return 0
                require 0 < arg2.length
                require 0 < arg2.length
                if mem[140 len 20] == address(ext_call.return_data[0]):
                    if mem[140 len 20] == address(ext_call.return_data[0]):
                        if arg7:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x18160ddd with:
                                 gas gas_remaining wei
                            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                            require ext_call.success
                            if ext_call.return_data[0] > arg7:
                                return 0
                else:
                    if arg7:
                        require ext_code.size(mem[140 len 20])
                        call mem[140 len 20].0x70a08231 with:
                             gas gas_remaining wei
                            args arg6
                        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                        require ext_call.success
                        if ext_call.return_data[0] > arg7:
                            return 0
                    else:
                        if mem[140 len 20] == address(ext_call.return_data[0]):
                            if arg7:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x18160ddd with:
                                     gas gas_remaining wei
                                mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                                require ext_call.success
                                if ext_call.return_data[0] > arg7:
                                    return 0
            require 0 < arg2.length
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0] < arg3:
                require arg3 >= ext_call.return_data[0]
                require 0 < arg2.length
                require ext_code.size(mem[140 len 20])
                call mem[140 len 20].0x70a08231 with:
                     gas gas_remaining wei
                    args msg.sender
                mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                require ext_call.success
                if ext_call.return_data[0] < arg3 - ext_call.return_data[0]:
                    return 0
                require 0 < arg2.length
                require arg3 >= ext_call.return_data[0]
                require ext_code.size(mem[140 len 20])
                call mem[140 len 20].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg3 - ext_call.return_data[0]
                mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                require ext_call.success
            require 0 < arg2.length
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].0xdd62ed3e with:
                 gas gas_remaining wei
                args address(this.address), arg1
            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0] < arg3:
                require 0 < arg2.length
                require ext_code.size(mem[140 len 20])
                call mem[140 len 20].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), arg3
                require ext_call.success
        mem[(32 * arg2.length) + 260 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        require ext_code.size(arg1)
        call arg1.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 260 len (32 * arg2.length) - floor32(arg2.length)]), arg3, arg4
        require ext_call.success
        if arg5:
            if ext_call.return_data[0] > 0:
                call stor1 with:
                   value ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
    return ext_call.return_data[0]
}

function sub_d54a04f1(?) payable {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if not stor3[address(msg.sender)]:
        require msg.sender == stor1
    require 0 < arg3.length
    if not mem[140 len 20]:
        require ext_code.size(stor2)
        call stor2.0x52651c3a with:
             gas gas_remaining wei
            args arg1
        require ext_call.success
        require ext_code.size(stor2)
        call stor2.0xd42adb91 with:
             gas gas_remaining wei
            args arg1
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).token() with:
             gas gas_remaining wei
        require ext_call.success
        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
            if arg2:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x18160ddd with:
                     gas gas_remaining wei
                require ext_call.success
                if ext_call.return_data[0] > arg2:
                    return 0
        else:
            if arg2:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x70a08231 with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0])
                require ext_call.success
                if ext_call.return_data[0] > arg2:
                    return 0
            else:
                if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                    if arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x18160ddd with:
                             gas gas_remaining wei
                        require ext_call.success
                        if ext_call.return_data[0] > arg2:
                            return 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x70a08231 with:
             gas gas_remaining wei
            args this.address
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xdd62ed3e with:
             gas gas_remaining wei
            args address(this.address), address(ext_call.return_data[0])
        require ext_call.success
        if ext_call.return_data[0] < ext_call.return_data[0]:
            if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), ext_call.return_data[0]
                require ext_call.success
                if bool(ext_call.return_data[0]) != 1:
                    return 0
        if not stor3[address(msg.sender)]:
            require msg.sender == stor1
        if address(ext_call.return_data[0]) == stor8:
            mem[(32 * arg3.length) + 456 len 0] = None
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args Array(len=3, data=mem[(32 * arg3.length) + 456 len 96]), ext_call.return_data[0], 1
        else:
            mem[(32 * arg3.length) + 520 len 0] = None
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args Array(len=5, data=mem[(32 * arg3.length) + 520 len 160]), ext_call.return_data[0], 1
    else:
        require 1 < arg3.length
        if mem[172 len 20]:
            require 0 < arg3.length
            require 1 < arg3.length
            require ext_code.size(mem[172 len 20])
            call mem[172 len 20].token() with:
                 gas gas_remaining wei
            require ext_call.success
            if mem[140 len 20] == ext_call.return_data[12 len 20]:
                if arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x18160ddd with:
                         gas gas_remaining wei
                    require ext_call.success
                    if ext_call.return_data[0] > arg2:
                        return 0
            else:
                if arg2:
                    require ext_code.size(mem[140 len 20])
                    call mem[140 len 20].0x70a08231 with:
                         gas gas_remaining wei
                        args mem[172 len 20]
                    require ext_call.success
                    if ext_call.return_data[0] > arg2:
                        return 0
                else:
                    if mem[140 len 20] == ext_call.return_data[12 len 20]:
                        if arg2:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x18160ddd with:
                                 gas gas_remaining wei
                            require ext_call.success
                            if ext_call.return_data[0] > arg2:
                                return 0
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            require ext_call.success
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].0xdd62ed3e with:
                 gas gas_remaining wei
                args address(this.address), mem[172 len 20]
            require ext_call.success
            if ext_call.return_data[0] < ext_call.return_data[0]:
                if mem[140 len 20] != address(ext_call.return_data[0]):
                    require ext_code.size(mem[140 len 20])
                    call mem[140 len 20].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(mem[160]), ext_call.return_data[0]
                    require ext_call.success
                    if bool(ext_call.return_data[0]) != 1:
                        return 0
            if not stor3[address(msg.sender)]:
                require msg.sender == stor1
            if mem[140 len 20] == stor8:
                mem[(32 * arg3.length) + 456 len 0] = None
                require ext_code.size(mem[172 len 20])
                call mem[172 len 20].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args Array(len=3, data=mem[(32 * arg3.length) + 456 len 96]), ext_call.return_data[0], 1
            else:
                mem[(32 * arg3.length) + 520 len 0] = None
                require ext_code.size(mem[172 len 20])
                call mem[172 len 20].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args Array(len=5, data=mem[(32 * arg3.length) + 520 len 160]), ext_call.return_data[0], 1
        else:
            require ext_code.size(stor2)
            call stor2.0x52651c3a with:
                 gas gas_remaining wei
                args arg1
            require ext_call.success
            require ext_code.size(stor2)
            call stor2.0xd42adb91 with:
                 gas gas_remaining wei
                args arg1
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).token() with:
                 gas gas_remaining wei
            require ext_call.success
            if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                if arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x18160ddd with:
                         gas gas_remaining wei
                    require ext_call.success
                    if ext_call.return_data[0] > arg2:
                        return 0
            else:
                if arg2:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x70a08231 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0])
                    require ext_call.success
                    if ext_call.return_data[0] > arg2:
                        return 0
                else:
                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                        if arg2:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x18160ddd with:
                                 gas gas_remaining wei
                            require ext_call.success
                            if ext_call.return_data[0] > arg2:
                                return 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xdd62ed3e with:
                 gas gas_remaining wei
                args address(this.address), address(ext_call.return_data[0])
            require ext_call.success
            if ext_call.return_data[0] < ext_call.return_data[0]:
                if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ext_call.return_data[0]
                    require ext_call.success
                    if bool(ext_call.return_data[0]) != 1:
                        return 0
            if not stor3[address(msg.sender)]:
                require msg.sender == stor1
            if address(ext_call.return_data[0]) == stor8:
                mem[(32 * arg3.length) + 456 len 0] = None
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args Array(len=3, data=mem[(32 * arg3.length) + 456 len 96]), ext_call.return_data[0], 1
            else:
                mem[(32 * arg3.length) + 520 len 0] = None
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args Array(len=5, data=mem[(32 * arg3.length) + 520 len 160]), ext_call.return_data[0], 1
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_df392103(?) payable {
    mem[128 len 32 * arg7.length] = call.data[arg7 + 36 len 32 * arg7.length]
    if not stor3[address(msg.sender)]:
        require msg.sender == stor1
    require eth.balance(this.address) >= arg2
    require 0 < arg7.length
    if not mem[140 len 20]:
        require ext_code.size(stor2)
        call stor2.0x52651c3a with:
             gas gas_remaining wei
            args arg1
        require ext_call.success
        require ext_code.size(stor2)
        call stor2.0xd42adb91 with:
             gas gas_remaining wei
            args arg1
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).token() with:
             gas gas_remaining wei
        require ext_call.success
        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
            if arg6:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x18160ddd with:
                     gas gas_remaining wei
                require ext_call.success
                if ext_call.return_data[0] < arg6:
                    return 0
        else:
            if arg6:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x70a08231 with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0])
                require ext_call.success
                if ext_call.return_data[0] < arg6:
                    return 0
            else:
                if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                    if arg6:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x18160ddd with:
                             gas gas_remaining wei
                        require ext_call.success
                        if ext_call.return_data[0] < arg6:
                            return 0
        if not arg5:
            if not stor3[address(msg.sender)]:
                require msg.sender == stor1
            if address(ext_call.return_data[0]) == stor8:
                mem[(32 * arg7.length) + 424 len 0] = None
                require ext_code.size(stor5)
                call stor5.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args Array(len=3, data=mem[(32 * arg7.length) + 424 len 96]), arg2, arg3
            else:
                mem[(32 * arg7.length) + 488 len 0] = None
                require ext_code.size(stor5)
                call stor5.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args Array(len=5, data=mem[(32 * arg7.length) + 488 len 160]), arg2, arg3
        else:
            if arg5 == 1:
                if not stor3[address(msg.sender)]:
                    require msg.sender == stor1
                if address(ext_call.return_data[0]) == stor8:
                    mem[(32 * arg7.length) + 424 len 0] = None
                    require ext_code.size(stor4)
                    call stor4.convert(address[] arg1, uint256 arg2, uint256 arg3) with:
                       value arg2 wei
                         gas gas_remaining wei
                        args Array(len=3, data=mem[(32 * arg7.length) + 424 len 96]), arg2, arg3
                else:
                    mem[(32 * arg7.length) + 488 len 0] = None
                    require ext_code.size(stor4)
                    call stor4.convert(address[] arg1, uint256 arg2, uint256 arg3) with:
                       value arg2 wei
                         gas gas_remaining wei
                        args Array(len=5, data=mem[(32 * arg7.length) + 488 len 160]), arg2, arg3
            else:
                if arg5 == 2:
                    if not stor3[address(msg.sender)]:
                        require msg.sender == stor1
                    if address(ext_call.return_data[0]) == stor8:
                        mem[(32 * arg7.length) + 424 len 0] = None
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                           value arg2 wei
                             gas gas_remaining wei
                            args Array(len=3, data=mem[(32 * arg7.length) + 424 len 96]), arg2, arg3
                    else:
                        mem[(32 * arg7.length) + 488 len 0] = None
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                           value arg2 wei
                             gas gas_remaining wei
                            args Array(len=5, data=mem[(32 * arg7.length) + 488 len 160]), arg2, arg3
                else:
                    if arg5 != 3:
                        return 0
                    if not stor3[address(msg.sender)]:
                        require msg.sender == stor1
                    if address(ext_call.return_data[0]) == stor8:
                        mem[(32 * arg7.length) + 424 len 0] = None
                        require ext_code.size(stor6)
                        call stor6.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                           value arg2 wei
                             gas gas_remaining wei
                            args Array(len=3, data=mem[(32 * arg7.length) + 424 len 96]), arg2, arg3
                    else:
                        mem[(32 * arg7.length) + 488 len 0] = None
                        require ext_code.size(stor6)
                        call stor6.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                           value arg2 wei
                             gas gas_remaining wei
                            args Array(len=5, data=mem[(32 * arg7.length) + 488 len 160]), arg2, arg3
        require ext_call.success
        if arg4:
            if ext_call.return_data[0] > 0:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor1, ext_call.return_data[0]
                require ext_call.success
    else:
        require 1 < arg7.length
        if mem[172 len 20]:
            require 0 < arg7.length
            require 1 < arg7.length
            require ext_code.size(mem[172 len 20])
            call mem[172 len 20].token() with:
                 gas gas_remaining wei
            require ext_call.success
            if mem[140 len 20] == ext_call.return_data[12 len 20]:
                if arg6:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x18160ddd with:
                         gas gas_remaining wei
                    require ext_call.success
                    if ext_call.return_data[0] < arg6:
                        return 0
                if not arg5:
                    if not stor3[address(msg.sender)]:
                        require msg.sender == stor1
                    if mem[140 len 20] == stor8:
                        mem[(32 * arg7.length) + 420 len 0] = None
                        require ext_code.size(stor5)
                        call stor5.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                           value arg2 wei
                             gas gas_remaining wei
                            args Array(len=3, data=mem[(32 * arg7.length) + 420 len 96]), arg2, arg3
                    else:
                        mem[(32 * arg7.length) + 484 len 0] = None
                        require ext_code.size(stor5)
                        call stor5.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                           value arg2 wei
                             gas gas_remaining wei
                            args Array(len=5, data=mem[(32 * arg7.length) + 484 len 160]), arg2, arg3
                else:
                    if arg5 == 1:
                        if not stor3[address(msg.sender)]:
                            require msg.sender == stor1
                        if mem[140 len 20] == stor8:
                            mem[(32 * arg7.length) + 420 len 0] = None
                            require ext_code.size(stor4)
                            call stor4.convert(address[] arg1, uint256 arg2, uint256 arg3) with:
                               value arg2 wei
                                 gas gas_remaining wei
                                args Array(len=3, data=mem[(32 * arg7.length) + 420 len 96]), arg2, arg3
                        else:
                            mem[(32 * arg7.length) + 484 len 0] = None
                            require ext_code.size(stor4)
                            call stor4.convert(address[] arg1, uint256 arg2, uint256 arg3) with:
                               value arg2 wei
                                 gas gas_remaining wei
                                args Array(len=5, data=mem[(32 * arg7.length) + 484 len 160]), arg2, arg3
                    else:
                        if arg5 == 2:
                            if not stor3[address(msg.sender)]:
                                require msg.sender == stor1
                            if mem[140 len 20] == stor8:
                                mem[(32 * arg7.length) + 420 len 0] = None
                                require ext_code.size(mem[172 len 20])
                                call mem[172 len 20].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                   value arg2 wei
                                     gas gas_remaining wei
                                    args Array(len=3, data=mem[(32 * arg7.length) + 420 len 96]), arg2, arg3
                            else:
                                mem[(32 * arg7.length) + 484 len 0] = None
                                require ext_code.size(mem[172 len 20])
                                call mem[172 len 20].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                   value arg2 wei
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[(32 * arg7.length) + 484 len 160]), arg2, arg3
                        else:
                            if arg5 != 3:
                                return 0
                            if not stor3[address(msg.sender)]:
                                require msg.sender == stor1
                            if mem[140 len 20] == stor8:
                                mem[(32 * arg7.length) + 420 len 0] = None
                                require ext_code.size(stor6)
                                call stor6.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                   value arg2 wei
                                     gas gas_remaining wei
                                    args Array(len=3, data=mem[(32 * arg7.length) + 420 len 96]), arg2, arg3
                            else:
                                mem[(32 * arg7.length) + 484 len 0] = None
                                require ext_code.size(stor6)
                                call stor6.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                   value arg2 wei
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[(32 * arg7.length) + 484 len 160]), arg2, arg3
            else:
                if arg6:
                    require ext_code.size(mem[140 len 20])
                    call mem[140 len 20].0x70a08231 with:
                         gas gas_remaining wei
                        args mem[172 len 20]
                    require ext_call.success
                    if ext_call.return_data[0] < arg6:
                        return 0
                    if not arg5:
                        if not stor3[address(msg.sender)]:
                            require msg.sender == stor1
                        if mem[140 len 20] == stor8:
                            mem[(32 * arg7.length) + 424 len 0] = None
                            require ext_code.size(stor5)
                            call stor5.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                               value arg2 wei
                                 gas gas_remaining wei
                                args Array(len=3, data=mem[(32 * arg7.length) + 424 len 96]), arg2, arg3
                        else:
                            mem[(32 * arg7.length) + 488 len 0] = None
                            require ext_code.size(stor5)
                            call stor5.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                               value arg2 wei
                                 gas gas_remaining wei
                                args Array(len=5, data=mem[(32 * arg7.length) + 488 len 160]), arg2, arg3
                    else:
                        if arg5 == 1:
                            if not stor3[address(msg.sender)]:
                                require msg.sender == stor1
                            if mem[140 len 20] == stor8:
                                mem[(32 * arg7.length) + 424 len 0] = None
                                require ext_code.size(stor4)
                                call stor4.convert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                   value arg2 wei
                                     gas gas_remaining wei
                                    args Array(len=3, data=mem[(32 * arg7.length) + 424 len 96]), arg2, arg3
                            else:
                                mem[(32 * arg7.length) + 488 len 0] = None
                                require ext_code.size(stor4)
                                call stor4.convert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                   value arg2 wei
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[(32 * arg7.length) + 488 len 160]), arg2, arg3
                        else:
                            if arg5 == 2:
                                if not stor3[address(msg.sender)]:
                                    require msg.sender == stor1
                                if mem[140 len 20] == stor8:
                                    mem[(32 * arg7.length) + 424 len 0] = None
                                    require ext_code.size(mem[172 len 20])
                                    call mem[172 len 20].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                       value arg2 wei
                                         gas gas_remaining wei
                                        args Array(len=3, data=mem[(32 * arg7.length) + 424 len 96]), arg2, arg3
                                else:
                                    mem[(32 * arg7.length) + 488 len 0] = None
                                    require ext_code.size(mem[172 len 20])
                                    call mem[172 len 20].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                       value arg2 wei
                                         gas gas_remaining wei
                                        args Array(len=5, data=mem[(32 * arg7.length) + 488 len 160]), arg2, arg3
                            else:
                                if arg5 != 3:
                                    return 0
                                if not stor3[address(msg.sender)]:
                                    require msg.sender == stor1
                                if mem[140 len 20] == stor8:
                                    mem[(32 * arg7.length) + 424 len 0] = None
                                    require ext_code.size(stor6)
                                    call stor6.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                       value arg2 wei
                                         gas gas_remaining wei
                                        args Array(len=3, data=mem[(32 * arg7.length) + 424 len 96]), arg2, arg3
                                else:
                                    mem[(32 * arg7.length) + 488 len 0] = None
                                    require ext_code.size(stor6)
                                    call stor6.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                       value arg2 wei
                                         gas gas_remaining wei
                                        args Array(len=5, data=mem[(32 * arg7.length) + 488 len 160]), arg2, arg3
                else:
                    if mem[140 len 20] == ext_call.return_data[12 len 20]:
                        if arg6:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x18160ddd with:
                                 gas gas_remaining wei
                            require ext_call.success
                            if ext_call.return_data[0] < arg6:
                                return 0
                    if not arg5:
                        if not stor3[address(msg.sender)]:
                            require msg.sender == stor1
                        if mem[140 len 20] == stor8:
                            mem[(32 * arg7.length) + 420 len 0] = None
                            require ext_code.size(stor5)
                            call stor5.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                               value arg2 wei
                                 gas gas_remaining wei
                                args Array(len=3, data=mem[(32 * arg7.length) + 420 len 96]), arg2, arg3
                        else:
                            mem[(32 * arg7.length) + 484 len 0] = None
                            require ext_code.size(stor5)
                            call stor5.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                               value arg2 wei
                                 gas gas_remaining wei
                                args Array(len=5, data=mem[(32 * arg7.length) + 484 len 160]), arg2, arg3
                    else:
                        if arg5 == 1:
                            if not stor3[address(msg.sender)]:
                                require msg.sender == stor1
                            if mem[140 len 20] == stor8:
                                mem[(32 * arg7.length) + 420 len 0] = None
                                require ext_code.size(stor4)
                                call stor4.convert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                   value arg2 wei
                                     gas gas_remaining wei
                                    args Array(len=3, data=mem[(32 * arg7.length) + 420 len 96]), arg2, arg3
                            else:
                                mem[(32 * arg7.length) + 484 len 0] = None
                                require ext_code.size(stor4)
                                call stor4.convert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                   value arg2 wei
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[(32 * arg7.length) + 484 len 160]), arg2, arg3
                        else:
                            if arg5 == 2:
                                if not stor3[address(msg.sender)]:
                                    require msg.sender == stor1
                                if mem[140 len 20] == stor8:
                                    mem[(32 * arg7.length) + 420 len 0] = None
                                    require ext_code.size(mem[172 len 20])
                                    call mem[172 len 20].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                       value arg2 wei
                                         gas gas_remaining wei
                                        args Array(len=3, data=mem[(32 * arg7.length) + 420 len 96]), arg2, arg3
                                else:
                                    mem[(32 * arg7.length) + 484 len 0] = None
                                    require ext_code.size(mem[172 len 20])
                                    call mem[172 len 20].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                       value arg2 wei
                                         gas gas_remaining wei
                                        args Array(len=5, data=mem[(32 * arg7.length) + 484 len 160]), arg2, arg3
                            else:
                                if arg5 != 3:
                                    return 0
                                if not stor3[address(msg.sender)]:
                                    require msg.sender == stor1
                                if mem[140 len 20] == stor8:
                                    mem[(32 * arg7.length) + 420 len 0] = None
                                    require ext_code.size(stor6)
                                    call stor6.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                       value arg2 wei
                                         gas gas_remaining wei
                                        args Array(len=3, data=mem[(32 * arg7.length) + 420 len 96]), arg2, arg3
                                else:
                                    mem[(32 * arg7.length) + 484 len 0] = None
                                    require ext_code.size(stor6)
                                    call stor6.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                       value arg2 wei
                                         gas gas_remaining wei
                                        args Array(len=5, data=mem[(32 * arg7.length) + 484 len 160]), arg2, arg3
            require ext_call.success
            if arg4:
                if ext_call.return_data[0] > 0:
                    require ext_code.size(mem[140 len 20])
                    call mem[140 len 20].0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1, ext_call.return_data[0]
                    require ext_call.success
        else:
            require ext_code.size(stor2)
            call stor2.0x52651c3a with:
                 gas gas_remaining wei
                args arg1
            require ext_call.success
            require ext_code.size(stor2)
            call stor2.0xd42adb91 with:
                 gas gas_remaining wei
                args arg1
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).token() with:
                 gas gas_remaining wei
            require ext_call.success
            if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                if arg6:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x18160ddd with:
                         gas gas_remaining wei
                    require ext_call.success
                    if ext_call.return_data[0] < arg6:
                        return 0
            else:
                if arg6:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x70a08231 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0])
                    require ext_call.success
                    if ext_call.return_data[0] < arg6:
                        return 0
                else:
                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                        if arg6:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x18160ddd with:
                                 gas gas_remaining wei
                            require ext_call.success
                            if ext_call.return_data[0] < arg6:
                                return 0
            if not arg5:
                if not stor3[address(msg.sender)]:
                    require msg.sender == stor1
                if address(ext_call.return_data[0]) == stor8:
                    mem[(32 * arg7.length) + 424 len 0] = None
                    require ext_code.size(stor5)
                    call stor5.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                       value arg2 wei
                         gas gas_remaining wei
                        args Array(len=3, data=mem[(32 * arg7.length) + 424 len 96]), arg2, arg3
                else:
                    mem[(32 * arg7.length) + 488 len 0] = None
                    require ext_code.size(stor5)
                    call stor5.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                       value arg2 wei
                         gas gas_remaining wei
                        args Array(len=5, data=mem[(32 * arg7.length) + 488 len 160]), arg2, arg3
            else:
                if arg5 == 1:
                    if not stor3[address(msg.sender)]:
                        require msg.sender == stor1
                    if address(ext_call.return_data[0]) == stor8:
                        mem[(32 * arg7.length) + 424 len 0] = None
                        require ext_code.size(stor4)
                        call stor4.convert(address[] arg1, uint256 arg2, uint256 arg3) with:
                           value arg2 wei
                             gas gas_remaining wei
                            args Array(len=3, data=mem[(32 * arg7.length) + 424 len 96]), arg2, arg3
                    else:
                        mem[(32 * arg7.length) + 488 len 0] = None
                        require ext_code.size(stor4)
                        call stor4.convert(address[] arg1, uint256 arg2, uint256 arg3) with:
                           value arg2 wei
                             gas gas_remaining wei
                            args Array(len=5, data=mem[(32 * arg7.length) + 488 len 160]), arg2, arg3
                else:
                    if arg5 == 2:
                        if not stor3[address(msg.sender)]:
                            require msg.sender == stor1
                        if address(ext_call.return_data[0]) == stor8:
                            mem[(32 * arg7.length) + 424 len 0] = None
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                               value arg2 wei
                                 gas gas_remaining wei
                                args Array(len=3, data=mem[(32 * arg7.length) + 424 len 96]), arg2, arg3
                        else:
                            mem[(32 * arg7.length) + 488 len 0] = None
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                               value arg2 wei
                                 gas gas_remaining wei
                                args Array(len=5, data=mem[(32 * arg7.length) + 488 len 160]), arg2, arg3
                    else:
                        if arg5 != 3:
                            return 0
                        if not stor3[address(msg.sender)]:
                            require msg.sender == stor1
                        if address(ext_call.return_data[0]) == stor8:
                            mem[(32 * arg7.length) + 424 len 0] = None
                            require ext_code.size(stor6)
                            call stor6.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                               value arg2 wei
                                 gas gas_remaining wei
                                args Array(len=3, data=mem[(32 * arg7.length) + 424 len 96]), arg2, arg3
                        else:
                            mem[(32 * arg7.length) + 488 len 0] = None
                            require ext_code.size(stor6)
                            call stor6.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                               value arg2 wei
                                 gas gas_remaining wei
                                args Array(len=5, data=mem[(32 * arg7.length) + 488 len 160]), arg2, arg3
            require ext_call.success
            if arg4:
                if ext_call.return_data[0] > 0:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1, ext_call.return_data[0]
                    require ext_call.success
    return ext_call.return_data[0]
}



}
