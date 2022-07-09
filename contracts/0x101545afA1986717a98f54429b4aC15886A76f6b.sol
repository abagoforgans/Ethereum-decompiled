contract main {




// =====================  Runtime code  =====================


address owner;
address sub_9d3c8cc4Address;
address beneficiaryAddress;
uint8 stor4;
mapping of uint8 stor5;
uint256 DECIMALS;
uint256 sub_39c1b4f6;
uint8 sub_3e851ef9; offset 160
uint128 stor8; offset 160
address sub_c7163c0fAddress;
array of struct sub_91be5152;
mapping of uint256 rate;
mapping of uint8 stor11;

function rate(address arg1) {
    require calldata.size - 4 >= 32
    return rate[arg1]
}

function DECIMALS() {
    return DECIMALS
}

function beneficiary() {
    return beneficiaryAddress
}

function sub_39c1b4f6(?) {
    return sub_39c1b4f6
}

function sub_3e851ef9(?) {
    return bool(sub_3e851ef9)
}

function owner() {
    return owner
}

function sub_91be5152(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_91be5152[arg1].field_0
    return sub_91be5152[arg1][arg2].field_0, sub_91be5152[arg1][arg2].field_256
}

function sub_9d3c8cc4(?) {
    return sub_9d3c8cc4Address
}

function sub_c7163c0f(?) {
    return sub_c7163c0fAddress
}

function allowed(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function managers(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function _fallback() payable {
  stop
}

function getRate(address arg1) {
    require calldata.size - 4 >= 32
    return rate[address(arg1)], DECIMALS
}

function setSecondary(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner'
    sub_9d3c8cc4Address = arg1
}

function setBeneficiary(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner'
    beneficiaryAddress = arg1
}

function setManager(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if sub_9d3c8cc4Address != msg.sender:
            revert with 0, 'Only owner or secondary'
    stor5[address(arg1)] = 1
}

function deleteManager(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if sub_9d3c8cc4Address != msg.sender:
            revert with 0, 'Only owner or secondary'
    stor5[address(arg1)] = 0
}

function sub_cf85d96a(?) {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    stor8 = Mask(96, 0, arg1)
}

function sub_a5ee0368(?) {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    sub_c7163c0fAddress = arg1
}

function sub_b6569d47(?) {
    require calldata.size - 4 >= 64
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    stor11[address(arg1)] = uint8(arg2)
}

function setRate(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    rate[address(arg1)] = arg2
}

function setMaintenanceStatus(bool arg1) {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    stor4 = uint8(arg1)
    emit 0xf887ef1c: arg1
}

function withdrawalAll() {
    if owner != msg.sender:
        revert with 0, 'Only owner'
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit BeneficiaryPayout(eth.balance(this.address));
}

function withdrawal(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner'
    if arg1 > eth.balance(this.address):
        revert with 0, 'Insufficient balance'
    call beneficiaryAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit BeneficiaryPayout(arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x5472616e7366657220746f206e756c6c2061646472657373206973206e6f7420616c6c6f776500,
                    mem[203 len 25]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_7c0de1ca(?) {
    require calldata.size - 4 >= 64
    require stor11[address(arg1)]
    if not sub_3e851ef9:
        if arg2:
            return (DECIMALS * rate[address(arg1)] / arg2)
    else:
        require ext_code.size(sub_c7163c0fAddress)
        staticcall sub_c7163c0fAddress.getRate(address arg1, uint256 arg2, bool arg3, uint256 arg4) with:
                gas gas_remaining wei
               args 0, 0, block.number, 1, 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg2:
            return (10^18 * ext_call.return_data[0] / arg2)
    ('iszero', ('param', 'arg2'))
    revert
}

function convertToEther(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require stor11[address(arg1)]
    if not sub_3e851ef9:
        if not stor11[address(arg1)]:
            return 0
        if 0 == rate[address(arg1)]:
            return 0
        require DECIMALS
        return (arg2 * rate[address(arg1)] / DECIMALS)
    require ext_code.size(sub_c7163c0fAddress)
    staticcall sub_c7163c0fAddress.getRate(address arg1, uint256 arg2, bool arg3, uint256 arg4) with:
            gas gas_remaining wei
           args 0, 0, block.number, 0, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] * arg2 / 10^18)
}

function withdrawERC20Token(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Only owner'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args this.address, beneficiaryAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_ac74880b(?) {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    require ext_code.size(sub_c7163c0fAddress)
    staticcall sub_c7163c0fAddress.getRate(address arg1, uint256 arg2, bool arg3, uint256 arg4) with:
            gas gas_remaining wei
           args address(arg1), block.number, 1, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_91be5152[address(arg1)].field_0++
    sub_91be5152[address(arg1)][sub_91be5152[address(arg1)].field_0].field_0 = ext_call.return_data[0]
    sub_91be5152[address(arg1)][sub_91be5152[address(arg1)].field_0].field_256 = block.number
}

function setRates(address[] arg1, uint256[] arg2) {
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
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 10
        rate[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
}

function sub_0dc7893d(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _23 = mem[(32 * idx) + 128]
        mem[0] = arg1
        mem[32] = 11
        require stor11[address(arg1)]
        if not sub_3e851ef9:
            mem[0] = arg1
            mem[32] = 10
            require mem[(32 * idx) + 128]
            require idx < arg2.length
            mem[(32 * idx) + 128] = DECIMALS * rate[address(arg1)] / mem[(32 * idx) + 128]
        else:
            mem[(32 * arg2.length) + 132] = arg1
            mem[(32 * arg2.length) + 164] = block.number
            mem[(32 * arg2.length) + 196] = 1
            mem[(32 * arg2.length) + 228] = 10^18
            require ext_code.size(sub_c7163c0fAddress)
            staticcall sub_c7163c0fAddress.getRate(address arg1, uint256 arg2, bool arg3, uint256 arg4) with:
                    gas gas_remaining wei
                   args address(arg1), block.number, 1, 10^18
            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require _23
            require idx < arg2.length
            mem[(32 * idx) + 128] = 10^18 * ext_call.return_data[0] / _23
        idx = idx + 1
        continue 
    mem[(32 * arg2.length) + 192 len floor32(arg2.length)] = mem[128 len floor32(arg2.length)]
    return Array(len=arg2.length, data=mem[128 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 192 len (32 * arg2.length) - floor32(arg2.length)]), 
}

function sub_3c05c07a(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _26 = mem[(32 * idx) + 128]
        mem[0] = arg1
        mem[32] = 11
        require stor11[address(arg1)]
        if not sub_3e851ef9:
            mem[0] = arg1
            mem[32] = 11
            if not stor11[address(arg1)]:
                require idx < arg2.length
                mem[(32 * idx) + 128] = 0
            else:
                mem[0] = arg1
                mem[32] = 10
                if 0 == rate[address(arg1)]:
                    require idx < arg2.length
                    mem[(32 * idx) + 128] = 0
                else:
                    require DECIMALS
                    require idx < arg2.length
                    mem[(32 * idx) + 128] = mem[(32 * idx) + 128] * rate[address(arg1)] / DECIMALS
        else:
            mem[(32 * arg2.length) + 132] = arg1
            mem[(32 * arg2.length) + 164] = block.number
            mem[(32 * arg2.length) + 196] = 0
            mem[(32 * arg2.length) + 228] = 10^18
            require ext_code.size(sub_c7163c0fAddress)
            staticcall sub_c7163c0fAddress.getRate(address arg1, uint256 arg2, bool arg3, uint256 arg4) with:
                    gas gas_remaining wei
                   args address(arg1), block.number, 0, 10^18
            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < arg2.length
            mem[(32 * idx) + 128] = ext_call.return_data[0] * _26 / 10^18
        idx = idx + 1
        continue 
    mem[(32 * arg2.length) + 192 len floor32(arg2.length)] = mem[128 len floor32(arg2.length)]
    return Array(len=arg2.length, data=mem[128 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 192 len (32 * arg2.length) - floor32(arg2.length)]), 
}

function sub_6ad980a3(?) {
    require calldata.size - 4 >= 96
    require stor11[address(arg1)]
    if not sub_3e851ef9:
        require stor11[address(arg1)]
        if not sub_3e851ef9:
            if not stor11[address(arg1)]:
                return 0
            if 0 == rate[address(arg1)]:
                return 0
            require DECIMALS
            return (arg2 * rate[address(arg1)] / DECIMALS)
        require ext_code.size(sub_c7163c0fAddress)
        staticcall sub_c7163c0fAddress.getRate(address arg1, uint256 arg2, bool arg3, uint256 arg4) with:
                gas gas_remaining wei
               args 0, 0, block.number, 0, 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return (ext_call.return_data[0] * arg2 / 10^18)
    if not sub_91be5152[address(arg1)].field_0:
        require ext_code.size(sub_c7163c0fAddress)
        staticcall sub_c7163c0fAddress.getRate(address arg1, uint256 arg2, bool arg3, uint256 arg4) with:
                gas gas_remaining wei
               args address(arg1), block.number, 1, 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_91be5152[address(arg1)].field_0++
        sub_91be5152[address(arg1)][sub_91be5152[address(arg1)].field_0].field_0 = ext_call.return_data[0]
        sub_91be5152[address(arg1)][sub_91be5152[address(arg1)].field_0].field_256 = block.number
        if block.number + 50 >= arg3:
            if 5 < sub_91be5152[address(arg1)].field_0:
                idx = sub_91be5152[address(arg1)].field_0 - 6
                while idx < sub_91be5152[address(arg1)].field_0:
                    require idx < sub_91be5152[address(arg1)].field_0
                    if sub_91be5152[address(arg1)][idx].field_256 > arg3:
                        mem[0] = arg1
                        mem[32] = 9
                        idx = idx + 1
                        continue 
                    require idx < sub_91be5152[address(arg1)].field_0
                    require DECIMALS
                    return (arg2 * sub_91be5152[address(arg1)][idx].field_0 / DECIMALS)
            else:
                idx = 0
                while idx < sub_91be5152[address(arg1)].field_0:
                    require idx < sub_91be5152[address(arg1)].field_0
                    if sub_91be5152[address(arg1)][idx].field_256 > arg3:
                        mem[0] = arg1
                        mem[32] = 9
                        idx = idx + 1
                        continue 
                    require idx < sub_91be5152[address(arg1)].field_0
                    require DECIMALS
                    return (arg2 * sub_91be5152[address(arg1)][idx].field_0 / DECIMALS)
            if sub_91be5152[address(arg1)].field_0 - 1 < sub_91be5152[address(arg1)].field_0:
                if DECIMALS:
                    return (arg2 * sub_91be5152[address(arg1)][sub_91be5152[address(arg1)].field_0 - 1].field_0 / DECIMALS)
        else:
            if sub_91be5152[address(arg1)].field_0 - 1 < sub_91be5152[address(arg1)].field_0:
                if sub_91be5152[address(arg1)][sub_91be5152[address(arg1)].field_0 - 1].field_256 + 100 < block.number:
                    if DECIMALS:
                        return (0 / DECIMALS)
                else:
                    if sub_91be5152[address(arg1)].field_0 - 1 < sub_91be5152[address(arg1)].field_0:
                        if DECIMALS:
                            return (arg2 * sub_91be5152[address(arg1)][sub_91be5152[address(arg1)].field_0 - 1].field_0 / DECIMALS)
    else:
        if sub_91be5152[address(arg1)].field_0 - 1 < sub_91be5152[address(arg1)].field_0:
            if sub_91be5152[address(arg1)][sub_91be5152[address(arg1)].field_0 - 1].field_256 + 50 < block.number:
                require ext_code.size(sub_c7163c0fAddress)
                staticcall sub_c7163c0fAddress.getRate(address arg1, uint256 arg2, bool arg3, uint256 arg4) with:
                        gas gas_remaining wei
                       args address(arg1), block.number, 1, 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_91be5152[address(arg1)].field_0++
                sub_91be5152[address(arg1)][sub_91be5152[address(arg1)].field_0].field_0 = ext_call.return_data[0]
                sub_91be5152[address(arg1)][sub_91be5152[address(arg1)].field_0].field_256 = block.number
            if block.number + 50 >= arg3:
                if 5 < sub_91be5152[address(arg1)].field_0:
                    idx = sub_91be5152[address(arg1)].field_0 - 6
                    while idx < sub_91be5152[address(arg1)].field_0:
                        require idx < sub_91be5152[address(arg1)].field_0
                        if sub_91be5152[address(arg1)][idx].field_256 > arg3:
                            mem[0] = arg1
                            mem[32] = 9
                            idx = idx + 1
                            continue 
                        require idx < sub_91be5152[address(arg1)].field_0
                        require DECIMALS
                        return (arg2 * sub_91be5152[address(arg1)][idx].field_0 / DECIMALS)
                else:
                    idx = 0
                    while idx < sub_91be5152[address(arg1)].field_0:
                        require idx < sub_91be5152[address(arg1)].field_0
                        if sub_91be5152[address(arg1)][idx].field_256 > arg3:
                            mem[0] = arg1
                            mem[32] = 9
                            idx = idx + 1
                            continue 
                        require idx < sub_91be5152[address(arg1)].field_0
                        require DECIMALS
                        return (arg2 * sub_91be5152[address(arg1)][idx].field_0 / DECIMALS)
                if sub_91be5152[address(arg1)].field_0 - 1 < sub_91be5152[address(arg1)].field_0:
                    if DECIMALS:
                        return (arg2 * sub_91be5152[address(arg1)][sub_91be5152[address(arg1)].field_0 - 1].field_0 / DECIMALS)
            else:
                if sub_91be5152[address(arg1)].field_0 - 1 < sub_91be5152[address(arg1)].field_0:
                    if sub_91be5152[address(arg1)][sub_91be5152[address(arg1)].field_0 - 1].field_256 + 100 < block.number:
                        if DECIMALS:
                            return (0 / DECIMALS)
                    else:
                        if sub_91be5152[address(arg1)].field_0 - 1 < sub_91be5152[address(arg1)].field_0:
                            if DECIMALS:
                                return (arg2 * sub_91be5152[address(arg1)][sub_91be5152[address(arg1)].field_0 - 1].field_0 / DECIMALS)
    revert
}

function sub_ae1297b6(?) {
    require calldata.size - 4 >= 96
    require stor11[address(arg1)]
    if not sub_3e851ef9:
        require stor11[address(arg1)]
        if not sub_3e851ef9:
            if arg2:
                return (DECIMALS * rate[address(arg1)] / arg2)
        else:
            require ext_code.size(sub_c7163c0fAddress)
            staticcall sub_c7163c0fAddress.getRate(address arg1, uint256 arg2, bool arg3, uint256 arg4) with:
                    gas gas_remaining wei
                   args 0, 0, block.number, 1, 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg2:
                return (10^18 * ext_call.return_data[0] / arg2)
        ('iszero', ('param', 'arg2'))
    else:
        if not sub_91be5152[address(arg1)].field_0:
            require ext_code.size(sub_c7163c0fAddress)
            staticcall sub_c7163c0fAddress.getRate(address arg1, uint256 arg2, bool arg3, uint256 arg4) with:
                    gas gas_remaining wei
                   args address(arg1), block.number, 1, 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_91be5152[address(arg1)].field_0++
            sub_91be5152[address(arg1)][sub_91be5152[address(arg1)].field_0].field_0 = ext_call.return_data[0]
            sub_91be5152[address(arg1)][sub_91be5152[address(arg1)].field_0].field_256 = block.number
            if block.number + 50 >= arg3:
                if 5 < sub_91be5152[address(arg1)].field_0:
                    idx = sub_91be5152[address(arg1)].field_0 - 6
                    while idx < sub_91be5152[address(arg1)].field_0:
                        require idx < sub_91be5152[address(arg1)].field_0
                        if sub_91be5152[address(arg1)][idx].field_256 > arg3:
                            mem[0] = arg1
                            mem[32] = 9
                            idx = idx + 1
                            continue 
                        require idx < sub_91be5152[address(arg1)].field_0
                        require arg2
                        return (sub_91be5152[address(arg1)][idx].field_0 * DECIMALS / arg2)
                else:
                    idx = 0
                    while idx < sub_91be5152[address(arg1)].field_0:
                        require idx < sub_91be5152[address(arg1)].field_0
                        if sub_91be5152[address(arg1)][idx].field_256 > arg3:
                            mem[0] = arg1
                            mem[32] = 9
                            idx = idx + 1
                            continue 
                        require idx < sub_91be5152[address(arg1)].field_0
                        require arg2
                        return (sub_91be5152[address(arg1)][idx].field_0 * DECIMALS / arg2)
                if sub_91be5152[address(arg1)].field_0 - 1 < sub_91be5152[address(arg1)].field_0:
                    if arg2:
                        return (sub_91be5152[address(arg1)][sub_91be5152[address(arg1)].field_0 - 1].field_0 * DECIMALS / arg2)
            else:
                if sub_91be5152[address(arg1)].field_0 - 1 < sub_91be5152[address(arg1)].field_0:
                    if sub_91be5152[address(arg1)][sub_91be5152[address(arg1)].field_0 - 1].field_256 + 100 < block.number:
                        if arg2:
                            return (0 / arg2)
                    else:
                        if sub_91be5152[address(arg1)].field_0 - 1 < sub_91be5152[address(arg1)].field_0:
                            if arg2:
                                return (sub_91be5152[address(arg1)][sub_91be5152[address(arg1)].field_0 - 1].field_0 * DECIMALS / arg2)
        else:
            if sub_91be5152[address(arg1)].field_0 - 1 < sub_91be5152[address(arg1)].field_0:
                if sub_91be5152[address(arg1)][sub_91be5152[address(arg1)].field_0 - 1].field_256 + 50 < block.number:
                    require ext_code.size(sub_c7163c0fAddress)
                    staticcall sub_c7163c0fAddress.getRate(address arg1, uint256 arg2, bool arg3, uint256 arg4) with:
                            gas gas_remaining wei
                           args address(arg1), block.number, 1, 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_91be5152[address(arg1)].field_0++
                    sub_91be5152[address(arg1)][sub_91be5152[address(arg1)].field_0].field_0 = ext_call.return_data[0]
                    sub_91be5152[address(arg1)][sub_91be5152[address(arg1)].field_0].field_256 = block.number
                if block.number + 50 >= arg3:
                    if 5 < sub_91be5152[address(arg1)].field_0:
                        idx = sub_91be5152[address(arg1)].field_0 - 6
                        while idx < sub_91be5152[address(arg1)].field_0:
                            require idx < sub_91be5152[address(arg1)].field_0
                            if sub_91be5152[address(arg1)][idx].field_256 > arg3:
                                mem[0] = arg1
                                mem[32] = 9
                                idx = idx + 1
                                continue 
                            require idx < sub_91be5152[address(arg1)].field_0
                            require arg2
                            return (sub_91be5152[address(arg1)][idx].field_0 * DECIMALS / arg2)
                    else:
                        idx = 0
                        while idx < sub_91be5152[address(arg1)].field_0:
                            require idx < sub_91be5152[address(arg1)].field_0
                            if sub_91be5152[address(arg1)][idx].field_256 > arg3:
                                mem[0] = arg1
                                mem[32] = 9
                                idx = idx + 1
                                continue 
                            require idx < sub_91be5152[address(arg1)].field_0
                            require arg2
                            return (sub_91be5152[address(arg1)][idx].field_0 * DECIMALS / arg2)
                    if sub_91be5152[address(arg1)].field_0 - 1 < sub_91be5152[address(arg1)].field_0:
                        if arg2:
                            return (sub_91be5152[address(arg1)][sub_91be5152[address(arg1)].field_0 - 1].field_0 * DECIMALS / arg2)
                else:
                    if sub_91be5152[address(arg1)].field_0 - 1 < sub_91be5152[address(arg1)].field_0:
                        if sub_91be5152[address(arg1)][sub_91be5152[address(arg1)].field_0 - 1].field_256 + 100 < block.number:
                            if arg2:
                                return (0 / arg2)
                        else:
                            if sub_91be5152[address(arg1)].field_0 - 1 < sub_91be5152[address(arg1)].field_0:
                                if arg2:
                                    return (sub_91be5152[address(arg1)][sub_91be5152[address(arg1)].field_0 - 1].field_0 * DECIMALS / arg2)
    revert
}



}
