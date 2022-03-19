contract main {


// =======================  Init code  ======================


array of uint256 stor4;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
array of struct stor11;

function _fallback() payable {
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        idx = stor4.length + 1
        while stor4.length > idx:
            stor4[idx] = 0
            idx = idx + 1
            continue 
    stor11.length++
    if not stor11.length <= stor11.length + 1:
        idx = (3 * stor11.length) + 3
        while 3 * stor11.length > idx:
            stor11[idx].field_0 = 0
            stor11[idx].field_256 = 0
            stor11[idx].field_512 = 0
            idx = idx + 1
            continue 
    stor9 = tx.origin or Mask(96, 160, stor9)
    stor6 = 0
    stor7 = 0
    stor8 = 1
    return code.data[547 len 17764]
}



// =====================  Runtime code  =====================


array of uint256 stor0;
address stor1;
uint256 stor1;
uint256 name;
mapping of uint256 recoveredIndex;
array of address recovered;
uint256 totalSupply;
uint256 absMinFee;
uint256 feePercent;
uint256 absMaxFee;
uint32 stor9;
address feeAddr;
uint256 stor9;
mapping of uint256 sub_d6d0802a;
array of struct allowances;

function name() payable {
    return name
}

function recovered(uint256 arg1) payable {
    require arg1 < recovered.length
    return address(recovered[arg1])
}

function totalSupply() payable {
    return totalSupply
}

function sub_3751707c(?) payable {
    return address(stor0.length)
}

function feeAddr() payable {
    return address(feeAddr)
}

function absMaxFee() payable {
    return absMaxFee
}

function allowances(uint256 arg1) payable {
    require arg1 < allowances.length
    return allowances[arg1].field_0, allowances[arg1].field_256, allowances[arg1].field_512
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

function remove() payable {
    if address(stor0.length) != msg.sender:
    selfdestruct(address(stor0.length))
}

function _fallback() payable {
  stop
}

function getAddress(bytes32 arg1) payable {
    call address(stor1).0x2ade6c36 with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function allowance(address arg1, address arg2) payable {
    if not sub_d6d0802a[arg1][arg2]:
        return 0
    require sub_d6d0802a[arg1][arg2] < allowances.length
    return allowances[stor10[arg1][arg2]].field_512
}

function calculateFee(uint256 arg1) payable {
    if arg1 * feePercent / 10000 < absMinFee:
        return absMinFee
    if arg1 * feePercent / 10000 <= absMaxFee:
        return (arg1 * feePercent / 10000)
    return absMaxFee
}

function balanceOf(address arg1) payable {
    call address(stor1).0x2ade6c36 with:
         gas gas_remaining - 25050 wei
        args 'elcoinDb'
    require ext_call.success
    call address(ext_call.return_data[0]).getBalance(address rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    return ext_call.return_data[0]
}

function getAccountBalance(address arg1) payable {
    call address(stor1).0x2ade6c36 with:
         gas gas_remaining - 25050 wei
        args 'elcoinDb'
    require ext_call.success
    call address(ext_call.return_data[0]).getBalance(address rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    return ext_call.return_data[0]
}

function setFeeAddr(address arg1) payable {
    if address(stor0.length):
        call address(stor1).0xa1add510 with:
             gas gas_remaining - 25050 wei
            args name, 'currencyOwner', msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            uint256(stor9) = arg1 or Mask(96, 160, uint256(stor9))
}

function sub_bfcabc6b(?) payable {
    idx = 1
    s = 0
    while idx < allowances.length:
        mem[0] = 11
        if allowances[idx].field_0 != arg1:
            idx = idx + 1
            s = s
            continue 
        require idx < allowances.length
        mem[0] = 11
        idx = idx + 1
        s = s + allowances[idx].field_512
        continue 
    return s
}

function setAmbiAddress(address arg1, bytes32 arg2) payable {
    if address(stor0.length):
        if arg1 != address(stor0.length):
            return 0
    call arg1.0x2ade6c36 with:
         gas gas_remaining - 25050 wei
        args arg2
    require ext_call.success
    if ext_call.return_data[12 len 20] != this.address:
        call arg1.0x76849376 with:
             gas gas_remaining - 25050 wei
            args arg2, this.address
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    name = arg2
    stor0.length = arg1 or Mask(96, 160, stor0.length)
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
    return 1
}

function setFee(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    if not address(stor0.length):
        return 0
    call address(stor1).0xa1add510 with:
         gas gas_remaining - 25050 wei
        args name, 'cron', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if arg1 < 0:
        emit Error(1, tx.origin, msg.sender);
        return 0
    if arg2 < 0:
        emit Error(1, tx.origin, msg.sender);
        return 0
    if arg2 > 10000:
        emit Error(1, tx.origin, msg.sender);
        return 0
    if arg3 < 0:
        emit Error(1, tx.origin, msg.sender);
        return 0
    if arg3 < arg1:
        emit Error(1, tx.origin, msg.sender);
        return 0
    absMinFee = arg1
    feePercent = arg2
    absMaxFee = arg3
    return 1
}

function issueCoin(address arg1, uint256 arg2) payable {
    if not address(stor0.length):
        return 0
    call address(stor1).0xa1add510 with:
         gas gas_remaining - 25050 wei
        args name, 'currencyOwner', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if totalSupply > 0:
        emit Error(6, tx.origin, msg.sender);
        return 0
    if not arg2:
        totalSupply = 2 * 10^14
        return 1
    call address(stor1).0x2ade6c36 with:
         gas gas_remaining - 25050 wei
        args 'elcoinDb'
    require ext_call.success
    call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg2, 0, 0
    totalSupply = arg2
    return ext_call.return_data[0]
}

function approveAllowance(address arg1, address arg2, uint256 arg3) payable {
    if not address(stor0.length):
        return 0
    call address(stor1).0xa1add510 with:
         gas gas_remaining - 25050 wei
        args name, 'currencyOwner', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if arg1 == arg2:
        emit Error(3, tx.origin, msg.sender);
        return 0
    if arg3 < absMinFee:
        emit Error(3, tx.origin, msg.sender);
        return 0
    if sub_d6d0802a[arg1][arg2]:
        require sub_d6d0802a[arg1][arg2] < allowances.length
        allowances[stor10[arg1][arg2]].field_512 += arg3
    else:
        allowances.length++
        if not allowances.length <= allowances.length + 1:
            idx = (3 * allowances.length) + 3
            while 3 * allowances.length > idx:
                allowances[idx].field_0 = 0
                allowances[idx].field_256 = 0
                allowances[idx].field_512 = 0
                idx = idx + 1
                continue 
        require allowances.length < allowances.length
        allowances[allowances.length].field_0 = arg1 or Mask(96, 160, allowances[allowances.length].field_0)
        allowances[allowances.length].field_256 = arg2 or Mask(96, 160, allowances[allowances.length].field_256)
        allowances[allowances.length].field_512 = arg3
        sub_d6d0802a[arg1][arg2] = allowances.length
    emit Approved(arg3, arg1, arg2);
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    if not address(stor0.length):
        return 0
    call address(stor1).0xa1add510 with:
         gas gas_remaining - 25050 wei
        args name, 'security', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if tx.origin == arg1:
        emit Error(3, tx.origin, msg.sender);
        return 0
    if arg2 < absMinFee:
        emit Error(3, tx.origin, msg.sender);
        return 0
    if sub_d6d0802a[tx.origin][arg1]:
        require sub_d6d0802a[tx.origin][arg1] < allowances.length
        allowances[stor10[tx.origin][arg1]].field_512 += arg2
    else:
        allowances.length++
        if not allowances.length <= allowances.length + 1:
            idx = (3 * allowances.length) + 3
            while 3 * allowances.length > idx:
                allowances[idx].field_0 = 0
                allowances[idx].field_256 = 0
                allowances[idx].field_512 = 0
                idx = idx + 1
                continue 
        require allowances.length < allowances.length
        allowances[allowances.length].field_0 = tx.origin or Mask(96, 160, allowances[allowances.length].field_0)
        allowances[allowances.length].field_256 = arg1 or Mask(96, 160, allowances[allowances.length].field_256)
        allowances[allowances.length].field_512 = arg2
        sub_d6d0802a[tx.origin][arg1] = allowances.length
    emit Approved(arg2, tx.origin, arg1);
    return 1
}

function batchTransfer(address[] arg1, uint256[] arg2) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if address(stor0.length):
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = name
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = 'currencyOwner'
        mem[(32 * arg1.length) + (32 * arg2.length) + 228] = msg.sender
        call address(stor1).0xa1add510 with:
             gas gas_remaining - 25050 wei
            args name, 'currencyOwner', msg.sender
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0]:
            idx = 0
            s = 0
            while uint8(idx) < arg2.length:
                require idx < arg2.length
                if mem[(32 * idx) + (32 * arg1.length) + 160] >= absMinFee:
                    require idx < arg2.length
                    idx = idx + 1
                    s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
                    continue 
                emit Error(7, tx.origin, msg.sender);
                return 0
            call address(stor1).0x2ade6c36 with:
                 gas gas_remaining - 25050 wei
                args 'elcoinDb'
            require ext_call.success
            return 0
        else:
            return 0
    else:
        return 0
}

function unapprove(address arg1) payable {
    if not address(stor0.length):
        return 0
    call address(stor1).0xa1add510 with:
         gas gas_remaining - 25050 wei
        args name, 'security', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if sub_d6d0802a[tx.origin][arg1] < 1:
        emit Error(4, tx.origin, msg.sender);
        return 0
    sub_d6d0802a[tx.origin][arg1] = 0
    require allowances.length - 1 < allowances.length
    if sub_d6d0802a[tx.origin][arg1] + 1 < allowances.length:
        sub_d6d0802a[stor11[stor11.length].field_0][stor11[stor11.length].field_0] = sub_d6d0802a[tx.origin][arg1]
        require sub_d6d0802a[tx.origin][arg1] < allowances.length
        allowances[stor10[tx.origin][arg1]].field_0 = allowances[allowances.length].field_0
        allowances[stor10[tx.origin][arg1]].field_256 = allowances[allowances.length].field_0
        allowances[stor10[tx.origin][arg1]].field_512 = allowances[allowances.length].field_0
    allowances[allowances.length].field_0 = 0
    allowances[allowances.length].field_0 = 0
    allowances[allowances.length].field_0 = 0
    allowances.length--
    if not allowances.length <= allowances.length - 1:
        idx = (3 * allowances.length) - 3
        while 3 * allowances.length > idx:
            allowances[idx].field_0 = 0
            allowances[idx].field_256 = 0
            allowances[idx].field_512 = 0
            idx = idx + 1
            continue 
    emit Unapproved(tx.origin, arg1);
    return 1
}

function approveTo(address arg1, address arg2, uint256 arg3) payable {
    if not address(stor0.length):
        return 0
    call address(stor1).0xa1add510 with:
         gas gas_remaining - 25050 wei
        args name, 'security', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if arg1 != tx.origin:
        emit Error(10, tx.origin, msg.sender);
        return 0
    if arg1 != msg.sender:
        emit Error(10, tx.origin, msg.sender);
        return 0
    if arg1 == arg2:
        emit Error(3, tx.origin, msg.sender);
        return 0
    if arg3 < absMinFee:
        emit Error(3, tx.origin, msg.sender);
        return 0
    if sub_d6d0802a[arg1][arg2]:
        require sub_d6d0802a[arg1][arg2] < allowances.length
        allowances[stor10[arg1][arg2]].field_512 += arg3
    else:
        allowances.length++
        if not allowances.length <= allowances.length + 1:
            idx = (3 * allowances.length) + 3
            while 3 * allowances.length > idx:
                allowances[idx].field_0 = 0
                allowances[idx].field_256 = 0
                allowances[idx].field_512 = 0
                idx = idx + 1
                continue 
        require allowances.length < allowances.length
        allowances[allowances.length].field_0 = arg1 or Mask(96, 160, allowances[allowances.length].field_0)
        allowances[allowances.length].field_256 = arg2 or Mask(96, 160, allowances[allowances.length].field_256)
        allowances[allowances.length].field_512 = arg3
        sub_d6d0802a[arg1][arg2] = allowances.length
    emit Approved(arg3, arg1, arg2);
    return 1
}

function sub_6b3e7c2d(?) payable {
    if not address(stor0.length):
        return 0
    call address(stor1).0xa1add510 with:
         gas gas_remaining - 25050 wei
        args name, 'security', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if arg1 != tx.origin:
        emit Error(11, tx.origin, msg.sender);
        return 0
    if arg1 != msg.sender:
        emit Error(11, tx.origin, msg.sender);
        return 0
    if sub_d6d0802a[arg1][arg2] < 1:
        emit Error(4, tx.origin, msg.sender);
        return 0
    sub_d6d0802a[arg1][arg2] = 0
    require allowances.length - 1 < allowances.length
    if sub_d6d0802a[arg1][arg2] + 1 < allowances.length:
        sub_d6d0802a[stor11[stor11.length].field_0][stor11[stor11.length].field_0] = sub_d6d0802a[arg1][arg2]
        require sub_d6d0802a[arg1][arg2] < allowances.length
        allowances[stor10[arg1][arg2]].field_0 = allowances[allowances.length].field_0
        allowances[stor10[arg1][arg2]].field_256 = allowances[allowances.length].field_0
        allowances[stor10[arg1][arg2]].field_512 = allowances[allowances.length].field_0
    allowances[allowances.length].field_0 = 0
    allowances[allowances.length].field_0 = 0
    allowances[allowances.length].field_0 = 0
    allowances.length--
    if not allowances.length <= allowances.length - 1:
        idx = (3 * allowances.length) - 3
        while 3 * allowances.length > idx:
            allowances[idx].field_0 = 0
            allowances[idx].field_256 = 0
            allowances[idx].field_512 = 0
            idx = idx + 1
            continue 
    emit Unapproved(arg1, arg2);
    return 1
}

function recoverAccount(address arg1, address arg2) payable {
    if not address(stor0.length):
        return 0
    call address(stor1).0xa1add510 with:
         gas gas_remaining - 25050 wei
        args name, 'recovery', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if recoveredIndex[address(arg1)]:
        return 0
    call address(stor1).0x2ade6c36 with:
         gas gas_remaining - 25050 wei
        args 'elcoinDb'
    require ext_call.success
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
    call address(ext_call.return_data[0]).getBalance(address rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    call address(ext_call.return_data[0]).withdraw(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, ext_call.return_data[0], 0, 0
    if not ext_call.return_data[0]:
        emit Error(5, tx.origin, msg.sender);
        return 0
    call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, ext_call.return_data[0], 0, 0
    require ext_call.success
    s = 0
    t = 0
    u = 0
    idx = 1
    while idx < allowances.length:
        mem[0] = 11
        if allowances[idx].field_0 != arg1:
            s = s
            t = t
            u = u
            idx = idx + 1
            continue 
        require idx < allowances.length
        mem[96] = address(arg2)
        mem[116] = allowances[idx].field_256
        sub_d6d0802a[arg2][stor11[idx].field_256] = sub_d6d0802a[stor11[idx].field_0][stor11[idx].field_256]
        mem[32] = 10
        sub_d6d0802a[stor11[idx].field_0][stor11[idx].field_256] = 0
        require sub_d6d0802a[stor11[idx].field_0][stor11[idx].field_256] < allowances.length
        mem[0] = 11
        allowances[stor10[allowances[idx].field_0][allowances[idx].field_256]].field_0 = arg2 or Mask(96, 160, allowances[stor10[allowances[idx].field_0][allowances[idx].field_256]].field_0)
        s = sub_d6d0802a[stor11[idx].field_0][stor11[idx].field_256]
        t = sha3(arg2, allowances[idx].field_256)
        u = sha3(allowances[idx].field_0, allowances[idx].field_256)
        idx = idx + 1
        continue 
    return 1
}

function transferPool(address arg1, address arg2, uint256 arg3) payable {
    if not address(stor0.length):
        return 0
    call address(stor1).0xa1add510 with:
         gas gas_remaining - 25050 wei
        args name, 'pool', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    call address(stor1).0x2ade6c36 with:
         gas gas_remaining - 25050 wei
        args 'elcoinDb'
    require ext_call.success
    if arg3 < absMinFee:
        emit Error(2, tx.origin, msg.sender);
        return 0
    call address(ext_call.return_data[0]).getBalance(address rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    if not uint256(stor10[('map', ('param', 'arg1'), ('name', 'stor0', 0))]):
        if ext_call.return_data[0] < arg3:
            emit Error(2, tx.origin, msg.sender);
            return 0
    else:
        require uint256(stor10[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) < allowances.length
        if allowances[uint256(stor10[('map', ('param', 'arg1'), ('name', 'stor0', 0))])].field_512 <= 0:
            if ext_call.return_data[0] < arg3:
                emit Error(2, tx.origin, msg.sender);
                return 0
        else:
            if not sub_d6d0802a[arg1][arg2]:
                if ext_call.return_data[0] - allowances[uint256(stor10[('map', ('param', 'arg1'), ('name', 'stor0', 0))])].field_512 < arg3:
                    emit Error(2, tx.origin, msg.sender);
                    return 0
                if 0 > arg3:
                    require sub_d6d0802a[arg1][arg2] < allowances.length
                    allowances[stor10[arg1][arg2]].field_512 += arg3
                else:
                    if sub_d6d0802a[arg1][arg2] < 1:
                        emit Error(4, tx.origin, msg.sender);
                    else:
                        sub_d6d0802a[arg1][arg2] = 0
                        require allowances.length - 1 < allowances.length
                        if sub_d6d0802a[arg1][arg2] + 1 < allowances.length:
                            sub_d6d0802a[stor11[stor11.length].field_0][stor11[stor11.length].field_0] = sub_d6d0802a[arg1][arg2]
                            require sub_d6d0802a[arg1][arg2] < allowances.length
                            allowances[stor10[arg1][arg2]].field_0 = allowances[allowances.length].field_0
                            allowances[stor10[arg1][arg2]].field_256 = allowances[allowances.length].field_0
                            allowances[stor10[arg1][arg2]].field_512 = allowances[allowances.length].field_0
                        allowances[allowances.length].field_0 = 0
                        allowances[allowances.length].field_0 = 0
                        allowances[allowances.length].field_0 = 0
                        allowances.length--
                        if not allowances.length <= allowances.length - 1:
                            idx = (3 * allowances.length) - 3
                            while 3 * allowances.length > idx:
                                allowances[idx].field_0 = 0
                                allowances[idx].field_256 = 0
                                allowances[idx].field_512 = 0
                                idx = idx + 1
                                continue 
            else:
                require sub_d6d0802a[arg1][arg2] < allowances.length
                if ext_call.return_data[0] - allowances[uint256(stor10[('map', ('param', 'arg1'), ('name', 'stor0', 0))])].field_512 + allowances[stor10[arg1][arg2]].field_512 < arg3:
                    emit Error(2, tx.origin, msg.sender);
                    return 0
                if allowances[stor10[arg1][arg2]].field_512 > arg3:
                    require sub_d6d0802a[arg1][arg2] < allowances.length
                    allowances[stor10[arg1][arg2]].field_512 = arg3
                else:
                    if sub_d6d0802a[arg1][arg2] < 1:
                        emit Error(4, tx.origin, msg.sender);
                    else:
                        sub_d6d0802a[arg1][arg2] = 0
                        require allowances.length - 1 < allowances.length
                        if sub_d6d0802a[arg1][arg2] + 1 < allowances.length:
                            sub_d6d0802a[stor11[stor11.length].field_0][stor11[stor11.length].field_0] = sub_d6d0802a[arg1][arg2]
                            require sub_d6d0802a[arg1][arg2] < allowances.length
                            allowances[stor10[arg1][arg2]].field_0 = allowances[allowances.length].field_0
                            allowances[stor10[arg1][arg2]].field_256 = allowances[allowances.length].field_0
                            allowances[stor10[arg1][arg2]].field_512 = allowances[allowances.length].field_0
                        allowances[allowances.length].field_0 = 0
                        allowances[allowances.length].field_0 = 0
                        allowances[allowances.length].field_0 = 0
                        allowances.length--
                        if not allowances.length <= allowances.length - 1:
                            idx = (3 * allowances.length) - 3
                            while 3 * allowances.length > idx:
                                allowances[idx].field_0 = 0
                                allowances[idx].field_256 = 0
                                allowances[idx].field_512 = 0
                                idx = idx + 1
                                continue 
    call address(ext_call.return_data[0]).withdraw(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg3, 0, 0
    require ext_call.success
    if arg3 * feePercent / 10000 < absMinFee:
        call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
             gas gas_remaining - 25050 wei
            args 0, 0, arg3 - absMinFee, 0, 0
        require ext_call.success
        emit Transfer(arg3, arg1, arg2);
        if absMinFee > 0:
            call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
                 gas gas_remaining - 25050 wei
                args 0, uint32(stor9), absMinFee, 0, 0
            require ext_call.success
    else:
        if arg3 * feePercent / 10000 <= absMaxFee:
            call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
                 gas gas_remaining - 25050 wei
                args 0, 0, arg3 - (arg3 * feePercent / 10000), 0, 0
            require ext_call.success
            emit Transfer(arg3, arg1, arg2);
            if arg3 * feePercent / 10000 > 0:
                call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
                     gas gas_remaining - 25050 wei
                    args 0, uint32(stor9), arg3 * feePercent / 10000, 0, 0
                require ext_call.success
        else:
            call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
                 gas gas_remaining - 25050 wei
                args 0, 0, arg3 - absMaxFee, 0, 0
            require ext_call.success
            emit Transfer(arg3, arg1, arg2);
            if absMaxFee > 0:
                call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
                     gas gas_remaining - 25050 wei
                    args 0, uint32(stor9), absMaxFee, 0, 0
                require ext_call.success
    call address(stor1).0x2ade6c36 with:
         gas gas_remaining - 25050 wei
        args 'elcoinPoS'
    require ext_call.success
    call address(stor1).0x2ade6c36 with:
         gas gas_remaining - 25050 wei
        args 'elcoinPoT'
    if not address(ext_call.return_data[0]):
        if ext_call.return_data[12 len 20]:
            call address(ext_call.return_data[0]).transfer(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 25050 wei
                args address(arg1), address(arg2), arg3
            require ext_call.success
    else:
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining - 25050 wei
            args address(arg1), 0
        require ext_call.success
        if address(ext_call.return_data[0]):
            call address(ext_call.return_data[0]).transfer(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 25050 wei
                args address(arg1), address(arg2), arg3
            require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    if not address(stor0.length):
        return 0
    call address(stor1).0xa1add510 with:
         gas gas_remaining - 25050 wei
        args name, 'security', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    call address(stor1).0x2ade6c36 with:
         gas gas_remaining - 25050 wei
        args 'elcoinDb'
    require ext_call.success
    if arg2 < absMinFee:
        emit Error(2, tx.origin, msg.sender);
        return 0
    call address(ext_call.return_data[0]).getBalance(address rg1) with:
         gas gas_remaining - 25050 wei
        args tx.origin
    require ext_call.success
    if not uint256(stor10[('map', 'origin', ('name', 'stor0', 0))]):
        if ext_call.return_data[0] < arg2:
            emit Error(2, tx.origin, msg.sender);
            return 0
    else:
        require uint256(stor10[('map', 'origin', ('name', 'stor0', 0))]) < allowances.length
        if allowances[uint256(stor10[('map', 'origin', ('name', 'stor0', 0))])].field_512 <= 0:
            if ext_call.return_data[0] < arg2:
                emit Error(2, tx.origin, msg.sender);
                return 0
        else:
            if not sub_d6d0802a[tx.origin][arg1]:
                if ext_call.return_data[0] - allowances[uint256(stor10[('map', 'origin', ('name', 'stor0', 0))])].field_512 < arg2:
                    emit Error(2, tx.origin, msg.sender);
                    return 0
                if 0 > arg2:
                    require sub_d6d0802a[tx.origin][arg1] < allowances.length
                    allowances[stor10[tx.origin][arg1]].field_512 += arg2
                else:
                    if sub_d6d0802a[tx.origin][arg1] < 1:
                        emit Error(4, tx.origin, msg.sender);
                    else:
                        sub_d6d0802a[tx.origin][arg1] = 0
                        require allowances.length - 1 < allowances.length
                        if sub_d6d0802a[tx.origin][arg1] + 1 < allowances.length:
                            sub_d6d0802a[stor11[stor11.length].field_0][stor11[stor11.length].field_0] = sub_d6d0802a[tx.origin][arg1]
                            require sub_d6d0802a[tx.origin][arg1] < allowances.length
                            allowances[stor10[tx.origin][arg1]].field_0 = allowances[allowances.length].field_0
                            allowances[stor10[tx.origin][arg1]].field_256 = allowances[allowances.length].field_0
                            allowances[stor10[tx.origin][arg1]].field_512 = allowances[allowances.length].field_0
                        allowances[allowances.length].field_0 = 0
                        allowances[allowances.length].field_0 = 0
                        allowances[allowances.length].field_0 = 0
                        allowances.length--
                        if not allowances.length <= allowances.length - 1:
                            idx = (3 * allowances.length) - 3
                            while 3 * allowances.length > idx:
                                allowances[idx].field_0 = 0
                                allowances[idx].field_256 = 0
                                allowances[idx].field_512 = 0
                                idx = idx + 1
                                continue 
            else:
                require sub_d6d0802a[tx.origin][arg1] < allowances.length
                if ext_call.return_data[0] - allowances[uint256(stor10[('map', 'origin', ('name', 'stor0', 0))])].field_512 + allowances[stor10[tx.origin][arg1]].field_512 < arg2:
                    emit Error(2, tx.origin, msg.sender);
                    return 0
                if allowances[stor10[tx.origin][arg1]].field_512 > arg2:
                    require sub_d6d0802a[tx.origin][arg1] < allowances.length
                    allowances[stor10[tx.origin][arg1]].field_512 = arg2
                else:
                    if sub_d6d0802a[tx.origin][arg1] < 1:
                        emit Error(4, tx.origin, msg.sender);
                    else:
                        sub_d6d0802a[tx.origin][arg1] = 0
                        require allowances.length - 1 < allowances.length
                        if sub_d6d0802a[tx.origin][arg1] + 1 < allowances.length:
                            sub_d6d0802a[stor11[stor11.length].field_0][stor11[stor11.length].field_0] = sub_d6d0802a[tx.origin][arg1]
                            require sub_d6d0802a[tx.origin][arg1] < allowances.length
                            allowances[stor10[tx.origin][arg1]].field_0 = allowances[allowances.length].field_0
                            allowances[stor10[tx.origin][arg1]].field_256 = allowances[allowances.length].field_0
                            allowances[stor10[tx.origin][arg1]].field_512 = allowances[allowances.length].field_0
                        allowances[allowances.length].field_0 = 0
                        allowances[allowances.length].field_0 = 0
                        allowances[allowances.length].field_0 = 0
                        allowances.length--
                        if not allowances.length <= allowances.length - 1:
                            idx = (3 * allowances.length) - 3
                            while 3 * allowances.length > idx:
                                allowances[idx].field_0 = 0
                                allowances[idx].field_256 = 0
                                allowances[idx].field_512 = 0
                                idx = idx + 1
                                continue 
    call address(ext_call.return_data[0]).withdraw(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg2, 0, 0
    require ext_call.success
    if arg2 * feePercent / 10000 < absMinFee:
        call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
             gas gas_remaining - 25050 wei
            args 0, 0, arg2 - absMinFee, 0, 0
        require ext_call.success
        emit Transfer(arg2, tx.origin, arg1);
        if absMinFee > 0:
            call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
                 gas gas_remaining - 25050 wei
                args 0, uint32(stor9), absMinFee, 0, 0
            require ext_call.success
    else:
        if arg2 * feePercent / 10000 <= absMaxFee:
            call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
                 gas gas_remaining - 25050 wei
                args 0, 0, arg2 - (arg2 * feePercent / 10000), 0, 0
            require ext_call.success
            emit Transfer(arg2, tx.origin, arg1);
            if arg2 * feePercent / 10000 > 0:
                call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
                     gas gas_remaining - 25050 wei
                    args 0, uint32(stor9), arg2 * feePercent / 10000, 0, 0
                require ext_call.success
        else:
            call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
                 gas gas_remaining - 25050 wei
                args 0, 0, arg2 - absMaxFee, 0, 0
            require ext_call.success
            emit Transfer(arg2, tx.origin, arg1);
            if absMaxFee > 0:
                call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
                     gas gas_remaining - 25050 wei
                    args 0, uint32(stor9), absMaxFee, 0, 0
                require ext_call.success
    call address(stor1).0x2ade6c36 with:
         gas gas_remaining - 25050 wei
        args 'elcoinPoS'
    require ext_call.success
    call address(stor1).0x2ade6c36 with:
         gas gas_remaining - 25050 wei
        args 'elcoinPoT'
    if not address(ext_call.return_data[0]):
        if ext_call.return_data[12 len 20]:
            call address(ext_call.return_data[0]).transfer(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 25050 wei
                args tx.origin, address(arg1), arg2
            require ext_call.success
    else:
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining - 25050 wei
            args tx.origin, 0
        require ext_call.success
        if address(ext_call.return_data[0]):
            call address(ext_call.return_data[0]).transfer(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 25050 wei
                args tx.origin, address(arg1), arg2
            require ext_call.success
    return 1
}

function transferTo(address arg1, address arg2, uint256 arg3) payable {
    if not address(stor0.length):
        return 0
    call address(stor1).0xa1add510 with:
         gas gas_remaining - 25050 wei
        args name, 'security', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if arg1 != tx.origin:
        emit Error(9, tx.origin, msg.sender);
        return 0
    if arg1 != msg.sender:
        emit Error(9, tx.origin, msg.sender);
        return 0
    call address(stor1).0x2ade6c36 with:
         gas gas_remaining - 25050 wei
        args 'elcoinDb'
    require ext_call.success
    if arg3 < absMinFee:
        emit Error(2, tx.origin, msg.sender);
        return 0
    call address(ext_call.return_data[0]).getBalance(address rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    if not uint256(stor10[('map', ('param', 'arg1'), ('name', 'stor0', 0))]):
        if ext_call.return_data[0] < arg3:
            emit Error(2, tx.origin, msg.sender);
            return 0
    else:
        require uint256(stor10[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) < allowances.length
        if allowances[uint256(stor10[('map', ('param', 'arg1'), ('name', 'stor0', 0))])].field_512 <= 0:
            if ext_call.return_data[0] < arg3:
                emit Error(2, tx.origin, msg.sender);
                return 0
        else:
            if not sub_d6d0802a[arg1][arg2]:
                if ext_call.return_data[0] - allowances[uint256(stor10[('map', ('param', 'arg1'), ('name', 'stor0', 0))])].field_512 < arg3:
                    emit Error(2, tx.origin, msg.sender);
                    return 0
                if 0 > arg3:
                    require sub_d6d0802a[arg1][arg2] < allowances.length
                    allowances[stor10[arg1][arg2]].field_512 += arg3
                else:
                    if sub_d6d0802a[arg1][arg2] < 1:
                        emit Error(4, tx.origin, msg.sender);
                    else:
                        sub_d6d0802a[arg1][arg2] = 0
                        require allowances.length - 1 < allowances.length
                        if sub_d6d0802a[arg1][arg2] + 1 < allowances.length:
                            sub_d6d0802a[stor11[stor11.length].field_0][stor11[stor11.length].field_0] = sub_d6d0802a[arg1][arg2]
                            require sub_d6d0802a[arg1][arg2] < allowances.length
                            allowances[stor10[arg1][arg2]].field_0 = allowances[allowances.length].field_0
                            allowances[stor10[arg1][arg2]].field_256 = allowances[allowances.length].field_0
                            allowances[stor10[arg1][arg2]].field_512 = allowances[allowances.length].field_0
                        allowances[allowances.length].field_0 = 0
                        allowances[allowances.length].field_0 = 0
                        allowances[allowances.length].field_0 = 0
                        allowances.length--
                        if not allowances.length <= allowances.length - 1:
                            idx = (3 * allowances.length) - 3
                            while 3 * allowances.length > idx:
                                allowances[idx].field_0 = 0
                                allowances[idx].field_256 = 0
                                allowances[idx].field_512 = 0
                                idx = idx + 1
                                continue 
            else:
                require sub_d6d0802a[arg1][arg2] < allowances.length
                if ext_call.return_data[0] - allowances[uint256(stor10[('map', ('param', 'arg1'), ('name', 'stor0', 0))])].field_512 + allowances[stor10[arg1][arg2]].field_512 < arg3:
                    emit Error(2, tx.origin, msg.sender);
                    return 0
                if allowances[stor10[arg1][arg2]].field_512 > arg3:
                    require sub_d6d0802a[arg1][arg2] < allowances.length
                    allowances[stor10[arg1][arg2]].field_512 = arg3
                else:
                    if sub_d6d0802a[arg1][arg2] < 1:
                        emit Error(4, tx.origin, msg.sender);
                    else:
                        sub_d6d0802a[arg1][arg2] = 0
                        require allowances.length - 1 < allowances.length
                        if sub_d6d0802a[arg1][arg2] + 1 < allowances.length:
                            sub_d6d0802a[stor11[stor11.length].field_0][stor11[stor11.length].field_0] = sub_d6d0802a[arg1][arg2]
                            require sub_d6d0802a[arg1][arg2] < allowances.length
                            allowances[stor10[arg1][arg2]].field_0 = allowances[allowances.length].field_0
                            allowances[stor10[arg1][arg2]].field_256 = allowances[allowances.length].field_0
                            allowances[stor10[arg1][arg2]].field_512 = allowances[allowances.length].field_0
                        allowances[allowances.length].field_0 = 0
                        allowances[allowances.length].field_0 = 0
                        allowances[allowances.length].field_0 = 0
                        allowances.length--
                        if not allowances.length <= allowances.length - 1:
                            idx = (3 * allowances.length) - 3
                            while 3 * allowances.length > idx:
                                allowances[idx].field_0 = 0
                                allowances[idx].field_256 = 0
                                allowances[idx].field_512 = 0
                                idx = idx + 1
                                continue 
    call address(ext_call.return_data[0]).withdraw(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg3, 0, 0
    require ext_call.success
    if arg3 * feePercent / 10000 < absMinFee:
        call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
             gas gas_remaining - 25050 wei
            args 0, 0, arg3 - absMinFee, 0, 0
        require ext_call.success
        emit Transfer(arg3, arg1, arg2);
        if absMinFee > 0:
            call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
                 gas gas_remaining - 25050 wei
                args 0, uint32(stor9), absMinFee, 0, 0
            require ext_call.success
    else:
        if arg3 * feePercent / 10000 <= absMaxFee:
            call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
                 gas gas_remaining - 25050 wei
                args 0, 0, arg3 - (arg3 * feePercent / 10000), 0, 0
            require ext_call.success
            emit Transfer(arg3, arg1, arg2);
            if arg3 * feePercent / 10000 > 0:
                call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
                     gas gas_remaining - 25050 wei
                    args 0, uint32(stor9), arg3 * feePercent / 10000, 0, 0
                require ext_call.success
        else:
            call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
                 gas gas_remaining - 25050 wei
                args 0, 0, arg3 - absMaxFee, 0, 0
            require ext_call.success
            emit Transfer(arg3, arg1, arg2);
            if absMaxFee > 0:
                call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
                     gas gas_remaining - 25050 wei
                    args 0, uint32(stor9), absMaxFee, 0, 0
                require ext_call.success
    call address(stor1).0x2ade6c36 with:
         gas gas_remaining - 25050 wei
        args 'elcoinPoS'
    require ext_call.success
    call address(stor1).0x2ade6c36 with:
         gas gas_remaining - 25050 wei
        args 'elcoinPoT'
    if not address(ext_call.return_data[0]):
        if ext_call.return_data[12 len 20]:
            call address(ext_call.return_data[0]).transfer(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 25050 wei
                args address(arg1), address(arg2), arg3
            require ext_call.success
    else:
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining - 25050 wei
            args address(arg1), 0
        require ext_call.success
        if address(ext_call.return_data[0]):
            call address(ext_call.return_data[0]).transfer(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 25050 wei
                args address(arg1), address(arg2), arg3
            require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    if not address(stor0.length):
        return 0
    call address(stor1).0xa1add510 with:
         gas gas_remaining - 25050 wei
        args name, 'security', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if not sub_d6d0802a[arg1][arg2]:
        emit Error(12, tx.origin, msg.sender);
        return 0
    require sub_d6d0802a[arg1][arg2] < allowances.length
    if allowances[stor10[arg1][arg2]].field_512 < arg3:
        emit Error(13, tx.origin, msg.sender);
        return 0
    call address(stor1).0x2ade6c36 with:
         gas gas_remaining - 25050 wei
        args 'elcoinDb'
    require ext_call.success
    if arg3 < absMinFee:
        emit Error(14, tx.origin, msg.sender);
        return 0
    call address(ext_call.return_data[0]).getBalance(address rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    if not uint256(stor10[('map', ('param', 'arg1'), ('name', 'stor0', 0))]):
        if ext_call.return_data[0] < arg3:
            emit Error(14, tx.origin, msg.sender);
            return 0
    else:
        require uint256(stor10[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) < allowances.length
        if allowances[uint256(stor10[('map', ('param', 'arg1'), ('name', 'stor0', 0))])].field_512 <= 0:
            if ext_call.return_data[0] < arg3:
                emit Error(14, tx.origin, msg.sender);
                return 0
        else:
            if not sub_d6d0802a[arg1][arg2]:
                if ext_call.return_data[0] - allowances[uint256(stor10[('map', ('param', 'arg1'), ('name', 'stor0', 0))])].field_512 < arg3:
                    emit Error(14, tx.origin, msg.sender);
                    return 0
                if 0 > arg3:
                    require sub_d6d0802a[arg1][arg2] < allowances.length
                    allowances[stor10[arg1][arg2]].field_512 += arg3
                else:
                    if sub_d6d0802a[arg1][arg2] < 1:
                        emit Error(4, tx.origin, msg.sender);
                    else:
                        sub_d6d0802a[arg1][arg2] = 0
                        require allowances.length - 1 < allowances.length
                        if sub_d6d0802a[arg1][arg2] + 1 < allowances.length:
                            sub_d6d0802a[stor11[stor11.length].field_0][stor11[stor11.length].field_0] = sub_d6d0802a[arg1][arg2]
                            require sub_d6d0802a[arg1][arg2] < allowances.length
                            allowances[stor10[arg1][arg2]].field_0 = allowances[allowances.length].field_0
                            allowances[stor10[arg1][arg2]].field_256 = allowances[allowances.length].field_0
                            allowances[stor10[arg1][arg2]].field_512 = allowances[allowances.length].field_0
                        allowances[allowances.length].field_0 = 0
                        allowances[allowances.length].field_0 = 0
                        allowances[allowances.length].field_0 = 0
                        allowances.length--
                        if not allowances.length <= allowances.length - 1:
                            idx = (3 * allowances.length) - 3
                            while 3 * allowances.length > idx:
                                allowances[idx].field_0 = 0
                                allowances[idx].field_256 = 0
                                allowances[idx].field_512 = 0
                                idx = idx + 1
                                continue 
            else:
                require sub_d6d0802a[arg1][arg2] < allowances.length
                if ext_call.return_data[0] - allowances[uint256(stor10[('map', ('param', 'arg1'), ('name', 'stor0', 0))])].field_512 + allowances[stor10[arg1][arg2]].field_512 < arg3:
                    emit Error(14, tx.origin, msg.sender);
                    return 0
                if allowances[stor10[arg1][arg2]].field_512 > arg3:
                    require sub_d6d0802a[arg1][arg2] < allowances.length
                    allowances[stor10[arg1][arg2]].field_512 = arg3
                else:
                    if sub_d6d0802a[arg1][arg2] < 1:
                        emit Error(4, tx.origin, msg.sender);
                    else:
                        sub_d6d0802a[arg1][arg2] = 0
                        require allowances.length - 1 < allowances.length
                        if sub_d6d0802a[arg1][arg2] + 1 < allowances.length:
                            sub_d6d0802a[stor11[stor11.length].field_0][stor11[stor11.length].field_0] = sub_d6d0802a[arg1][arg2]
                            require sub_d6d0802a[arg1][arg2] < allowances.length
                            allowances[stor10[arg1][arg2]].field_0 = allowances[allowances.length].field_0
                            allowances[stor10[arg1][arg2]].field_256 = allowances[allowances.length].field_0
                            allowances[stor10[arg1][arg2]].field_512 = allowances[allowances.length].field_0
                        allowances[allowances.length].field_0 = 0
                        allowances[allowances.length].field_0 = 0
                        allowances[allowances.length].field_0 = 0
                        allowances.length--
                        if not allowances.length <= allowances.length - 1:
                            idx = (3 * allowances.length) - 3
                            while 3 * allowances.length > idx:
                                allowances[idx].field_0 = 0
                                allowances[idx].field_256 = 0
                                allowances[idx].field_512 = 0
                                idx = idx + 1
                                continue 
    call address(ext_call.return_data[0]).withdraw(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg3, 0, 0
    require ext_call.success
    if arg3 * feePercent / 10000 < absMinFee:
        call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
             gas gas_remaining - 25050 wei
            args 0, 0, arg3 - absMinFee, 0, 0
        require ext_call.success
        emit Transfer(arg3, arg1, arg2);
        if absMinFee > 0:
            call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
                 gas gas_remaining - 25050 wei
                args 0, uint32(stor9), absMinFee, 0, 0
            require ext_call.success
    else:
        if arg3 * feePercent / 10000 <= absMaxFee:
            call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
                 gas gas_remaining - 25050 wei
                args 0, 0, arg3 - (arg3 * feePercent / 10000), 0, 0
            require ext_call.success
            emit Transfer(arg3, arg1, arg2);
            if arg3 * feePercent / 10000 > 0:
                call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
                     gas gas_remaining - 25050 wei
                    args 0, uint32(stor9), arg3 * feePercent / 10000, 0, 0
                require ext_call.success
        else:
            call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
                 gas gas_remaining - 25050 wei
                args 0, 0, arg3 - absMaxFee, 0, 0
            require ext_call.success
            emit Transfer(arg3, arg1, arg2);
            if absMaxFee > 0:
                call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
                     gas gas_remaining - 25050 wei
                    args 0, uint32(stor9), absMaxFee, 0, 0
                require ext_call.success
    require sub_d6d0802a[arg1][arg2] < allowances.length
    allowances[stor10[arg1][arg2]].field_512 -= arg3
    call address(stor1).0x2ade6c36 with:
         gas gas_remaining - 25050 wei
        args 'elcoinPoS'
    require ext_call.success
    if not ext_call.return_data[12 len 20]:
        call address(stor1).0x2ade6c36 with:
             gas gas_remaining - 25050 wei
            args 'elcoinPoT'
        require ext_call.success
    else:
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining - 25050 wei
            args address(arg1), 0
        require ext_call.success
        call address(stor1).0x2ade6c36 with:
             gas gas_remaining - 25050 wei
            args 'elcoinPoT'
    if ext_call.return_data[12 len 20]:
        call address(ext_call.return_data[0]).transfer(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 25050 wei
            args address(arg1), address(arg2), arg3
        require ext_call.success
    return 1
}



}
