contract main {


// =======================  Init code  ======================


array of address stor0;
array of struct stor2;
array of struct stor3;
array of struct stor4;
address stor5;

function _fallback() {
    require code.data[7742 len 20]
    require code.data[7774 len 20]
    require code.data[7742 len 20] != msg.sender
    require code.data[7774 len 20] != msg.sender
    require code.data[7742 len 20] != code.data[7774 len 20]
    stor0.length++
    if not stor0.length > stor0.length + 1:
        address(stor0[stor0.length]) = msg.sender
        stor0.length++
        address(stor0[stor0.length]) = code.data[7742 len 20]
        stor0.length++
        address(stor0[stor0.length]) = code.data[7774 len 20]
        stor2.length = 2
        if not stor2.length <= 2:
            mem[0] = 2
            idx = 10
            while sha3(2) + (5 * stor2.length) > idx + sha3(mem[0]):
                address(stor[idx + sha3(mem[0])]) = 0
                address(stor[idx + sha3(mem[0]) + 1]) = 0
                address(stor[idx + sha3(mem[0]) + 2]) = 0
                address(stor[idx + sha3(mem[0]) + 3]) = 0
                uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                mem[0] = idx + sha3(mem[0]) + 4
                s = sha3(idx + sha3(mem[0]) + 4)
                while sha3(idx + sha3(mem[0]) + 4) + (uint256(stor[idx + sha3(mem[0]) + 4]) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                idx = idx + 5
                continue 
        idx = 0
        while uint8(idx) < stor2.length:
            address(stor2[uint8(idx)].field_0) = 0
            address(stor2[uint8(idx)].field_256) = 0
            address(stor2[uint8(idx)].field_512) = 0
            address(stor2[uint8(idx)].field_768) = 0
            uint256(stor2[uint8(idx)].field_1024) = 0
            s = sha3((5 * uint8(idx)) + sha3(2) + 4)
            while sha3((5 * uint8(idx)) + sha3(2) + 4) + (uint256(stor2[uint8(idx)].field_1024) + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            require uint8(idx) < stor2.length
            mem[0] = 2
            uint256(stor2[uint8(idx)].field_1024) = stor0.length
            if not uint256(stor2[uint8(idx)].field_1024) <= stor0.length:
                mem[0] = (5 * uint8(idx)) + sha3(2) + 4
                s = sha3((5 * uint8(idx)) + sha3(2) + 4) + (stor0.length + 31 / 32)
                while sha3((5 * uint8(idx)) + sha3(2) + 4) + (uint256(stor2[uint8(idx)].field_1024) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
        stor3.length = 2
        if not stor3.length <= 2:
            mem[0] = 3
            idx = 10
            while sha3(3) + (5 * stor3.length) > idx + sha3(mem[0]):
                address(stor[idx + sha3(mem[0])]) = 0
                address(stor[idx + sha3(mem[0]) + 1]) = 0
                address(stor[idx + sha3(mem[0]) + 2]) = 0
                address(stor[idx + sha3(mem[0]) + 3]) = 0
                uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                mem[0] = idx + sha3(mem[0]) + 4
                s = sha3(idx + sha3(mem[0]) + 4)
                while sha3(idx + sha3(mem[0]) + 4) + (uint256(stor[idx + sha3(mem[0]) + 4]) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                idx = idx + 5
                continue 
        idx = 0
        while uint8(idx) < stor3.length:
            address(stor3[uint8(idx)].field_0) = 0
            address(stor3[uint8(idx)].field_256) = 0
            address(stor3[uint8(idx)].field_512) = 0
            address(stor3[uint8(idx)].field_768) = 0
            uint256(stor3[uint8(idx)].field_1024) = 0
            s = sha3((5 * uint8(idx)) + sha3(3) + 4)
            while sha3((5 * uint8(idx)) + sha3(3) + 4) + (uint256(stor3[uint8(idx)].field_1024) + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            require uint8(idx) < stor3.length
            mem[0] = 3
            uint256(stor3[uint8(idx)].field_1024) = stor0.length
            if not uint256(stor3[uint8(idx)].field_1024) <= stor0.length:
                mem[0] = (5 * uint8(idx)) + sha3(3) + 4
                s = sha3((5 * uint8(idx)) + sha3(3) + 4) + (stor0.length + 31 / 32)
                while sha3((5 * uint8(idx)) + sha3(3) + 4) + (uint256(stor3[uint8(idx)].field_1024) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
        stor4.length = 2
        if not stor4.length <= 2:
            mem[0] = 4
            idx = 10
            while sha3(4) + (5 * stor4.length) > idx + sha3(mem[0]):
                address(stor[idx + sha3(mem[0])]) = 0
                address(stor[idx + sha3(mem[0]) + 1]) = 0
                address(stor[idx + sha3(mem[0]) + 2]) = 0
                address(stor[idx + sha3(mem[0]) + 3]) = 0
                uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                mem[0] = idx + sha3(mem[0]) + 4
                s = sha3(idx + sha3(mem[0]) + 4)
                while sha3(idx + sha3(mem[0]) + 4) + (uint256(stor[idx + sha3(mem[0]) + 4]) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                idx = idx + 5
                continue 
    else:
        idx = stor0.length + 1
        while stor0.length > idx:
            uint256(stor0[idx]) = 0
            idx = idx + 1
            continue 
        address(stor0[stor0.length]) = msg.sender
        stor0.length++
        if not stor0.length > stor0.length + 1:
            address(stor0[stor0.length]) = code.data[7742 len 20]
            stor0.length++
            address(stor0[stor0.length]) = code.data[7774 len 20]
            stor2.length = 2
            if not stor2.length <= 2:
                mem[0] = 2
                idx = 10
                while sha3(2) + (5 * stor2.length) > idx + sha3(mem[0]):
                    address(stor[idx + sha3(mem[0])]) = 0
                    address(stor[idx + sha3(mem[0]) + 1]) = 0
                    address(stor[idx + sha3(mem[0]) + 2]) = 0
                    address(stor[idx + sha3(mem[0]) + 3]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                    mem[0] = idx + sha3(mem[0]) + 4
                    s = sha3(idx + sha3(mem[0]) + 4)
                    while sha3(idx + sha3(mem[0]) + 4) + (uint256(stor[idx + sha3(mem[0]) + 4]) + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    idx = idx + 5
                    continue 
            idx = 0
            while uint8(idx) < stor2.length:
                address(stor2[uint8(idx)].field_0) = 0
                address(stor2[uint8(idx)].field_256) = 0
                address(stor2[uint8(idx)].field_512) = 0
                address(stor2[uint8(idx)].field_768) = 0
                uint256(stor2[uint8(idx)].field_1024) = 0
                s = sha3((5 * uint8(idx)) + sha3(2) + 4)
                while sha3((5 * uint8(idx)) + sha3(2) + 4) + (uint256(stor2[uint8(idx)].field_1024) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                require uint8(idx) < stor2.length
                mem[0] = 2
                uint256(stor2[uint8(idx)].field_1024) = stor0.length
                if not uint256(stor2[uint8(idx)].field_1024) <= stor0.length:
                    mem[0] = (5 * uint8(idx)) + sha3(2) + 4
                    s = sha3((5 * uint8(idx)) + sha3(2) + 4) + (stor0.length + 31 / 32)
                    while sha3((5 * uint8(idx)) + sha3(2) + 4) + (uint256(stor2[uint8(idx)].field_1024) + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            stor3.length = 2
            if not stor3.length <= 2:
                mem[0] = 3
                idx = 10
                while sha3(3) + (5 * stor3.length) > idx + sha3(mem[0]):
                    address(stor[idx + sha3(mem[0])]) = 0
                    address(stor[idx + sha3(mem[0]) + 1]) = 0
                    address(stor[idx + sha3(mem[0]) + 2]) = 0
                    address(stor[idx + sha3(mem[0]) + 3]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                    mem[0] = idx + sha3(mem[0]) + 4
                    s = sha3(idx + sha3(mem[0]) + 4)
                    while sha3(idx + sha3(mem[0]) + 4) + (uint256(stor[idx + sha3(mem[0]) + 4]) + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    idx = idx + 5
                    continue 
            idx = 0
            while uint8(idx) < stor3.length:
                address(stor3[uint8(idx)].field_0) = 0
                address(stor3[uint8(idx)].field_256) = 0
                address(stor3[uint8(idx)].field_512) = 0
                address(stor3[uint8(idx)].field_768) = 0
                uint256(stor3[uint8(idx)].field_1024) = 0
                s = sha3((5 * uint8(idx)) + sha3(3) + 4)
                while sha3((5 * uint8(idx)) + sha3(3) + 4) + (uint256(stor3[uint8(idx)].field_1024) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                require uint8(idx) < stor3.length
                mem[0] = 3
                uint256(stor3[uint8(idx)].field_1024) = stor0.length
                if not uint256(stor3[uint8(idx)].field_1024) <= stor0.length:
                    mem[0] = (5 * uint8(idx)) + sha3(3) + 4
                    s = sha3((5 * uint8(idx)) + sha3(3) + 4) + (stor0.length + 31 / 32)
                    while sha3((5 * uint8(idx)) + sha3(3) + 4) + (uint256(stor3[uint8(idx)].field_1024) + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            stor4.length = 2
            if not stor4.length <= 2:
                mem[0] = 4
                idx = 10
                while sha3(4) + (5 * stor4.length) > idx + sha3(mem[0]):
                    address(stor[idx + sha3(mem[0])]) = 0
                    address(stor[idx + sha3(mem[0]) + 1]) = 0
                    address(stor[idx + sha3(mem[0]) + 2]) = 0
                    address(stor[idx + sha3(mem[0]) + 3]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                    mem[0] = idx + sha3(mem[0]) + 4
                    s = sha3(idx + sha3(mem[0]) + 4)
                    while sha3(idx + sha3(mem[0]) + 4) + (uint256(stor[idx + sha3(mem[0]) + 4]) + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    idx = idx + 5
                    continue 
        else:
            idx = stor0.length + 1
            while stor0.length > idx:
                uint256(stor0[idx]) = 0
                idx = idx + 1
                continue 
            address(stor0[stor0.length]) = code.data[7742 len 20]
            stor0.length++
            if not stor0.length <= stor0.length + 1:
                idx = stor0.length + 1
                while stor0.length > idx:
                    uint256(stor0[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor0[stor0.length]) = code.data[7774 len 20]
            stor2.length = 2
            if not stor2.length <= 2:
                mem[0] = 2
                idx = 10
                while sha3(2) + (5 * stor2.length) > idx + sha3(mem[0]):
                    address(stor[idx + sha3(mem[0])]) = 0
                    address(stor[idx + sha3(mem[0]) + 1]) = 0
                    address(stor[idx + sha3(mem[0]) + 2]) = 0
                    address(stor[idx + sha3(mem[0]) + 3]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                    mem[0] = idx + sha3(mem[0]) + 4
                    s = sha3(idx + sha3(mem[0]) + 4)
                    while sha3(idx + sha3(mem[0]) + 4) + (uint256(stor[idx + sha3(mem[0]) + 4]) + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    idx = idx + 5
                    continue 
            idx = 0
            while uint8(idx) < stor2.length:
                address(stor2[uint8(idx)].field_0) = 0
                address(stor2[uint8(idx)].field_256) = 0
                address(stor2[uint8(idx)].field_512) = 0
                address(stor2[uint8(idx)].field_768) = 0
                uint256(stor2[uint8(idx)].field_1024) = 0
                s = sha3((5 * uint8(idx)) + sha3(2) + 4)
                while sha3((5 * uint8(idx)) + sha3(2) + 4) + (uint256(stor2[uint8(idx)].field_1024) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                require uint8(idx) < stor2.length
                mem[0] = 2
                uint256(stor2[uint8(idx)].field_1024) = stor0.length
                if not uint256(stor2[uint8(idx)].field_1024) <= stor0.length:
                    mem[0] = (5 * uint8(idx)) + sha3(2) + 4
                    s = sha3((5 * uint8(idx)) + sha3(2) + 4) + (stor0.length + 31 / 32)
                    while sha3((5 * uint8(idx)) + sha3(2) + 4) + (uint256(stor2[uint8(idx)].field_1024) + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            stor3.length = 2
            if not stor3.length <= 2:
                mem[0] = 3
                idx = 10
                while sha3(3) + (5 * stor3.length) > idx + sha3(mem[0]):
                    address(stor[idx + sha3(mem[0])]) = 0
                    address(stor[idx + sha3(mem[0]) + 1]) = 0
                    address(stor[idx + sha3(mem[0]) + 2]) = 0
                    address(stor[idx + sha3(mem[0]) + 3]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                    mem[0] = idx + sha3(mem[0]) + 4
                    s = sha3(idx + sha3(mem[0]) + 4)
                    while sha3(idx + sha3(mem[0]) + 4) + (uint256(stor[idx + sha3(mem[0]) + 4]) + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    idx = idx + 5
                    continue 
            idx = 0
            while uint8(idx) < stor3.length:
                address(stor3[uint8(idx)].field_0) = 0
                address(stor3[uint8(idx)].field_256) = 0
                address(stor3[uint8(idx)].field_512) = 0
                address(stor3[uint8(idx)].field_768) = 0
                uint256(stor3[uint8(idx)].field_1024) = 0
                s = sha3((5 * uint8(idx)) + sha3(3) + 4)
                while sha3((5 * uint8(idx)) + sha3(3) + 4) + (uint256(stor3[uint8(idx)].field_1024) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                require uint8(idx) < stor3.length
                mem[0] = 3
                uint256(stor3[uint8(idx)].field_1024) = stor0.length
                if not uint256(stor3[uint8(idx)].field_1024) <= stor0.length:
                    mem[0] = (5 * uint8(idx)) + sha3(3) + 4
                    s = sha3((5 * uint8(idx)) + sha3(3) + 4) + (stor0.length + 31 / 32)
                    while sha3((5 * uint8(idx)) + sha3(3) + 4) + (uint256(stor3[uint8(idx)].field_1024) + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            stor4.length = 2
            if not stor4.length <= 2:
                mem[0] = 4
                idx = 10
                while sha3(4) + (5 * stor4.length) > idx + sha3(mem[0]):
                    address(stor[idx + sha3(mem[0])]) = 0
                    address(stor[idx + sha3(mem[0]) + 1]) = 0
                    address(stor[idx + sha3(mem[0]) + 2]) = 0
                    address(stor[idx + sha3(mem[0]) + 3]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                    mem[0] = idx + sha3(mem[0]) + 4
                    s = sha3(idx + sha3(mem[0]) + 4)
                    while sha3(idx + sha3(mem[0]) + 4) + (uint256(stor[idx + sha3(mem[0]) + 4]) + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    idx = idx + 5
                    continue 
    idx = 0
    while uint8(idx) < stor4.length:
        address(stor4[uint8(idx)].field_0) = 0
        address(stor4[uint8(idx)].field_256) = 0
        address(stor4[uint8(idx)].field_512) = 0
        address(stor4[uint8(idx)].field_768) = 0
        uint256(stor4[uint8(idx)].field_1024) = 0
        s = sha3((5 * uint8(idx)) + sha3(4) + 4)
        while sha3((5 * uint8(idx)) + sha3(4) + 4) + (uint256(stor4[uint8(idx)].field_1024) + 31 / 32) > s:
            uint256(stor[s]) = 0
            s = s + 1
            continue 
        require uint8(idx) < stor4.length
        mem[0] = 4
        uint256(stor4[uint8(idx)].field_1024) = stor0.length
        if not uint256(stor4[uint8(idx)].field_1024) <= stor0.length:
            mem[0] = (5 * uint8(idx)) + sha3(4) + 4
            s = sha3((5 * uint8(idx)) + sha3(4) + 4) + (stor0.length + 31 / 32)
            while sha3((5 * uint8(idx)) + sha3(4) + 4) + (uint256(stor4[uint8(idx)].field_1024) + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
        idx = idx + 1
        continue 
    stor5 = code.data[7710 len 20]
    return code.data[1007 len 6691]
}



// =====================  Runtime code  =====================


array of address stor0;
array of uint8 stor1;
address stor5;

function _fallback() payable {
    revert
}

function sub_f21c89ee(?) {
    require uint8(stor1[address(msg.sender)])
    require ext_code.size(stor5)
    call stor5.0xf21c89ee with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function settleTransaction(uint256 arg1) {
    require uint8(stor1[address(msg.sender)])
    require ext_code.size(stor5)
    call stor5.0x19062b8f with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function revokeTransaction(uint256 arg1) {
    require uint8(stor1[address(msg.sender)])
    require ext_code.size(stor5)
    call stor5.0x735631ad with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function acceptTransaction(uint256 arg1) {
    require uint8(stor1[address(msg.sender)])
    require ext_code.size(stor5)
    call stor5.0xa9dd6895 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function refundTransaction(uint256 arg1) {
    require uint8(stor1[address(msg.sender)])
    require ext_code.size(stor5)
    call stor5.0xd4e678b8 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function disputeTransaction(uint256 arg1) {
    require uint8(stor1[address(msg.sender)])
    require ext_code.size(stor5)
    call stor5.0x49bf2caf with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function confirmTransaction(uint256 arg1) {
    require uint8(stor1[address(msg.sender)])
    require ext_code.size(stor5)
    call stor5.0xc01a8c84 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function escalateDisputeToMediator(uint256 arg1) {
    require uint8(stor1[address(msg.sender)])
    require ext_code.size(stor5)
    call stor5.0x6875c319 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function createAccount() {
    require uint8(stor1[address(msg.sender)])
    create contract with 0 wei
                    code: code.data[5615 len 1033], stor5
    require create.new_address
    emit AccountCreated(address(create.new_address));
}

function refundTransactionAfterExpiry(uint256 arg1) {
    require uint8(stor1[address(msg.sender)])
    require ext_code.size(stor5)
    call stor5.0xbfd3c5fa with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function confirmTransactionAfterExpiry(uint256 arg1) {
    require uint8(stor1[address(msg.sender)])
    require ext_code.size(stor5)
    call stor5.0x1f4a5c32 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function sub_1a615688(?) {
    require uint8(stor1[address(msg.sender)])
    require ext_code.size(stor5)
    call stor5.0x1a615688 with:
         gas gas_remaining - 710 wei
        args 0, 0, address(arg1), arg2, arg3, address(arg4), arg5
    require ext_call.success
}

function sub_bd72287e(?) {
    require uint8(stor1[address(msg.sender)])
    require ext_code.size(stor5)
    call stor5.0xbd72287e with:
         gas gas_remaining - 710 wei
        args 0, 0, address(arg1), arg2, arg3, address(arg4), arg5
    require ext_call.success
}

function provideTransactionFeedback(uint256 arg1, uint8 arg2, bytes32 arg3) {
    require uint8(stor1[address(msg.sender)])
    require ext_code.size(stor5)
    call stor5.0x4f438a12 with:
         gas gas_remaining - 710 wei
        args arg1, arg2 << 248, arg3
    require ext_call.success
}

function transfer(address arg1, address arg2, uint256 arg3) {
    require uint8(stor1[address(msg.sender)])
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_095a8a88(?) {
    require 0 < stor0.length
    idx = 0
    while stor0[uint8(idx)] != msg.sender:
        require uint8(idx + 1) < stor0.length
        mem[0] = 0
        idx = idx + 1
        continue 
    require arg1
    mem[0] = arg1
    require uint8(stor1[address(arg1)])
    idx = 0
    while uint8(idx) < stor4.length:
        mem[0] = 4
        require address(stor4[uint8(idx)].field_0) != msg.sender
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while uint8(idx) < stor4.length:
        require uint8(idx) < stor4.length
        mem[0] = 4
        if address(stor4[uint8(idx)].field_0):
            if address(stor4[uint8(idx)].field_256) != arg1:
                idx = idx + 1
                s = s
                continue 
        else:
            if address(stor4[uint8(idx)].field_256) != arg1:
                idx = idx + 1
                s = 1
                continue 
        ('eq', ('type', 160, ('field', 256, ('stor', ('array', ('mul', 5, ('mask_shl', 8, 0, 0, ('var', 0))), ('name', 'stor4', 4))))), ('param', 'arg1'))
        require uint8(idx) < stor4.length
        require uint8(None + 2) < uint256(stor4[uint8(idx)].field_1024)
        require stor((Mask(3, 5, None + 2) >> 5) + sha3((5 * uint8(idx)) + ('name', 'stor4', 4) + 4))[uint8(None + 2)] <= 2
        require not stor((Mask(3, 5, None + 2) >> 5) + sha3((5 * uint8(idx)) + ('name', 'stor4', 4) + 4))[uint8(None + 2)]
        require uint8(None + 2) < uint256(stor4[uint8(idx)].field_1024)
        if arg2 == 1:
            uint256(stor[(uint8(None + 2) / 32) + sha3((5 * uint8(idx)) + ('name', 'stor4', 4) + 4)].field_0) = 256^(None + 2 % 32) or !(255 * 256^(None + 2 % 32)) and uint256(stor[(uint8(None + 2) / 32) + sha3((5 * uint8(idx)) + ('name', 'stor4', 4) + 4)].field_0)
        else:
            uint255(stor[(uint8(None + 2) / 32) + sha3((5 * uint8(idx)) + ('name', 'stor4', 4) + 4)].field_0) = uint255(256^(None + 2 % 32))
            bool(stor[(uint8(None + 2) / 32) + sha3((5 * uint8(idx)) + ('name', 'stor4', 4) + 4)].field_255) = 0
        s = 0
        t = 0
        while uint8(s) < stor0.length:
            require uint8(s) < uint256(stor4[uint8(idx)].field_1024)
            mem[0] = (5 * uint8(idx)) + sha3(4) + 4
            require stor((Mask(3, 5, s) >> 5) + sha3((5 * uint8(idx)) + ('name', 'stor4', 4) + 4))[uint8(s)] <= 2
            if stor((Mask(3, 5, s) >> 5) + sha3((5 * uint8(idx)) + ('name', 'stor4', 4) + 4))[uint8(s)] == 1:
                s = s + 1
                t = t + 1
                continue 
            require uint8(s) < uint256(stor4[uint8(idx)].field_1024)
            mem[0] = (5 * uint8(idx)) + sha3(4) + 4
            require stor((Mask(3, 5, s) >> 5) + sha3((5 * uint8(idx)) + ('name', 'stor4', 4) + 4))[uint8(s)] <= 2
            s = s + 1
            t = t
            continue 
        if t >= 2:
            stor3.length = 2
            if not stor3.length <= 2:
                mem[0] = 3
                idx = sha3(mem[0]) + 10
                while sha3(3) + (5 * stor3.length) > idx:
                    address(stor[idx]) = 0
                    address(stor1[idx]) = 0
                    address(stor2[idx].field_0) = 0
                    address(stor3[idx].field_0) = 0
                    uint256(stor4[idx].field_0) = 0
                    mem[0] = idx + 4
                    s = sha3(idx + 4)
                    while sha3(idx + 4) + (uint256(stor4[idx].field_0) + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    idx = idx + 5
                    continue 
            idx = 0
            while uint8(idx) < stor3.length:
                address(stor3[uint8(idx)].field_0) = 0
                address(stor3[uint8(idx)].field_256) = 0
                address(stor3[uint8(idx)].field_512) = 0
                address(stor3[uint8(idx)].field_768) = 0
                uint256(stor3[uint8(idx)].field_1024) = 0
                s = sha3((5 * uint8(idx)) + sha3(3) + 4)
                while sha3((5 * uint8(idx)) + sha3(3) + 4) + (uint256(stor3[uint8(idx)].field_1024) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                require uint8(idx) < stor3.length
                mem[0] = 3
                uint256(stor3[uint8(idx)].field_1024) = stor0.length
                if not uint256(stor3[uint8(idx)].field_1024) <= stor0.length:
                    mem[0] = (5 * uint8(idx)) + sha3(3) + 4
                    s = sha3((5 * uint8(idx)) + sha3(3) + 4) + (stor0.length + 31 / 32)
                    while sha3((5 * uint8(idx)) + sha3(3) + 4) + (uint256(stor3[uint8(idx)].field_1024) + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            uint8(stor1[address(arg1)]) = 0
    require s
    require 0 < stor4.length
    address(stor4.field_0) = msg.sender
    address(stor4.field_256) = arg1
    require uint8(None + 2) < uint256(stor4.field_1024)
    require stor((Mask(3, 5, None + 2) >> 5) + ('array', 4, ('name', 'stor4', 4)))[uint8(None + 2)] <= 2
    require not stor((Mask(3, 5, None + 2) >> 5) + ('array', 4, ('name', 'stor4', 4)))[uint8(None + 2)]
    require uint8(None + 2) < uint256(stor4.field_1024)
    if arg2 == 1:
        uint256(stor[(uint8(None + 2) / 32) + ('array', 4, ('name', 'stor4', 4))].field_0) = 256^(None + 2 % 32) or !(255 * 256^(None + 2 % 32)) and uint256(stor[(uint8(None + 2) / 32) + ('array', 4, ('name', 'stor4', 4))].field_0)
    else:
        uint255(stor[(uint8(None + 2) / 32) + ('array', 4, ('name', 'stor4', 4))].field_0) = uint255(256^(None + 2 % 32))
        bool(stor[(uint8(None + 2) / 32) + ('array', 4, ('name', 'stor4', 4))].field_255) = 0
    idx = 0
    s = 0
    while uint8(idx) < stor0.length:
        require uint8(idx) < uint256(stor4.field_1024)
        mem[0] = sha3(4) + 4
        require stor((Mask(3, 5, idx) >> 5) + ('array', 4, ('name', 'stor4', 4)))[uint8(idx)] <= 2
        if stor((Mask(3, 5, idx) >> 5) + ('array', 4, ('name', 'stor4', 4)))[uint8(idx)] == 1:
            idx = idx + 1
            s = s + 1
            continue 
        require uint8(idx) < uint256(stor4.field_1024)
        mem[0] = sha3(4) + 4
        require stor((Mask(3, 5, idx) >> 5) + ('array', 4, ('name', 'stor4', 4)))[uint8(idx)] <= 2
        idx = idx + 1
        s = s
        continue 
    if s >= 2:
        stor3.length = 2
        if not stor3.length <= 2:
            mem[0] = 3
            idx = 10
            while sha3(3) + (5 * stor3.length) > idx + sha3(mem[0]):
                address(stor[idx + sha3(mem[0])]) = 0
                address(stor[idx + sha3(mem[0]) + 1]) = 0
                address(stor[idx + sha3(mem[0]) + 2]) = 0
                address(stor[idx + sha3(mem[0]) + 3]) = 0
                uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                mem[0] = idx + sha3(mem[0]) + 4
                s = sha3(idx + sha3(mem[0]) + 4)
                while sha3(idx + sha3(mem[0]) + 4) + (uint256(stor[idx + sha3(mem[0]) + 4]) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                idx = idx + 5
                continue 
        idx = 0
        while uint8(idx) < stor3.length:
            address(stor3[uint8(idx)].field_0) = 0
            address(stor3[uint8(idx)].field_256) = 0
            address(stor3[uint8(idx)].field_512) = 0
            address(stor3[uint8(idx)].field_768) = 0
            uint256(stor3[uint8(idx)].field_1024) = 0
            s = sha3((5 * uint8(idx)) + sha3(3) + 4)
            while sha3((5 * uint8(idx)) + sha3(3) + 4) + (uint256(stor3[uint8(idx)].field_1024) + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            require uint8(idx) < stor3.length
            mem[0] = 3
            uint256(stor3[uint8(idx)].field_1024) = stor0.length
            if not uint256(stor3[uint8(idx)].field_1024) <= stor0.length:
                mem[0] = (5 * uint8(idx)) + sha3(3) + 4
                s = sha3((5 * uint8(idx)) + sha3(3) + 4) + (stor0.length + 31 / 32)
                while sha3((5 * uint8(idx)) + sha3(3) + 4) + (uint256(stor3[uint8(idx)].field_1024) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
        uint8(stor1[address(arg1)]) = 0
}

function sub_cf14ac0a(?) {
    require 0 < stor0.length
    idx = 0
    while stor0[uint8(idx)] != msg.sender:
        require uint8(idx + 1) < stor0.length
        mem[0] = 0
        idx = idx + 1
        continue 
    require arg1
    mem[0] = arg1
    require not uint8(stor1[address(arg1)])
    idx = 0
    while uint8(idx) < stor3.length:
        mem[0] = 3
        require address(stor3[uint8(idx)].field_0) != msg.sender
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while uint8(idx) < stor3.length:
        require uint8(idx) < stor3.length
        mem[0] = 3
        if address(stor3[uint8(idx)].field_0):
            if address(stor3[uint8(idx)].field_256) != arg1:
                idx = idx + 1
                s = s
                continue 
        else:
            if address(stor3[uint8(idx)].field_256) != arg1:
                idx = idx + 1
                s = 1
                continue 
        ('eq', ('type', 160, ('field', 256, ('stor', ('array', ('mul', 5, ('mask_shl', 8, 0, 0, ('var', 0))), ('name', 'stor3', 3))))), ('param', 'arg1'))
        require uint8(idx) < stor3.length
        require uint8(None + 2) < uint256(stor3[uint8(idx)].field_1024)
        require stor((Mask(3, 5, None + 2) >> 5) + sha3((5 * uint8(idx)) + ('name', 'stor3', 3) + 4))[uint8(None + 2)] <= 2
        require not stor((Mask(3, 5, None + 2) >> 5) + sha3((5 * uint8(idx)) + ('name', 'stor3', 3) + 4))[uint8(None + 2)]
        require uint8(None + 2) < uint256(stor3[uint8(idx)].field_1024)
        if arg2 == 1:
            uint256(stor[(uint8(None + 2) / 32) + sha3((5 * uint8(idx)) + ('name', 'stor3', 3) + 4)].field_0) = 256^(None + 2 % 32) or !(255 * 256^(None + 2 % 32)) and uint256(stor[(uint8(None + 2) / 32) + sha3((5 * uint8(idx)) + ('name', 'stor3', 3) + 4)].field_0)
        else:
            uint255(stor[(uint8(None + 2) / 32) + sha3((5 * uint8(idx)) + ('name', 'stor3', 3) + 4)].field_0) = uint255(256^(None + 2 % 32))
            bool(stor[(uint8(None + 2) / 32) + sha3((5 * uint8(idx)) + ('name', 'stor3', 3) + 4)].field_255) = 0
        s = 0
        t = 0
        while uint8(s) < stor0.length:
            require uint8(s) < uint256(stor3[uint8(idx)].field_1024)
            mem[0] = (5 * uint8(idx)) + sha3(3) + 4
            require stor((Mask(3, 5, s) >> 5) + sha3((5 * uint8(idx)) + ('name', 'stor3', 3) + 4))[uint8(s)] <= 2
            if stor((Mask(3, 5, s) >> 5) + sha3((5 * uint8(idx)) + ('name', 'stor3', 3) + 4))[uint8(s)] == 1:
                s = s + 1
                t = t + 1
                continue 
            require uint8(s) < uint256(stor3[uint8(idx)].field_1024)
            mem[0] = (5 * uint8(idx)) + sha3(3) + 4
            require stor((Mask(3, 5, s) >> 5) + sha3((5 * uint8(idx)) + ('name', 'stor3', 3) + 4))[uint8(s)] <= 2
            s = s + 1
            t = t
            continue 
        if t >= 2:
            stor3.length = 2
            if not stor3.length <= 2:
                mem[0] = 3
                idx = sha3(mem[0]) + 10
                while sha3(3) + (5 * stor3.length) > idx:
                    address(stor[idx]) = 0
                    address(stor1[idx]) = 0
                    address(stor2[idx].field_0) = 0
                    address(stor3[idx].field_0) = 0
                    uint256(stor4[idx].field_0) = 0
                    mem[0] = idx + 4
                    s = sha3(idx + 4)
                    while sha3(idx + 4) + (uint256(stor4[idx].field_0) + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    idx = idx + 5
                    continue 
            idx = 0
            while uint8(idx) < stor3.length:
                address(stor3[uint8(idx)].field_0) = 0
                address(stor3[uint8(idx)].field_256) = 0
                address(stor3[uint8(idx)].field_512) = 0
                address(stor3[uint8(idx)].field_768) = 0
                uint256(stor3[uint8(idx)].field_1024) = 0
                s = sha3((5 * uint8(idx)) + sha3(3) + 4)
                while sha3((5 * uint8(idx)) + sha3(3) + 4) + (uint256(stor3[uint8(idx)].field_1024) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                require uint8(idx) < stor3.length
                mem[0] = 3
                uint256(stor3[uint8(idx)].field_1024) = stor0.length
                if not uint256(stor3[uint8(idx)].field_1024) <= stor0.length:
                    mem[0] = (5 * uint8(idx)) + sha3(3) + 4
                    s = sha3((5 * uint8(idx)) + sha3(3) + 4) + (stor0.length + 31 / 32)
                    while sha3((5 * uint8(idx)) + sha3(3) + 4) + (uint256(stor3[uint8(idx)].field_1024) + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            uint8(stor1[address(arg1)]) = 1
    require s
    require 0 < stor3.length
    address(stor3.field_0) = msg.sender
    address(stor3.field_256) = arg1
    require uint8(None + 2) < uint256(stor3.field_1024)
    require stor((Mask(3, 5, None + 2) >> 5) + ('array', 4, ('name', 'stor3', 3)))[uint8(None + 2)] <= 2
    require not stor((Mask(3, 5, None + 2) >> 5) + ('array', 4, ('name', 'stor3', 3)))[uint8(None + 2)]
    require uint8(None + 2) < uint256(stor3.field_1024)
    if arg2 == 1:
        uint256(stor[(uint8(None + 2) / 32) + ('array', 4, ('name', 'stor3', 3))].field_0) = 256^(None + 2 % 32) or !(255 * 256^(None + 2 % 32)) and uint256(stor[(uint8(None + 2) / 32) + ('array', 4, ('name', 'stor3', 3))].field_0)
    else:
        uint255(stor[(uint8(None + 2) / 32) + ('array', 4, ('name', 'stor3', 3))].field_0) = uint255(256^(None + 2 % 32))
        bool(stor[(uint8(None + 2) / 32) + ('array', 4, ('name', 'stor3', 3))].field_255) = 0
    idx = 0
    s = 0
    while uint8(idx) < stor0.length:
        require uint8(idx) < uint256(stor3.field_1024)
        mem[0] = sha3(3) + 4
        require stor((Mask(3, 5, idx) >> 5) + ('array', 4, ('name', 'stor3', 3)))[uint8(idx)] <= 2
        if stor((Mask(3, 5, idx) >> 5) + ('array', 4, ('name', 'stor3', 3)))[uint8(idx)] == 1:
            idx = idx + 1
            s = s + 1
            continue 
        require uint8(idx) < uint256(stor3.field_1024)
        mem[0] = sha3(3) + 4
        require stor((Mask(3, 5, idx) >> 5) + ('array', 4, ('name', 'stor3', 3)))[uint8(idx)] <= 2
        idx = idx + 1
        s = s
        continue 
    if s >= 2:
        stor3.length = 2
        if not stor3.length <= 2:
            mem[0] = 3
            idx = 10
            while sha3(3) + (5 * stor3.length) > idx + sha3(mem[0]):
                address(stor[idx + sha3(mem[0])]) = 0
                address(stor[idx + sha3(mem[0]) + 1]) = 0
                address(stor[idx + sha3(mem[0]) + 2]) = 0
                address(stor[idx + sha3(mem[0]) + 3]) = 0
                uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                mem[0] = idx + sha3(mem[0]) + 4
                s = sha3(idx + sha3(mem[0]) + 4)
                while sha3(idx + sha3(mem[0]) + 4) + (uint256(stor[idx + sha3(mem[0]) + 4]) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                idx = idx + 5
                continue 
        idx = 0
        while uint8(idx) < stor3.length:
            address(stor3[uint8(idx)].field_0) = 0
            address(stor3[uint8(idx)].field_256) = 0
            address(stor3[uint8(idx)].field_512) = 0
            address(stor3[uint8(idx)].field_768) = 0
            uint256(stor3[uint8(idx)].field_1024) = 0
            s = sha3((5 * uint8(idx)) + sha3(3) + 4)
            while sha3((5 * uint8(idx)) + sha3(3) + 4) + (uint256(stor3[uint8(idx)].field_1024) + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            require uint8(idx) < stor3.length
            mem[0] = 3
            uint256(stor3[uint8(idx)].field_1024) = stor0.length
            if not uint256(stor3[uint8(idx)].field_1024) <= stor0.length:
                mem[0] = (5 * uint8(idx)) + sha3(3) + 4
                s = sha3((5 * uint8(idx)) + sha3(3) + 4) + (stor0.length + 31 / 32)
                while sha3((5 * uint8(idx)) + sha3(3) + 4) + (uint256(stor3[uint8(idx)].field_1024) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
        uint8(stor1[address(arg1)]) = 1
}

function sub_c83a0ebc(?) {
    require 0 < stor0.length
    idx = 0
    while stor0[uint8(idx)] != msg.sender:
        require uint8(idx + 1) < stor0.length
        mem[0] = 0
        idx = idx + 1
        continue 
    require arg1
    require arg2
    require 0 < stor0.length
    mem[0] = 0
    idx = 0
    while stor0[uint8(idx)] != arg1:
        require uint8(idx + 1) < stor0.length
        mem[0] = 0
        idx = idx + 1
        continue 
    if arg3:
        require uint8(None + 2) != uint8(None + 2)
    idx = 0
    while uint8(idx) < stor0.length:
        mem[0] = 0
        if stor0[uint8(idx)] != arg2:
            idx = idx + 1
            continue 
        require uint8(idx) == 3
        idx = 0
        while uint8(idx) < stor2.length:
            mem[0] = 2
            require address(stor2[uint8(idx)].field_0) != msg.sender
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while uint8(idx) < stor2.length:
            require uint8(idx) < stor2.length
            mem[0] = 2
            if address(stor2[uint8(idx)].field_0):
                if address(stor2[uint8(idx)].field_512) != arg1:
                    idx = idx + 1
                    s = s
                    continue 
                require uint8(idx) < stor2.length
                mem[0] = 2
                if address(stor2[uint8(idx)].field_768) != arg2:
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if address(stor2[uint8(idx)].field_512) != arg1:
                    idx = idx + 1
                    s = 1
                    continue 
                require uint8(idx) < stor2.length
                mem[0] = 2
                if address(stor2[uint8(idx)].field_768) != arg2:
                    idx = idx + 1
                    s = 1
                    continue 
            ('eq', ('type', 160, ('field', 768, ('stor', ('array', ('mul', 5, ('mask_shl', 8, 0, 0, ('var', 0))), ('name', 'stor2', 2))))), ('param', 'arg2'))
            require uint8(idx) < stor2.length
            require uint8(None + 2) < uint256(stor2[uint8(idx)].field_1024)
            require stor((Mask(3, 5, None + 2) >> 5) + sha3((5 * uint8(idx)) + ('name', 'stor2', 2) + 4))[uint8(None + 2)] <= 2
            require not stor((Mask(3, 5, None + 2) >> 5) + sha3((5 * uint8(idx)) + ('name', 'stor2', 2) + 4))[uint8(None + 2)]
            require uint8(None + 2) < uint256(stor2[uint8(idx)].field_1024)
            if arg3 == 1:
                uint256(stor[(uint8(None + 2) / 32) + sha3((5 * uint8(idx)) + ('name', 'stor2', 2) + 4)].field_0) = 256^(None + 2 % 32) or !(255 * 256^(None + 2 % 32)) and uint256(stor[(uint8(None + 2) / 32) + sha3((5 * uint8(idx)) + ('name', 'stor2', 2) + 4)].field_0)
            else:
                uint255(stor[(uint8(None + 2) / 32) + sha3((5 * uint8(idx)) + ('name', 'stor2', 2) + 4)].field_0) = uint255(256^(None + 2 % 32))
                bool(stor[(uint8(None + 2) / 32) + sha3((5 * uint8(idx)) + ('name', 'stor2', 2) + 4)].field_255) = 0
            s = 0
            t = 0
            while uint8(s) < stor0.length:
                require uint8(s) < uint256(stor2[uint8(idx)].field_1024)
                mem[0] = (5 * uint8(idx)) + sha3(2) + 4
                require stor((Mask(3, 5, s) >> 5) + sha3((5 * uint8(idx)) + ('name', 'stor2', 2) + 4))[uint8(s)] <= 2
                if stor((Mask(3, 5, s) >> 5) + sha3((5 * uint8(idx)) + ('name', 'stor2', 2) + 4))[uint8(s)] == 1:
                    s = s + 1
                    t = t + 1
                    continue 
                require uint8(s) < uint256(stor2[uint8(idx)].field_1024)
                mem[0] = (5 * uint8(idx)) + sha3(2) + 4
                require stor((Mask(3, 5, s) >> 5) + sha3((5 * uint8(idx)) + ('name', 'stor2', 2) + 4))[uint8(s)] <= 2
                s = s + 1
                t = t
                continue 
            if t >= 2:
                stor3.length = 2
                if not stor3.length <= 2:
                    mem[0] = 3
                    idx = sha3(mem[0]) + 10
                    while sha3(3) + (5 * stor3.length) > idx:
                        address(stor[idx]) = 0
                        address(stor1[idx]) = 0
                        address(stor2[idx].field_0) = 0
                        address(stor3[idx].field_0) = 0
                        uint256(stor4[idx].field_0) = 0
                        mem[0] = idx + 4
                        s = sha3(idx + 4)
                        while sha3(idx + 4) + (uint256(stor4[idx].field_0) + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        idx = idx + 5
                        continue 
                idx = 0
                while uint8(idx) < stor3.length:
                    address(stor3[uint8(idx)].field_0) = 0
                    address(stor3[uint8(idx)].field_256) = 0
                    address(stor3[uint8(idx)].field_512) = 0
                    address(stor3[uint8(idx)].field_768) = 0
                    uint256(stor3[uint8(idx)].field_1024) = 0
                    s = sha3((5 * uint8(idx)) + sha3(3) + 4)
                    while sha3((5 * uint8(idx)) + sha3(3) + 4) + (uint256(stor3[uint8(idx)].field_1024) + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    require uint8(idx) < stor3.length
                    mem[0] = 3
                    uint256(stor3[uint8(idx)].field_1024) = stor0.length
                    if not uint256(stor3[uint8(idx)].field_1024) <= stor0.length:
                        mem[0] = (5 * uint8(idx)) + sha3(3) + 4
                        s = sha3((5 * uint8(idx)) + sha3(3) + 4) + (stor0.length + 31 / 32)
                        while sha3((5 * uint8(idx)) + sha3(3) + 4) + (uint256(stor3[uint8(idx)].field_1024) + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                    idx = idx + 1
                    continue 
                require uint8(None + 2) < stor0.length
                stor0[uint8(None + 2)] = arg2
        require s
        require 0 < stor2.length
        address(stor2.field_0) = msg.sender
        address(stor2.field_512) = arg1
        address(stor2.field_768) = arg2
        require uint8(None + 2) < uint256(stor2.field_1024)
        require stor((Mask(3, 5, None + 2) >> 5) + ('array', 4, ('name', 'stor2', 2)))[uint8(None + 2)] <= 2
        require not stor((Mask(3, 5, None + 2) >> 5) + ('array', 4, ('name', 'stor2', 2)))[uint8(None + 2)]
        require uint8(None + 2) < uint256(stor2.field_1024)
        if arg3 == 1:
            uint256(stor[(uint8(None + 2) / 32) + ('array', 4, ('name', 'stor2', 2))].field_0) = 256^(None + 2 % 32) or !(255 * 256^(None + 2 % 32)) and uint256(stor[(uint8(None + 2) / 32) + ('array', 4, ('name', 'stor2', 2))].field_0)
        else:
            uint255(stor[(uint8(None + 2) / 32) + ('array', 4, ('name', 'stor2', 2))].field_0) = uint255(256^(None + 2 % 32))
            bool(stor[(uint8(None + 2) / 32) + ('array', 4, ('name', 'stor2', 2))].field_255) = 0
        idx = 0
        s = 0
        while uint8(idx) < stor0.length:
            require uint8(idx) < uint256(stor2.field_1024)
            mem[0] = sha3(2) + 4
            require stor((Mask(3, 5, idx) >> 5) + ('array', 4, ('name', 'stor2', 2)))[uint8(idx)] <= 2
            if stor((Mask(3, 5, idx) >> 5) + ('array', 4, ('name', 'stor2', 2)))[uint8(idx)] == 1:
                idx = idx + 1
                s = s + 1
                continue 
            require uint8(idx) < uint256(stor2.field_1024)
            mem[0] = sha3(2) + 4
            require stor((Mask(3, 5, idx) >> 5) + ('array', 4, ('name', 'stor2', 2)))[uint8(idx)] <= 2
            idx = idx + 1
            s = s
            continue 
        if s >= 2:
            stor3.length = 2
            if not stor3.length <= 2:
                mem[0] = 3
                idx = sha3(mem[0]) + 10
                while sha3(3) + (5 * stor3.length) > idx:
                    address(stor[idx]) = 0
                    address(stor1[idx]) = 0
                    address(stor2[idx].field_0) = 0
                    address(stor3[idx].field_0) = 0
                    uint256(stor4[idx].field_0) = 0
                    mem[0] = idx + 4
                    s = sha3(idx + 4)
                    while sha3(idx + 4) + (uint256(stor4[idx].field_0) + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    idx = idx + 5
                    continue 
            idx = 0
            while uint8(idx) < stor3.length:
                address(stor3[uint8(idx)].field_0) = 0
                address(stor3[uint8(idx)].field_256) = 0
                address(stor3[uint8(idx)].field_512) = 0
                address(stor3[uint8(idx)].field_768) = 0
                uint256(stor3[uint8(idx)].field_1024) = 0
                s = sha3((5 * uint8(idx)) + sha3(3) + 4)
                while sha3((5 * uint8(idx)) + sha3(3) + 4) + (uint256(stor3[uint8(idx)].field_1024) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                require uint8(idx) < stor3.length
                mem[0] = 3
                uint256(stor3[uint8(idx)].field_1024) = stor0.length
                if not uint256(stor3[uint8(idx)].field_1024) <= stor0.length:
                    mem[0] = (5 * uint8(idx)) + sha3(3) + 4
                    s = sha3((5 * uint8(idx)) + sha3(3) + 4) + (stor0.length + 31 / 32)
                    while sha3((5 * uint8(idx)) + sha3(3) + 4) + (uint256(stor3[uint8(idx)].field_1024) + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            require uint8(None + 2) < stor0.length
            stor0[uint8(None + 2)] = arg2
    idx = 0
    while uint8(idx) < stor2.length:
        mem[0] = 2
        require address(stor2[uint8(idx)].field_0) != msg.sender
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while uint8(idx) < stor2.length:
        require uint8(idx) < stor2.length
        mem[0] = 2
        if address(stor2[uint8(idx)].field_0):
            if address(stor2[uint8(idx)].field_512) != arg1:
                idx = idx + 1
                s = s
                continue 
            require uint8(idx) < stor2.length
            mem[0] = 2
            if address(stor2[uint8(idx)].field_768) != arg2:
                idx = idx + 1
                s = s
                continue 
        else:
            if address(stor2[uint8(idx)].field_512) != arg1:
                idx = idx + 1
                s = 1
                continue 
            require uint8(idx) < stor2.length
            mem[0] = 2
            if address(stor2[uint8(idx)].field_768) != arg2:
                idx = idx + 1
                s = 1
                continue 
        ('eq', ('type', 160, ('field', 768, ('stor', ('array', ('mul', 5, ('mask_shl', 8, 0, 0, ('var', 0))), ('name', 'stor2', 2))))), ('param', 'arg2'))
        require uint8(idx) < stor2.length
        require uint8(None + 2) < uint256(stor2[uint8(idx)].field_1024)
        require stor((Mask(3, 5, None + 2) >> 5) + sha3((5 * uint8(idx)) + ('name', 'stor2', 2) + 4))[uint8(None + 2)] <= 2
        require not stor((Mask(3, 5, None + 2) >> 5) + sha3((5 * uint8(idx)) + ('name', 'stor2', 2) + 4))[uint8(None + 2)]
        require uint8(None + 2) < uint256(stor2[uint8(idx)].field_1024)
        if arg3 == 1:
            uint256(stor[(uint8(None + 2) / 32) + sha3((5 * uint8(idx)) + ('name', 'stor2', 2) + 4)].field_0) = 256^(None + 2 % 32) or !(255 * 256^(None + 2 % 32)) and uint256(stor[(uint8(None + 2) / 32) + sha3((5 * uint8(idx)) + ('name', 'stor2', 2) + 4)].field_0)
        else:
            uint255(stor[(uint8(None + 2) / 32) + sha3((5 * uint8(idx)) + ('name', 'stor2', 2) + 4)].field_0) = uint255(256^(None + 2 % 32))
            bool(stor[(uint8(None + 2) / 32) + sha3((5 * uint8(idx)) + ('name', 'stor2', 2) + 4)].field_255) = 0
        s = 0
        t = 0
        while uint8(s) < stor0.length:
            require uint8(s) < uint256(stor2[uint8(idx)].field_1024)
            mem[0] = (5 * uint8(idx)) + sha3(2) + 4
            require stor((Mask(3, 5, s) >> 5) + sha3((5 * uint8(idx)) + ('name', 'stor2', 2) + 4))[uint8(s)] <= 2
            if stor((Mask(3, 5, s) >> 5) + sha3((5 * uint8(idx)) + ('name', 'stor2', 2) + 4))[uint8(s)] == 1:
                s = s + 1
                t = t + 1
                continue 
            require uint8(s) < uint256(stor2[uint8(idx)].field_1024)
            mem[0] = (5 * uint8(idx)) + sha3(2) + 4
            require stor((Mask(3, 5, s) >> 5) + sha3((5 * uint8(idx)) + ('name', 'stor2', 2) + 4))[uint8(s)] <= 2
            s = s + 1
            t = t
            continue 
        if t >= 2:
            stor3.length = 2
            if not stor3.length <= 2:
                mem[0] = 3
                idx = sha3(mem[0]) + 10
                while sha3(3) + (5 * stor3.length) > idx:
                    address(stor[idx]) = 0
                    address(stor1[idx]) = 0
                    address(stor2[idx].field_0) = 0
                    address(stor3[idx].field_0) = 0
                    uint256(stor4[idx].field_0) = 0
                    mem[0] = idx + 4
                    s = sha3(idx + 4)
                    while sha3(idx + 4) + (uint256(stor4[idx].field_0) + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    idx = idx + 5
                    continue 
            idx = 0
            while uint8(idx) < stor3.length:
                address(stor3[uint8(idx)].field_0) = 0
                address(stor3[uint8(idx)].field_256) = 0
                address(stor3[uint8(idx)].field_512) = 0
                address(stor3[uint8(idx)].field_768) = 0
                uint256(stor3[uint8(idx)].field_1024) = 0
                s = sha3((5 * uint8(idx)) + sha3(3) + 4)
                while sha3((5 * uint8(idx)) + sha3(3) + 4) + (uint256(stor3[uint8(idx)].field_1024) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                require uint8(idx) < stor3.length
                mem[0] = 3
                uint256(stor3[uint8(idx)].field_1024) = stor0.length
                if not uint256(stor3[uint8(idx)].field_1024) <= stor0.length:
                    mem[0] = (5 * uint8(idx)) + sha3(3) + 4
                    s = sha3((5 * uint8(idx)) + sha3(3) + 4) + (stor0.length + 31 / 32)
                    while sha3((5 * uint8(idx)) + sha3(3) + 4) + (uint256(stor3[uint8(idx)].field_1024) + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            require uint8(None + 2) < stor0.length
            stor0[uint8(None + 2)] = arg2
    require s
    require 0 < stor2.length
    address(stor2.field_0) = msg.sender
    address(stor2.field_512) = arg1
    address(stor2.field_768) = arg2
    require uint8(None + 2) < uint256(stor2.field_1024)
    require stor((Mask(3, 5, None + 2) >> 5) + ('array', 4, ('name', 'stor2', 2)))[uint8(None + 2)] <= 2
    require not stor((Mask(3, 5, None + 2) >> 5) + ('array', 4, ('name', 'stor2', 2)))[uint8(None + 2)]
    require uint8(None + 2) < uint256(stor2.field_1024)
    if arg3 == 1:
        uint256(stor[(uint8(None + 2) / 32) + ('array', 4, ('name', 'stor2', 2))].field_0) = 256^(None + 2 % 32) or !(255 * 256^(None + 2 % 32)) and uint256(stor[(uint8(None + 2) / 32) + ('array', 4, ('name', 'stor2', 2))].field_0)
    else:
        uint255(stor[(uint8(None + 2) / 32) + ('array', 4, ('name', 'stor2', 2))].field_0) = uint255(256^(None + 2 % 32))
        bool(stor[(uint8(None + 2) / 32) + ('array', 4, ('name', 'stor2', 2))].field_255) = 0
    idx = 0
    s = 0
    while uint8(idx) < stor0.length:
        require uint8(idx) < uint256(stor2.field_1024)
        mem[0] = sha3(2) + 4
        require stor((Mask(3, 5, idx) >> 5) + ('array', 4, ('name', 'stor2', 2)))[uint8(idx)] <= 2
        if stor((Mask(3, 5, idx) >> 5) + ('array', 4, ('name', 'stor2', 2)))[uint8(idx)] == 1:
            idx = idx + 1
            s = s + 1
            continue 
        require uint8(idx) < uint256(stor2.field_1024)
        mem[0] = sha3(2) + 4
        require stor((Mask(3, 5, idx) >> 5) + ('array', 4, ('name', 'stor2', 2)))[uint8(idx)] <= 2
        idx = idx + 1
        s = s
        continue 
    if s >= 2:
        stor3.length = 2
        if not stor3.length <= 2:
            mem[0] = 3
            idx = 10
            while sha3(3) + (5 * stor3.length) > idx + sha3(mem[0]):
                address(stor[idx + sha3(mem[0])]) = 0
                address(stor[idx + sha3(mem[0]) + 1]) = 0
                address(stor[idx + sha3(mem[0]) + 2]) = 0
                address(stor[idx + sha3(mem[0]) + 3]) = 0
                uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                mem[0] = idx + sha3(mem[0]) + 4
                s = sha3(idx + sha3(mem[0]) + 4)
                while sha3(idx + sha3(mem[0]) + 4) + (uint256(stor[idx + sha3(mem[0]) + 4]) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                idx = idx + 5
                continue 
        idx = 0
        while uint8(idx) < stor3.length:
            address(stor3[uint8(idx)].field_0) = 0
            address(stor3[uint8(idx)].field_256) = 0
            address(stor3[uint8(idx)].field_512) = 0
            address(stor3[uint8(idx)].field_768) = 0
            uint256(stor3[uint8(idx)].field_1024) = 0
            s = sha3((5 * uint8(idx)) + sha3(3) + 4)
            while sha3((5 * uint8(idx)) + sha3(3) + 4) + (uint256(stor3[uint8(idx)].field_1024) + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            require uint8(idx) < stor3.length
            mem[0] = 3
            uint256(stor3[uint8(idx)].field_1024) = stor0.length
            if not uint256(stor3[uint8(idx)].field_1024) <= stor0.length:
                mem[0] = (5 * uint8(idx)) + sha3(3) + 4
                s = sha3((5 * uint8(idx)) + sha3(3) + 4) + (stor0.length + 31 / 32)
                while sha3((5 * uint8(idx)) + sha3(3) + 4) + (uint256(stor3[uint8(idx)].field_1024) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
        require uint8(None + 2) < stor0.length
        stor0[uint8(None + 2)] = arg2
}



}
