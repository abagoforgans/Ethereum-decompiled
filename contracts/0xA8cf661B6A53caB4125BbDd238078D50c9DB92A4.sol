contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor1; offset 160
address stor1;
array of uint256 stor4;
uint256 stor5;

function _fallback() {
    mem[96 len -3137] = code.data[3549 len -3137]
    mem[64] = -3041
    stor5 = mem[192]
    stor4.length = mem[mem[160] + 96]
    if not mem[mem[160] + 96]:
        idx = 0
        while stor4.length > idx:
            stor4[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[160] + 128
        while mem[160] + (32 * mem[mem[160] + 96]) + 128 > idx:
            stor4[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[160] + 96]) + 31) >> 5
        while stor4.length > idx:
            stor4[idx] = 0
            idx = idx + 1
            continue 
    address(stor1.field_0) = mem[140 len 20]
    stor0 = mem[108 len 20]
    uint8(stor1.field_160) = 0
    return code.data[412 len 3137]
}



// =====================  Runtime code  =====================


address stor0;
uint8 stor1; offset 160
address stor1;
uint256 stor2;
uint256 stor3;
array of uint256 stor4;
uint256 stor5;

function temporaryKill(address arg1) {
    require msg.sender == stor0
    require uint8(stor1.field_160) <= 3
    require uint8(stor1.field_160) == 3
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require not ext_call.return_data[0]
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function handleTokensReceived() {
    require uint8(stor1.field_160) <= 3
    require not uint8(stor1.field_160)
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    stor3 = 0
    if ext_call.return_data[0] == stor5:
        uint8(stor1.field_160) = 1
    else:
        stor2 = ext_call.return_data[0]
        uint8(stor1.field_160) = 2
}

function numTokensForContributor(uint256 arg1) {
    require uint8(stor1.field_160) <= 3
    if uint8(stor1.field_160) == 1:
        return arg1
    require uint8(stor1.field_160) <= 3
    require uint8(stor1.field_160) == 2
    if not stor2:
        require stor5
        if 0 / stor5 >= stor2 - stor3:
            return (stor2 - stor3)
        return (0 / stor5)
    require stor2
    require stor2 * arg1 / stor2 == arg1
    require stor5
    if stor2 * arg1 / stor5 >= stor2 - stor3:
        return (stor2 - stor3)
    return (stor2 * arg1 / stor5)
}

function temporaryEscapeHatch(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require msg.sender == stor0
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
           value arg2 wei
             gas gas_remaining - 34710 wei
            args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
           value arg2 wei
             gas gas_remaining - 34710 wei
            args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
    require ext_call.success
}

function doDistribution(uint256 arg1, address arg2, uint256 arg3) {
    require arg1 < stor4.length
    require stor4[arg1] == sha3(arg2, arg3)
    require uint8(stor1.field_160) <= 3
    if uint8(stor1.field_160) == 1:
        require arg1 < stor4.length
        stor4[arg1] = 0
        stor3 += arg3
        if stor3 == stor2:
            uint8(stor1.field_160) = 3
        require ext_code.size(address(stor1.field_0))
        call address(stor1.field_0).0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg2), arg3
    else:
        require uint8(stor1.field_160) <= 3
        require uint8(stor1.field_160) == 2
        if not stor2:
            require stor5
            require arg1 < stor4.length
            stor4[arg1] = 0
            if 0 / stor5 >= stor2 - stor3:
                stor3 = stor2
                if stor3 == stor2:
                    uint8(stor1.field_160) = 3
                require ext_code.size(address(stor1.field_0))
                call address(stor1.field_0).0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg2), stor2 - stor3
            else:
                stor3 += 0 / stor5
                if stor3 == stor2:
                    uint8(stor1.field_160) = 3
                require ext_code.size(address(stor1.field_0))
                call address(stor1.field_0).0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg2), 0 / stor5
        else:
            require stor2
            require stor2 * arg3 / stor2 == arg3
            require stor5
            require arg1 < stor4.length
            stor4[arg1] = 0
            if stor2 * arg3 / stor5 >= stor2 - stor3:
                stor3 = stor2
                if stor3 == stor2:
                    uint8(stor1.field_160) = 3
                require ext_code.size(address(stor1.field_0))
                call address(stor1.field_0).0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg2), stor2 - stor3
            else:
                stor3 += stor2 * arg3 / stor5
                if stor3 == stor2:
                    uint8(stor1.field_160) = 3
                require ext_code.size(address(stor1.field_0))
                call address(stor1.field_0).0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg2), stor2 * arg3 / stor5
    require ext_call.success
    require ext_call.return_data[0]
}

function doDistributionRange(uint256 arg1, address[] arg2, uint256[] arg3) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg2.length == arg3.length
    s = 0
    s = 0
    s = 0
    idx = arg1
    s = 0
    while idx < arg1 + arg2.length:
        require idx < arg2.length
        _41 = mem[(32 * idx) + 128]
        require idx < arg3.length
        _43 = mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = address(mem[(32 * idx) + 128])
        require idx < stor4.length
        require stor4[idx] == sha3(mem[(32 * arg2.length) + (32 * arg3.length) + 160 len 20], _43)
        require idx < stor4.length
        mem[0] = 4
        stor4[idx] = 0
        require uint8(stor1.field_160) <= 3
        if uint8(stor1.field_160) == 1:
            mem[(32 * arg2.length) + (32 * arg3.length) + 164] = address(_41)
            mem[(32 * arg2.length) + (32 * arg3.length) + 196] = _43
            require ext_code.size(address(stor1.field_0))
            call address(stor1.field_0).0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(_41), _43
            mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            s = _43
            s = _43
            s = _41
            idx = idx + 1
            s = s + _43
            continue 
        require uint8(stor1.field_160) <= 3
        require uint8(stor1.field_160) == 2
        if not stor2:
            require stor5
            mem[(32 * arg2.length) + (32 * arg3.length) + 164] = address(_41)
            if 0 / stor5 >= stor2 - stor3:
                mem[(32 * arg2.length) + (32 * arg3.length) + 196] = stor2 - stor3
                require ext_code.size(address(stor1.field_0))
                call address(stor1.field_0).0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(_41), stor2 - stor3
                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
                s = stor2 - stor3
                s = _43
                s = _41
                idx = idx + 1
                s = s + stor2 - stor3
                continue 
            mem[(32 * arg2.length) + (32 * arg3.length) + 196] = 0 / stor5
            require ext_code.size(address(stor1.field_0))
            call address(stor1.field_0).0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(_41), 0 / stor5
            mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            s = 0 / stor5
            s = _43
            s = _41
            idx = idx + 1
            s = s + (0 / stor5)
            continue 
        require stor2
        require stor2 * _43 / stor2 == _43
        require stor5
        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = address(_41)
        if stor2 * _43 / stor5 >= stor2 - stor3:
            mem[(32 * arg2.length) + (32 * arg3.length) + 196] = stor2 - stor3
            require ext_code.size(address(stor1.field_0))
            call address(stor1.field_0).0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(_41), stor2 - stor3
            mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            s = stor2 - stor3
            s = _43
            s = _41
            idx = idx + 1
            s = s + stor2 - stor3
            continue 
        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = stor2 * _43 / stor5
        require ext_code.size(address(stor1.field_0))
        call address(stor1.field_0).0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(_41), stor2 * _43 / stor5
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        s = stor2 * _43 / stor5
        s = _43
        s = _41
        idx = idx + 1
        s = s + (stor2 * _43 / stor5)
        continue 
    stor3 += s
    if stor3 == stor2:
        uint8(stor1.field_160) = 3
}



}
