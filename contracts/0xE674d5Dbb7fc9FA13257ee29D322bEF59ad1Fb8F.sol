contract main {


// =======================  Init code  ======================


array of address stor1;
array of uint256 stor2;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor9;

function _fallback() payable {
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = stor2.length + 1
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    stor9++
    if not stor9 <= stor9 + 1:
        idx = (3 * stor9) + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7b2
        while (3 * stor9) + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7af > idx:
            stor[idx] = 0
            stor1[idx] = 0
            stor2[idx] = 0
            idx = idx + 1
            continue 
    stor7 = tx.origin or Mask(96, 160, stor7)
    stor4 = 0
    stor5 = 0
    stor6 = 1
    return code.data[263 len 5458]
}



// =====================  Runtime code  =====================


const approve(address arg1, uint256 arg2) = 0

const allowance(address arg1, address arg2) = 0

const unapprove(address arg1) = 0


mapping of address index;
mapping of uint256 recoveredIndex;
array of address recovered;
uint256 totalSupply;
uint256 absMinFee;
uint256 feePercent;
uint256 absMaxFee;
uint32 stor7;
address feeAddr;
uint256 stor7;
mapping of uint256 sub_d6d0802a;
uint256 stor9;
array of address stor49791959467252497455735130940088646708311117250336157395101362029847983278000;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278001;

function recovered(uint256 arg1) payable {
    require arg1 < recovered.length
    return address(recovered[arg1])
}

function totalSupply() payable {
    return totalSupply
}

function getAddress(bytes32 arg1) payable {
    return address(index[arg1])
}

function feeAddr() payable {
    return address(feeAddr)
}

function absMaxFee() payable {
    return absMaxFee
}

function index(bytes32 arg1) payable {
    return address(index[arg1])
}

function feePercent() payable {
    return feePercent
}

function absMinFee() payable {
    return absMinFee
}

function recoveredIndex(address arg1) payable {
    return recoveredIndex[arg1]
}

function sub_d6d0802a(?) payable {
    return sub_d6d0802a[arg1]
}

function _fallback() payable {
  stop
}

function setFeeAddr(address arg1) payable {
    uint256(stor7) = arg1 or Mask(96, 160, uint256(stor7))
}

function setAddress(bytes32 arg1, address arg2) payable {
    uint256(index[arg1]) = arg2 or Mask(96, 160, uint256(index[arg1]))
}

function allowances(uint256 arg1) payable {
    require arg1 < stor9
    return address(stor[(3 * arg1) + code.data[5426 len 32]]), stor6E15[arg1], stor6E15[arg1]
}

function calculateFee(uint256 arg1) payable {
    if arg1 * feePercent / 10000 < absMinFee:
        return absMinFee
    if arg1 * feePercent / 10000 <= absMaxFee:
        return (arg1 * feePercent / 10000)
    return absMaxFee
}

function balanceOf(address arg1) payable {
    call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xf8b2cb4f with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function getAccountBalance(address arg1) payable {
    call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xf8b2cb4f with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function issueCoin(address arg1, uint256 arg2) payable {
    if totalSupply > 0:
        emit 0x564be6c2: 6, tx.origin, msg.sender
        return 0
    if 0 == arg2:
        totalSupply = 2 * 10^14
        return 1
    call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xec2ac54e with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg2, 0, 0
    require ext_call.success
    totalSupply = arg2
    return ext_call.return_data[0]
}

function setFee(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    if arg1 < 0:
        emit 0x564be6c2: 1, tx.origin, msg.sender
        return 0
    if arg2 < 0:
        emit 0x564be6c2: 1, tx.origin, msg.sender
        return 0
    if arg2 > 10000:
        emit 0x564be6c2: 1, tx.origin, msg.sender
        return 0
    if arg3 < 0:
        emit 0x564be6c2: 1, tx.origin, msg.sender
        return 0
    if arg3 < arg1:
        emit 0x564be6c2: 1, tx.origin, msg.sender
        return 0
    absMinFee = arg1
    feePercent = arg2
    absMaxFee = arg3
    return 1
}

function recoverAccount(address arg1, address arg2) payable {
    if recoveredIndex[address(arg1)] != 0:
        return 0
    recovered.length++
    if not recovered.length <= recovered.length + 1:
        idx = recovered.length + 1
        while recovered.length > idx:
            uint256(recovered[idx]) = 0
            idx = idx + 1
            continue 
    require recovered.length < recovered.length
    uint256(recovered[recovered.length]) = arg1 or Mask(96, 160, uint256(recovered[recovered.length]))
    recoveredIndex[address(arg1)] = recovered.length
    call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xf8b2cb4f with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).withdraw(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, ext_call.return_data[0], 0, 0
    if not ext_call.return_data[0]:
        emit 0x564be6c2: 5, tx.origin, msg.sender
        return 0
    call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xec2ac54e with:
         gas gas_remaining - 25050 wei
        args 0, 0, ext_call.return_data[0], 0, 0
    require ext_call.success
    s = 0
    t = 0
    u = 0
    idx = 1
    while idx < stor9:
        mem[0] = 9
        if address(stor[code.data[5426 len 32] + (3 * idx)]) != arg1:
            s = s
            t = t
            u = u
            idx = idx + 1
            continue 
        require idx < stor9
        mem[96] = address(arg2)
        mem[116] = stor6E15[idx]
        mem[32] = 8
        sub_d6d0802a[arg2][stor6E15[idx]] = sub_d6d0802a[address(stor[code.data[5426 len 32] + (3 * idx)])][stor6E15[idx]]
        sub_d6d0802a[address(stor[code.data[5426 len 32] + (3 * idx)])][stor6E15[idx]] = 0
        require sub_d6d0802a[address(stor[code.data[5426 len 32] + (3 * idx)])][stor6E15[idx]] < stor9
        mem[0] = 9
        uint256(stor[code.data[5426 len 32] + (3 * stor8[address(stor[code.data[5426 len 32] + (3 * idx)])][stor6E15[idx]])]) = arg2 or Mask(96, 160, uint256(stor[code.data[5426 len 32] + (3 * stor8[address(stor[code.data[5426 len 32] + (3 * idx)])][stor6E15[idx]])]))
        s = sub_d6d0802a[address(stor[code.data[5426 len 32] + (3 * idx)])][stor6E15[idx]]
        t = sha3(arg2, stor6E15[idx])
        u = sha3(address(stor[code.data[5426 len 32] + (3 * idx)]), stor6E15[idx])
        idx = idx + 1
        continue 
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    if arg2 < absMinFee:
        emit 0x564be6c2: 2, tx.origin, msg.sender
        return 0
    call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xf8b2cb4f with:
         gas gas_remaining - 25050 wei
        args tx.origin
    require ext_call.success
    if ext_call.return_data[0] < arg2:
        emit 0x564be6c2: 2, tx.origin, msg.sender
        return 0
    call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).withdraw(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg2, 0, 0
    require ext_call.success
    if arg2 * feePercent / 10000 < absMinFee:
        call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xec2ac54e with:
             gas gas_remaining - 25050 wei
            args 0, 0, arg2 - absMinFee, 0, 0
        require ext_call.success
        emit Transfer(arg2, tx.origin, arg1);
        if absMinFee > 0:
            call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xec2ac54e with:
                 gas gas_remaining - 25050 wei
                args 0, uint32(stor7), absMinFee, 0, 0
            require ext_call.success
    else:
        if arg2 * feePercent / 10000 <= absMaxFee:
            call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xec2ac54e with:
                 gas gas_remaining - 25050 wei
                args 0, 0, arg2 - (arg2 * feePercent / 10000), 0, 0
            require ext_call.success
            emit Transfer(arg2, tx.origin, arg1);
            if arg2 * feePercent / 10000 > 0:
                call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xec2ac54e with:
                     gas gas_remaining - 25050 wei
                    args 0, uint32(stor7), arg2 * feePercent / 10000, 0, 0
                require ext_call.success
        else:
            call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xec2ac54e with:
                 gas gas_remaining - 25050 wei
                args 0, 0, arg2 - absMaxFee, 0, 0
            require ext_call.success
            emit Transfer(arg2, tx.origin, arg1);
            if absMaxFee > 0:
                call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xec2ac54e with:
                     gas gas_remaining - 25050 wei
                    args 0, uint32(stor7), absMaxFee, 0, 0
                require ext_call.success
    if address(index['elcoinPoS' << 184]) != 0:
        call address(index['elcoinPoS' << 184]).0xa9059cbb with:
             gas gas_remaining - 25050 wei
            args tx.origin, 0
        require ext_call.success
    if address(index[0x656c636f696e506f540000000000000000000000000000000000000000000000]) != 0:
        call address(index[0x656c636f696e506f540000000000000000000000000000000000000000000000]).transfer(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 25050 wei
            args tx.origin, address(arg1), arg2
        require ext_call.success
    return 1
}

function transferPool(address arg1, address arg2, uint256 arg3) payable {
    if arg3 < absMinFee:
        emit 0x564be6c2: 2, tx.origin, msg.sender
        return 0
    call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xf8b2cb4f with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[0] < arg3:
        emit 0x564be6c2: 2, tx.origin, msg.sender
        return 0
    call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).withdraw(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg3, 0, 0
    require ext_call.success
    if arg3 * feePercent / 10000 < absMinFee:
        call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xec2ac54e with:
             gas gas_remaining - 25050 wei
            args 0, 0, arg3 - absMinFee, 0, 0
        require ext_call.success
        emit Transfer(arg3, arg1, arg2);
        if absMinFee > 0:
            call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xec2ac54e with:
                 gas gas_remaining - 25050 wei
                args 0, uint32(stor7), absMinFee, 0, 0
            require ext_call.success
    else:
        if arg3 * feePercent / 10000 <= absMaxFee:
            call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xec2ac54e with:
                 gas gas_remaining - 25050 wei
                args 0, 0, arg3 - (arg3 * feePercent / 10000), 0, 0
            require ext_call.success
            emit Transfer(arg3, arg1, arg2);
            if arg3 * feePercent / 10000 > 0:
                call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xec2ac54e with:
                     gas gas_remaining - 25050 wei
                    args 0, uint32(stor7), arg3 * feePercent / 10000, 0, 0
                require ext_call.success
        else:
            call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xec2ac54e with:
                 gas gas_remaining - 25050 wei
                args 0, 0, arg3 - absMaxFee, 0, 0
            require ext_call.success
            emit Transfer(arg3, arg1, arg2);
            if absMaxFee > 0:
                call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xec2ac54e with:
                     gas gas_remaining - 25050 wei
                    args 0, uint32(stor7), absMaxFee, 0, 0
                require ext_call.success
    if address(index['elcoinPoS' << 184]) != 0:
        call address(index['elcoinPoS' << 184]).0xa9059cbb with:
             gas gas_remaining - 25050 wei
            args address(arg1), 0
        require ext_call.success
    if address(index[0x656c636f696e506f540000000000000000000000000000000000000000000000]) != 0:
        call address(index[0x656c636f696e506f540000000000000000000000000000000000000000000000]).transfer(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 25050 wei
            args address(arg1), address(arg2), arg3
        require ext_call.success
    return 1
}

function transferTo(address arg1, address arg2, uint256 arg3) payable {
    if arg1 != tx.origin:
        emit 0x564be6c2: 9, tx.origin, msg.sender
        return 0
    if arg1 != msg.sender:
        emit 0x564be6c2: 9, tx.origin, msg.sender
        return 0
    if arg3 < absMinFee:
        emit 0x564be6c2: 2, tx.origin, msg.sender
        return 0
    call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xf8b2cb4f with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[0] < arg3:
        emit 0x564be6c2: 2, tx.origin, msg.sender
        return 0
    call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).withdraw(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg3, 0, 0
    require ext_call.success
    if arg3 * feePercent / 10000 < absMinFee:
        call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xec2ac54e with:
             gas gas_remaining - 25050 wei
            args 0, 0, arg3 - absMinFee, 0, 0
        require ext_call.success
        emit Transfer(arg3, arg1, arg2);
        if absMinFee > 0:
            call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xec2ac54e with:
                 gas gas_remaining - 25050 wei
                args 0, uint32(stor7), absMinFee, 0, 0
            require ext_call.success
    else:
        if arg3 * feePercent / 10000 <= absMaxFee:
            call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xec2ac54e with:
                 gas gas_remaining - 25050 wei
                args 0, 0, arg3 - (arg3 * feePercent / 10000), 0, 0
            require ext_call.success
            emit Transfer(arg3, arg1, arg2);
            if arg3 * feePercent / 10000 > 0:
                call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xec2ac54e with:
                     gas gas_remaining - 25050 wei
                    args 0, uint32(stor7), arg3 * feePercent / 10000, 0, 0
                require ext_call.success
        else:
            call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xec2ac54e with:
                 gas gas_remaining - 25050 wei
                args 0, 0, arg3 - absMaxFee, 0, 0
            require ext_call.success
            emit Transfer(arg3, arg1, arg2);
            if absMaxFee > 0:
                call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xec2ac54e with:
                     gas gas_remaining - 25050 wei
                    args 0, uint32(stor7), absMaxFee, 0, 0
                require ext_call.success
    if address(index['elcoinPoS' << 184]) != 0:
        call address(index['elcoinPoS' << 184]).0xa9059cbb with:
             gas gas_remaining - 25050 wei
            args address(arg1), 0
        require ext_call.success
    if address(index[0x656c636f696e506f540000000000000000000000000000000000000000000000]) != 0:
        call address(index[0x656c636f696e506f540000000000000000000000000000000000000000000000]).transfer(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 25050 wei
            args address(arg1), address(arg2), arg3
        require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    if 0 == sub_d6d0802a[arg1][arg2]:
        emit 0x564be6c2: 12, tx.origin, msg.sender
        return 0
    require sub_d6d0802a[arg1][arg2] < stor9
    if stor6E15[stor8[arg1][arg2]] < arg3:
        emit 0x564be6c2: 13, tx.origin, msg.sender
        return 0
    if arg3 < absMinFee:
        emit 0x564be6c2: 14, tx.origin, msg.sender
        return 0
    call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xf8b2cb4f with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[0] < arg3:
        emit 0x564be6c2: 14, tx.origin, msg.sender
        return 0
    call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).withdraw(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg3, 0, 0
    require ext_call.success
    if arg3 * feePercent / 10000 < absMinFee:
        call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xec2ac54e with:
             gas gas_remaining - 25050 wei
            args 0, 0, arg3 - absMinFee, 0, 0
        require ext_call.success
        emit Transfer(arg3, arg1, arg2);
        if absMinFee > 0:
            call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xec2ac54e with:
                 gas gas_remaining - 25050 wei
                args 0, uint32(stor7), absMinFee, 0, 0
            require ext_call.success
    else:
        if arg3 * feePercent / 10000 <= absMaxFee:
            call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xec2ac54e with:
                 gas gas_remaining - 25050 wei
                args 0, 0, arg3 - (arg3 * feePercent / 10000), 0, 0
            require ext_call.success
            emit Transfer(arg3, arg1, arg2);
            if arg3 * feePercent / 10000 > 0:
                call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xec2ac54e with:
                     gas gas_remaining - 25050 wei
                    args 0, uint32(stor7), arg3 * feePercent / 10000, 0, 0
                require ext_call.success
        else:
            call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xec2ac54e with:
                 gas gas_remaining - 25050 wei
                args 0, 0, arg3 - absMaxFee, 0, 0
            require ext_call.success
            emit Transfer(arg3, arg1, arg2);
            if absMaxFee > 0:
                call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xec2ac54e with:
                     gas gas_remaining - 25050 wei
                    args 0, uint32(stor7), absMaxFee, 0, 0
                require ext_call.success
    require sub_d6d0802a[arg1][arg2] < stor9
    stor6E15[stor8[arg1][arg2]] -= arg3
    if address(index['elcoinPoS' << 184]) != 0:
        call address(index['elcoinPoS' << 184]).0xa9059cbb with:
             gas gas_remaining - 25050 wei
            args address(arg1), 0
        require ext_call.success
    if address(index[0x656c636f696e506f540000000000000000000000000000000000000000000000]) != 0:
        call address(index[0x656c636f696e506f540000000000000000000000000000000000000000000000]).transfer(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 25050 wei
            args address(arg1), address(arg2), arg3
        require ext_call.success
    return 1
}

function batchTransfer(address[] arg1, uint256[] arg2) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    idx = 0
    s = 0
    while uint8(idx) < arg2.length:
        require uint8(idx) < arg2.length
        if mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] >= absMinFee:
            require uint8(idx) < arg2.length
            idx = idx + 1
            s = s + mem[(32 * arg1.length) + (32 * uint8(idx)) + 160]
            continue 
        emit 0x564be6c2: 7, tx.origin, msg.sender
        return 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = tx.origin
    call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xf8b2cb4f with:
         gas gas_remaining - 25050 wei
        args tx.origin
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[0] >= s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None:
        idx = 0
        while uint8(idx) < arg1.length:
            require uint8(idx) < arg1.length
            _103 = mem[(32 * uint8(idx)) + 128]
            require uint8(idx) < arg2.length
            _107 = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
            call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).withdraw(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
                 gas gas_remaining - 25050 wei
                args tx.origin, mem[(32 * uint8(idx)) + (32 * arg1.length) + 160], 0, 0
            require ext_call.success
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * uint8(idx)) + 140 len 20]
            if mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] * feePercent / 10000 < absMinFee:
                mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _107 - absMinFee
                mem[(32 * arg1.length) + (32 * arg2.length) + 228] = 0
                mem[(32 * arg1.length) + (32 * arg2.length) + 260] = 0
                call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xec2ac54e with:
                     gas gas_remaining - 25050 wei
                    args address(_103), _107 - absMinFee, 0, 0
                require ext_call.success
                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = _107
                emit Transfer(_107, tx.origin, address(_103));
                if absMinFee > 0:
                    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = address(feeAddr)
                    mem[(32 * arg1.length) + (32 * arg2.length) + 196] = absMinFee
                    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = 0
                    mem[(32 * arg1.length) + (32 * arg2.length) + 260] = 0
                    call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xec2ac54e with:
                         gas gas_remaining - 25050 wei
                        args address(feeAddr), absMinFee, 0, 0
                    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                    require ext_call.success
            else:
                if mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] * feePercent / 10000 <= absMaxFee:
                    mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _107 - (_107 * feePercent / 10000)
                    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = 0
                    mem[(32 * arg1.length) + (32 * arg2.length) + 260] = 0
                    call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xec2ac54e with:
                         gas gas_remaining - 25050 wei
                        args address(_103), _107 - (_107 * feePercent / 10000), 0, 0
                    require ext_call.success
                    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = _107
                    emit Transfer(_107, tx.origin, address(_103));
                    if _107 * feePercent / 10000 > 0:
                        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = address(feeAddr)
                        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _107 * feePercent / 10000
                        mem[(32 * arg1.length) + (32 * arg2.length) + 228] = 0
                        mem[(32 * arg1.length) + (32 * arg2.length) + 260] = 0
                        call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xec2ac54e with:
                             gas gas_remaining - 25050 wei
                            args address(feeAddr), _107 * feePercent / 10000, 0, 0
                        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                        require ext_call.success
                else:
                    mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _107 - absMaxFee
                    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = 0
                    mem[(32 * arg1.length) + (32 * arg2.length) + 260] = 0
                    call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xec2ac54e with:
                         gas gas_remaining - 25050 wei
                        args address(_103), _107 - absMaxFee, 0, 0
                    require ext_call.success
                    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = _107
                    emit Transfer(_107, tx.origin, address(_103));
                    if absMaxFee > 0:
                        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = address(feeAddr)
                        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = absMaxFee
                        mem[(32 * arg1.length) + (32 * arg2.length) + 228] = 0
                        mem[(32 * arg1.length) + (32 * arg2.length) + 260] = 0
                        call address(index[0x656c636f696e4462000000000000000000000000000000000000000000000000]).0xec2ac54e with:
                             gas gas_remaining - 25050 wei
                            args address(feeAddr), absMaxFee, 0, 0
                        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                        require ext_call.success
            idx = idx + 1
            continue 
        return 1
    emit 0x564be6c2: 8, tx.origin, msg.sender
    return 0
}



}
