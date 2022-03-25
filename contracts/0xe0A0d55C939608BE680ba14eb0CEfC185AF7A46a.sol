contract main {


// =======================  Init code  ======================


uint256 stor5;
uint256 stor7;

function _fallback() payable {
    stor5 = 5
    stor7 = msg.sender or Mask(96, 160, stor7)
    return code.data[71 len 8347]
}



// =====================  Runtime code  =====================


mapping of struct test;
mapping of address stor1;
mapping of uint256 stor2;
mapping of struct stor3;
mapping of uint256 stor4;
uint256 stor5;
mapping of uint256 stor6;
address stor7;
uint256 stor7;

function test() payable {
    return test[address(stor1[0][0])].field_0
}

function _fallback() payable {
  stop
}

function sub_41f740d8(?) payable {
    return arg1
}

function calcWinnings(uint256 arg1, uint256 arg2) payable {
    return (99 * 63999 * arg1 / arg2 / 100)
}

function sub_ba4caf08(?) payable {
    require msg.sender == address(stor7)
    stor6[address(arg1)] = arg2
}

function sha(bytes32 arg1) payable {
    hash = sha256hash(arg1) 
    require sha256hash.result
    return hash
}

function sub_c57c0648(?) payable {
    hash = sha256hash(arg1, arg2) 
    require sha256hash.result
    return (uint16(hash) < arg3)
}

function changeOwner(address arg1) payable {
    require msg.sender == address(stor7)
    uint256(stor7) = arg1 or Mask(96, 160, uint256(stor7))
}

function sub_fc3ce5d7(?) payable {
    if stor3[address(arg1)][arg2].field_1536 + stor5 >= block.number:
        return 1
    else:
        return 0
}

function sub_c68903da(?) payable {
    hash = sha256hash(arg2) 
    require sha256hash.result
    return uint128(uint128(uint16(hash) * stor2[address(arg1)]) / 63999)
}

function sub_365a3552(?) payable {
    if not stor3[address(arg1)][arg2].field_1280:
        return 0
    if not stor3[address(arg1)][arg2].field_1024:
        return 0
    hash = sha256hash(stor3[address(arg1)][arg2].field_1280, stor3[address(arg1)][arg2].field_1024) 
    require sha256hash.result
    if uint16(hash) >= stor3[address(arg1)][arg2].field_768:
        return 0
    return 1
}

function getStatus(address arg1, uint256 arg2) payable {
    if stor3[address(arg1)][arg2].field_1536 + stor5 < block.number:
        if not stor3[address(arg1)][arg2].field_1280:
            return 0
        if not stor3[address(arg1)][arg2].field_1280:
            return 2
        if not stor3[address(arg1)][arg2].field_1024:
            return 2
        hash = sha256hash(stor3[address(arg1)][arg2].field_1280, stor3[address(arg1)][arg2].field_1024) 
        require sha256hash.result
        if uint16(hash) >= stor3[address(arg1)][arg2].field_768:
            return 2
    return 1
}

function sub_345d9514(?) payable {
    require msg.value >= stor6[0]
    if not test[address(msg.sender)].field_0:
        test[address(msg.sender)].field_0 = msg.sender or Mask(96, 160, test[address(msg.sender)].field_0)
        test[address(msg.sender)].field_512 = stor2[0]
        test[address(msg.sender)].field_1024 = 0
        idx = 0
        while test[address(msg.sender)].field_1024 > idx:
            test[address(msg.sender)][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
        stor2[0]++
        uint256(stor1[0][stor2[0]]) = msg.sender or Mask(96, 160, uint256(stor1[0][stor2[0]]))
    if not test[address(msg.sender)].field_768:
        test[address(msg.sender)].field_768 = arg1
    test[address(msg.sender)].field_256 += msg.value
    return 1
}

function withdrawFromBank(uint256 arg1) payable {
    require arg1 >= test[address(msg.sender)].field_256
    require test[address(msg.sender)].field_1024 <= 0
    if test[address(msg.sender)].field_256 - arg1 >= stor6[0]:
        test[address(msg.sender)].field_256 -= arg1
        call msg.sender with:
           value arg1 wei
             gas 0 wei
        if ext_call.success:
    else:
        if test[address(msg.sender)].field_0:
            if stor2[0] - 1 != test[address(msg.sender)].field_512:
                test[address(stor1[0][stor2[0] - 1])].field_512 = test[address(msg.sender)].field_512
                address(stor1[0][stor0[address(msg.sender)].field_512]) = address(stor1[0][stor2[0] - 1])
            stor2[0]--
            call msg.sender with:
               value test[address(msg.sender)].field_256 wei
                 gas 0 wei
            if ext_call.success:
    revert 
}

function claimWin(uint256 arg1) payable {
    require stor3[0][arg1].field_0 == msg.sender
    if not stor3[0][arg1].field_1280:
        require stor3[0][arg1].field_1536 + stor5 >= block.number
    else:
        if not stor3[0][arg1].field_1024:
            require stor3[0][arg1].field_1536 + stor5 >= block.number
        else:
            hash = sha256hash(stor3[0][arg1].field_1280, stor3[0][arg1].field_1024) 
            require sha256hash.result
            if uint16(hash) >= stor3[0][arg1].field_768:
                require stor3[0][arg1].field_1536 + stor5 >= block.number
    call msg.sender with:
       value stor3[0][arg1].field_1792 wei
         gas 0 wei
    require ext_call.success
    stor3[0][arg1].field_0 = 0
    stor3[0][arg1].field_256 = 0
    stor3[0][arg1].field_512 = 0
    stor3[0][arg1].field_768 = 0
    stor3[0][arg1].field_1024 = 0
    stor3[0][arg1].field_1280 = 0
    stor3[0][arg1].field_1536 = 0
    stor3[0][arg1].field_1792 = 0
    return 0
}

function sub_bc2cb010(?) payable {
    if test[address(arg1)][address(arg2)].field_256 >= stor6[address(arg1)]:
    require test[address(arg1)][address(arg2)].field_0
    if stor2[address(arg1)] - 1 != test[address(arg1)][address(arg2)].field_512:
        test[address(arg1)][address(stor1[address(arg1)][stor2[address(arg1)] - 1])].field_512 = test[address(arg1)][address(arg2)].field_512
        address(stor1[address(arg1)][stor0[address(arg1)][address(arg2)].field_512]) = address(stor1[address(arg1)][stor2[address(arg1)] - 1])
    stor2[address(arg1)]--
    if not arg1:
        call arg2 with:
           value test[address(arg1)][address(arg2)].field_256 wei
             gas 0 wei
        if ext_call.success:
    else:
        call arg1.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args address(arg2), test[address(arg1)][address(arg2)].field_256
        if ext_call.success:
            if ext_call.return_data[0]:
    revert 
}

function sub_0a334871(?) payable {
    require stor3[address(arg1)][arg2].field_0 == msg.sender
    if not stor3[address(arg1)][arg2].field_1280:
        require stor3[address(arg1)][arg2].field_1536 + stor5 >= block.number
    else:
        if not stor3[address(arg1)][arg2].field_1024:
            require stor3[address(arg1)][arg2].field_1536 + stor5 >= block.number
        else:
            hash = sha256hash(stor3[address(arg1)][arg2].field_1280, stor3[address(arg1)][arg2].field_1024) 
            require sha256hash.result
            if uint16(hash) >= stor3[address(arg1)][arg2].field_768:
                require stor3[address(arg1)][arg2].field_1536 + stor5 >= block.number
    if not arg1:
        call msg.sender with:
           value stor3[address(arg1)][arg2].field_1792 wei
             gas 0 wei
        require ext_call.success
    else:
        call arg1.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args msg.sender, stor3[address(arg1)][arg2].field_1792
        require ext_call.success
        require ext_call.return_data[0]
    stor3[address(arg1)][arg2].field_0 = 0
    stor3[address(arg1)][arg2].field_256 = 0
    stor3[address(arg1)][arg2].field_512 = 0
    stor3[address(arg1)][arg2].field_768 = 0
    stor3[address(arg1)][arg2].field_1024 = 0
    stor3[address(arg1)][arg2].field_1280 = 0
    stor3[address(arg1)][arg2].field_1536 = 0
    stor3[address(arg1)][arg2].field_1792 = 0
    return 0
}

function sub_c32cff8d(?) payable {
    require arg2 >= test[address(arg1)][address(msg.sender)].field_256
    require test[address(arg1)][address(msg.sender)].field_1024 <= 0
    if test[address(arg1)][address(msg.sender)].field_256 - arg2 >= stor6[address(arg1)]:
        test[address(arg1)][address(msg.sender)].field_256 -= arg2
        if not arg1:
            call msg.sender with:
               value arg2 wei
                 gas 0 wei
            if ext_call.success:
        else:
            call arg1.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining - 25050 wei
                args msg.sender, arg2
            if ext_call.success:
                if ext_call.return_data[0]:
    else:
        if test[address(arg1)][address(msg.sender)].field_0:
            if stor2[address(arg1)] - 1 != test[address(arg1)][address(msg.sender)].field_512:
                test[address(arg1)][address(stor1[address(arg1)][stor2[address(arg1)] - 1])].field_512 = test[address(arg1)][address(msg.sender)].field_512
                address(stor1[address(arg1)][stor0[address(arg1)][address(msg.sender)].field_512]) = address(stor1[address(arg1)][stor2[address(arg1)] - 1])
            stor2[address(arg1)]--
            if not arg1:
                call msg.sender with:
                   value test[address(arg1)][address(msg.sender)].field_256 wei
                     gas 0 wei
                if ext_call.success:
            else:
                call arg1.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining - 25050 wei
                    args msg.sender, test[address(arg1)][address(msg.sender)].field_256
                if ext_call.success:
                    if ext_call.return_data[0]:
    revert 
}

function sub_6fc4c487(?) payable {
    hash = sha256hash(arg2) 
    require sha256hash.result
    require hash == test[address(arg1)][address(msg.sender)].field_768
    s = 0
    idx = 0
    s = 0
    while idx < test[address(arg1)][address(msg.sender)].field_1024:
        mem[0] = test[address(arg1)][address(msg.sender)][idx + 4].field_0
        mem[32] = sha3(address(arg1), 3)
        stor3[address(arg1)][stor0[address(arg1)][address(msg.sender)][idx + 4].field_0].field_1280 = arg2
        mem[128] = stor3[address(arg1)][stor0[address(arg1)][address(msg.sender)][idx + 4].field_0].field_1024
        hash = sha256hash(arg2, stor3[address(arg1)][stor0[address(arg1)][address(msg.sender)][idx + 4].field_0].field_1024) 
        mem[96] = hash
        require sha256hash.result
        if uint16(hash) >= stor3[address(arg1)][stor0[address(arg1)][address(msg.sender)][idx + 4].field_0].field_768:
            s = sha3(test[address(arg1)][address(msg.sender)][idx + 4].field_0, sha3(address(arg1), 3))
            idx = idx + 1
            s = s
            continue 
        s = sha3(test[address(arg1)][address(msg.sender)][idx + 4].field_0, sha3(address(arg1), 3))
        idx = idx + 1
        s = s + (99 * 63999 * stor3[address(arg1)][stor0[address(arg1)][address(msg.sender)][idx + 4].field_0].field_512 / stor3[address(arg1)][stor0[address(arg1)][address(msg.sender)][idx + 4].field_0].field_768 / 100)
        continue 
    test[address(arg1)][address(msg.sender)].field_256 -= s
    test[address(arg1)][address(msg.sender)].field_1024 = 0
    if not test[address(arg1)][address(msg.sender)].field_1024 <= 0:
        idx = 0
        while test[address(arg1)][address(msg.sender)].field_1024 > idx:
            test[address(arg1)][address(msg.sender)][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
    test[address(arg1)][address(msg.sender)].field_768 = arg3
    return 1
}

function sub_fc86e42c(?) payable {
    if not arg1:
        require msg.value >= stor6[address(arg1)]
        if not test[address(arg1)][address(msg.sender)].field_0:
            test[address(arg1)][address(msg.sender)].field_0 = msg.sender or Mask(96, 160, test[address(arg1)][address(msg.sender)].field_0)
            test[address(arg1)][address(msg.sender)].field_512 = stor2[address(arg1)]
            test[address(arg1)][address(msg.sender)].field_1024 = 0
            idx = 0
            while test[address(arg1)][address(msg.sender)].field_1024 > idx:
                test[address(arg1)][address(msg.sender)][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
            stor2[address(arg1)]++
            uint256(stor1[address(arg1)][stor2[address(arg1)]]) = msg.sender or Mask(96, 160, uint256(stor1[address(arg1)][stor2[address(arg1)]]))
        if not test[address(arg1)][address(msg.sender)].field_768:
            test[address(arg1)][address(msg.sender)].field_768 = arg3
        test[address(arg1)][address(msg.sender)].field_256 += msg.value
    else:
        call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 25050 wei
            args msg.sender, address(this.address), arg2
        require ext_call.success
        require ext_call.return_data[0]
        require arg2 >= stor6[address(arg1)]
        if not test[address(arg1)][address(msg.sender)].field_0:
            test[address(arg1)][address(msg.sender)].field_0 = msg.sender or Mask(96, 160, test[address(arg1)][address(msg.sender)].field_0)
            test[address(arg1)][address(msg.sender)].field_512 = stor2[address(arg1)]
            test[address(arg1)][address(msg.sender)].field_1024 = 0
            idx = 0
            while test[address(arg1)][address(msg.sender)].field_1024 > idx:
                test[address(arg1)][address(msg.sender)][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
            stor2[address(arg1)]++
            uint256(stor1[address(arg1)][stor2[address(arg1)]]) = msg.sender or Mask(96, 160, uint256(stor1[address(arg1)][stor2[address(arg1)]]))
        if not test[address(arg1)][address(msg.sender)].field_768:
            test[address(arg1)][address(msg.sender)].field_768 = arg3
        test[address(arg1)][address(msg.sender)].field_256 += arg2
    return 1
}

function sub_00c672d0(?) payable {
    hash = sha256hash(arg2) 
    require sha256hash.result
    require hash == test[address(arg1)][address(msg.sender)].field_768
    s = 0
    idx = 0
    s = 0
    while idx < test[address(arg1)][address(msg.sender)].field_1024:
        mem[0] = test[address(arg1)][address(msg.sender)][idx + 4].field_0
        mem[32] = sha3(address(arg1), 3)
        stor3[address(arg1)][stor0[address(arg1)][address(msg.sender)][idx + 4].field_0].field_1280 = arg2
        mem[128] = stor3[address(arg1)][stor0[address(arg1)][address(msg.sender)][idx + 4].field_0].field_1024
        hash = sha256hash(arg2, stor3[address(arg1)][stor0[address(arg1)][address(msg.sender)][idx + 4].field_0].field_1024) 
        mem[96] = hash
        require sha256hash.result
        if uint16(hash) >= stor3[address(arg1)][stor0[address(arg1)][address(msg.sender)][idx + 4].field_0].field_768:
            s = sha3(test[address(arg1)][address(msg.sender)][idx + 4].field_0, sha3(address(arg1), 3))
            idx = idx + 1
            s = s
            continue 
        s = sha3(test[address(arg1)][address(msg.sender)][idx + 4].field_0, sha3(address(arg1), 3))
        idx = idx + 1
        s = s + (99 * 63999 * stor3[address(arg1)][stor0[address(arg1)][address(msg.sender)][idx + 4].field_0].field_512 / stor3[address(arg1)][stor0[address(arg1)][address(msg.sender)][idx + 4].field_0].field_768 / 100)
        continue 
    test[address(arg1)][address(msg.sender)].field_256 -= s
    test[address(arg1)][address(msg.sender)].field_1024 = 0
    if not test[address(arg1)][address(msg.sender)].field_1024 <= 0:
        idx = 0
        while test[address(arg1)][address(msg.sender)].field_1024 > idx:
            test[address(arg1)][address(msg.sender)][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
    test[address(arg1)][address(msg.sender)].field_768 = 0
    if test[address(arg1)][address(msg.sender)].field_0:
        if stor2[address(arg1)] - 1 != test[address(arg1)][address(msg.sender)].field_512:
            test[address(arg1)][address(stor1[address(arg1)][stor2[address(arg1)] - 1])].field_512 = test[address(arg1)][address(msg.sender)].field_512
            address(stor1[address(arg1)][stor0[address(arg1)][address(msg.sender)].field_512]) = address(stor1[address(arg1)][stor2[address(arg1)] - 1])
        stor2[address(arg1)]--
        if not arg1:
            call msg.sender with:
               value test[address(arg1)][address(msg.sender)].field_256 wei
                 gas 0 wei
            if ext_call.success:
        else:
            call arg1.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining - 25050 wei
                args msg.sender, test[address(arg1)][address(msg.sender)].field_256
            if ext_call.success:
                if ext_call.return_data[0]:
    revert 
}

function bet(uint256 arg1, bytes32 arg2) payable {
    require arg1 <= 63999
    hash = sha256hash(arg2) 
    require sha256hash.result
    require test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_0
    idx = 0
    s = 0
    while idx < test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024:
        mem[0] = test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])][idx + 4].field_0
        mem[32] = sha3(0, 3)
        idx = idx + 1
        s = s + stor3[0][stor0[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])][idx + 4].field_0].field_1792
        continue 
    require (s * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 * test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024) + (99 * 63999 * msg.value / arg1 / 100) <= test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_256
    stor3[0][stor4[0]].field_0 = msg.sender or Mask(96, 160, stor3[0][stor4[0]].field_0)
    stor3[0][stor4[0]].field_256 = test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_0
    stor3[0][stor4[0]].field_512 = msg.value
    stor3[0][stor4[0]].field_768 = arg1
    stor3[0][stor4[0]].field_1024 = arg2
    stor3[0][stor4[0]].field_1536 = block.number
    stor3[0][stor4[0]].field_1792 = 99 * 63999 * msg.value / arg1 / 100
    test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024++
    if not test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 <= test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 + 1:
        idx = test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 + 1
        while test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 > idx:
            test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
    require test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 < test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024
    stor[test[address(stor1[0][uint128(uint16(hash) * stor2[0]) / 63999 << 128])].field_1024 + ('array', 4, ('map', ('type', 160, ('stor', ('map', ('mask_shl', 128, 0, 128, ('div', ('mask_shl', 128, 0, 0, ('mul', ('mask_shl', 16, 0, 0, ('var', 'hash')), ('stor', ('map', 0, ('name', 'stor2', 2))))), 63999)), ('map', 0, ('name', 'stor1', 1))))), ('name', 'test', 0)))].field_0 = stor4[0]
    stor4[0]++
    return stor4[0]
}

function sub_d2959626(?) payable {
    require arg3 <= 63999
    if not arg1:
        hash = sha256hash(arg4) 
        require sha256hash.result
        require test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_0
        idx = 0
        s = 0
        while idx < test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024:
            mem[0] = test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])][idx + 4].field_0
            mem[32] = sha3(address(arg1), 3)
            idx = idx + 1
            s = s + stor3[address(arg1)][stor0[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])][idx + 4].field_0].field_1792
            continue 
        require (s * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024) + (99 * 63999 * msg.value / arg3 / 100) <= test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_256
        stor3[address(arg1)][stor4[address(arg1)]].field_0 = msg.sender or Mask(96, 160, stor3[address(arg1)][stor4[address(arg1)]].field_0)
        stor3[address(arg1)][stor4[address(arg1)]].field_256 = test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_0
        stor3[address(arg1)][stor4[address(arg1)]].field_512 = msg.value
        stor3[address(arg1)][stor4[address(arg1)]].field_768 = arg3
        stor3[address(arg1)][stor4[address(arg1)]].field_1024 = arg4
        stor3[address(arg1)][stor4[address(arg1)]].field_1536 = block.number
        stor3[address(arg1)][stor4[address(arg1)]].field_1792 = 99 * 63999 * msg.value / arg3 / 100
    else:
        call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 25050 wei
            args msg.sender, address(this.address), arg2
        require ext_call.success
        require ext_call.return_data[0]
        hash = sha256hash(arg4) 
        require sha256hash.result
        require test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_0
        idx = 0
        s = 0
        while idx < test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024:
            mem[0] = test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])][idx + 4].field_0
            mem[32] = sha3(address(arg1), 3)
            idx = idx + 1
            s = s + stor3[address(arg1)][stor0[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])][idx + 4].field_0].field_1792
            continue 
        require (s * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 * test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024) + (99 * 63999 * arg2 / arg3 / 100) <= test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_256
        stor3[address(arg1)][stor4[address(arg1)]].field_0 = msg.sender or Mask(96, 160, stor3[address(arg1)][stor4[address(arg1)]].field_0)
        stor3[address(arg1)][stor4[address(arg1)]].field_256 = test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_0
        stor3[address(arg1)][stor4[address(arg1)]].field_512 = arg2
        stor3[address(arg1)][stor4[address(arg1)]].field_768 = arg3
        stor3[address(arg1)][stor4[address(arg1)]].field_1024 = arg4
        stor3[address(arg1)][stor4[address(arg1)]].field_1536 = block.number
        stor3[address(arg1)][stor4[address(arg1)]].field_1792 = 99 * 63999 * arg2 / arg3 / 100
    test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024++
    if not test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 <= test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 + 1:
        idx = test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 + 1
        while test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 > idx:
            test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
    require test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 < test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024
    stor[test[address(arg1)][address(stor1[address(arg1)][uint128(uint16(hash) * stor2[address(arg1)]) / 63999 << 128])].field_1024 + ('array', 4, ('map', ('type', 160, ('stor', ('map', ('mask_shl', 128, 0, 128, ('div', ('mask_shl', 128, 0, 0, ('mul', ('mask_shl', 16, 0, 0, ('var', 'hash')), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor2', 2))))), 63999)), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor1', 1))))), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'test', 0))))].field_0 = stor4[address(arg1)]
    stor4[address(arg1)]++
    return stor4[address(arg1)]
}



}
