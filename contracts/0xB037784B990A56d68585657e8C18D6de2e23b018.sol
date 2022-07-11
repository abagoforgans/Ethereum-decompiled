contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor4;
uint256 stor5;
array of uint256 class;
array of uint256 sub_cb4774c4;
array of uint256 description;
uint256 sub_e24ff744;
uint256 sub_c47d1a7a;
address rootAddress;
address stor12;
address stor13;
uint256 stor14;
uint8 isSealed;
mapping of struct sub_1405ee17;

function sub_1405ee17(?) {
    require calldata.size - 4 >= 32
    return sub_1405ee17[arg1].field_0, sub_1405ee17[arg1].field_256, sub_1405ee17[arg1].field_512
}

function isSealed() {
    return bool(isSealed)
}

function description() {
    return description[0 len description.length]
}

function class() {
    return class[0 len class.length]
}

function sub_c47d1a7a(?) {
    return sub_c47d1a7a
}

function sub_cb4774c4(?) {
    return sub_cb4774c4[0 len sub_cb4774c4.length]
}

function sub_e24ff744(?) {
    return sub_e24ff744
}

function root() {
    return rootAddress
}

function _fallback() {
    if this.address != msg.sender:
        revert with 0, 'Regulator.onlyMe: Access denied'
    if not isSealed:
        revert with 0, 'Regulator.onlySealed: Not sealed'
    revert with 0, 'Regulator: Not supported'
}

function seal() {
    if stor12 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Regulator.onlyCreator: Access denied'
    if isSealed:
        revert with 0, 'Regulator.seal: Access denied'
    isSealed = 1
}

function pause() {
    if this.address != msg.sender:
        revert with 0, 'Regulator.onlyMe: Access denied'
    if not isSealed:
        revert with 0, 'Regulator.onlySealed: Not sealed'
    require ext_code.size(rootAddress)
    call rootAddress.0x81309cdd with:
         gas gas_remaining wei
        args stor1, test266151307(), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function resume() {
    if this.address != msg.sender:
        revert with 0, 'Regulator.onlyMe: Access denied'
    if not isSealed:
        revert with 0, 'Regulator.onlySealed: Not sealed'
    require ext_code.size(rootAddress)
    call rootAddress.0x81309cdd with:
         gas gas_remaining wei
        args stor1, test266151307(), 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function freezeAddress(address arg1) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        revert with 0, 'Regulator.onlyMe: Access denied'
    if not isSealed:
        revert with 0, 'Regulator.onlySealed: Not sealed'
    require ext_code.size(rootAddress)
    call rootAddress.0x81309cdd with:
         gas gas_remaining wei
        args stor4, test266151307(), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unfreezeAddress(address arg1) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        revert with 0, 'Regulator.onlyMe: Access denied'
    if not isSealed:
        revert with 0, 'Regulator.onlySealed: Not sealed'
    require ext_code.size(rootAddress)
    call rootAddress.0x81309cdd with:
         gas gas_remaining wei
        args stor4, test266151307(), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function freeze(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if this.address != msg.sender:
        revert with 0, 'Regulator.onlyMe: Access denied'
    if not isSealed:
        revert with 0, 'Regulator.onlySealed: Not sealed'
    require ext_code.size(rootAddress)
    call rootAddress.0x81309cdd with:
         gas gas_remaining wei
        args stor4, test266151307(), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unfreeze(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if this.address != msg.sender:
        revert with 0, 'Regulator.onlyMe: Access denied'
    if not isSealed:
        revert with 0, 'Regulator.onlySealed: Not sealed'
    require ext_code.size(rootAddress)
    call rootAddress.0x81309cdd with:
         gas gas_remaining wei
        args stor4, test266151307(), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function acceptOwnership() {
    if this.address != msg.sender:
        revert with 0, 'Regulator.onlyMe: Access denied'
    if not isSealed:
        revert with 0, 'Regulator.onlySealed: Not sealed'
    require ext_code.size(rootAddress)
    call rootAddress.0x81309cdd with:
         gas gas_remaining wei
        args stor5, 2, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(rootAddress)
    call rootAddress.0x81309cdd with:
         gas gas_remaining wei
        args stor2, 1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        revert with 0, 'Regulator.onlyMe: Access denied'
    if not isSealed:
        revert with 0, 'Regulator.onlySealed: Not sealed'
    require ext_code.size(rootAddress)
    call rootAddress.0x81309cdd with:
         gas gas_remaining wei
        args stor0, test266151307(), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(rootAddress)
    call rootAddress.0x81309cdd with:
         gas gas_remaining wei
        args stor1, test266151307(), 255
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(rootAddress)
    call rootAddress.0x81309cdd with:
         gas gas_remaining wei
        args stor2, test266151307(), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function increaseSupply(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if this.address != msg.sender:
        revert with 0, 'Regulator.onlyMe: Access denied'
    if not isSealed:
        revert with 0, 'Regulator.onlySealed: Not sealed'
    mem[192 len 0] = None
    if 0 < sub_1405ee17[mem[192 len 14]].field_512:
        if block.timestamp - (block.timestamp % 24 * 3600) != sub_1405ee17[mem[192 len 14]].field_0:
            sub_1405ee17[mem[192 len 14]].field_0 = block.timestamp - (block.timestamp % 24 * 3600)
            sub_1405ee17[mem[192 len 14]].field_256 = arg1
        else:
            if sub_1405ee17[mem[192 len 14]].field_256 + arg1 < sub_1405ee17[mem[192 len 14]].field_256:
                revert with 0, 'Addition exception'
            sub_1405ee17[mem[192 len 14]].field_256 += arg1
        if sub_1405ee17[mem[192 len 14]].field_512 < sub_1405ee17[mem[192 len 14]].field_256:
            revert with 0, 'Regulator.defaultRequirement: Exceeded limit'
    require ext_code.size(rootAddress)
    call rootAddress.0x81309cdd with:
         gas gas_remaining wei
        args stor5, test266151307(), 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function decreaseSupply(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if this.address != msg.sender:
        revert with 0, 'Regulator.onlyMe: Access denied'
    if not isSealed:
        revert with 0, 'Regulator.onlySealed: Not sealed'
    mem[192 len 0] = None
    if 0 < sub_1405ee17[mem[192 len 14]].field_512:
        if block.timestamp - (block.timestamp % 24 * 3600) != sub_1405ee17[mem[192 len 14]].field_0:
            sub_1405ee17[mem[192 len 14]].field_0 = block.timestamp - (block.timestamp % 24 * 3600)
            sub_1405ee17[mem[192 len 14]].field_256 = arg1
        else:
            if sub_1405ee17[mem[192 len 14]].field_256 + arg1 < sub_1405ee17[mem[192 len 14]].field_256:
                revert with 0, 'Addition exception'
            sub_1405ee17[mem[192 len 14]].field_256 += arg1
        if sub_1405ee17[mem[192 len 14]].field_512 < sub_1405ee17[mem[192 len 14]].field_256:
            revert with 0, 'Regulator.defaultRequirement: Exceeded limit'
    require ext_code.size(rootAddress)
    call rootAddress.0x81309cdd with:
         gas gas_remaining wei
        args stor5, test266151307(), 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_df424080(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if msg.sender == rootAddress:
        mem[128 len arg1.length] = arg1[all]
        mem[arg1.length + 128] = 0
        mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[ceil32(arg1.length) + 128] = arg1.length
        sub_1405ee17[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]].field_512 = arg2
        emit 0x5e1fa646: Array(len=arg1.length, data=arg1[all]), arg2
    else:
        if isSealed:
            if this.address != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Regulator.setTransactionLimit: Access denied'
            require ext_code.size(rootAddress)
            call rootAddress.0x81309cdd with:
                 gas gas_remaining wei
                args stor1, test266151307(), 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[128 len arg1.length] = arg1[all]
            mem[arg1.length + 128] = 0
            mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
            mem[ceil32(arg1.length) + 128] = arg1.length
            sub_1405ee17[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]].field_512 = arg2
            emit 0x5e1fa646: Array(len=arg1.length, data=arg1[all]), arg2
}

function sub_69e92c66(?) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if rootAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Regulator.onlyRoot: Access denied'
    stor13 = arg1
    stor14 = arg2
    mem[96 len arg3.length] = arg3[all]
    call this.address with:
       value arg2 wei
         gas gas_remaining wei
        args arg3[all]
    if not return_data.size:
        if ext_call.success:
        if 0 == mem[96]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Regulator.createRequirement: Function call failed'
        if 0 == mem[96]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Regulator.createRequirement: Function call failed'
        if Mask(32, 224, mem[128]) != 0x8c379a000000000000000000000000000000000000000000000000000000000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Regulator.createRequirement: Function call failed'
        mem[64] = ceil32(mem[96]) + 128
        if not mem[96]:
            if 4 > var35002:
                revert with 0, 'Subtraction exception'
            if var39002 < var39001:
                if var43002 + 4 >= var43002:
                    require var45001 < mem[96]
                    require var45006 < mem[96]
                    mem[var45006 + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 45001)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 45001)), 32))), 0) - 256
                    s = var45001
                    t = var45006
                    while t + 1 >= t:
                        if 4 > mem[96]:
                            revert with 0, 'Subtraction exception'
                        if t + 1 < mem[96] - 4:
                            require t + 6 < mem[96]
                            require t + 1 < mem[96]
                            mem[t + 129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 134, ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 134, ('var', 2)), 32))), 0) - 256
                            s = t + 5
                            t = t + 1
                            continue 
                        require mem[96] >= 32
                        _764 = mem[128]
                        require mem[128] <= 4294967296
                        require mem[128] + 64 <= mem[96] + 32
                        require mem[mem[128] + 128] <= 4294967296 and mem[128] + mem[mem[128] + 128] + 64 <= mem[96] + 32
                        _780 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[_764 + 128]
                        _782 = mem[_764 + 128]
                        idx = 0
                        while idx < _782:
                            mem[_780 + idx + 68] = mem[_764 + idx + 160]
                            require s < mem[96]
                            require t < mem[96]
                            mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
                            idx = idx + 32
                            continue 
                        if not _782 % 32:
                            revert with memory
                              from mem[64]
                               len _782 + _780 + -mem[64] + 68
                        mem[floor32(_782) + _780 + 68] = mem[floor32(_782) + _780 + -(_782 % 32) + 100 len _782 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_782) + _780 + -mem[64] + 100
                revert with 0, 'Addition exception'
            require mem[96] >= 32
            _348 = mem[128]
            require mem[128] <= 4294967296
            require mem[128] + 64 <= mem[96] + 32
            require mem[mem[128] + 128] <= 4294967296 and mem[128] + mem[mem[128] + 128] + 64 <= mem[96] + 32
            mem[ceil32(mem[96]) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(mem[96]) + 132] = 32
            mem[ceil32(mem[96]) + 164] = mem[_348 + 128]
            _370 = mem[_348 + 128]
            mem[ceil32(mem[96]) + 196 len ceil32(mem[_348 + 128])] = mem[_348 + 160 len ceil32(mem[_348 + 128])]
            if not _370 % 32:
                revert with 0, 32, mem[ceil32(mem[96]) + 164 len _370 + 32]
            mem[floor32(_370) + ceil32(mem[96]) + 196] = mem[floor32(_370) + ceil32(mem[96]) + -(_370 % 32) + 228 len _370 % 32]
            revert with 0, 32, mem[ceil32(mem[96]) + 164 len floor32(_370) + 64]
        mem[128 len mem[96]] = code.data[9929 len mem[96]]
        if 4 > var36002:
            revert with 0, 'Subtraction exception'
        if var40002 < var40001:
            if var44002 + 4 >= var44002:
                require var46001 < mem[96]
                require var46006 < mem[96]
                mem[var46006 + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 46001)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 46001)), 32))), 0) - 256
                s = var46001
                t = var46006
                while t + 1 >= t:
                    if 4 > mem[96]:
                        revert with 0, 'Subtraction exception'
                    if t + 1 < mem[96] - 4:
                        require t + 6 < mem[96]
                        require t + 1 < mem[96]
                        mem[t + 129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 134, ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 134, ('var', 2)), 32))), 0) - 256
                        s = t + 5
                        t = t + 1
                        continue 
                    require mem[96] >= 32
                    _765 = mem[128]
                    require mem[128] <= 4294967296
                    require mem[128] + 64 <= mem[96] + 32
                    require mem[mem[128] + 128] <= 4294967296 and mem[128] + mem[mem[128] + 128] + 64 <= mem[96] + 32
                    _783 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_765 + 128]
                    _785 = mem[_765 + 128]
                    idx = 0
                    while idx < _785:
                        mem[_783 + idx + 68] = mem[_765 + idx + 160]
                        require s < mem[96]
                        require t < mem[96]
                        mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
                        idx = idx + 32
                        continue 
                    if not _785 % 32:
                        revert with memory
                          from mem[64]
                           len _785 + _783 + -mem[64] + 68
                    mem[floor32(_785) + _783 + 68] = mem[floor32(_785) + _783 + -(_785 % 32) + 100 len _785 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_785) + _783 + -mem[64] + 100
            revert with 0, 'Addition exception'
        require mem[96] >= 32
        _349 = mem[128]
        require mem[128] <= 4294967296
        require mem[128] + 64 <= mem[96] + 32
        require mem[mem[128] + 128] <= 4294967296 and mem[128] + mem[mem[128] + 128] + 64 <= mem[96] + 32
        mem[ceil32(mem[96]) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(mem[96]) + 132] = 32
        mem[ceil32(mem[96]) + 164] = mem[_349 + 128]
        _375 = mem[_349 + 128]
        mem[ceil32(mem[96]) + 196 len ceil32(mem[_349 + 128])] = mem[_349 + 160 len ceil32(mem[_349 + 128])]
        if not _375 % 32:
            revert with 0, 32, mem[ceil32(mem[96]) + 164 len _375 + 32]
        mem[floor32(_375) + ceil32(mem[96]) + 196] = mem[floor32(_375) + ceil32(mem[96]) + -(_375 % 32) + 228 len _375 % 32]
        revert with 0, 32, mem[ceil32(mem[96]) + 164 len floor32(_375) + 64]
    mem[96] = return_data.size
    mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if ext_call.success:
    if 0 == return_data.size:
        revert with 0, 'Regulator.createRequirement: Function call failed'
    if 0 == return_data.size:
        revert with 0, 'Regulator.createRequirement: Function call failed'
    if Mask(32, 224, mem[128]) != 0x8c379a000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'Regulator.createRequirement: Function call failed'
    mem[ceil32(return_data.size) + 97] = return_data.size
    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 129
    if not return_data.size:
        if 4 > var35002:
            revert with 0, 'Subtraction exception'
        if var39002 < var39001:
            if var43002 + 4 >= var43002:
                require var45001 < return_data.size
                require var45006 < return_data.size
                mem[ceil32(return_data.size) + var45006 + 129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 45001)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 45001)), 32))), 0) - 256
                s = var45001
                t = var45006
                while t + 1 >= t:
                    if 4 > return_data.size:
                        revert with 0, 'Subtraction exception'
                    if t + 1 < return_data.size - 4:
                        require t + 6 < return_data.size
                        require t + 1 < return_data.size
                        mem[ceil32(return_data.size) + t + 130 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 134, ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 134, ('var', 2)), 32))), 0) - 256
                        s = t + 5
                        t = t + 1
                        continue 
                    require return_data.size >= 32
                    _766 = mem[ceil32(return_data.size) + 129]
                    require mem[ceil32(return_data.size) + 129] <= 4294967296
                    require mem[ceil32(return_data.size) + 129] + 64 <= return_data.size + 32
                    require mem[mem[ceil32(return_data.size) + 129] + ceil32(return_data.size) + 129] <= 4294967296 and mem[ceil32(return_data.size) + 129] + mem[mem[ceil32(return_data.size) + 129] + ceil32(return_data.size) + 129] + 64 <= return_data.size + 32
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 129] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 133] = 32
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 165] = mem[_766 + ceil32(return_data.size) + 129]
                    _788 = mem[_766 + ceil32(return_data.size) + 129]
                    idx = 0
                    while idx < _788:
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + idx + 197] = mem[_766 + ceil32(return_data.size) + idx + 161]
                        require s < return_data.size
                        require t < return_data.size
                        mem[ceil32(return_data.size) + t + 129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
                        idx = idx + 32
                        continue 
                    if not _788 % 32:
                        revert with memory
                          from ceil32(return_data.size) + ceil32(return_data.size) + 129
                           len _788 + 68
                    mem[floor32(_788) + ceil32(return_data.size) + ceil32(return_data.size) + 197] = mem[floor32(_788) + ceil32(return_data.size) + ceil32(return_data.size) + -(_788 % 32) + 229 len _788 % 32]
                    revert with memory
                      from ceil32(return_data.size) + ceil32(return_data.size) + 129
                       len floor32(_788) + 100
            revert with 0, 'Addition exception'
        require return_data.size >= 32
        _350 = mem[ceil32(return_data.size) + 129]
        require mem[ceil32(return_data.size) + 129] <= 4294967296
        require mem[ceil32(return_data.size) + 129] + 64 <= return_data.size + 32
        require mem[mem[ceil32(return_data.size) + 129] + ceil32(return_data.size) + 129] <= 4294967296 and mem[ceil32(return_data.size) + 129] + mem[mem[ceil32(return_data.size) + 129] + ceil32(return_data.size) + 129] + 64 <= return_data.size + 32
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 129] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 133] = 32
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 165] = mem[_350 + ceil32(return_data.size) + 129]
        _380 = mem[_350 + ceil32(return_data.size) + 129]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 197 len ceil32(mem[_350 + ceil32(return_data.size) + 129])] = mem[_350 + ceil32(return_data.size) + 161 len ceil32(mem[_350 + ceil32(return_data.size) + 129])]
        if not _380 % 32:
            revert with 0, 32, mem[ceil32(return_data.size) + ceil32(return_data.size) + 165 len _380 + 32]
        mem[floor32(_380) + ceil32(return_data.size) + ceil32(return_data.size) + 197] = mem[floor32(_380) + ceil32(return_data.size) + ceil32(return_data.size) + -(_380 % 32) + 229 len _380 % 32]
        revert with 0, 32, mem[ceil32(return_data.size) + ceil32(return_data.size) + 165 len floor32(_380) + 64]
    mem[ceil32(return_data.size) + 129 len return_data.size] = code.data[9929 len return_data.size]
    if 4 > var36002:
        revert with 0, 'Subtraction exception'
    if var40002 < var40001:
        if var44002 + 4 >= var44002:
            require var46001 < return_data.size
            require var46006 < return_data.size
            mem[ceil32(return_data.size) + var46006 + 129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 46001)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 46001)), 32))), 0) - 256
            s = var46001
            t = var46006
            while t + 1 >= t:
                if 4 > return_data.size:
                    revert with 0, 'Subtraction exception'
                if t + 1 < return_data.size - 4:
                    require t + 6 < return_data.size
                    require t + 1 < return_data.size
                    mem[ceil32(return_data.size) + t + 130 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 134, ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 134, ('var', 2)), 32))), 0) - 256
                    s = t + 5
                    t = t + 1
                    continue 
                require return_data.size >= 32
                _767 = mem[ceil32(return_data.size) + 129]
                require mem[ceil32(return_data.size) + 129] <= 4294967296
                require mem[ceil32(return_data.size) + 129] + 64 <= return_data.size + 32
                require mem[mem[ceil32(return_data.size) + 129] + ceil32(return_data.size) + 129] <= 4294967296 and mem[ceil32(return_data.size) + 129] + mem[mem[ceil32(return_data.size) + 129] + ceil32(return_data.size) + 129] + 64 <= return_data.size + 32
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 129] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 133] = 32
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 165] = mem[_767 + ceil32(return_data.size) + 129]
                _791 = mem[_767 + ceil32(return_data.size) + 129]
                idx = 0
                while idx < _791:
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + idx + 197] = mem[_767 + ceil32(return_data.size) + idx + 161]
                    require s < return_data.size
                    require t < return_data.size
                    mem[ceil32(return_data.size) + t + 129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
                    idx = idx + 32
                    continue 
                if not _791 % 32:
                    revert with memory
                      from ceil32(return_data.size) + ceil32(return_data.size) + 129
                       len _791 + 68
                mem[floor32(_791) + ceil32(return_data.size) + ceil32(return_data.size) + 197] = mem[floor32(_791) + ceil32(return_data.size) + ceil32(return_data.size) + -(_791 % 32) + 229 len _791 % 32]
                revert with memory
                  from ceil32(return_data.size) + ceil32(return_data.size) + 129
                   len floor32(_791) + 100
        revert with 0, 'Addition exception'
    require return_data.size >= 32
    _351 = mem[ceil32(return_data.size) + 129]
    require mem[ceil32(return_data.size) + 129] <= 4294967296
    require mem[ceil32(return_data.size) + 129] + 64 <= return_data.size + 32
    require mem[mem[ceil32(return_data.size) + 129] + ceil32(return_data.size) + 129] <= 4294967296 and mem[ceil32(return_data.size) + 129] + mem[mem[ceil32(return_data.size) + 129] + ceil32(return_data.size) + 129] + 64 <= return_data.size + 32
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 129] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 133] = 32
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 165] = mem[_351 + ceil32(return_data.size) + 129]
    _385 = mem[_351 + ceil32(return_data.size) + 129]
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 197 len ceil32(mem[_351 + ceil32(return_data.size) + 129])] = mem[_351 + ceil32(return_data.size) + 161 len ceil32(mem[_351 + ceil32(return_data.size) + 129])]
    if not _385 % 32:
        revert with 0, 32, mem[ceil32(return_data.size) + ceil32(return_data.size) + 165 len _385 + 32]
    mem[floor32(_385) + ceil32(return_data.size) + ceil32(return_data.size) + 197] = mem[floor32(_385) + ceil32(return_data.size) + ceil32(return_data.size) + -(_385 % 32) + 229 len _385 % 32]
    revert with 0, 32, mem[ceil32(return_data.size) + ceil32(return_data.size) + 165 len floor32(_385) + 64]
}



}
