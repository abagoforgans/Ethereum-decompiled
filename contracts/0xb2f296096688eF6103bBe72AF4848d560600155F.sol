contract main {


// =======================  Init code  ======================


array of uint256 stor4;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;

function _fallback() payable {
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        idx = stor4.length + 1
        while stor4.length > idx:
            stor4[idx] = 0
            idx = idx + 1
            continue 
    stor9 = tx.origin or Mask(96, 160, stor9)
    stor6 = 0
    stor7 = 0
    stor8 = 1
    return code.data[201 len 5641]
}



// =====================  Runtime code  =====================


const approve(address arg1, uint256 arg2) = 0

const transferFrom(address arg1, address arg2, uint256 arg3) = 0

const allowance(address arg1, address arg2) = 0

const unapprove(address arg1) = 0


address sub_3751707cAddress;
uint256 stor0;
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
    return address(sub_3751707cAddress)
}

function feeAddr() payable {
    return address(feeAddr)
}

function absMaxFee() payable {
    return absMaxFee
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

function remove() payable {
    if address(sub_3751707cAddress) != msg.sender:
    selfdestruct(address(sub_3751707cAddress))
}

function _fallback() payable {
  stop
}

function calculateFee(uint256 arg1) payable {
    if arg1 * feePercent / 10000 < absMinFee:
        return absMinFee
    if arg1 * feePercent / 10000 <= absMaxFee:
        return (arg1 * feePercent / 10000)
    return absMaxFee
}

function getAddress(bytes32 arg1) payable {
    call address(stor1).getNodeAddress(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function balanceOf(address arg1) payable {
    call address(stor1).getNodeAddress(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x656c636f696e4462000000000000000000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).getBalance(address rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    return ext_call.return_data[0]
}

function setFeeAddr(address arg1) payable {
    if address(sub_3751707cAddress):
        call address(stor1).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 25050 wei
            args name, 0x63757272656e63794f776e657200000000000000000000000000000000000000, msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            uint256(stor9) = arg1 or Mask(96, 160, uint256(stor9))
}

function setAmbiAddress(address arg1, bytes32 arg2) payable {
    if address(sub_3751707cAddress) != 0:
        if address(sub_3751707cAddress) != arg1:
            return 0
    call arg1.getNodeAddress(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args arg2
    require ext_call.success
    if ext_call.return_data[12 len 20] != this.address:
        call arg1.addNode(bytes32 rg1, address rg2) with:
             gas gas_remaining - 25050 wei
            args arg2, this.address
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    name = arg2
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
    return 1
}

function rewardTo(address arg1, uint256 arg2) payable {
    if address(sub_3751707cAddress) != 0:
        call address(stor1).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 25050 wei
            args name, 'reward', msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            call address(stor1).getNodeAddress(bytes32 rg1) with:
                 gas gas_remaining - 25050 wei
                args 0x656c636f696e4462000000000000000000000000000000000000000000000000
            require ext_call.success
            call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
                 gas gas_remaining - 25050 wei
                args 0, 0, arg2, 0, 0
            totalSupply += arg2
}

function setFee(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    if 0 == address(sub_3751707cAddress):
        return 0
    call address(stor1).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 'cron', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if arg1 < 0:
        emit code.data[5609 len 32]: 1, tx.origin, msg.sender
        return 0
    if arg2 < 0:
        emit code.data[5609 len 32]: 1, tx.origin, msg.sender
        return 0
    if arg2 > 10000:
        emit code.data[5609 len 32]: 1, tx.origin, msg.sender
        return 0
    if arg3 < 0:
        emit code.data[5609 len 32]: 1, tx.origin, msg.sender
        return 0
    if arg3 < arg1:
        emit code.data[5609 len 32]: 1, tx.origin, msg.sender
        return 0
    absMinFee = arg1
    feePercent = arg2
    absMaxFee = arg3
    return 1
}

function issueCoin(address arg1, uint256 arg2) payable {
    if 0 == address(sub_3751707cAddress):
        return 0
    call address(stor1).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 0x63757272656e63794f776e657200000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if totalSupply > 0:
        emit code.data[5609 len 32]: 6, tx.origin, msg.sender
        return 0
    call address(stor1).getNodeAddress(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x656c636f696e4462000000000000000000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg2, 0, 0
    totalSupply = arg2
    return ext_call.return_data[0]
}

function recoverAccount(address arg1, address arg2) payable {
    if 0 == address(sub_3751707cAddress):
        return 0
    call address(stor1).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 'recovery', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if recoveredIndex[address(arg1)] != 0:
        return 0
    call address(stor1).getNodeAddress(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x656c636f696e4462000000000000000000000000000000000000000000000000
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
        emit code.data[5609 len 32]: 5, tx.origin, msg.sender
        return 0
    call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, ext_call.return_data[0], 0, 0
    require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    call address(stor1).getNodeAddress(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x656c636f696e4462000000000000000000000000000000000000000000000000
    require ext_call.success
    if arg2 < absMinFee:
        emit code.data[5609 len 32]: 2, tx.origin, msg.sender
        return 0
    call address(ext_call.return_data[0]).getBalance(address rg1) with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    if ext_call.return_data[0] < arg2:
        emit code.data[5609 len 32]: 2, tx.origin, msg.sender
        return 0
    call address(ext_call.return_data[0]).withdraw(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, uint32(msg.sender), arg2, 0, 0
    require ext_call.success
    if arg2 * feePercent / 10000 < absMinFee:
        call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
             gas gas_remaining - 25050 wei
            args 0, 0, arg2 - absMinFee, 0, 0
        require ext_call.success
        emit Transfer(arg2, msg.sender, arg1);
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
            emit Transfer(arg2, msg.sender, arg1);
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
            emit Transfer(arg2, msg.sender, arg1);
            if absMaxFee > 0:
                call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
                     gas gas_remaining - 25050 wei
                    args 0, uint32(stor9), absMaxFee, 0, 0
                require ext_call.success
    call address(stor1).getNodeAddress(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 'elcoinPoS'
    require ext_call.success
    call address(stor1).getNodeAddress(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 'elcoinPoT'
    if 0 == address(ext_call.return_data[0]):
        if ext_call.return_data[12 len 20] != 0:
            call address(ext_call.return_data[0]).transfer(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 25050 wei
                args msg.sender, address(arg1), arg2
            require ext_call.success
    else:
        call address(ext_call.return_data[0]).transfer(address rg1, address rg2) with:
             gas gas_remaining - 25050 wei
            args msg.sender, arg1
        require ext_call.success
        if address(ext_call.return_data[0]) != 0:
            call address(ext_call.return_data[0]).transfer(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 25050 wei
                args msg.sender, address(arg1), arg2
            require ext_call.success
    return 1
}

function transferPool(address arg1, address arg2, uint256 arg3) payable {
    if 0 == address(sub_3751707cAddress):
        return 0
    call address(stor1).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 'pool', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    call address(stor1).getNodeAddress(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x656c636f696e4462000000000000000000000000000000000000000000000000
    require ext_call.success
    if arg3 < absMinFee:
        emit code.data[5609 len 32]: 2, tx.origin, msg.sender
        return 0
    call address(ext_call.return_data[0]).getBalance(address rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[0] < arg3:
        emit code.data[5609 len 32]: 2, tx.origin, msg.sender
        return 0
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
    call address(stor1).getNodeAddress(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 'elcoinPoS'
    require ext_call.success
    call address(stor1).getNodeAddress(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 'elcoinPoT'
    if 0 == address(ext_call.return_data[0]):
        if ext_call.return_data[12 len 20] != 0:
            call address(ext_call.return_data[0]).transfer(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 25050 wei
                args address(arg1), address(arg2), arg3
            require ext_call.success
    else:
        call address(ext_call.return_data[0]).transfer(address rg1, address rg2) with:
             gas gas_remaining - 25050 wei
            args address(arg1), arg2
        require ext_call.success
        if address(ext_call.return_data[0]) != 0:
            call address(ext_call.return_data[0]).transfer(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 25050 wei
                args address(arg1), address(arg2), arg3
            require ext_call.success
    return 1
}

function batchTransfer(address[] arg1, uint256[] arg2) payable {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if 0 == address(sub_3751707cAddress):
        return 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = name
    mem[(32 * arg1.length) + (32 * arg2.length) + 196] = 0x63757272656e63794f776e657200000000000000000000000000000000000000
    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = msg.sender
    call address(stor1).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 0x63757272656e63794f776e657200000000000000000000000000000000000000, msg.sender
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if arg1.length != arg2.length:
        emit code.data[5609 len 32]: 7, tx.origin, msg.sender
        return 0
    idx = 0
    s = 0
    while uint8(idx) < arg2.length:
        require uint8(idx) < arg2.length
        idx = idx + 1
        s = s + mem[(32 * arg1.length) + (32 * uint8(idx)) + 160]
        continue 
    call address(stor1).getNodeAddress(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x656c636f696e4462000000000000000000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).getBalance(address rg1) with:
         gas gas_remaining - 25050 wei
        args msg.sender
    if ext_call.return_data[0] < s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None:
        emit code.data[5609 len 32]: 8, tx.origin, msg.sender
        return 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = msg.sender
    mem[(32 * arg1.length) + (32 * arg2.length) + 196] = s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 260] = 0
    call address(ext_call.return_data[0]).withdraw(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args msg.sender, s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None, 0, 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
    require ext_call.success
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        require uint8(idx) < arg2.length
        _93 = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * uint8(idx)) + 140 len 20]
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _93
        mem[(32 * arg1.length) + (32 * arg2.length) + 228] = 0
        mem[(32 * arg1.length) + (32 * arg2.length) + 260] = 0
        call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
             gas gas_remaining - 25050 wei
            args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _93, 0, 0
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        require uint8(idx) < arg1.length
        _97 = mem[(32 * uint8(idx)) + 128]
        require uint8(idx) < arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * arg1.length) + (32 * uint8(idx)) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_97));
        idx = idx + 1
        continue 
    return 1
}



}
