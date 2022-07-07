contract main {




// =====================  Runtime code  =====================


#
#  - sub_adbe7ef9(?)
#
address owner;
address configAddress;
mapping of struct stor2;
array of struct stor3;
address stor4;
uint256 stor4;
uint256 stor5;
array of struct stor6;

function config() {
    return configAddress
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
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
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_6ee45b21(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg2.length) + (32 * arg1.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require arg1.length > 0
    require arg1.length <= 10
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require ext_code.size(configAddress)
        call configAddress.ZERO_ADDRESS() with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[96]
        if mem[(32 * idx) + 140 len 20] != address(ext_call.return_data[0]):
            require ext_code.size(configAddress)
            call configAddress.ZERO_ADDRESS() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg1.length) + 128]
            if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != address(ext_call.return_data[0]):
                _47 = mem[64]
                mem[64] = mem[64] + 64
                require idx < mem[96]
                mem[_47] = mem[(32 * idx) + 140 len 20]
                require idx < mem[(32 * arg1.length) + 128]
                mem[_47 + 32] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                require idx < mem[96]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 2
                stor2[mem[(32 * idx) + 140 len 20]].field_0 = mem[_47 + 12 len 20]
                stor2[mem[(32 * idx) + 140 len 20]].field_256 = mem[_47 + 44 len 20]
        idx = idx + 1
        continue 
    return 0
}

function sub_2f9a6037(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    require 0 < arg1.length
    idx = 0
    while idx < arg1.length:
        require ext_code.size(configAddress)
        call configAddress.ZERO_ADDRESS() with:
             gas gas_remaining wei
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg1.length
        if mem[(32 * idx) + 140 len 20] != address(ext_call.return_data[0]):
            require idx < arg1.length
            _65 = mem[(32 * idx) + 128]
            require ext_code.size(configAddress)
            call configAddress.ZERO_ADDRESS() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require address(ext_call.return_data[0]) != mem[(32 * idx) + 140 len 20]
            require ext_code.size(configAddress)
            call configAddress.UNI_FACTORY() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getExchange(address arg1) with:
                 gas gas_remaining wei
                args mem[(32 * idx) + 140 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(configAddress)
            call configAddress.ZERO_ADDRESS() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(configAddress)
            if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                call configAddress.0x30ced2e8 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                call mem[(32 * idx) + 140 len 20].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            call configAddress.KYBER_PROXY() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(configAddress)
            call configAddress.0x30ced2e8 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg1.length) + 132] = address(ext_call.return_data[0])
            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
            require ext_code.size(address(_65))
            call address(_65).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), ext_call.return_data[0]
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        idx = idx + 1
        continue 
}

function sub_c84044e9(?) payable {
    require ext_code.size(configAddress)
    call configAddress.ZERO_ADDRESS() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] != arg1
    require ext_code.size(configAddress)
    call configAddress.ZERO_ADDRESS() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] != arg2
    require msg.value > 0
    require arg3 <= 3
    require arg3 >= 1
    require arg3 <= 3
    require ext_code.size(configAddress)
    call configAddress.0xd1322962 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not msg.value:
        require ext_code.size(configAddress)
        call configAddress.0x647ac724 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call ext_call.return_data[12 len 20] with:
           value 1 wei
             gas 0 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require 1 <= msg.value
        require arg3 <= 3
        if 1 == arg3:
            require ext_code.size(configAddress)
            call configAddress.ZERO_ADDRESS() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[12 len 20] != arg1
            require ext_code.size(configAddress)
            call configAddress.UNI_FACTORY() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getExchange(address arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not block.timestamp:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).ethToTokenTransferInput(uint256 arg1, uint256 arg2, address arg3) with:
                   value msg.value - 1 wei
                     gas gas_remaining wei
                    args 1, 0, arg2
            else:
                require 2 * block.timestamp / block.timestamp == 2
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).ethToTokenTransferInput(uint256 arg1, uint256 arg2, address arg3) with:
                   value msg.value - 1 wei
                     gas gas_remaining wei
                    args 1, 2 * block.timestamp, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            stor5 = ext_call.return_data[0]
            require ext_code.size(configAddress)
            call configAddress.ETH_ADDRESS() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0x6c39ed2b: ext_call.return_data[12 len 20], msg.value, address(arg1), stor5, msg.sender, arg2
        else:
            require arg3 <= 3
            if 2 == arg3:
                require ext_code.size(configAddress)
                call configAddress.KYBER_PROXY() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
                require ext_code.size(configAddress)
                call configAddress.ETH_ADDRESS() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(configAddress)
                call configAddress.0x1c96cae9 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(configAddress)
                call configAddress.ZERO_ADDRESS() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[388] = uint256(stor6.field_0)
                idx = 388
                s = 0
                while stor6.length + 388 > idx + 32:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                   value msg.value - 1 wei
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), msg.value - 1, address(arg1), address(arg2), ext_call.return_data[0], 1, address(ext_call.return_data[0]), Array(len=stor6.length, data=mem[388 len stor6.length + (floor32(stor6.length - 1) + -stor6.length + 32 % 32)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor5 = ext_call.return_data[0]
                require ext_code.size(configAddress)
                call configAddress.ETH_ADDRESS() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0x6c39ed2b: address(ext_call.return_data[0]), msg.value, address(arg1), stor5, msg.sender, arg2
            else:
                require arg3 <= 3
                require ext_code.size(configAddress)
                if 3 == arg3:
                    call configAddress.0x3d00707a with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(configAddress)
                    call configAddress.0x6177d75 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(configAddress)
                    call configAddress.ZERO_ADDRESS() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require address(ext_call.return_data[0]) != stor2[address(ext_call.return_data[0])].field_256
                    require ext_code.size(configAddress)
                    call configAddress.ZERO_ADDRESS() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require address(ext_call.return_data[0]) != stor2[address(arg1)].field_256
                    require ext_code.size(configAddress)
                    call configAddress.0x878d2922 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor3.length = 3
                    if stor3.length > 3:
                        idx = 3
                        while stor3.length > idx:
                            stor3[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    require 0 < stor3.length
                    address(stor3.field_0) = stor2[address(ext_call.return_data[0])].field_0
                    require 1 < stor3.length
                    address(stor3.field_256) = stor2[address(ext_call.return_data[0])].field_256
                    require 2 < stor3.length
                    address(stor3.field_512) = stor2[address(arg1)].field_0
                    require ext_code.size(configAddress)
                    call configAddress.0x878d2922 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require 1 < stor3.length
                        address(stor3.field_256) = stor2[address(arg1)].field_256
                    else:
                        require ext_code.size(configAddress)
                        call configAddress.0x878d2922 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] != arg1:
                            stor3.length = 5
                            if stor3.length > 5:
                                idx = 5
                                while stor3.length > idx:
                                    stor3[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require 2 < stor3.length
                            address(stor3.field_512) = stor2[ext_call.return_data[12 len 20]].field_0
                            require 3 < stor3.length
                            address(stor3.field_768) = stor2[address(arg1)].field_256
                            require 4 < stor3.length
                            address(stor3.field_1024) = stor2[address(arg1)].field_0
                    if not stor3.length:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                           value msg.value - 1 wei
                             gas gas_remaining wei
                            args 128, msg.value - 1, 1, address(arg2), stor3.length
                    else:
                        mem[644] = address(stor3.field_0)
                        idx = 644
                        s = 0
                        while (32 * stor3.length) + 644 > idx + 32:
                            mem[idx + 32] = stor3[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                           value msg.value - 1 wei
                             gas gas_remaining wei
                            args Array(len=stor3.length, data=mem[644 len 32 * stor3.length]), msg.value - 1, 1, address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor5 = ext_call.return_data[0]
                call configAddress.ETH_ADDRESS() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0x6c39ed2b: ext_call.return_data[12 len 20], msg.value, address(arg1), stor5, msg.sender, arg2
    else:
        require ext_call.return_data[0] * msg.value / msg.value == ext_call.return_data[0]
        require ext_code.size(configAddress)
        call configAddress.0x647ac724 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call ext_call.return_data[12 len 20] with:
           value (ext_call.return_data[0] * msg.value / 1000) + 1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require (ext_call.return_data[0] * msg.value / 1000) + 1 <= msg.value
        require arg3 <= 3
        if 1 == arg3:
            require ext_code.size(configAddress)
            call configAddress.ZERO_ADDRESS() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[12 len 20] != arg1
            require ext_code.size(configAddress)
            call configAddress.UNI_FACTORY() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getExchange(address arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not block.timestamp:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).ethToTokenTransferInput(uint256 arg1, uint256 arg2, address arg3) with:
                   value msg.value + -(ext_call.return_data[0] * msg.value / 1000) - 1 wei
                     gas gas_remaining wei
                    args 1, 0, arg2
            else:
                require 2 * block.timestamp / block.timestamp == 2
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).ethToTokenTransferInput(uint256 arg1, uint256 arg2, address arg3) with:
                   value msg.value + -(ext_call.return_data[0] * msg.value / 1000) - 1 wei
                     gas gas_remaining wei
                    args 1, 2 * block.timestamp, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            stor5 = ext_call.return_data[0]
            require ext_code.size(configAddress)
            call configAddress.ETH_ADDRESS() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0x6c39ed2b: ext_call.return_data[12 len 20], msg.value, address(arg1), stor5, msg.sender, arg2
        else:
            require arg3 <= 3
            if 2 == arg3:
                require ext_code.size(configAddress)
                call configAddress.KYBER_PROXY() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
                require ext_code.size(configAddress)
                call configAddress.ETH_ADDRESS() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(configAddress)
                call configAddress.0x1c96cae9 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(configAddress)
                call configAddress.ZERO_ADDRESS() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[388] = uint256(stor6.field_0)
                idx = 388
                s = 0
                while stor6.length + 388 > idx + 32:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                   value msg.value + -(ext_call.return_data[0] * msg.value / 1000) - 1 wei
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), msg.value + -(ext_call.return_data[0] * msg.value / 1000) - 1, address(arg1), address(arg2), ext_call.return_data[0], 1, address(ext_call.return_data[0]), Array(len=stor6.length, data=mem[388 len stor6.length + (floor32(stor6.length - 1) + -stor6.length + 32 % 32)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor5 = ext_call.return_data[0]
                require ext_code.size(configAddress)
                call configAddress.ETH_ADDRESS() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0x6c39ed2b: address(ext_call.return_data[0]), msg.value, address(arg1), stor5, msg.sender, arg2
            else:
                require arg3 <= 3
                require ext_code.size(configAddress)
                if 3 == arg3:
                    call configAddress.0x3d00707a with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(configAddress)
                    call configAddress.0x6177d75 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(configAddress)
                    call configAddress.ZERO_ADDRESS() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require address(ext_call.return_data[0]) != stor2[address(ext_call.return_data[0])].field_256
                    require ext_code.size(configAddress)
                    call configAddress.ZERO_ADDRESS() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require address(ext_call.return_data[0]) != stor2[address(arg1)].field_256
                    require ext_code.size(configAddress)
                    call configAddress.0x878d2922 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor3.length = 3
                    if stor3.length > 3:
                        idx = 3
                        while stor3.length > idx:
                            stor3[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    require 0 < stor3.length
                    address(stor3.field_0) = stor2[address(ext_call.return_data[0])].field_0
                    require 1 < stor3.length
                    address(stor3.field_256) = stor2[address(ext_call.return_data[0])].field_256
                    require 2 < stor3.length
                    address(stor3.field_512) = stor2[address(arg1)].field_0
                    require ext_code.size(configAddress)
                    call configAddress.0x878d2922 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require 1 < stor3.length
                        address(stor3.field_256) = stor2[address(arg1)].field_256
                    else:
                        require ext_code.size(configAddress)
                        call configAddress.0x878d2922 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] != arg1:
                            stor3.length = 5
                            if stor3.length > 5:
                                idx = 5
                                while stor3.length > idx:
                                    stor3[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require 2 < stor3.length
                            address(stor3.field_512) = stor2[ext_call.return_data[12 len 20]].field_0
                            require 3 < stor3.length
                            address(stor3.field_768) = stor2[address(arg1)].field_256
                            require 4 < stor3.length
                            address(stor3.field_1024) = stor2[address(arg1)].field_0
                    if not stor3.length:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                           value msg.value + -(ext_call.return_data[0] * msg.value / 1000) - 1 wei
                             gas gas_remaining wei
                            args 128, msg.value + -(ext_call.return_data[0] * msg.value / 1000) - 1, 1, address(arg2), stor3.length
                    else:
                        mem[644] = address(stor3.field_0)
                        idx = 644
                        s = 0
                        while (32 * stor3.length) + 644 > idx + 32:
                            mem[idx + 32] = stor3[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                           value msg.value + -(ext_call.return_data[0] * msg.value / 1000) - 1 wei
                             gas gas_remaining wei
                            args Array(len=stor3.length, data=mem[644 len 32 * stor3.length]), msg.value + -(ext_call.return_data[0] * msg.value / 1000) - 1, 1, address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor5 = ext_call.return_data[0]
                call configAddress.ETH_ADDRESS() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0x6c39ed2b: ext_call.return_data[12 len 20], msg.value, address(arg1), stor5, msg.sender, arg2
    return stor5
}

function sub_0f44226c(?) {
    require ext_code.size(configAddress)
    call configAddress.ZERO_ADDRESS() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] != arg1
    require ext_code.size(configAddress)
    call configAddress.ZERO_ADDRESS() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] != arg3
    require arg2 > 0
    require arg4 <= 3
    require arg4 >= 1
    require arg4 <= 3
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg2
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(configAddress)
    call configAddress.0xd1322962 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        require arg4 <= 3
        if 1 == arg4:
            require ext_code.size(configAddress)
            call configAddress.ZERO_ADDRESS() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[12 len 20] != arg1
            require ext_code.size(configAddress)
            call configAddress.UNI_FACTORY() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getExchange(address arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not block.timestamp:
                require ext_code.size(configAddress)
                call configAddress.0x647ac724 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokenToEthTransferInput(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) with:
                     gas gas_remaining wei
                    args 0, 1, 1, 0, address(ext_call.return_data[0])
            else:
                require 2 * block.timestamp / block.timestamp == 2
                require ext_code.size(configAddress)
                call configAddress.0x647ac724 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokenToEthTransferInput(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) with:
                     gas gas_remaining wei
                    args 0, 1, 1, 2 * block.timestamp, address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 <= arg2
            if not block.timestamp:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokenToEthTransferInput(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) with:
                     gas gas_remaining wei
                    args 0, uint32(arg2 - 1), 1, 0, arg3
            else:
                require 2 * block.timestamp / block.timestamp == 2
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokenToEthTransferInput(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) with:
                     gas gas_remaining wei
                    args 0, uint32(arg2 - 1), 1, 2 * block.timestamp, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            stor5 = ext_call.return_data[0]
            require ext_code.size(configAddress)
            call configAddress.ETH_ADDRESS() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0x6c39ed2b: ext_call.return_data[12 len 20], arg2, address(arg1), stor5, msg.sender, arg3
        else:
            require arg4 <= 3
            if 2 == arg4:
                require ext_code.size(configAddress)
                call configAddress.KYBER_PROXY() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
                require ext_code.size(configAddress)
                call configAddress.ETH_ADDRESS() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(configAddress)
                call configAddress.0x647ac724 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(configAddress)
                call configAddress.0x1c96cae9 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(configAddress)
                call configAddress.ZERO_ADDRESS() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[388] = uint256(stor6.field_0)
                idx = 388
                s = 0
                while stor6.length + 388 > idx + 32:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                     gas gas_remaining wei
                    args address(arg1), 1, address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0], 1, address(ext_call.return_data[0]), Array(len=stor6.length, data=mem[388 len stor6.length + (floor32(stor6.length - 1) + -stor6.length + 32 % 32)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 <= arg2
                require ext_code.size(configAddress)
                call configAddress.ETH_ADDRESS() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(configAddress)
                call configAddress.0x1c96cae9 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(configAddress)
                call configAddress.ZERO_ADDRESS() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[388] = uint256(stor6.field_0)
                idx = 388
                s = 0
                while stor6.length + 388 > idx + 32:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(address(stor4))
                call address(stor4).tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                     gas gas_remaining wei
                    args address(arg1), arg2 - 1, address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0], 1, address(ext_call.return_data[0]), Array(len=stor6.length, data=mem[388 len stor6.length + (floor32(stor6.length - 1) + -stor6.length + 32 % 32)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor5 = ext_call.return_data[0]
                require ext_code.size(configAddress)
                call configAddress.ETH_ADDRESS() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0x6c39ed2b: address(ext_call.return_data[0]), arg2, address(arg1), stor5, msg.sender, arg3
            else:
                require arg4 <= 3
                require ext_code.size(configAddress)
                if 3 == arg4:
                    call configAddress.0x3d00707a with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(configAddress)
                    call configAddress with:
                       funct Mask(32, 224, '=pz') >> 224
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(configAddress)
                    call configAddress.0x6177d75 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(configAddress)
                    call configAddress.ZERO_ADDRESS() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require address(ext_call.return_data[0]) != stor2[address(arg1)].field_256
                    require ext_code.size(configAddress)
                    call configAddress.ZERO_ADDRESS() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require address(ext_call.return_data[0]) != stor2[address(ext_call.return_data[0])].field_256
                    require ext_code.size(configAddress)
                    call configAddress.0x878d2922 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor3.length = 3
                    if stor3.length > 3:
                        idx = 3
                        while stor3.length > idx:
                            stor3[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    require 0 < stor3.length
                    address(stor3.field_0) = stor2[address(arg1)].field_0
                    require 1 < stor3.length
                    address(stor3.field_256) = stor2[address(arg1)].field_256
                    require 2 < stor3.length
                    address(stor3.field_512) = stor2[address(ext_call.return_data[0])].field_0
                    require ext_code.size(configAddress)
                    call configAddress.0x878d2922 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[12 len 20] == arg1:
                        require 1 < stor3.length
                        address(stor3.field_256) = stor2[address(ext_call.return_data[0])].field_256
                    else:
                        require ext_code.size(configAddress)
                        call configAddress.0x878d2922 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
                            stor3.length = 5
                            if stor3.length > 5:
                                idx = 5
                                while stor3.length > idx:
                                    stor3[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require 2 < stor3.length
                            address(stor3.field_512) = stor2[ext_call.return_data[12 len 20]].field_0
                            require 3 < stor3.length
                            address(stor3.field_768) = stor2[address(ext_call.return_data[0])].field_256
                            require 4 < stor3.length
                            address(stor3.field_1024) = stor2[address(ext_call.return_data[0])].field_0
                    require ext_code.size(configAddress)
                    call configAddress.0x647ac724 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not stor3.length:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args 128, 1, 1, address(ext_call.return_data[0]), stor3.length
                    else:
                        mem[644] = address(stor3.field_0)
                        idx = 644
                        s = 0
                        while (32 * stor3.length) + 644 > idx + 32:
                            mem[idx + 32] = stor3[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args Array(len=stor3.length, data=mem[644 len 32 * stor3.length]), 1, 1, address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor5 = ext_call.return_data[0]
                    require 1 <= arg2
                    if not stor3.length:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args 128, arg2 - 1, 1, address(arg3), stor3.length
                    else:
                        mem[644] = address(stor3.field_0)
                        idx = 644
                        s = 0
                        while (32 * stor3.length) + 644 > idx + 32:
                            mem[idx + 32] = stor3[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args Array(len=stor3.length, data=mem[644 len 32 * stor3.length]), arg2 - 1, 1, address(arg3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor5 = ext_call.return_data[0]
                call configAddress.ETH_ADDRESS() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0x6c39ed2b: ext_call.return_data[12 len 20], arg2, address(arg1), stor5, msg.sender, arg3
    else:
        require ext_call.return_data[0] * arg2 / arg2 == ext_call.return_data[0]
        require arg4 <= 3
        if 1 == arg4:
            require ext_code.size(configAddress)
            call configAddress.ZERO_ADDRESS() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[12 len 20] != arg1
            require ext_code.size(configAddress)
            call configAddress.UNI_FACTORY() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getExchange(address arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not block.timestamp:
                require ext_code.size(configAddress)
                call configAddress.0x647ac724 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokenToEthTransferInput(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) with:
                     gas gas_remaining wei
                    args 0, uint32((ext_call.return_data[0] * arg2 / 1000) + 1), 1, 0, address(ext_call.return_data[0])
            else:
                require 2 * block.timestamp / block.timestamp == 2
                require ext_code.size(configAddress)
                call configAddress.0x647ac724 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokenToEthTransferInput(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) with:
                     gas gas_remaining wei
                    args 0, uint32((ext_call.return_data[0] * arg2 / 1000) + 1), 1, 2 * block.timestamp, address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (ext_call.return_data[0] * arg2 / 1000) + 1 <= arg2
            if not block.timestamp:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokenToEthTransferInput(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) with:
                     gas gas_remaining wei
                    args 0, uint32(arg2 + -(ext_call.return_data[0] * arg2 / 1000) - 1), 1, 0, arg3
            else:
                require 2 * block.timestamp / block.timestamp == 2
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokenToEthTransferInput(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) with:
                     gas gas_remaining wei
                    args 0, uint32(arg2 + -(ext_call.return_data[0] * arg2 / 1000) - 1), 1, 2 * block.timestamp, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            stor5 = ext_call.return_data[0]
            require ext_code.size(configAddress)
            call configAddress.ETH_ADDRESS() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0x6c39ed2b: ext_call.return_data[12 len 20], arg2, address(arg1), stor5, msg.sender, arg3
        else:
            require arg4 <= 3
            if 2 == arg4:
                require ext_code.size(configAddress)
                call configAddress.KYBER_PROXY() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
                require ext_code.size(configAddress)
                call configAddress.ETH_ADDRESS() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(configAddress)
                call configAddress.0x647ac724 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(configAddress)
                call configAddress.0x1c96cae9 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(configAddress)
                call configAddress.ZERO_ADDRESS() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[388] = uint256(stor6.field_0)
                idx = 388
                s = 0
                while stor6.length + 388 > idx + 32:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                     gas gas_remaining wei
                    args address(arg1), (ext_call.return_data[0] * arg2 / 1000) + 1, address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0], 1, address(ext_call.return_data[0]), Array(len=stor6.length, data=mem[388 len stor6.length + (floor32(stor6.length - 1) + -stor6.length + 32 % 32)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (ext_call.return_data[0] * arg2 / 1000) + 1 <= arg2
                require ext_code.size(configAddress)
                call configAddress.ETH_ADDRESS() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(configAddress)
                call configAddress.0x1c96cae9 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(configAddress)
                call configAddress.ZERO_ADDRESS() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[388] = uint256(stor6.field_0)
                idx = 388
                s = 0
                while stor6.length + 388 > idx + 32:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(address(stor4))
                call address(stor4).tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                     gas gas_remaining wei
                    args address(arg1), arg2 + -(ext_call.return_data[0] * arg2 / 1000) - 1, address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0], 1, address(ext_call.return_data[0]), Array(len=stor6.length, data=mem[388 len stor6.length + (floor32(stor6.length - 1) + -stor6.length + 32 % 32)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor5 = ext_call.return_data[0]
                require ext_code.size(configAddress)
                call configAddress.ETH_ADDRESS() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0x6c39ed2b: address(ext_call.return_data[0]), arg2, address(arg1), stor5, msg.sender, arg3
            else:
                require arg4 <= 3
                require ext_code.size(configAddress)
                if 3 == arg4:
                    call configAddress.0x3d00707a with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(configAddress)
                    call configAddress with:
                       funct Mask(32, 224, '=pz') >> 224
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(configAddress)
                    call configAddress.0x6177d75 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(configAddress)
                    call configAddress.ZERO_ADDRESS() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require address(ext_call.return_data[0]) != stor2[address(arg1)].field_256
                    require ext_code.size(configAddress)
                    call configAddress.ZERO_ADDRESS() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require address(ext_call.return_data[0]) != stor2[address(ext_call.return_data[0])].field_256
                    require ext_code.size(configAddress)
                    call configAddress.0x878d2922 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor3.length = 3
                    if stor3.length > 3:
                        idx = 3
                        while stor3.length > idx:
                            stor3[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    require 0 < stor3.length
                    address(stor3.field_0) = stor2[address(arg1)].field_0
                    require 1 < stor3.length
                    address(stor3.field_256) = stor2[address(arg1)].field_256
                    require 2 < stor3.length
                    address(stor3.field_512) = stor2[address(ext_call.return_data[0])].field_0
                    require ext_code.size(configAddress)
                    call configAddress.0x878d2922 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[12 len 20] == arg1:
                        require 1 < stor3.length
                        address(stor3.field_256) = stor2[address(ext_call.return_data[0])].field_256
                    else:
                        require ext_code.size(configAddress)
                        call configAddress.0x878d2922 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
                            stor3.length = 5
                            if stor3.length > 5:
                                idx = 5
                                while stor3.length > idx:
                                    stor3[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require 2 < stor3.length
                            address(stor3.field_512) = stor2[ext_call.return_data[12 len 20]].field_0
                            require 3 < stor3.length
                            address(stor3.field_768) = stor2[address(ext_call.return_data[0])].field_256
                            require 4 < stor3.length
                            address(stor3.field_1024) = stor2[address(ext_call.return_data[0])].field_0
                    require ext_code.size(configAddress)
                    call configAddress.0x647ac724 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not stor3.length:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args 128, (ext_call.return_data[0] * arg2 / 1000) + 1, 1, address(ext_call.return_data[0]), stor3.length
                    else:
                        mem[644] = address(stor3.field_0)
                        idx = 644
                        s = 0
                        while (32 * stor3.length) + 644 > idx + 32:
                            mem[idx + 32] = stor3[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args Array(len=stor3.length, data=mem[644 len 32 * stor3.length]), (ext_call.return_data[0] * arg2 / 1000) + 1, 1, address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor5 = ext_call.return_data[0]
                    require (ext_call.return_data[0] * arg2 / 1000) + 1 <= arg2
                    if not stor3.length:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args 128, arg2 + -(ext_call.return_data[0] * arg2 / 1000) - 1, 1, address(arg3), stor3.length
                    else:
                        mem[644] = address(stor3.field_0)
                        idx = 644
                        s = 0
                        while (32 * stor3.length) + 644 > idx + 32:
                            mem[idx + 32] = stor3[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args Array(len=stor3.length, data=mem[644 len 32 * stor3.length]), arg2 + -(ext_call.return_data[0] * arg2 / 1000) - 1, 1, address(arg3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor5 = ext_call.return_data[0]
                call configAddress.ETH_ADDRESS() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0x6c39ed2b: ext_call.return_data[12 len 20], arg2, address(arg1), stor5, msg.sender, arg3
    return stor5
}



}
