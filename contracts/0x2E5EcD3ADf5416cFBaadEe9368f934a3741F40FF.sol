contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor1 = 0
    stor2 = 50
    stor3 = 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819
    stor4 = 3 * 10^15
    stor5 = 5 * 10^15
    stor0 = msg.sender
    return code.data[200 len 11016]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
array of address stor5;
array of struct orders;
array of uint256 stor7;
array of uint256 stor8;

function sub_5224dde7(?) {
    return stor2.length
}

function owner() {
    return owner
}

function sub_8f328855(?) {
    return stor1.length
}

function orders(uint256 arg1) {
    require arg1 < orders.length
    return orders[arg1].field_0, 
           uint256(orders[arg1].field_256),
           uint256(orders[arg1].field_512),
           uint256(orders[arg1].field_768),
           uint256(orders[arg1].field_1024),
           orders[arg1].field_1280,
           orders[arg1].field_1536,
           uint256(orders[arg1].field_1792),
           uint256(orders[arg1].field_2048)
}

function sub_3ec26512(?) {
    return (stor1.length < orders.length)
}

function sub_5aef0201(?) {
    require msg.sender == owner
    stor2.length = arg1
}

function sub_bacfb890(?) {
    require msg.sender == owner
    stor4.length = arg1
}

function changeFee(uint256 arg1) {
    require msg.sender == owner
    stor5.length = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function setEtherDelta(address arg1) {
    require msg.sender == owner
    address(stor3.length) = arg1
}

function _fallback() payable {
    if msg.sender == address(stor3.length):
        emit 0x28b8dd46: msg.value
}

function chargeFee(uint256 arg1) {
    require msg.sender == owner
    call owner with:
       value arg1 wei
         gas gas_remaining - 34710 wei
    require ext_call.success
}

function sub_b9028075(?) {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining - 34710 wei
    require ext_call.success
}

function sub_bac9f40d(?) {
    require msg.sender == owner
    require arg1 < orders.length
    require ext_code.size(address(stor3.length))
    call address(stor3.length).withdraw(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args (uint256(orders[arg1].field_2048) + stor4.length)
    require ext_call.success
    if ext_call.return_data[0]:
        emit 0x8b66e26c: arg1
}

function transferEther(uint256 arg1) {
    require msg.sender == owner
    require arg1 < orders.length
    call orders[arg1].field_1536 with:
       value uint256(orders[arg1].field_2048) + stor4.length wei
         gas gas_remaining - 34710 wei
    if ext_call.success:
        require arg1 < orders.length
        emit 0xb810225a: orders[arg1].field_1536, uint256(orders[arg1].field_2048) + stor4.length - 1
}

function sub_46933119(?) {
    require msg.sender == owner
    require arg1 < orders.length
    require ext_code.size(address(stor3.length))
    call address(stor3.length).withdrawToken(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args orders[arg1].field_0, uint256(orders[arg1].field_1792)
    require ext_call.success
    if ext_call.return_data[0]:
        emit 0x122778f1: arg1
}

function transferToken(uint256 arg1) {
    require msg.sender == owner
    require arg1 < orders.length
    require ext_code.size(orders[arg1].field_0)
    call orders[arg1].field_0.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args orders[arg1].field_1536, uint256(orders[arg1].field_1792) - 1
    require ext_call.success
    if ext_call.return_data[0]:
        require arg1 < orders.length
        emit 0x874f886a: orders[arg1].field_0, orders[arg1].field_1536, uint256(orders[arg1].field_1792) - 1
}

function sub_babc2951(?) payable {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg4.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = arg5.length
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = arg6.length
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 288
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 256] = arg7.length
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 len 32 * arg7.length] = call.data[arg7 + 36 len 32 * arg7.length]
    require arg2.length == arg3.length
    require arg3.length == arg4.length
    require arg4.length == arg5.length
    require arg5.length == arg6.length
    require arg6.length == arg7.length
    idx = 0
    s = 0
    while idx < arg7.length:
        require idx < mem[96]
        require idx < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 256]
        require mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288] <= mem[(32 * idx) + 128]
        require idx < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 256]
        _83 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
        mem[mem[64] + 32] = 0
        require ext_code.size(address(stor3.length))
        call address(stor3.length).deposit() with:
           value _83 + stor4.length wei
             gas gas_remaining - 9710 wei
        mem[mem[64]] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        require idx < mem[96]
        _90 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg2.length) + 128]
        _92 = mem[(32 * idx) + (32 * arg2.length) + 160]
        require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
        _94 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]
        require idx < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
        _96 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
        require idx < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
        _98 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]
        require idx < mem[96]
        _100 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg2.length) + 128]
        _102 = mem[(32 * idx) + (32 * arg2.length) + 160]
        require idx < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 256]
        _104 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
        require mem[(32 * idx) + 128]
        require idx < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 256]
        _106 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
        _107 = mem[64]
        mem[64] = mem[64] + 288
        mem[_107 + 256] = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
        mem[_107 + 32] = _90
        mem[_107 + 64] = _92
        mem[_107 + 224] = _104 * _102 / _100
        mem[_107] = arg1
        mem[_107 + 96] = _94
        mem[_107 + 160] = address(_98)
        mem[_107 + 128] = _96
        mem[_107 + 192] = msg.sender
        orders.length++
        if not orders.length <= orders.length + 1:
            t = sha3(6) + (9 * orders.length) + 9
            while sha3(6) + (9 * orders.length) > t:
                stor[t] = 0
                stor1[t] = 0
                stor2[t] = 0
                uint256(stor3[t]) = 0
                stor4[t] = 0
                stor5[t] = 0
                orders[t].field_0 = 0
                stor7[t] = 0
                stor8[t] = 0
                t = t + 9
                continue 
        mem[0] = 6
        orders[orders.length].field_0 = arg1
        uint256(orders[orders.length].field_256) = _90
        uint256(orders[orders.length].field_512) = _92
        uint256(orders[orders.length].field_768) = _94
        uint256(orders[orders.length].field_1024) = _96
        orders[orders.length].field_1280 = address(_98)
        orders[orders.length].field_1536 = msg.sender
        uint256(orders[orders.length].field_1792) = _104 * _102 / _100
        uint256(orders[orders.length].field_2048) = _106
        require idx < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 256]
        idx = idx + 1
        s = s + mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
        continue 
    require msg.value >= s + (mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 256] * stor5.length) + (mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 256] * stor4.length)
}

function sub_6ddcdfe3(?) payable {
    mem[64] = 96
    require not msg.value
    require stor1.length < orders.length
    if orders.length >= stor1.length + stor2.length:
        idx = 0
        while idx < stor2.length:
            require stor1.length < orders.length
            mem[mem[64] + 36] = uint256(orders[stor1.length].field_256)
            mem[mem[64] + 68] = orders[stor1.length].field_0
            mem[mem[64] + 100] = uint256(orders[stor1.length].field_512)
            mem[mem[64] + 132] = uint256(orders[stor1.length].field_768)
            mem[mem[64] + 164] = uint256(orders[stor1.length].field_1024)
            mem[mem[64] + 196] = orders[stor1.length].field_1280
            mem[mem[64] + 228] = 0
            mem[mem[64] + 260] = 0
            mem[mem[64] + 292] = 0
            mem[mem[64] + 324] = uint256(orders[stor1.length].field_2048)
            mem[mem[64] + 356] = this.address
            require ext_code.size(address(stor3.length))
            call address(stor3.length).testTrade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11, address rg12) with:
                 gas gas_remaining - 710 wei
                args 0, uint256(orders[stor1.length].field_256), orders[stor1.length].field_0, uint256(orders[stor1.length].field_512), uint256(orders[stor1.length].field_768), uint256(orders[stor1.length].field_1024), orders[stor1.length].field_1280, 0, 0, 0, uint256(orders[stor1.length].field_2048), this.address
            require ext_call.success
            require stor1.length < orders.length
            if not ext_call.return_data[0]:
                mem[0] = 6
                mem[mem[64] + 32] = 0
                mem[mem[64] + 4] = uint256(orders[stor1.length].field_2048) + stor4.length - 1
                require ext_code.size(address(stor3.length))
                call address(stor3.length).withdraw(uint256 rg1) with:
                     gas gas_remaining - 710 wei
                    args (uint256(orders[stor1.length].field_2048) + stor4.length - 1)
                require ext_call.success
                if not ext_call.return_data[0]:
                    mem[mem[64]] = stor1.length
                    emit 0x66dc28f8: stor1.length
                else:
                    require stor1.length < orders.length
                    mem[0] = 6
                    call orders[stor1.length].field_1536 with:
                       value uint256(orders[stor1.length].field_2048) + stor4.length - 1 wei
                         gas gas_remaining - 34710 wei
                    if not ext_call.success:
                        mem[mem[64]] = stor1.length
                        emit 0x8b66e26c: stor1.length
                    else:
                        require stor1.length < orders.length
                        mem[0] = 6
                        mem[mem[64]] = orders[stor1.length].field_1536
                        mem[mem[64] + 32] = uint256(orders[stor1.length].field_2048) + stor4.length - 1
                        emit 0xb810225a: orders[stor1.length].field_1536, uint256(orders[stor1.length].field_2048) + stor4.length - 1
            else:
                mem[mem[64] + 36] = uint256(orders[stor1.length].field_256)
                mem[mem[64] + 68] = orders[stor1.length].field_0
                mem[mem[64] + 100] = uint256(orders[stor1.length].field_512)
                mem[mem[64] + 132] = uint256(orders[stor1.length].field_768)
                mem[mem[64] + 164] = uint256(orders[stor1.length].field_1024)
                mem[mem[64] + 196] = orders[stor1.length].field_1280
                mem[mem[64] + 228] = 0
                mem[mem[64] + 260] = 0
                mem[mem[64] + 292] = 0
                mem[mem[64] + 324] = uint256(orders[stor1.length].field_2048)
                require ext_code.size(address(stor3.length))
                call address(stor3.length).trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                     gas gas_remaining - 710 wei
                    args 0, uint256(orders[stor1.length].field_256), orders[stor1.length].field_0, uint256(orders[stor1.length].field_512), uint256(orders[stor1.length].field_768), uint256(orders[stor1.length].field_1024), orders[stor1.length].field_1280, 0, 0, 0, uint256(orders[stor1.length].field_2048)
                require ext_call.success
                require stor1.length < orders.length
                mem[0] = 6
                if not ext_call.return_data[0]:
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 4] = uint256(orders[stor1.length].field_2048) + stor4.length - 1
                    require ext_code.size(address(stor3.length))
                    call address(stor3.length).withdraw(uint256 rg1) with:
                         gas gas_remaining - 710 wei
                        args (uint256(orders[stor1.length].field_2048) + stor4.length - 1)
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        mem[mem[64]] = stor1.length
                        emit 0x66dc28f8: stor1.length
                    else:
                        require stor1.length < orders.length
                        mem[0] = 6
                        call orders[stor1.length].field_1536 with:
                           value uint256(orders[stor1.length].field_2048) + stor4.length - 1 wei
                             gas gas_remaining - 34710 wei
                        if not ext_call.success:
                            mem[mem[64]] = stor1.length
                            emit 0x8b66e26c: stor1.length
                        else:
                            require stor1.length < orders.length
                            mem[0] = 6
                            mem[mem[64]] = orders[stor1.length].field_1536
                            mem[mem[64] + 32] = uint256(orders[stor1.length].field_2048) + stor4.length - 1
                            emit 0xb810225a: orders[stor1.length].field_1536, uint256(orders[stor1.length].field_2048) + stor4.length - 1
                else:
                    mem[mem[64] + 4] = orders[stor1.length].field_0
                    mem[mem[64] + 36] = uint256(orders[stor1.length].field_1792)
                    require ext_code.size(address(stor3.length))
                    call address(stor3.length).withdrawToken(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args orders[stor1.length].field_0, uint256(orders[stor1.length].field_1792)
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        mem[mem[64]] = stor1.length
                        emit 0xebff0048: stor1.length
                    else:
                        require stor1.length < orders.length
                        mem[0] = 6
                        mem[mem[64] + 4] = orders[stor1.length].field_1536
                        mem[mem[64] + 36] = uint256(orders[stor1.length].field_1792) - 1
                        require ext_code.size(orders[stor1.length].field_0)
                        call orders[stor1.length].field_0.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args orders[stor1.length].field_1536, uint256(orders[stor1.length].field_1792) - 1
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            mem[mem[64]] = stor1.length
                            emit 0x122778f1: stor1.length
                        else:
                            require stor1.length < orders.length
                            mem[0] = 6
                            mem[mem[64]] = orders[stor1.length].field_0
                            mem[mem[64] + 32] = orders[stor1.length].field_1536
                            mem[mem[64] + 64] = uint256(orders[stor1.length].field_1792) - 1
                            emit 0x874f886a: orders[stor1.length].field_0, orders[stor1.length].field_1536, uint256(orders[stor1.length].field_1792) - 1
            stor1.length++
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < orders.length - stor1.length:
            require stor1.length < orders.length
            mem[mem[64] + 36] = uint256(orders[stor1.length].field_256)
            mem[mem[64] + 68] = orders[stor1.length].field_0
            mem[mem[64] + 100] = uint256(orders[stor1.length].field_512)
            mem[mem[64] + 132] = uint256(orders[stor1.length].field_768)
            mem[mem[64] + 164] = uint256(orders[stor1.length].field_1024)
            mem[mem[64] + 196] = orders[stor1.length].field_1280
            mem[mem[64] + 228] = 0
            mem[mem[64] + 260] = 0
            mem[mem[64] + 292] = 0
            mem[mem[64] + 324] = uint256(orders[stor1.length].field_2048)
            mem[mem[64] + 356] = this.address
            require ext_code.size(address(stor3.length))
            call address(stor3.length).testTrade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11, address rg12) with:
                 gas gas_remaining - 710 wei
                args 0, uint256(orders[stor1.length].field_256), orders[stor1.length].field_0, uint256(orders[stor1.length].field_512), uint256(orders[stor1.length].field_768), uint256(orders[stor1.length].field_1024), orders[stor1.length].field_1280, 0, 0, 0, uint256(orders[stor1.length].field_2048), this.address
            require ext_call.success
            require stor1.length < orders.length
            if not ext_call.return_data[0]:
                mem[0] = 6
                mem[mem[64] + 32] = 0
                mem[mem[64] + 4] = uint256(orders[stor1.length].field_2048) + stor4.length - 1
                require ext_code.size(address(stor3.length))
                call address(stor3.length).withdraw(uint256 rg1) with:
                     gas gas_remaining - 710 wei
                    args (uint256(orders[stor1.length].field_2048) + stor4.length - 1)
                require ext_call.success
                if not ext_call.return_data[0]:
                    mem[mem[64]] = stor1.length
                    emit 0x66dc28f8: stor1.length
                else:
                    require stor1.length < orders.length
                    mem[0] = 6
                    call orders[stor1.length].field_1536 with:
                       value uint256(orders[stor1.length].field_2048) + stor4.length - 1 wei
                         gas gas_remaining - 34710 wei
                    if not ext_call.success:
                        mem[mem[64]] = stor1.length
                        emit 0x8b66e26c: stor1.length
                    else:
                        require stor1.length < orders.length
                        mem[0] = 6
                        mem[mem[64]] = orders[stor1.length].field_1536
                        mem[mem[64] + 32] = uint256(orders[stor1.length].field_2048) + stor4.length - 1
                        emit 0xb810225a: orders[stor1.length].field_1536, uint256(orders[stor1.length].field_2048) + stor4.length - 1
            else:
                mem[mem[64] + 36] = uint256(orders[stor1.length].field_256)
                mem[mem[64] + 68] = orders[stor1.length].field_0
                mem[mem[64] + 100] = uint256(orders[stor1.length].field_512)
                mem[mem[64] + 132] = uint256(orders[stor1.length].field_768)
                mem[mem[64] + 164] = uint256(orders[stor1.length].field_1024)
                mem[mem[64] + 196] = orders[stor1.length].field_1280
                mem[mem[64] + 228] = 0
                mem[mem[64] + 260] = 0
                mem[mem[64] + 292] = 0
                mem[mem[64] + 324] = uint256(orders[stor1.length].field_2048)
                require ext_code.size(address(stor3.length))
                call address(stor3.length).trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                     gas gas_remaining - 710 wei
                    args 0, uint256(orders[stor1.length].field_256), orders[stor1.length].field_0, uint256(orders[stor1.length].field_512), uint256(orders[stor1.length].field_768), uint256(orders[stor1.length].field_1024), orders[stor1.length].field_1280, 0, 0, 0, uint256(orders[stor1.length].field_2048)
                require ext_call.success
                require stor1.length < orders.length
                mem[0] = 6
                if not ext_call.return_data[0]:
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 4] = uint256(orders[stor1.length].field_2048) + stor4.length - 1
                    require ext_code.size(address(stor3.length))
                    call address(stor3.length).withdraw(uint256 rg1) with:
                         gas gas_remaining - 710 wei
                        args (uint256(orders[stor1.length].field_2048) + stor4.length - 1)
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        mem[mem[64]] = stor1.length
                        emit 0x66dc28f8: stor1.length
                    else:
                        require stor1.length < orders.length
                        mem[0] = 6
                        call orders[stor1.length].field_1536 with:
                           value uint256(orders[stor1.length].field_2048) + stor4.length - 1 wei
                             gas gas_remaining - 34710 wei
                        if not ext_call.success:
                            mem[mem[64]] = stor1.length
                            emit 0x8b66e26c: stor1.length
                        else:
                            require stor1.length < orders.length
                            mem[0] = 6
                            mem[mem[64]] = orders[stor1.length].field_1536
                            mem[mem[64] + 32] = uint256(orders[stor1.length].field_2048) + stor4.length - 1
                            emit 0xb810225a: orders[stor1.length].field_1536, uint256(orders[stor1.length].field_2048) + stor4.length - 1
                else:
                    mem[mem[64] + 4] = orders[stor1.length].field_0
                    mem[mem[64] + 36] = uint256(orders[stor1.length].field_1792)
                    require ext_code.size(address(stor3.length))
                    call address(stor3.length).withdrawToken(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args orders[stor1.length].field_0, uint256(orders[stor1.length].field_1792)
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        mem[mem[64]] = stor1.length
                        emit 0xebff0048: stor1.length
                    else:
                        require stor1.length < orders.length
                        mem[0] = 6
                        mem[mem[64] + 4] = orders[stor1.length].field_1536
                        mem[mem[64] + 36] = uint256(orders[stor1.length].field_1792) - 1
                        require ext_code.size(orders[stor1.length].field_0)
                        call orders[stor1.length].field_0.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args orders[stor1.length].field_1536, uint256(orders[stor1.length].field_1792) - 1
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            mem[mem[64]] = stor1.length
                            emit 0x122778f1: stor1.length
                        else:
                            require stor1.length < orders.length
                            mem[0] = 6
                            mem[mem[64]] = orders[stor1.length].field_0
                            mem[mem[64] + 32] = orders[stor1.length].field_1536
                            mem[mem[64] + 64] = uint256(orders[stor1.length].field_1792) - 1
                            emit 0x874f886a: orders[stor1.length].field_0, orders[stor1.length].field_1536, uint256(orders[stor1.length].field_1792) - 1
            stor1.length++
            idx = idx + 1
            continue 
    return (stor1.length < orders.length)
}



}
