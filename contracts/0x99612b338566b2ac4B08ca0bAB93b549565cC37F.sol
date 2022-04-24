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
    return code.data[200 len 11856]
}



// =====================  Runtime code  =====================


#
#  - sub_81e743e0(?)
#
uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 sub_8f328855;
uint256 sub_5224dde7;
address stor3;
uint256 stor4;
uint256 stor5;
array of struct orders;

function sub_3ec26512(?) {
    return bool(uint8(stor0.field_160))
}

function sub_5224dde7(?) {
    return sub_5224dde7
}

function owner() {
    return owner
}

function sub_8f328855(?) {
    return sub_8f328855
}

function orders(uint256 arg1) {
    require arg1 < orders.length
    return orders[arg1].field_0, 
           orders[arg1].field_256,
           orders[arg1].field_512,
           orders[arg1].field_768,
           orders[arg1].field_1024,
           orders[arg1].field_1280,
           orders[arg1].field_1536,
           orders[arg1].field_1792,
           orders[arg1].field_2048,
           orders[arg1].field_2304,
           orders[arg1].field_2560,
           orders[arg1].field_2816
}

function sub_bacfb890(?) {
    require msg.sender == owner
    stor4 = arg1
}

function sub_5aef0201(?) {
    require msg.sender == owner
    sub_5224dde7 = arg1
}

function changeFee(uint256 arg1) {
    require msg.sender == owner
    stor5 = arg1
}

function setEtherDelta(address arg1) {
    require msg.sender == owner
    stor3 = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function _fallback() payable {
    if msg.sender == stor3:
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
    require ext_code.size(stor3)
    call stor3.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args (orders[arg1].field_2048 + stor4)
    require ext_call.success
    if ext_call.return_data[0]:
        emit 0x8b66e26c: arg1
}

function sub_46933119(?) {
    require msg.sender == owner
    require arg1 < orders.length
    require ext_code.size(stor3)
    call stor3.withdrawToken(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args orders[arg1].field_0, orders[arg1].field_1792
    require ext_call.success
    if ext_call.return_data[0]:
        emit 0x122778f1: arg1
}

function transferEther(uint256 arg1) {
    require msg.sender == owner
    require arg1 < orders.length
    call orders[arg1].field_1536 with:
       value orders[arg1].field_2048 + stor4 wei
         gas gas_remaining - 34710 wei
    if ext_call.success:
        require arg1 < orders.length
        emit 0xb810225a: orders[arg1].field_1536, orders[arg1].field_2048 + stor4 - 1
}

function transferToken(uint256 arg1) {
    require msg.sender == owner
    require arg1 < orders.length
    require ext_code.size(orders[arg1].field_0)
    call orders[arg1].field_0.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args orders[arg1].field_1536, orders[arg1].field_1792 - 1
    require ext_call.success
    if ext_call.return_data[0]:
        require arg1 < orders.length
        emit 0x874f886a: orders[arg1].field_0, orders[arg1].field_1536, orders[arg1].field_1792 - 1
}

function sub_6ddcdfe3(?) payable {
    mem[64] = 96
    require not msg.value
    require sub_8f328855 < orders.length
    if orders.length >= sub_8f328855 + sub_5224dde7:
        idx = 0
        while idx < sub_5224dde7:
            require sub_8f328855 < orders.length
            mem[mem[64] + 36] = orders[stor1].field_256
            mem[mem[64] + 68] = orders[stor1].field_0
            mem[mem[64] + 100] = orders[stor1].field_512
            mem[mem[64] + 132] = orders[stor1].field_768
            mem[mem[64] + 164] = orders[stor1].field_1024
            mem[mem[64] + 196] = orders[stor1].field_1280
            mem[mem[64] + 228] = orders[stor1].field_2304
            mem[mem[64] + 260] = orders[stor1].field_2560
            mem[mem[64] + 292] = orders[stor1].field_2816
            mem[mem[64] + 324] = orders[stor1].field_2048
            mem[mem[64] + 356] = this.address
            require ext_code.size(stor3)
            call stor3.testTrade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11, address rg12) with:
                 gas gas_remaining - 710 wei
                args 0, orders[stor1].field_256, orders[stor1].field_0, orders[stor1].field_512, orders[stor1].field_768, orders[stor1].field_1024, orders[stor1].field_1280, orders[stor1].field_2304, orders[stor1].field_2560, orders[stor1].field_2816, orders[stor1].field_2048, this.address
            require ext_call.success
            require sub_8f328855 < orders.length
            if not ext_call.return_data[0]:
                mem[0] = 6
                mem[mem[64] + 32] = 0
                mem[mem[64] + 4] = orders[stor1].field_2048 + stor4 - 1
                require ext_code.size(stor3)
                call stor3.0x2e1a7d4d with:
                     gas gas_remaining - 710 wei
                    args (orders[stor1].field_2048 + stor4 - 1)
                require ext_call.success
                if not ext_call.return_data[0]:
                    mem[mem[64]] = sub_8f328855
                    emit 0x66dc28f8: sub_8f328855
                else:
                    require sub_8f328855 < orders.length
                    mem[0] = 6
                    call orders[stor1].field_1536 with:
                       value orders[stor1].field_2048 + stor4 - 1 wei
                         gas gas_remaining - 34710 wei
                    if not ext_call.success:
                        mem[mem[64]] = sub_8f328855
                        emit 0x8b66e26c: sub_8f328855
                    else:
                        require sub_8f328855 < orders.length
                        mem[0] = 6
                        mem[mem[64]] = orders[stor1].field_1536
                        mem[mem[64] + 32] = orders[stor1].field_2048 + stor4 - 1
                        emit 0xb810225a: orders[stor1].field_1536, orders[stor1].field_2048 + stor4 - 1
            else:
                mem[mem[64] + 36] = orders[stor1].field_256
                mem[mem[64] + 68] = orders[stor1].field_0
                mem[mem[64] + 100] = orders[stor1].field_512
                mem[mem[64] + 132] = orders[stor1].field_768
                mem[mem[64] + 164] = orders[stor1].field_1024
                mem[mem[64] + 196] = orders[stor1].field_1280
                mem[mem[64] + 228] = orders[stor1].field_2304
                mem[mem[64] + 260] = orders[stor1].field_2560
                mem[mem[64] + 292] = orders[stor1].field_2816
                mem[mem[64] + 324] = orders[stor1].field_2048
                require ext_code.size(stor3)
                call stor3.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                     gas gas_remaining - 710 wei
                    args 0, orders[stor1].field_256, orders[stor1].field_0, orders[stor1].field_512, orders[stor1].field_768, orders[stor1].field_1024, orders[stor1].field_1280, orders[stor1].field_2304, orders[stor1].field_2560, orders[stor1].field_2816, orders[stor1].field_2048
                require ext_call.success
                require sub_8f328855 < orders.length
                mem[0] = 6
                if not ext_call.return_data[0]:
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 4] = orders[stor1].field_2048 + stor4 - 1
                    require ext_code.size(stor3)
                    call stor3.0x2e1a7d4d with:
                         gas gas_remaining - 710 wei
                        args (orders[stor1].field_2048 + stor4 - 1)
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        mem[mem[64]] = sub_8f328855
                        emit 0x66dc28f8: sub_8f328855
                    else:
                        require sub_8f328855 < orders.length
                        mem[0] = 6
                        call orders[stor1].field_1536 with:
                           value orders[stor1].field_2048 + stor4 - 1 wei
                             gas gas_remaining - 34710 wei
                        if not ext_call.success:
                            mem[mem[64]] = sub_8f328855
                            emit 0x8b66e26c: sub_8f328855
                        else:
                            require sub_8f328855 < orders.length
                            mem[0] = 6
                            mem[mem[64]] = orders[stor1].field_1536
                            mem[mem[64] + 32] = orders[stor1].field_2048 + stor4 - 1
                            emit 0xb810225a: orders[stor1].field_1536, orders[stor1].field_2048 + stor4 - 1
                else:
                    mem[mem[64] + 4] = orders[stor1].field_0
                    mem[mem[64] + 36] = orders[stor1].field_1792
                    require ext_code.size(stor3)
                    call stor3.withdrawToken(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args orders[stor1].field_0, orders[stor1].field_1792
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        mem[mem[64]] = sub_8f328855
                        emit 0xebff0048: sub_8f328855
                    else:
                        require sub_8f328855 < orders.length
                        mem[0] = 6
                        mem[mem[64] + 4] = orders[stor1].field_1536
                        mem[mem[64] + 36] = orders[stor1].field_1792 - 1
                        require ext_code.size(orders[stor1].field_0)
                        call orders[stor1].field_0.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args orders[stor1].field_1536, orders[stor1].field_1792 - 1
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            mem[mem[64]] = sub_8f328855
                            emit 0x122778f1: sub_8f328855
                        else:
                            require sub_8f328855 < orders.length
                            mem[0] = 6
                            mem[mem[64]] = orders[stor1].field_0
                            mem[mem[64] + 32] = orders[stor1].field_1536
                            mem[mem[64] + 64] = orders[stor1].field_1792 - 1
                            emit 0x874f886a: orders[stor1].field_0, orders[stor1].field_1536, orders[stor1].field_1792 - 1
            sub_8f328855++
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < orders.length - sub_8f328855:
            require sub_8f328855 < orders.length
            mem[mem[64] + 36] = orders[stor1].field_256
            mem[mem[64] + 68] = orders[stor1].field_0
            mem[mem[64] + 100] = orders[stor1].field_512
            mem[mem[64] + 132] = orders[stor1].field_768
            mem[mem[64] + 164] = orders[stor1].field_1024
            mem[mem[64] + 196] = orders[stor1].field_1280
            mem[mem[64] + 228] = orders[stor1].field_2304
            mem[mem[64] + 260] = orders[stor1].field_2560
            mem[mem[64] + 292] = orders[stor1].field_2816
            mem[mem[64] + 324] = orders[stor1].field_2048
            mem[mem[64] + 356] = this.address
            require ext_code.size(stor3)
            call stor3.testTrade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11, address rg12) with:
                 gas gas_remaining - 710 wei
                args 0, orders[stor1].field_256, orders[stor1].field_0, orders[stor1].field_512, orders[stor1].field_768, orders[stor1].field_1024, orders[stor1].field_1280, orders[stor1].field_2304, orders[stor1].field_2560, orders[stor1].field_2816, orders[stor1].field_2048, this.address
            require ext_call.success
            require sub_8f328855 < orders.length
            if not ext_call.return_data[0]:
                mem[0] = 6
                mem[mem[64] + 32] = 0
                mem[mem[64] + 4] = orders[stor1].field_2048 + stor4 - 1
                require ext_code.size(stor3)
                call stor3.0x2e1a7d4d with:
                     gas gas_remaining - 710 wei
                    args (orders[stor1].field_2048 + stor4 - 1)
                require ext_call.success
                if not ext_call.return_data[0]:
                    mem[mem[64]] = sub_8f328855
                    emit 0x66dc28f8: sub_8f328855
                else:
                    require sub_8f328855 < orders.length
                    mem[0] = 6
                    call orders[stor1].field_1536 with:
                       value orders[stor1].field_2048 + stor4 - 1 wei
                         gas gas_remaining - 34710 wei
                    if not ext_call.success:
                        mem[mem[64]] = sub_8f328855
                        emit 0x8b66e26c: sub_8f328855
                    else:
                        require sub_8f328855 < orders.length
                        mem[0] = 6
                        mem[mem[64]] = orders[stor1].field_1536
                        mem[mem[64] + 32] = orders[stor1].field_2048 + stor4 - 1
                        emit 0xb810225a: orders[stor1].field_1536, orders[stor1].field_2048 + stor4 - 1
            else:
                mem[mem[64] + 36] = orders[stor1].field_256
                mem[mem[64] + 68] = orders[stor1].field_0
                mem[mem[64] + 100] = orders[stor1].field_512
                mem[mem[64] + 132] = orders[stor1].field_768
                mem[mem[64] + 164] = orders[stor1].field_1024
                mem[mem[64] + 196] = orders[stor1].field_1280
                mem[mem[64] + 228] = orders[stor1].field_2304
                mem[mem[64] + 260] = orders[stor1].field_2560
                mem[mem[64] + 292] = orders[stor1].field_2816
                mem[mem[64] + 324] = orders[stor1].field_2048
                require ext_code.size(stor3)
                call stor3.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                     gas gas_remaining - 710 wei
                    args 0, orders[stor1].field_256, orders[stor1].field_0, orders[stor1].field_512, orders[stor1].field_768, orders[stor1].field_1024, orders[stor1].field_1280, orders[stor1].field_2304, orders[stor1].field_2560, orders[stor1].field_2816, orders[stor1].field_2048
                require ext_call.success
                require sub_8f328855 < orders.length
                mem[0] = 6
                if not ext_call.return_data[0]:
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 4] = orders[stor1].field_2048 + stor4 - 1
                    require ext_code.size(stor3)
                    call stor3.0x2e1a7d4d with:
                         gas gas_remaining - 710 wei
                        args (orders[stor1].field_2048 + stor4 - 1)
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        mem[mem[64]] = sub_8f328855
                        emit 0x66dc28f8: sub_8f328855
                    else:
                        require sub_8f328855 < orders.length
                        mem[0] = 6
                        call orders[stor1].field_1536 with:
                           value orders[stor1].field_2048 + stor4 - 1 wei
                             gas gas_remaining - 34710 wei
                        if not ext_call.success:
                            mem[mem[64]] = sub_8f328855
                            emit 0x8b66e26c: sub_8f328855
                        else:
                            require sub_8f328855 < orders.length
                            mem[0] = 6
                            mem[mem[64]] = orders[stor1].field_1536
                            mem[mem[64] + 32] = orders[stor1].field_2048 + stor4 - 1
                            emit 0xb810225a: orders[stor1].field_1536, orders[stor1].field_2048 + stor4 - 1
                else:
                    mem[mem[64] + 4] = orders[stor1].field_0
                    mem[mem[64] + 36] = orders[stor1].field_1792
                    require ext_code.size(stor3)
                    call stor3.withdrawToken(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args orders[stor1].field_0, orders[stor1].field_1792
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        mem[mem[64]] = sub_8f328855
                        emit 0xebff0048: sub_8f328855
                    else:
                        require sub_8f328855 < orders.length
                        mem[0] = 6
                        mem[mem[64] + 4] = orders[stor1].field_1536
                        mem[mem[64] + 36] = orders[stor1].field_1792 - 1
                        require ext_code.size(orders[stor1].field_0)
                        call orders[stor1].field_0.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args orders[stor1].field_1536, orders[stor1].field_1792 - 1
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            mem[mem[64]] = sub_8f328855
                            emit 0x122778f1: sub_8f328855
                        else:
                            require sub_8f328855 < orders.length
                            mem[0] = 6
                            mem[mem[64]] = orders[stor1].field_0
                            mem[mem[64] + 32] = orders[stor1].field_1536
                            mem[mem[64] + 64] = orders[stor1].field_1792 - 1
                            emit 0x874f886a: orders[stor1].field_0, orders[stor1].field_1536, orders[stor1].field_1792 - 1
            sub_8f328855++
            idx = idx + 1
            continue 
    Mask(96, 0, stor0.field_160) = Mask(96, 0, sub_8f328855 < orders.length)
    return 0
}



}
