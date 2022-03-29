contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 9181]




// =====================  Runtime code  =====================


#
#  - transferToICAPWithReference(bytes32 arg1, uint256 arg2, string arg3)
#
address etoken2Address;
uint256 etoken2Symbol;
array of uint256 name;
array of uint256 symbol;
mapping of uint8 stor4;
mapping of uint8 stor5;
address sub_aa46f961Address;

function multiAsset() {
    return etoken2Address
}

function name() {
    return name[0 len name.length]
}

function etoken2() {
    return etoken2Address
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_a1e8ac0b(?) {
    return bool(stor5[arg1])
}

function etoken2Symbol() {
    return etoken2Symbol
}

function sub_aa46f961(?) {
    return sub_aa46f961Address
}

function sub_f2ee5968(?) {
    return bool(stor4[arg1])
}

function sub_f77b8d7a(?) {
    if sub_aa46f961Address:
        return 0
    sub_aa46f961Address = arg1
    return 1
}

function sub_be9b42d2(?) {
    if not stor5[address(arg1)]:
        return bool(stor5[address(arg1)])
    return bool(stor4[address(arg1)])
}

function emitApprove(address arg1, address arg2, uint256 arg3) {
    if etoken2Address == msg.sender:
        emit Approval(arg3, arg1, arg2);
}

function emitTransfer(address arg1, address arg2, uint256 arg3) {
    if etoken2Address == msg.sender:
        emit Transfer(arg3, arg1, arg2);
}

function sub_8bbbbfd3(?) {
    if not stor5[address(msg.sender)]:
        stor5[address(msg.sender)] = 1
        stor4[address(msg.sender)] = 1
    stor4[address(msg.sender)] = uint8(arg1)
    return 1
}

function totalSupply() {
    require ext_code.size(etoken2Address)
    call etoken2Address.0xb524abcf with:
         gas gas_remaining - 50 wei
        args etoken2Symbol
    require ext_call.success
    return ext_call.return_data[0]
}

function decimals() {
    require ext_code.size(etoken2Address)
    call etoken2Address.0xdc86e6f0 with:
         gas gas_remaining - 50 wei
        args etoken2Symbol
    require ext_call.success
    return ext_call.return_data[31 len 1]
}

function balanceOf(address arg1) {
    require ext_code.size(etoken2Address)
    call etoken2Address.0x4d30b6be with:
         gas gas_remaining - 50 wei
        args address(arg1), etoken2Symbol
    require ext_call.success
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) {
    require ext_code.size(etoken2Address)
    call etoken2Address.0x1c8d5d38 with:
         gas gas_remaining - 50 wei
        args address(arg1), address(arg2), etoken2Symbol
    require ext_call.success
    return ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) {
    if not stor5[address(msg.sender)]:
        stor5[address(msg.sender)] = 1
        stor4[address(msg.sender)] = 1
    require ext_code.size(etoken2Address)
    call etoken2Address.0x14712e2f with:
         gas gas_remaining - 50 wei
        args 0, 0, arg2, etoken2Symbol, msg.sender
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_a340fff4(?) {
    require ext_code.size(etoken2Address)
    call etoken2Address.0x4d30b6be with:
         gas gas_remaining - 50 wei
        args address(this.address), etoken2Symbol
    require ext_call.success
    require ext_code.size(etoken2Address)
    call etoken2Address.0xca448a88 with:
         gas gas_remaining - 50 wei
        args etoken2Symbol, ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not stor5[address(msg.sender)]:
        stor5[address(msg.sender)] = 1
        stor4[address(msg.sender)] = 1
    if stor5[address(arg2)]:
        if stor4[address(arg2)]:
            require ext_code.size(etoken2Address)
            call etoken2Address.0x161ff662 with:
                 gas gas_remaining - 50 wei
                args 0, 0, 0, arg3, etoken2Symbol, 192, msg.sender, 0
            require ext_call.success
            return bool(ext_call.return_data[0])
    require ext_code.size(etoken2Address)
    call etoken2Address.0x161ff662 with:
         gas gas_remaining - 50 wei
        args 0, 0, 0, arg3, etoken2Symbol, 192, msg.sender, 0
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if this.address == arg2:
        call msg.sender with:
           value arg3 wei
             gas gas_remaining - 34050 wei
    else:
        call arg2 with:
           value arg3 wei
             gas gas_remaining - 34050 wei
    require ext_call.success
    return 1
}

function withdraw(address arg1, uint256 arg2) {
    if not stor5[address(msg.sender)]:
        stor5[address(msg.sender)] = 1
        stor4[address(msg.sender)] = 1
    if stor5[address(arg1)]:
        if stor4[address(arg1)]:
            if arg1 != msg.sender:
                require ext_code.size(etoken2Address)
                call etoken2Address.0x161ff662 with:
                     gas gas_remaining - 50 wei
                    args 0, 0, 0, arg2, etoken2Symbol, 192, msg.sender, 0
                require ext_call.success
                return bool(ext_call.return_data[0])
    require ext_code.size(etoken2Address)
    call etoken2Address.0x161ff662 with:
         gas gas_remaining - 50 wei
        args 0, 0, 0, arg2, etoken2Symbol, 192, msg.sender, 0
    require ext_call.success
    if not ext_call.return_data[0]:
        return bool(ext_call.return_data[0])
    if this.address == arg1:
        call msg.sender with:
           value arg2 wei
             gas gas_remaining - 34050 wei
    else:
        call arg1 with:
           value arg2 wei
             gas gas_remaining - 34050 wei
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function deposit(address arg1) payable {
    if not stor5[address(msg.sender)]:
        stor5[address(msg.sender)] = 1
        stor4[address(msg.sender)] = 1
    if not msg.value:
        return 0
    if arg1 == this.address:
        if not msg.value:
            return 0
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
        return 0
    require ext_code.size(etoken2Address)
    call etoken2Address.0x4d30b6be with:
         gas gas_remaining - 50 wei
        args address(this.address), etoken2Symbol
    require ext_call.success
    require ext_code.size(etoken2Address)
    if ext_call.return_data[0] < msg.value:
        call etoken2Address.0x4d30b6be with:
             gas gas_remaining - 50 wei
            args address(this.address), etoken2Symbol
        require ext_call.success
        require ext_code.size(etoken2Address)
        call etoken2Address.0xe0873c06 with:
             gas gas_remaining - 50 wei
            args etoken2Symbol, msg.value - ext_call.return_data[0]
        require ext_call.success
    call etoken2Address.0x161ff662 with:
         gas gas_remaining - 50 wei
        args 0, 0, 0, msg.value, etoken2Symbol, 192, address(this.address), 7, 'Deposit' % 72057594037927936
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function _fallback() payable {
    if not stor5[address(msg.sender)]:
        stor5[address(msg.sender)] = 1
        stor4[address(msg.sender)] = 1
    if msg.value:
        if msg.sender == this.address:
            if not msg.value:
            call msg.sender with:
               value msg.value wei
                 gas gas_remaining - 34050 wei
            require ext_call.success
        require ext_code.size(etoken2Address)
        call etoken2Address.0x4d30b6be with:
             gas gas_remaining - 50 wei
            args address(this.address), etoken2Symbol
        require ext_call.success
        require ext_code.size(etoken2Address)
        if ext_call.return_data[0] < msg.value:
            call etoken2Address.0x4d30b6be with:
                 gas gas_remaining - 50 wei
                args address(this.address), etoken2Symbol
            require ext_call.success
            require ext_code.size(etoken2Address)
            call etoken2Address.0xe0873c06 with:
                 gas gas_remaining - 50 wei
                args etoken2Symbol, msg.value - ext_call.return_data[0]
            require ext_call.success
        call etoken2Address.0x161ff662 with:
             gas gas_remaining - 50 wei
            args 0, 0, uint32(msg.sender), msg.value, etoken2Symbol, 192, address(this.address), 7, 'Deposit' % 72057594037927936
        require ext_call.success
}

function sub_1a9237de(?) {
    require ext_code.size(etoken2Address)
    call etoken2Address.0xa0f15b87 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).institutions(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args sha3(Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 4) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 5) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 6) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 7) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 8) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 9) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 10) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256)
    require ext_call.success
    if not stor5[ext_call.return_data[12 len 20]]:
        return bool(stor5[ext_call.return_data[12 len 20]])
    return bool(stor4[address(ext_call.return_data[0])])
}

function transferFromToICAP(address arg1, bytes32 arg2, uint256 arg3) {
    if not stor5[address(msg.sender)]:
        stor5[address(msg.sender)] = 1
        stor4[address(msg.sender)] = 1
    require ext_code.size(etoken2Address)
    call etoken2Address.0xa0f15b87 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).institutions(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args sha3(Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) + 256, 4) << (('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) + 256, 5) << (('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) + 256, 6) << (('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) + 256, 7) << (('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) + 256, 8) << (('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) + 256, 9) << (('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) + 256, 10) << (('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) - 256)
    require ext_call.success
    if stor5[ext_call.return_data[12 len 20]]:
        if stor4[address(ext_call.return_data[0])]:
            require ext_code.size(etoken2Address)
            call etoken2Address.0xa69032ee with:
                 gas gas_remaining - 50 wei
                args 0, 0, uint32(arg2), arg3, 160, msg.sender, 0
            require ext_call.success
            return bool(ext_call.return_data[0])
    require ext_code.size(etoken2Address)
    call etoken2Address.0x161ff662 with:
         gas gas_remaining - 50 wei
        args 0, 0, 0, arg3, etoken2Symbol, 192, msg.sender, 0
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(sub_aa46f961Address)
    call sub_aa46f961Address.0xd882aa0 with:
       value arg3 wei
         gas gas_remaining - 9050 wei
        args arg2, 64, 0
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}

function sub_490c0e8f(?) payable {
    mem[128 len arg2.length] = arg2[all]
    if not stor5[address(msg.sender)]:
        stor5[address(msg.sender)] = 1
        stor4[address(msg.sender)] = 1
    if not msg.value:
        return 0
    if arg1 == this.address:
        if not msg.value:
            return 0
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
        return 0
    require ext_code.size(etoken2Address)
    call etoken2Address.0x4d30b6be with:
         gas gas_remaining - 50 wei
        args address(this.address), etoken2Symbol
    require ext_call.success
    if ext_call.return_data[0] < msg.value:
        require ext_code.size(etoken2Address)
        call etoken2Address.0x4d30b6be with:
             gas gas_remaining - 50 wei
            args address(this.address), etoken2Symbol
        require ext_call.success
        require ext_code.size(etoken2Address)
        call etoken2Address.0xe0873c06 with:
             gas gas_remaining - 50 wei
            args etoken2Symbol, msg.value - ext_call.return_data[0]
        require ext_call.success
    mem[ceil32(arg2.length) + 128] = 0x161ff66200000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + 132] = this.address
    mem[ceil32(arg2.length) + 164] = arg1
    mem[ceil32(arg2.length) + 196] = msg.value
    mem[ceil32(arg2.length) + 228] = etoken2Symbol
    mem[ceil32(arg2.length) + 292] = this.address
    mem[ceil32(arg2.length) + 260] = 192
    mem[ceil32(arg2.length) + 324] = arg2.length
    if not arg2.length:
        if not arg2.length % 32:
            require ext_code.size(etoken2Address)
            call etoken2Address.0x161ff662 with:
                 gas gas_remaining - 50 wei
                args 0, 0, 0, msg.value, etoken2Symbol, 192, address(this.address), arg2.length, mem[ceil32(arg2.length) + 356 len arg2.length]
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 356] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 388 len arg2.length % 32]
            require ext_code.size(etoken2Address)
            call etoken2Address.0x161ff662 with:
                 gas gas_remaining - 50 wei
                args address(this.address), address(arg1), msg.value, etoken2Symbol, Array(len=arg2.length, data=mem[ceil32(arg2.length) + 356 len floor32(arg2.length) + 32]), address(this.address)
    else:
        mem[ceil32(arg2.length) + 356] = mem[128]
        mem[ceil32(arg2.length) + 388 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
        require ext_code.size(etoken2Address)
        call etoken2Address.0x161ff662 with:
             gas gas_remaining - 50 wei
            args address(this.address), address(arg1), msg.value, etoken2Symbol, Array(len=arg2.length, data=mem[ceil32(arg2.length) + 356 len arg2.length]), address(this.address)
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4) {
    mem[128 len arg4.length] = arg4[all]
    if not stor5[address(msg.sender)]:
        stor5[address(msg.sender)] = 1
        stor4[address(msg.sender)] = 1
    if stor5[address(arg2)]:
        if stor4[address(arg2)]:
            mem[ceil32(arg4.length) + 128] = 0x161ff66200000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg4.length) + 132] = arg1
            mem[ceil32(arg4.length) + 164] = arg2
            mem[ceil32(arg4.length) + 196] = arg3
            mem[ceil32(arg4.length) + 228] = etoken2Symbol
            mem[ceil32(arg4.length) + 292] = msg.sender
            mem[ceil32(arg4.length) + 260] = 192
            mem[ceil32(arg4.length) + 324] = arg4.length
            if not arg4.length:
                if not arg4.length % 32:
                    require ext_code.size(etoken2Address)
                    call etoken2Address.0x161ff662 with:
                         gas gas_remaining - 50 wei
                        args 0, 0, 0, arg3, etoken2Symbol, 192, msg.sender, arg4.length, mem[ceil32(arg4.length) + 356 len arg4.length]
                else:
                    mem[floor32(arg4.length) + ceil32(arg4.length) + 356] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 388 len arg4.length % 32]
                    require ext_code.size(etoken2Address)
                    call etoken2Address.0x161ff662 with:
                         gas gas_remaining - 50 wei
                        args address(arg1), address(arg2), arg3, etoken2Symbol, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 356 len floor32(arg4.length) + 32]), msg.sender
            else:
                mem[ceil32(arg4.length) + 356] = mem[128]
                mem[ceil32(arg4.length) + 388 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                require ext_code.size(etoken2Address)
                call etoken2Address.0x161ff662 with:
                     gas gas_remaining - 50 wei
                    args address(arg1), address(arg2), arg3, etoken2Symbol, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 356 len arg4.length]), msg.sender
            require ext_call.success
            return bool(ext_call.return_data[0])
    mem[ceil32(arg4.length) + 128] = 0x161ff66200000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + 132] = arg1
    mem[ceil32(arg4.length) + 164] = this.address
    mem[ceil32(arg4.length) + 196] = arg3
    mem[ceil32(arg4.length) + 228] = etoken2Symbol
    mem[ceil32(arg4.length) + 292] = msg.sender
    mem[ceil32(arg4.length) + 260] = 192
    mem[ceil32(arg4.length) + 324] = arg4.length
    if not arg4.length:
        if not arg4.length % 32:
            if ext_code.size(etoken2Address):
                call etoken2Address.0x161ff662 with:
                     gas gas_remaining - 50 wei
                    args 0, 0, 0, arg3, etoken2Symbol, 192, msg.sender, arg4.length, mem[ceil32(arg4.length) + 356 len arg4.length]
                if ext_call.success:
                    if not ext_call.return_data[0]:
                        return 0
                    if this.address == arg2:
                        call msg.sender with:
                           value arg3 wei
                             gas gas_remaining - 34050 wei
                    else:
                        call arg2 with:
                           value arg3 wei
                             gas gas_remaining - 34050 wei
                    if ext_call.success:
                        return 1
        else:
            mem[floor32(arg4.length) + ceil32(arg4.length) + 356] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 388 len arg4.length % 32]
            if ext_code.size(etoken2Address):
                call etoken2Address.0x161ff662 with:
                     gas gas_remaining - 50 wei
                    args address(arg1), address(this.address), arg3, etoken2Symbol, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 356 len floor32(arg4.length) + 32]), msg.sender
                if ext_call.success:
                    if not ext_call.return_data[0]:
                        return 0
                    if this.address == arg2:
                        call msg.sender with:
                           value arg3 wei
                             gas gas_remaining - 34050 wei
                    else:
                        call arg2 with:
                           value arg3 wei
                             gas gas_remaining - 34050 wei
                    if ext_call.success:
                        return 1
    else:
        mem[ceil32(arg4.length) + 356] = mem[128]
        mem[ceil32(arg4.length) + 388 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
        if ext_code.size(etoken2Address):
            call etoken2Address.0x161ff662 with:
                 gas gas_remaining - 50 wei
                args address(arg1), address(this.address), arg3, etoken2Symbol, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 356 len arg4.length]), msg.sender
            if ext_call.success:
                if not ext_call.return_data[0]:
                    return 0
                if this.address == arg2:
                    call msg.sender with:
                       value arg3 wei
                         gas gas_remaining - 34050 wei
                else:
                    call arg2 with:
                       value arg3 wei
                         gas gas_remaining - 34050 wei
                if ext_call.success:
                    return 1
    revert 
}

function withdrawWithReference(address arg1, uint256 arg2, string arg3) {
    mem[128 len arg3.length] = arg3[all]
    if not stor5[address(msg.sender)]:
        stor5[address(msg.sender)] = 1
        stor4[address(msg.sender)] = 1
    if stor5[address(arg1)]:
        if stor4[address(arg1)]:
            if arg1 != msg.sender:
                mem[ceil32(arg3.length) + 128] = 0x161ff66200000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + 132] = msg.sender
                mem[ceil32(arg3.length) + 164] = arg1
                mem[ceil32(arg3.length) + 196] = arg2
                mem[ceil32(arg3.length) + 228] = etoken2Symbol
                mem[ceil32(arg3.length) + 292] = msg.sender
                mem[ceil32(arg3.length) + 260] = 192
                mem[ceil32(arg3.length) + 324] = arg3.length
                if not arg3.length:
                    if not arg3.length % 32:
                        require ext_code.size(etoken2Address)
                        call etoken2Address.0x161ff662 with:
                             gas gas_remaining - 50 wei
                            args 0, 0, 0, arg2, etoken2Symbol, 192, msg.sender, arg3.length, mem[ceil32(arg3.length) + 356 len arg3.length]
                    else:
                        mem[floor32(arg3.length) + ceil32(arg3.length) + 356] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 388 len arg3.length % 32]
                        require ext_code.size(etoken2Address)
                        call etoken2Address.0x161ff662 with:
                             gas gas_remaining - 50 wei
                            args msg.sender, address(arg1), arg2, etoken2Symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 356 len floor32(arg3.length) + 32]), msg.sender
                else:
                    mem[ceil32(arg3.length) + 356] = mem[128]
                    mem[ceil32(arg3.length) + 388 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                    require ext_code.size(etoken2Address)
                    call etoken2Address.0x161ff662 with:
                         gas gas_remaining - 50 wei
                        args msg.sender, address(arg1), arg2, etoken2Symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 356 len arg3.length]), msg.sender
                require ext_call.success
                return bool(ext_call.return_data[0])
    mem[ceil32(arg3.length) + 128] = 0x161ff66200000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 132] = msg.sender
    mem[ceil32(arg3.length) + 164] = this.address
    mem[ceil32(arg3.length) + 196] = arg2
    mem[ceil32(arg3.length) + 228] = etoken2Symbol
    mem[ceil32(arg3.length) + 292] = msg.sender
    mem[ceil32(arg3.length) + 260] = 192
    mem[ceil32(arg3.length) + 324] = arg3.length
    if not arg3.length:
        if not arg3.length % 32:
            if ext_code.size(etoken2Address):
                call etoken2Address.0x161ff662 with:
                     gas gas_remaining - 50 wei
                    args 0, 0, 0, arg2, etoken2Symbol, 192, msg.sender, arg3.length, mem[ceil32(arg3.length) + 356 len arg3.length]
                if ext_call.success:
                    if not ext_call.return_data[0]:
                        return bool(ext_call.return_data[0])
                    if this.address == arg1:
                        call msg.sender with:
                           value arg2 wei
                             gas gas_remaining - 34050 wei
                    else:
                        call arg1 with:
                           value arg2 wei
                             gas gas_remaining - 34050 wei
                    if ext_call.success:
                        return bool(ext_call.return_data[0])
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 356] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 388 len arg3.length % 32]
            if ext_code.size(etoken2Address):
                call etoken2Address.0x161ff662 with:
                     gas gas_remaining - 50 wei
                    args msg.sender, address(this.address), arg2, etoken2Symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 356 len floor32(arg3.length) + 32]), msg.sender
                if ext_call.success:
                    if not ext_call.return_data[0]:
                        return bool(ext_call.return_data[0])
                    if this.address == arg1:
                        call msg.sender with:
                           value arg2 wei
                             gas gas_remaining - 34050 wei
                    else:
                        call arg1 with:
                           value arg2 wei
                             gas gas_remaining - 34050 wei
                    if ext_call.success:
                        return bool(ext_call.return_data[0])
    else:
        mem[ceil32(arg3.length) + 356] = mem[128]
        mem[ceil32(arg3.length) + 388 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        if ext_code.size(etoken2Address):
            call etoken2Address.0x161ff662 with:
                 gas gas_remaining - 50 wei
                args msg.sender, address(this.address), arg2, etoken2Symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 356 len arg3.length]), msg.sender
            if ext_call.success:
                if not ext_call.return_data[0]:
                    return bool(ext_call.return_data[0])
                if this.address == arg1:
                    call msg.sender with:
                       value arg2 wei
                         gas gas_remaining - 34050 wei
                else:
                    call arg1 with:
                       value arg2 wei
                         gas gas_remaining - 34050 wei
                if ext_call.success:
                    return bool(ext_call.return_data[0])
    revert 
}

function transferFromToICAPWithReference(address arg1, bytes32 arg2, uint256 arg3, string arg4) {
    mem[128 len arg4.length] = arg4[all]
    if not stor5[address(msg.sender)]:
        stor5[address(msg.sender)] = 1
        stor4[address(msg.sender)] = 1
    require ext_code.size(etoken2Address)
    call etoken2Address.0xa0f15b87 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).institutions(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args sha3(Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) + 256, 4) << (('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) + 256, 5) << (('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) + 256, 6) << (('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) + 256, 7) << (('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) + 256, 8) << (('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) + 256, 9) << (('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) + 256, 10) << (('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) - 256)
    require ext_call.success
    if stor5[ext_call.return_data[12 len 20]]:
        if stor4[address(ext_call.return_data[0])]:
            mem[ceil32(arg4.length) + 128] = 0xa69032ee00000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg4.length) + 132] = arg1
            mem[ceil32(arg4.length) + 164] = arg2
            mem[ceil32(arg4.length) + 196] = arg3
            mem[ceil32(arg4.length) + 260] = msg.sender
            mem[ceil32(arg4.length) + 228] = 160
            mem[ceil32(arg4.length) + 292] = arg4.length
            if not arg4.length:
                if not arg4.length % 32:
                    require ext_code.size(etoken2Address)
                    call etoken2Address.0xa69032ee with:
                         gas gas_remaining - 50 wei
                        args 0, 0, uint32(arg2), arg3, 160, msg.sender, arg4.length, mem[ceil32(arg4.length) + 324 len arg4.length]
                else:
                    mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                    require ext_code.size(etoken2Address)
                    call etoken2Address.0xa69032ee with:
                         gas gas_remaining - 50 wei
                        args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len floor32(arg4.length) + 32]), msg.sender
            else:
                mem[ceil32(arg4.length) + 324] = mem[128]
                mem[ceil32(arg4.length) + 356 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                require ext_code.size(etoken2Address)
                call etoken2Address.0xa69032ee with:
                     gas gas_remaining - 50 wei
                    args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len arg4.length]), msg.sender
            require ext_call.success
            return bool(ext_call.return_data[0])
    mem[ceil32(arg4.length) + 128] = 0x161ff66200000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + 132] = arg1
    mem[ceil32(arg4.length) + 164] = this.address
    mem[ceil32(arg4.length) + 196] = arg3
    mem[ceil32(arg4.length) + 228] = etoken2Symbol
    mem[ceil32(arg4.length) + 292] = msg.sender
    mem[ceil32(arg4.length) + 260] = 192
    mem[ceil32(arg4.length) + 324] = arg4.length
    if not arg4.length:
        if ext_code.size(etoken2Address):
            call etoken2Address.0x161ff662 with:
                 gas gas_remaining - 50 wei
                args 0, 0, 0, arg3, etoken2Symbol, 192, msg.sender, arg4.length, mem[ceil32(arg4.length) + 356 len arg4.length]
            if ext_call.success:
                if not ext_call.return_data[0]:
                    return 0
                mem[ceil32(arg4.length) + 128] = 0xd882aa000000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg4.length) + 132] = arg2
                mem[ceil32(arg4.length) + 164] = 64
                mem[ceil32(arg4.length) + 196] = arg4.length
                if arg4.length:
                    mem[ceil32(arg4.length) + 228] = mem[128]
                    mem[ceil32(arg4.length) + 260 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                if ext_code.size(sub_aa46f961Address):
                    call sub_aa46f961Address.0xd882aa0 with:
                       value arg3 wei
                         gas gas_remaining - 9050 wei
                        args arg2, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 228 len arg4.length])
                    if ext_call.success:
                        if ext_call.return_data[0]:
                            return 1
    else:
        mem[ceil32(arg4.length) + 356] = mem[128]
        mem[ceil32(arg4.length) + 388 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
        if ext_code.size(etoken2Address):
            call etoken2Address.0x161ff662 with:
                 gas gas_remaining - 50 wei
                args address(arg1), address(this.address), arg3, etoken2Symbol, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 356 len arg4.length]), msg.sender
            if ext_call.success:
                if not ext_call.return_data[0]:
                    return 0
                mem[ceil32(arg4.length) + 128] = 0xd882aa000000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg4.length) + 132] = arg2
                mem[ceil32(arg4.length) + 164] = 64
                mem[ceil32(arg4.length) + 196] = arg4.length
                if arg4.length:
                    mem[ceil32(arg4.length) + 228] = mem[128]
                    mem[ceil32(arg4.length) + 260 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                if ext_code.size(sub_aa46f961Address):
                    call sub_aa46f961Address.0xd882aa0 with:
                       value arg3 wei
                         gas gas_remaining - 9050 wei
                        args arg2, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 228 len arg4.length])
                    if ext_call.success:
                        if ext_call.return_data[0]:
                            return 1
    revert 
}

function transfer(address arg1, uint256 arg2) payable {
    if not stor5[address(msg.sender)]:
        stor5[address(msg.sender)] = 1
        stor4[address(msg.sender)] = 1
    if not msg.value:
        if stor5[address(arg1)]:
            if stor4[address(arg1)]:
                if arg1 != msg.sender:
                    require ext_code.size(etoken2Address)
                    call etoken2Address.0x161ff662 with:
                         gas gas_remaining - 50 wei
                        args 0, uint32(msg.sender), address(arg1), arg2, etoken2Symbol, 192, msg.sender, 0
                    require ext_call.success
                    return bool(ext_call.return_data[0])
        if ext_code.size(etoken2Address):
            call etoken2Address.0x161ff662 with:
                 gas gas_remaining - 50 wei
                args 0, uint32(msg.sender), address(this.address), arg2, etoken2Symbol, 192, msg.sender, 0
            if ext_call.success:
                if not ext_call.return_data[0]:
                    return bool(ext_call.return_data[0])
                if this.address == arg1:
                    call msg.sender with:
                       value arg2 wei
                         gas gas_remaining - 34050 wei
                else:
                    call arg1 with:
                       value arg2 wei
                         gas gas_remaining - 34050 wei
                if ext_call.success:
                    return bool(ext_call.return_data[0])
    else:
        if msg.sender == this.address:
            if not msg.value:
                if stor5[address(arg1)]:
                    if stor4[address(arg1)]:
                        if arg1 != msg.sender:
                            require ext_code.size(etoken2Address)
                            call etoken2Address.0x161ff662 with:
                                 gas gas_remaining - 50 wei
                                args 0, uint32(msg.sender), address(arg1), arg2, etoken2Symbol, 192, msg.sender, 0
                            require ext_call.success
                            return bool(ext_call.return_data[0])
                if ext_code.size(etoken2Address):
                    call etoken2Address.0x161ff662 with:
                         gas gas_remaining - 50 wei
                        args 0, uint32(msg.sender), address(this.address), arg2, etoken2Symbol, 192, msg.sender, 0
                    if ext_call.success:
                        if not ext_call.return_data[0]:
                            return bool(ext_call.return_data[0])
                        if this.address == arg1:
                            call msg.sender with:
                               value arg2 wei
                                 gas gas_remaining - 34050 wei
                        else:
                            call arg1 with:
                               value arg2 wei
                                 gas gas_remaining - 34050 wei
                        if ext_call.success:
                            return bool(ext_call.return_data[0])
            else:
                call msg.sender with:
                   value msg.value wei
                     gas gas_remaining - 34050 wei
                if ext_call.success:
                    if stor5[address(arg1)]:
                        if stor4[address(arg1)]:
                            if arg1 != msg.sender:
                                require ext_code.size(etoken2Address)
                                call etoken2Address.0x161ff662 with:
                                     gas gas_remaining - 50 wei
                                    args 0, uint32(msg.sender), address(arg1), arg2, etoken2Symbol, 192, msg.sender, 0
                                require ext_call.success
                                return bool(ext_call.return_data[0])
                    if ext_code.size(etoken2Address):
                        call etoken2Address.0x161ff662 with:
                             gas gas_remaining - 50 wei
                            args 0, uint32(msg.sender), address(this.address), arg2, etoken2Symbol, 192, msg.sender, 0
                        if ext_call.success:
                            if not ext_call.return_data[0]:
                                return bool(ext_call.return_data[0])
                            if this.address == arg1:
                                call msg.sender with:
                                   value arg2 wei
                                     gas gas_remaining - 34050 wei
                            else:
                                call arg1 with:
                                   value arg2 wei
                                     gas gas_remaining - 34050 wei
                            if ext_call.success:
                                return bool(ext_call.return_data[0])
        else:
            if ext_code.size(etoken2Address):
                call etoken2Address.0x4d30b6be with:
                     gas gas_remaining - 50 wei
                    args address(this.address), etoken2Symbol
                if ext_call.success:
                    if ext_call.return_data[0] >= msg.value:
                        if ext_code.size(etoken2Address):
                            call etoken2Address.0x161ff662 with:
                                 gas gas_remaining - 50 wei
                                args 0, 0, uint32(msg.sender), msg.value, etoken2Symbol, 192, address(this.address), 7, 'Deposit' % 72057594037927936
                            if ext_call.success:
                                if stor5[address(arg1)]:
                                    if stor4[address(arg1)]:
                                        if arg1 != msg.sender:
                                            require ext_code.size(etoken2Address)
                                            call etoken2Address.0x161ff662 with:
                                                 gas gas_remaining - 50 wei
                                                args 0, uint32(msg.sender), address(arg1), arg2, etoken2Symbol, 192, msg.sender, 0
                                            require ext_call.success
                                            return bool(ext_call.return_data[0])
                                if ext_code.size(etoken2Address):
                                    call etoken2Address.0x161ff662 with:
                                         gas gas_remaining - 50 wei
                                        args 0, uint32(msg.sender), address(this.address), arg2, etoken2Symbol, 192, msg.sender, 0
                                    if ext_call.success:
                                        if not ext_call.return_data[0]:
                                            return bool(ext_call.return_data[0])
                                        if this.address == arg1:
                                            call msg.sender with:
                                               value arg2 wei
                                                 gas gas_remaining - 34050 wei
                                        else:
                                            call arg1 with:
                                               value arg2 wei
                                                 gas gas_remaining - 34050 wei
                                        if ext_call.success:
                                            return bool(ext_call.return_data[0])
                    else:
                        if ext_code.size(etoken2Address):
                            call etoken2Address.0x4d30b6be with:
                                 gas gas_remaining - 50 wei
                                args address(this.address), etoken2Symbol
                            if ext_call.success:
                                if ext_code.size(etoken2Address):
                                    call etoken2Address.0xe0873c06 with:
                                         gas gas_remaining - 50 wei
                                        args etoken2Symbol, msg.value - ext_call.return_data[0]
                                    if ext_call.success:
                                        if ext_code.size(etoken2Address):
                                            call etoken2Address.0x161ff662 with:
                                                 gas gas_remaining - 50 wei
                                                args 0, 0, uint32(msg.sender), msg.value, etoken2Symbol, 192, address(this.address), 7, 'Deposit' % 72057594037927936
                                            if ext_call.success:
                                                if stor5[address(arg1)]:
                                                    if stor4[address(arg1)]:
                                                        if arg1 != msg.sender:
                                                            require ext_code.size(etoken2Address)
                                                            call etoken2Address.0x161ff662 with:
                                                                 gas gas_remaining - 50 wei
                                                                args 0, uint32(msg.sender), address(arg1), arg2, etoken2Symbol, 192, msg.sender, 0
                                                            require ext_call.success
                                                            return bool(ext_call.return_data[0])
                                                if ext_code.size(etoken2Address):
                                                    call etoken2Address.0x161ff662 with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, uint32(msg.sender), address(this.address), arg2, etoken2Symbol, 192, msg.sender, 0
                                                    if ext_call.success:
                                                        if not ext_call.return_data[0]:
                                                            return bool(ext_call.return_data[0])
                                                        if this.address == arg1:
                                                            call msg.sender with:
                                                               value arg2 wei
                                                                 gas gas_remaining - 34050 wei
                                                        else:
                                                            call arg1 with:
                                                               value arg2 wei
                                                                 gas gas_remaining - 34050 wei
                                                        if ext_call.success:
                                                            return bool(ext_call.return_data[0])
    revert 
}

function sub_fcbdbaaa(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = arg4.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len arg4.length] = arg4[all]
    if etoken2Address:
        return 0
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = 0x85a470500000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 196] = mem[128]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 228] = 0
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 324] = 18
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356] = 1
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 260] = 192
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 388] = arg3.length
    if not arg3.length:
        if not arg3.length % 32:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 292] = arg3.length + 224
            mem[arg3.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 420] = arg4.length
            if not arg4.length:
                if not arg4.length % 32:
                    require ext_code.size(arg1)
                    call arg1.issueAsset(bytes32 rg1, uint256 rg2, string rg3, string rg4, uint8 rg5, bool rg6) with:
                         gas gas_remaining - 50 wei
                        args mem[128], 0, 192, arg3.length + 224, 18, 1, arg3.length, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 420 len arg4.length + arg3.length + 32]
                else:
                    mem[floor32(arg4.length) + arg3.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + arg3.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                    require ext_code.size(arg1)
                    call arg1.issueAsset(bytes32 rg1, uint256 rg2, string rg3, string rg4, uint8 rg5, bool rg6) with:
                         gas gas_remaining - 50 wei
                        args mem[128], 0, 192, arg3.length + 224, 18, 1, arg3.length, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 420 len floor32(arg4.length) + arg3.length + 64]
            else:
                mem[arg3.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 452] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192]
                mem[arg3.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 484 len floor32(arg4.length - 1)] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg4.length - 1)]
                if not arg4.length % 32:
                    require ext_code.size(arg1)
                    call arg1.issueAsset(bytes32 rg1, uint256 rg2, string rg3, string rg4, uint8 rg5, bool rg6) with:
                         gas gas_remaining - 50 wei
                        args mem[128], 0, 192, arg3.length + 224, 18, 1, arg3.length, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 420 len arg4.length + arg3.length + 32]
                else:
                    mem[floor32(arg4.length) + arg3.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + arg3.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                    require ext_code.size(arg1)
                    call arg1.issueAsset(bytes32 rg1, uint256 rg2, string rg3, string rg4, uint8 rg5, bool rg6) with:
                         gas gas_remaining - 50 wei
                        args mem[128], 0, 192, arg3.length + 224, 18, 1, arg3.length, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 420 len arg3.length + 32], mem[ceil32(arg2.length) + ceil32(arg3.length) + 192], mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 484 len floor32(arg4.length)]
        else:
            mem[floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 420] = mem[floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 452 len arg3.length % 32]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 292] = floor32(arg3.length) + 256
            mem[floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 452] = arg4.length
            if not arg4.length:
                if not arg4.length % 32:
                    require ext_code.size(arg1)
                    call arg1.issueAsset(bytes32 rg1, uint256 rg2, string rg3, string rg4, uint8 rg5, bool rg6) with:
                         gas gas_remaining - 50 wei
                        args mem[128], 0, 192, floor32(arg3.length) + 256, 18, 1, arg3.length, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 420 len floor32(arg3.length) + 32], arg4.length, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 484 len arg4.length]
                else:
                    mem[floor32(arg4.length) + floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 484] = mem[floor32(arg4.length) + floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 516 len arg4.length % 32]
                    require ext_code.size(arg1)
                    call arg1.issueAsset(bytes32 rg1, uint256 rg2, string rg3, string rg4, uint8 rg5, bool rg6) with:
                         gas gas_remaining - 50 wei
                        args mem[128], 0, 192, floor32(arg3.length) + 256, 18, 1, arg3.length, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 420 len floor32(arg3.length) + 32], arg4.length, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 484 len floor32(arg4.length) + 32]
            else:
                mem[floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 484] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192]
                mem[floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 516 len floor32(arg4.length - 1)] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg4.length - 1)]
                if not arg4.length % 32:
                    require ext_code.size(arg1)
                    call arg1.issueAsset(bytes32 rg1, uint256 rg2, string rg3, string rg4, uint8 rg5, bool rg6) with:
                         gas gas_remaining - 50 wei
                        args mem[128], 0, 192, floor32(arg3.length) + 256, 18, 1, arg3.length, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 420 len floor32(arg3.length) + 32], arg4.length, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 484 len arg4.length]
                else:
                    mem[floor32(arg4.length) + floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 484] = mem[floor32(arg4.length) + floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 516 len arg4.length % 32]
                    require ext_code.size(arg1)
                    call arg1.issueAsset(bytes32 rg1, uint256 rg2, string rg3, string rg4, uint8 rg5, bool rg6) with:
                         gas gas_remaining - 50 wei
                        args mem[128], 0, 192, floor32(arg3.length) + 256, 18, 1, arg3.length, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 420 len floor32(arg3.length) + 32], arg4.length, mem[ceil32(arg2.length) + ceil32(arg3.length) + 192], mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 516 len floor32(arg4.length)]
    else:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 420] = mem[ceil32(arg2.length) + 160]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 452 len floor32(arg3.length - 1)] = mem[ceil32(arg2.length) + 192 len floor32(arg3.length - 1)]
        if not arg3.length % 32:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 292] = arg3.length + 224
            mem[arg3.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 420] = arg4.length
            if arg4.length:
                mem[arg3.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 452] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192]
                mem[arg3.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 484 len floor32(arg4.length - 1)] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg4.length - 1)]
            if not arg4.length % 32:
                require ext_code.size(arg1)
                call arg1.issueAsset(bytes32 rg1, uint256 rg2, string rg3, string rg4, uint8 rg5, bool rg6) with:
                     gas gas_remaining - 50 wei
                    args mem[128], 0, 192, arg3.length + 224, 18, 1, arg3.length, mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 452 len arg4.length + arg3.length]
            else:
                mem[floor32(arg4.length) + arg3.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + arg3.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                require ext_code.size(arg1)
                call arg1.issueAsset(bytes32 rg1, uint256 rg2, string rg3, string rg4, uint8 rg5, bool rg6) with:
                     gas gas_remaining - 50 wei
                    args mem[128], 0, 192, arg3.length + 224, 18, 1, arg3.length, mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 452 len floor32(arg4.length) + arg3.length + 32]
        else:
            mem[floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 420] = mem[floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 452 len arg3.length % 32]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 292] = floor32(arg3.length) + 256
            mem[floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 452] = arg4.length
            if not arg4.length:
                if not arg4.length % 32:
                    require ext_code.size(arg1)
                    call arg1.issueAsset(bytes32 rg1, uint256 rg2, string rg3, string rg4, uint8 rg5, bool rg6) with:
                         gas gas_remaining - 50 wei
                        args mem[128], 0, 192, floor32(arg3.length) + 256, 18, 1, arg3.length, mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 452 len arg4.length + floor32(arg3.length) + 32]
                else:
                    mem[floor32(arg4.length) + floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 484] = mem[floor32(arg4.length) + floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 516 len arg4.length % 32]
                    require ext_code.size(arg1)
                    call arg1.issueAsset(bytes32 rg1, uint256 rg2, string rg3, string rg4, uint8 rg5, bool rg6) with:
                         gas gas_remaining - 50 wei
                        args mem[128], 0, 192, floor32(arg3.length) + 256, 18, 1, arg3.length, mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 452 len floor32(arg4.length) + floor32(arg3.length) + 64]
            else:
                mem[floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 484] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192]
                mem[floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 516 len floor32(arg4.length - 1)] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg4.length - 1)]
                if not arg4.length % 32:
                    require ext_code.size(arg1)
                    call arg1.issueAsset(bytes32 rg1, uint256 rg2, string rg3, string rg4, uint8 rg5, bool rg6) with:
                         gas gas_remaining - 50 wei
                        args mem[128], 0, 192, floor32(arg3.length) + 256, 18, 1, arg3.length, mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 452 len arg4.length + floor32(arg3.length) + 32]
                else:
                    mem[floor32(arg4.length) + floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 484] = mem[floor32(arg4.length) + floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 516 len arg4.length % 32]
                    require ext_code.size(arg1)
                    call arg1.issueAsset(bytes32 rg1, uint256 rg2, string rg3, string rg4, uint8 rg5, bool rg6) with:
                         gas gas_remaining - 50 wei
                        args mem[128], 0, 192, floor32(arg3.length) + 256, 18, 1, arg3.length, mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 452 len floor32(arg3.length) + 32], mem[ceil32(arg2.length) + ceil32(arg3.length) + 192], mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 516 len floor32(arg4.length)]
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    etoken2Address = arg1
    etoken2Symbol = mem[128]
    name[] = Array(len=arg3.length, data=arg3[all])
    symbol.length = (2 * arg2.length) + 1
    s = 0
    idx = 128
    while arg2.length + 128 > idx:
        symbol[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if symbol.length + 31 / 32 > Mask(251, 0, arg2.length + 31) >> 5:
        symbol[Mask(251, 0, arg2.length + 31) >> 5] = 0
        idx = (Mask(251, 0, arg2.length + 31) >> 5) + 1
        while symbol.length + 31 / 32 > idx:
            symbol[idx] = 0
            idx = idx + 1
            continue 
    require ext_code.size(etoken2Address)
    call etoken2Address.0x638a9ce9 with:
         gas gas_remaining - 50 wei
        args address(this.address), etoken2Symbol
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(etoken2Address)
    call etoken2Address.0xd0169c1e with:
         gas gas_remaining - 50 wei
        args etoken2Symbol
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}

function transferToICAP(bytes32 arg1, uint256 arg2) payable {
    if not stor5[address(msg.sender)]:
        stor5[address(msg.sender)] = 1
        stor4[address(msg.sender)] = 1
    if not msg.value:
        if ext_code.size(etoken2Address):
            call etoken2Address.0xa0f15b87 with:
                 gas gas_remaining - 50 wei
            if ext_call.success:
                if ext_code.size(address(ext_call.return_data[0])):
                    call address(ext_call.return_data[0]).institutions(bytes32 rg1) with:
                         gas gas_remaining - 50 wei
                        args sha3(Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 4) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 5) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 6) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 7) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 8) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 9) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 10) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256)
                    if ext_call.success:
                        if stor5[ext_call.return_data[12 len 20]]:
                            if stor4[address(ext_call.return_data[0])]:
                                require ext_code.size(etoken2Address)
                                call etoken2Address.0xa69032ee with:
                                     gas gas_remaining - 50 wei
                                    args msg.sender, arg1, arg2, 160, msg.sender, 0
                                require ext_call.success
                                return bool(ext_call.return_data[0])
                        if ext_code.size(etoken2Address):
                            call etoken2Address.0x161ff662 with:
                                 gas gas_remaining - 50 wei
                                args 0, uint32(msg.sender), address(this.address), arg2, etoken2Symbol, 192, msg.sender, 0
                            if ext_call.success:
                                if not ext_call.return_data[0]:
                                    return bool(ext_call.return_data[0])
                                if ext_code.size(sub_aa46f961Address):
                                    call sub_aa46f961Address.0xd882aa0 with:
                                       value arg2 wei
                                         gas gas_remaining - 9050 wei
                                        args arg1, 64, 0
                                    if ext_call.success:
                                        if ext_call.return_data[0]:
                                            return bool(ext_call.return_data[0])
    else:
        if msg.sender == this.address:
            if not msg.value:
                if ext_code.size(etoken2Address):
                    call etoken2Address.0xa0f15b87 with:
                         gas gas_remaining - 50 wei
                    if ext_call.success:
                        if ext_code.size(address(ext_call.return_data[0])):
                            call address(ext_call.return_data[0]).institutions(bytes32 rg1) with:
                                 gas gas_remaining - 50 wei
                                args sha3(Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 4) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 5) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 6) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 7) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 8) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 9) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 10) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256)
                            if ext_call.success:
                                if stor5[ext_call.return_data[12 len 20]]:
                                    if stor4[address(ext_call.return_data[0])]:
                                        require ext_code.size(etoken2Address)
                                        call etoken2Address.0xa69032ee with:
                                             gas gas_remaining - 50 wei
                                            args msg.sender, arg1, arg2, 160, msg.sender, 0
                                        require ext_call.success
                                        return bool(ext_call.return_data[0])
                                if ext_code.size(etoken2Address):
                                    call etoken2Address.0x161ff662 with:
                                         gas gas_remaining - 50 wei
                                        args 0, uint32(msg.sender), address(this.address), arg2, etoken2Symbol, 192, msg.sender, 0
                                    if ext_call.success:
                                        if not ext_call.return_data[0]:
                                            return bool(ext_call.return_data[0])
                                        if ext_code.size(sub_aa46f961Address):
                                            call sub_aa46f961Address.0xd882aa0 with:
                                               value arg2 wei
                                                 gas gas_remaining - 9050 wei
                                                args arg1, 64, 0
                                            if ext_call.success:
                                                if ext_call.return_data[0]:
                                                    return bool(ext_call.return_data[0])
            else:
                call msg.sender with:
                   value msg.value wei
                     gas gas_remaining - 34050 wei
                if ext_call.success:
                    if ext_code.size(etoken2Address):
                        call etoken2Address.0xa0f15b87 with:
                             gas gas_remaining - 50 wei
                        if ext_call.success:
                            if ext_code.size(address(ext_call.return_data[0])):
                                call address(ext_call.return_data[0]).institutions(bytes32 rg1) with:
                                     gas gas_remaining - 50 wei
                                    args sha3(Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 4) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 5) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 6) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 7) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 8) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 9) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 10) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256)
                                if ext_call.success:
                                    if stor5[ext_call.return_data[12 len 20]]:
                                        if stor4[address(ext_call.return_data[0])]:
                                            require ext_code.size(etoken2Address)
                                            call etoken2Address.0xa69032ee with:
                                                 gas gas_remaining - 50 wei
                                                args msg.sender, arg1, arg2, 160, msg.sender, 0
                                            require ext_call.success
                                            return bool(ext_call.return_data[0])
                                    if ext_code.size(etoken2Address):
                                        call etoken2Address.0x161ff662 with:
                                             gas gas_remaining - 50 wei
                                            args 0, uint32(msg.sender), address(this.address), arg2, etoken2Symbol, 192, msg.sender, 0
                                        if ext_call.success:
                                            if not ext_call.return_data[0]:
                                                return bool(ext_call.return_data[0])
                                            if ext_code.size(sub_aa46f961Address):
                                                call sub_aa46f961Address.0xd882aa0 with:
                                                   value arg2 wei
                                                     gas gas_remaining - 9050 wei
                                                    args arg1, 64, 0
                                                if ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        return bool(ext_call.return_data[0])
        else:
            if ext_code.size(etoken2Address):
                call etoken2Address.0x4d30b6be with:
                     gas gas_remaining - 50 wei
                    args address(this.address), etoken2Symbol
                if ext_call.success:
                    if ext_call.return_data[0] >= msg.value:
                        if ext_code.size(etoken2Address):
                            call etoken2Address.0x161ff662 with:
                                 gas gas_remaining - 50 wei
                                args 0, 0, uint32(msg.sender), msg.value, etoken2Symbol, 192, address(this.address), 7, 'Deposit' % 72057594037927936
                            if ext_call.success:
                                if ext_code.size(etoken2Address):
                                    call etoken2Address.0xa0f15b87 with:
                                         gas gas_remaining - 50 wei
                                    if ext_call.success:
                                        if ext_code.size(address(ext_call.return_data[0])):
                                            call address(ext_call.return_data[0]).institutions(bytes32 rg1) with:
                                                 gas gas_remaining - 50 wei
                                                args sha3(Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 4) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 5) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 6) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 7) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 8) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 9) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 10) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256)
                                            if ext_call.success:
                                                if stor5[ext_call.return_data[12 len 20]]:
                                                    if stor4[address(ext_call.return_data[0])]:
                                                        require ext_code.size(etoken2Address)
                                                        call etoken2Address.0xa69032ee with:
                                                             gas gas_remaining - 50 wei
                                                            args msg.sender, arg1, arg2, 160, msg.sender, 0
                                                        require ext_call.success
                                                        return bool(ext_call.return_data[0])
                                                if ext_code.size(etoken2Address):
                                                    call etoken2Address.0x161ff662 with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, uint32(msg.sender), address(this.address), arg2, etoken2Symbol, 192, msg.sender, 0
                                                    if ext_call.success:
                                                        if not ext_call.return_data[0]:
                                                            return bool(ext_call.return_data[0])
                                                        if ext_code.size(sub_aa46f961Address):
                                                            call sub_aa46f961Address.0xd882aa0 with:
                                                               value arg2 wei
                                                                 gas gas_remaining - 9050 wei
                                                                args arg1, 64, 0
                                                            if ext_call.success:
                                                                if ext_call.return_data[0]:
                                                                    return bool(ext_call.return_data[0])
                    else:
                        if ext_code.size(etoken2Address):
                            call etoken2Address.0x4d30b6be with:
                                 gas gas_remaining - 50 wei
                                args address(this.address), etoken2Symbol
                            if ext_call.success:
                                if ext_code.size(etoken2Address):
                                    call etoken2Address.0xe0873c06 with:
                                         gas gas_remaining - 50 wei
                                        args etoken2Symbol, msg.value - ext_call.return_data[0]
                                    if ext_call.success:
                                        if ext_code.size(etoken2Address):
                                            call etoken2Address.0x161ff662 with:
                                                 gas gas_remaining - 50 wei
                                                args 0, 0, uint32(msg.sender), msg.value, etoken2Symbol, 192, address(this.address), 7, 'Deposit' % 72057594037927936
                                            if ext_call.success:
                                                if ext_code.size(etoken2Address):
                                                    call etoken2Address.0xa0f15b87 with:
                                                         gas gas_remaining - 50 wei
                                                    if ext_call.success:
                                                        if ext_code.size(address(ext_call.return_data[0])):
                                                            call address(ext_call.return_data[0]).institutions(bytes32 rg1) with:
                                                                 gas gas_remaining - 50 wei
                                                                args sha3(Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 4) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 5) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 6) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 7) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 8) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 9) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 10) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256)
                                                            if ext_call.success:
                                                                if stor5[ext_call.return_data[12 len 20]]:
                                                                    if stor4[address(ext_call.return_data[0])]:
                                                                        require ext_code.size(etoken2Address)
                                                                        call etoken2Address.0xa69032ee with:
                                                                             gas gas_remaining - 50 wei
                                                                            args msg.sender, arg1, arg2, 160, msg.sender, 0
                                                                        require ext_call.success
                                                                        return bool(ext_call.return_data[0])
                                                                if ext_code.size(etoken2Address):
                                                                    call etoken2Address.0x161ff662 with:
                                                                         gas gas_remaining - 50 wei
                                                                        args 0, uint32(msg.sender), address(this.address), arg2, etoken2Symbol, 192, msg.sender, 0
                                                                    if ext_call.success:
                                                                        if not ext_call.return_data[0]:
                                                                            return bool(ext_call.return_data[0])
                                                                        if ext_code.size(sub_aa46f961Address):
                                                                            call sub_aa46f961Address.0xd882aa0 with:
                                                                               value arg2 wei
                                                                                 gas gas_remaining - 9050 wei
                                                                                args arg1, 64, 0
                                                                            if ext_call.success:
                                                                                if ext_call.return_data[0]:
                                                                                    return bool(ext_call.return_data[0])
    revert 
}

function transferWithReference(address arg1, uint256 arg2, string arg3) payable {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = 7
    mem[ceil32(arg3.length) + 160] = 'Deposit'
    if not stor5[address(msg.sender)]:
        stor5[address(msg.sender)] = 1
        stor4[address(msg.sender)] = 1
    if not msg.value:
        if stor5[address(arg1)]:
            if stor4[address(arg1)]:
                if arg1 != msg.sender:
                    mem[ceil32(arg3.length) + 192] = 0x161ff66200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 196] = msg.sender
                    mem[ceil32(arg3.length) + 228] = arg1
                    mem[ceil32(arg3.length) + 260] = arg2
                    mem[ceil32(arg3.length) + 292] = etoken2Symbol
                    mem[ceil32(arg3.length) + 356] = msg.sender
                    mem[ceil32(arg3.length) + 324] = 192
                    mem[ceil32(arg3.length) + 388] = arg3.length
                    if not arg3.length:
                        if not arg3.length % 32:
                            require ext_code.size(etoken2Address)
                            call etoken2Address.0x161ff662 with:
                                 gas gas_remaining - 50 wei
                                args 0, uint32(msg.sender), address(arg1), arg2, etoken2Symbol, 192, msg.sender, arg3.length, mem[ceil32(arg3.length) + 420 len arg3.length]
                        else:
                            mem[floor32(arg3.length) + ceil32(arg3.length) + 420] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 452 len arg3.length % 32]
                            require ext_code.size(etoken2Address)
                            call etoken2Address.0x161ff662 with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, address(arg1), arg2, etoken2Symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 420 len floor32(arg3.length) + 32]), msg.sender
                    else:
                        mem[ceil32(arg3.length) + 420] = mem[128]
                        mem[ceil32(arg3.length) + 452 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                        require ext_code.size(etoken2Address)
                        call etoken2Address.0x161ff662 with:
                             gas gas_remaining - 50 wei
                            args msg.sender, address(arg1), arg2, etoken2Symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 420 len arg3.length]), msg.sender
                    require ext_call.success
                    return bool(ext_call.return_data[0])
        mem[ceil32(arg3.length) + 192] = 0x161ff66200000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + 196] = msg.sender
        mem[ceil32(arg3.length) + 228] = this.address
        mem[ceil32(arg3.length) + 260] = arg2
        mem[ceil32(arg3.length) + 292] = etoken2Symbol
        mem[ceil32(arg3.length) + 356] = msg.sender
        mem[ceil32(arg3.length) + 324] = 192
        mem[ceil32(arg3.length) + 388] = arg3.length
        if not arg3.length:
            if not arg3.length % 32:
                if ext_code.size(etoken2Address):
                    call etoken2Address.0x161ff662 with:
                         gas gas_remaining - 50 wei
                        args 0, uint32(msg.sender), address(this.address), arg2, etoken2Symbol, 192, msg.sender, arg3.length, mem[ceil32(arg3.length) + 420 len arg3.length]
                    if ext_call.success:
                        if not ext_call.return_data[0]:
                            return bool(ext_call.return_data[0])
                        if this.address == arg1:
                            call msg.sender with:
                               value arg2 wei
                                 gas gas_remaining - 34050 wei
                        else:
                            call arg1 with:
                               value arg2 wei
                                 gas gas_remaining - 34050 wei
                        if ext_call.success:
                            return bool(ext_call.return_data[0])
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + 420] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 452 len arg3.length % 32]
                if ext_code.size(etoken2Address):
                    call etoken2Address.0x161ff662 with:
                         gas gas_remaining - 50 wei
                        args msg.sender, address(this.address), arg2, etoken2Symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 420 len floor32(arg3.length) + 32]), msg.sender
                    if ext_call.success:
                        if not ext_call.return_data[0]:
                            return bool(ext_call.return_data[0])
                        if this.address == arg1:
                            call msg.sender with:
                               value arg2 wei
                                 gas gas_remaining - 34050 wei
                        else:
                            call arg1 with:
                               value arg2 wei
                                 gas gas_remaining - 34050 wei
                        if ext_call.success:
                            return bool(ext_call.return_data[0])
        else:
            mem[ceil32(arg3.length) + 420] = mem[128]
            mem[ceil32(arg3.length) + 452 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
            if ext_code.size(etoken2Address):
                call etoken2Address.0x161ff662 with:
                     gas gas_remaining - 50 wei
                    args msg.sender, address(this.address), arg2, etoken2Symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 420 len arg3.length]), msg.sender
                if ext_call.success:
                    if not ext_call.return_data[0]:
                        return bool(ext_call.return_data[0])
                    if this.address == arg1:
                        call msg.sender with:
                           value arg2 wei
                             gas gas_remaining - 34050 wei
                    else:
                        call arg1 with:
                           value arg2 wei
                             gas gas_remaining - 34050 wei
                    if ext_call.success:
                        return bool(ext_call.return_data[0])
    else:
        if msg.sender == this.address:
            if not msg.value:
                if stor5[address(arg1)]:
                    if stor4[address(arg1)]:
                        if arg1 != msg.sender:
                            mem[ceil32(arg3.length) + 192] = 0x161ff66200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg3.length) + 196] = msg.sender
                            mem[ceil32(arg3.length) + 228] = arg1
                            mem[ceil32(arg3.length) + 260] = arg2
                            mem[ceil32(arg3.length) + 292] = etoken2Symbol
                            mem[ceil32(arg3.length) + 356] = msg.sender
                            mem[ceil32(arg3.length) + 324] = 192
                            mem[ceil32(arg3.length) + 388] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    require ext_code.size(etoken2Address)
                                    call etoken2Address.0x161ff662 with:
                                         gas gas_remaining - 50 wei
                                        args 0, uint32(msg.sender), address(arg1), arg2, etoken2Symbol, 192, msg.sender, arg3.length, mem[ceil32(arg3.length) + 420 len arg3.length]
                                else:
                                    mem[floor32(arg3.length) + ceil32(arg3.length) + 420] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 452 len arg3.length % 32]
                                    require ext_code.size(etoken2Address)
                                    call etoken2Address.0x161ff662 with:
                                         gas gas_remaining - 50 wei
                                        args msg.sender, address(arg1), arg2, etoken2Symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 420 len floor32(arg3.length) + 32]), msg.sender
                            else:
                                mem[ceil32(arg3.length) + 420] = mem[128]
                                mem[ceil32(arg3.length) + 452 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                                require ext_code.size(etoken2Address)
                                call etoken2Address.0x161ff662 with:
                                     gas gas_remaining - 50 wei
                                    args msg.sender, address(arg1), arg2, etoken2Symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 420 len arg3.length]), msg.sender
                            require ext_call.success
                            return bool(ext_call.return_data[0])
                mem[ceil32(arg3.length) + 192] = 0x161ff66200000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + 196] = msg.sender
                mem[ceil32(arg3.length) + 228] = this.address
                mem[ceil32(arg3.length) + 260] = arg2
                mem[ceil32(arg3.length) + 292] = etoken2Symbol
                mem[ceil32(arg3.length) + 356] = msg.sender
                mem[ceil32(arg3.length) + 324] = 192
                mem[ceil32(arg3.length) + 388] = arg3.length
                if not arg3.length:
                    if not arg3.length % 32:
                        if ext_code.size(etoken2Address):
                            call etoken2Address.0x161ff662 with:
                                 gas gas_remaining - 50 wei
                                args 0, uint32(msg.sender), address(this.address), arg2, etoken2Symbol, 192, msg.sender, arg3.length, mem[ceil32(arg3.length) + 420 len arg3.length]
                            if ext_call.success:
                                if not ext_call.return_data[0]:
                                    return bool(ext_call.return_data[0])
                                if this.address == arg1:
                                    call msg.sender with:
                                       value arg2 wei
                                         gas gas_remaining - 34050 wei
                                else:
                                    call arg1 with:
                                       value arg2 wei
                                         gas gas_remaining - 34050 wei
                                if ext_call.success:
                                    return bool(ext_call.return_data[0])
                    else:
                        mem[floor32(arg3.length) + ceil32(arg3.length) + 420] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 452 len arg3.length % 32]
                        if ext_code.size(etoken2Address):
                            call etoken2Address.0x161ff662 with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, address(this.address), arg2, etoken2Symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 420 len floor32(arg3.length) + 32]), msg.sender
                            if ext_call.success:
                                if not ext_call.return_data[0]:
                                    return bool(ext_call.return_data[0])
                                if this.address == arg1:
                                    call msg.sender with:
                                       value arg2 wei
                                         gas gas_remaining - 34050 wei
                                else:
                                    call arg1 with:
                                       value arg2 wei
                                         gas gas_remaining - 34050 wei
                                if ext_call.success:
                                    return bool(ext_call.return_data[0])
                else:
                    mem[ceil32(arg3.length) + 420] = mem[128]
                    mem[ceil32(arg3.length) + 452 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                    if ext_code.size(etoken2Address):
                        call etoken2Address.0x161ff662 with:
                             gas gas_remaining - 50 wei
                            args msg.sender, address(this.address), arg2, etoken2Symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 420 len arg3.length]), msg.sender
                        if ext_call.success:
                            if not ext_call.return_data[0]:
                                return bool(ext_call.return_data[0])
                            if this.address == arg1:
                                call msg.sender with:
                                   value arg2 wei
                                     gas gas_remaining - 34050 wei
                            else:
                                call arg1 with:
                                   value arg2 wei
                                     gas gas_remaining - 34050 wei
                            if ext_call.success:
                                return bool(ext_call.return_data[0])
            else:
                call msg.sender with:
                   value msg.value wei
                     gas gas_remaining - 34050 wei
                if ext_call.success:
                    if stor5[address(arg1)]:
                        if stor4[address(arg1)]:
                            if arg1 != msg.sender:
                                mem[ceil32(arg3.length) + 192] = 0x161ff66200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(arg3.length) + 196] = msg.sender
                                mem[ceil32(arg3.length) + 228] = arg1
                                mem[ceil32(arg3.length) + 260] = arg2
                                mem[ceil32(arg3.length) + 292] = etoken2Symbol
                                mem[ceil32(arg3.length) + 356] = msg.sender
                                mem[ceil32(arg3.length) + 324] = 192
                                mem[ceil32(arg3.length) + 388] = arg3.length
                                if not arg3.length:
                                    if not arg3.length % 32:
                                        require ext_code.size(etoken2Address)
                                        call etoken2Address.0x161ff662 with:
                                             gas gas_remaining - 50 wei
                                            args 0, uint32(msg.sender), address(arg1), arg2, etoken2Symbol, 192, msg.sender, arg3.length, mem[ceil32(arg3.length) + 420 len arg3.length]
                                    else:
                                        mem[floor32(arg3.length) + ceil32(arg3.length) + 420] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 452 len arg3.length % 32]
                                        require ext_code.size(etoken2Address)
                                        call etoken2Address.0x161ff662 with:
                                             gas gas_remaining - 50 wei
                                            args msg.sender, address(arg1), arg2, etoken2Symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 420 len floor32(arg3.length) + 32]), msg.sender
                                else:
                                    mem[ceil32(arg3.length) + 420] = mem[128]
                                    mem[ceil32(arg3.length) + 452 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                                    require ext_code.size(etoken2Address)
                                    call etoken2Address.0x161ff662 with:
                                         gas gas_remaining - 50 wei
                                        args msg.sender, address(arg1), arg2, etoken2Symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 420 len arg3.length]), msg.sender
                                require ext_call.success
                                return bool(ext_call.return_data[0])
                    mem[ceil32(arg3.length) + 192] = 0x161ff66200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 196] = msg.sender
                    mem[ceil32(arg3.length) + 228] = this.address
                    mem[ceil32(arg3.length) + 260] = arg2
                    mem[ceil32(arg3.length) + 292] = etoken2Symbol
                    mem[ceil32(arg3.length) + 356] = msg.sender
                    mem[ceil32(arg3.length) + 324] = 192
                    mem[ceil32(arg3.length) + 388] = arg3.length
                    if not arg3.length:
                        if not arg3.length % 32:
                            if ext_code.size(etoken2Address):
                                call etoken2Address.0x161ff662 with:
                                     gas gas_remaining - 50 wei
                                    args 0, uint32(msg.sender), address(this.address), arg2, etoken2Symbol, 192, msg.sender, arg3.length, mem[ceil32(arg3.length) + 420 len arg3.length]
                                if ext_call.success:
                                    if not ext_call.return_data[0]:
                                        return bool(ext_call.return_data[0])
                                    if this.address == arg1:
                                        call msg.sender with:
                                           value arg2 wei
                                             gas gas_remaining - 34050 wei
                                    else:
                                        call arg1 with:
                                           value arg2 wei
                                             gas gas_remaining - 34050 wei
                                    if ext_call.success:
                                        return bool(ext_call.return_data[0])
                        else:
                            mem[floor32(arg3.length) + ceil32(arg3.length) + 420] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 452 len arg3.length % 32]
                            if ext_code.size(etoken2Address):
                                call etoken2Address.0x161ff662 with:
                                     gas gas_remaining - 50 wei
                                    args msg.sender, address(this.address), arg2, etoken2Symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 420 len floor32(arg3.length) + 32]), msg.sender
                                if ext_call.success:
                                    if not ext_call.return_data[0]:
                                        return bool(ext_call.return_data[0])
                                    if this.address == arg1:
                                        call msg.sender with:
                                           value arg2 wei
                                             gas gas_remaining - 34050 wei
                                    else:
                                        call arg1 with:
                                           value arg2 wei
                                             gas gas_remaining - 34050 wei
                                    if ext_call.success:
                                        return bool(ext_call.return_data[0])
                    else:
                        mem[ceil32(arg3.length) + 420] = mem[128]
                        mem[ceil32(arg3.length) + 452 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                        if ext_code.size(etoken2Address):
                            call etoken2Address.0x161ff662 with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, address(this.address), arg2, etoken2Symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 420 len arg3.length]), msg.sender
                            if ext_call.success:
                                if not ext_call.return_data[0]:
                                    return bool(ext_call.return_data[0])
                                if this.address == arg1:
                                    call msg.sender with:
                                       value arg2 wei
                                         gas gas_remaining - 34050 wei
                                else:
                                    call arg1 with:
                                       value arg2 wei
                                         gas gas_remaining - 34050 wei
                                if ext_call.success:
                                    return bool(ext_call.return_data[0])
        else:
            if ext_code.size(etoken2Address):
                call etoken2Address.0x4d30b6be with:
                     gas gas_remaining - 50 wei
                    args address(this.address), etoken2Symbol
                if ext_call.success:
                    if ext_call.return_data[0] >= msg.value:
                        mem[ceil32(arg3.length) + 452 len 0] = None
                        mem[ceil32(arg3.length) + 420] = 'Deposit' % 72057594037927936
                        if ext_code.size(etoken2Address):
                            call etoken2Address.0x161ff662 with:
                                 gas gas_remaining - 50 wei
                                args address(this.address), msg.sender, msg.value, etoken2Symbol, 'Deposit', address(this.address)
                            if ext_call.success:
                                if stor5[address(arg1)]:
                                    if stor4[address(arg1)]:
                                        if arg1 != msg.sender:
                                            mem[ceil32(arg3.length) + 192] = 0x161ff66200000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(arg3.length) + 196] = msg.sender
                                            mem[ceil32(arg3.length) + 228] = arg1
                                            mem[ceil32(arg3.length) + 260] = arg2
                                            mem[ceil32(arg3.length) + 292] = etoken2Symbol
                                            mem[ceil32(arg3.length) + 356] = msg.sender
                                            mem[ceil32(arg3.length) + 324] = 192
                                            mem[ceil32(arg3.length) + 388] = arg3.length
                                            if arg3.length:
                                                mem[ceil32(arg3.length) + 420] = mem[128]
                                                mem[ceil32(arg3.length) + 452 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                                            require ext_code.size(etoken2Address)
                                            call etoken2Address.0x161ff662 with:
                                                 gas gas_remaining - 50 wei
                                                args msg.sender, address(arg1), arg2, etoken2Symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 420 len arg3.length]), msg.sender
                                            require ext_call.success
                                            return bool(ext_call.return_data[0])
                                mem[ceil32(arg3.length) + 192] = 0x161ff66200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(arg3.length) + 196] = msg.sender
                                mem[ceil32(arg3.length) + 228] = this.address
                                mem[ceil32(arg3.length) + 260] = arg2
                                mem[ceil32(arg3.length) + 292] = etoken2Symbol
                                mem[ceil32(arg3.length) + 356] = msg.sender
                                mem[ceil32(arg3.length) + 324] = 192
                                mem[ceil32(arg3.length) + 388] = arg3.length
                                if arg3.length:
                                    mem[ceil32(arg3.length) + 420] = mem[128]
                                    mem[ceil32(arg3.length) + 452 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                                if ext_code.size(etoken2Address):
                                    call etoken2Address.0x161ff662 with:
                                         gas gas_remaining - 50 wei
                                        args msg.sender, address(this.address), arg2, etoken2Symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 420 len arg3.length]), msg.sender
                                    if ext_call.success:
                                        if not ext_call.return_data[0]:
                                            return bool(ext_call.return_data[0])
                                        if this.address == arg1:
                                            call msg.sender with:
                                               value arg2 wei
                                                 gas gas_remaining - 34050 wei
                                        else:
                                            call arg1 with:
                                               value arg2 wei
                                                 gas gas_remaining - 34050 wei
                                        if ext_call.success:
                                            return bool(ext_call.return_data[0])
                    else:
                        if ext_code.size(etoken2Address):
                            call etoken2Address.0x4d30b6be with:
                                 gas gas_remaining - 50 wei
                                args address(this.address), etoken2Symbol
                            if ext_call.success:
                                if ext_code.size(etoken2Address):
                                    call etoken2Address.0xe0873c06 with:
                                         gas gas_remaining - 50 wei
                                        args etoken2Symbol, msg.value - ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[ceil32(arg3.length) + 452 len 0] = None
                                        mem[ceil32(arg3.length) + 420] = 'Deposit' % 72057594037927936
                                        if ext_code.size(etoken2Address):
                                            call etoken2Address.0x161ff662 with:
                                                 gas gas_remaining - 50 wei
                                                args address(this.address), msg.sender, msg.value, etoken2Symbol, 'Deposit', address(this.address)
                                            if ext_call.success:
                                                if stor5[address(arg1)]:
                                                    if stor4[address(arg1)]:
                                                        if arg1 != msg.sender:
                                                            mem[ceil32(arg3.length) + 192] = 0x161ff66200000000000000000000000000000000000000000000000000000000
                                                            mem[ceil32(arg3.length) + 196] = msg.sender
                                                            mem[ceil32(arg3.length) + 228] = arg1
                                                            mem[ceil32(arg3.length) + 260] = arg2
                                                            mem[ceil32(arg3.length) + 292] = etoken2Symbol
                                                            mem[ceil32(arg3.length) + 356] = msg.sender
                                                            mem[ceil32(arg3.length) + 324] = 192
                                                            mem[ceil32(arg3.length) + 388] = arg3.length
                                                            if arg3.length:
                                                                mem[ceil32(arg3.length) + 420] = mem[128]
                                                                mem[ceil32(arg3.length) + 452 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                                                            require ext_code.size(etoken2Address)
                                                            call etoken2Address.0x161ff662 with:
                                                                 gas gas_remaining - 50 wei
                                                                args msg.sender, address(arg1), arg2, etoken2Symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 420 len arg3.length]), msg.sender
                                                            require ext_call.success
                                                            return bool(ext_call.return_data[0])
                                                mem[ceil32(arg3.length) + 192] = 0x161ff66200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(arg3.length) + 196] = msg.sender
                                                mem[ceil32(arg3.length) + 228] = this.address
                                                mem[ceil32(arg3.length) + 260] = arg2
                                                mem[ceil32(arg3.length) + 292] = etoken2Symbol
                                                mem[ceil32(arg3.length) + 356] = msg.sender
                                                mem[ceil32(arg3.length) + 324] = 192
                                                mem[ceil32(arg3.length) + 388] = arg3.length
                                                if arg3.length:
                                                    mem[ceil32(arg3.length) + 420] = mem[128]
                                                    mem[ceil32(arg3.length) + 452 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                                                if ext_code.size(etoken2Address):
                                                    call etoken2Address.0x161ff662 with:
                                                         gas gas_remaining - 50 wei
                                                        args msg.sender, address(this.address), arg2, etoken2Symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 420 len arg3.length]), msg.sender
                                                    if ext_call.success:
                                                        if not ext_call.return_data[0]:
                                                            return bool(ext_call.return_data[0])
                                                        if this.address == arg1:
                                                            call msg.sender with:
                                                               value arg2 wei
                                                                 gas gas_remaining - 34050 wei
                                                        else:
                                                            call arg1 with:
                                                               value arg2 wei
                                                                 gas gas_remaining - 34050 wei
                                                        if ext_call.success:
                                                            return bool(ext_call.return_data[0])
    revert 
}



}
