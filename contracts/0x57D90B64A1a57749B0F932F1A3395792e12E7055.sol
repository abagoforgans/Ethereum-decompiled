contract main {


// =======================  Init code  ======================


array of uint256 stor3;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    stor9 = 21 * 10^9
    stor10 = 21000
    stor11 = 15000
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = stor3.length + 1
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    stor8 = tx.origin or Mask(96, 160, stor8)
    stor5 = 0
    stor6 = 0
    stor7 = 1
    return code.data[222 len 6636]
}



// =====================  Runtime code  =====================


const approve(address arg1, uint256 arg2) = 0

const transferFrom(address arg1, address arg2, uint256 arg3) = 0

const allowance(address arg1, address arg2) = 0

const unapprove(address arg1) = 0


address stor0;
uint256 stor0;
uint256 name;
mapping of uint256 recoveredIndex;
array of address recovered;
uint256 totalSupply;
uint256 absMinFee;
uint256 feePercent;
uint256 absMaxFee;
uint32 stor8;
address feeAddr;
uint256 stor8;
uint256 txGasPriceLimit;
uint256 transferCallGas;
uint256 refundGas;
address stor12;
uint256 stor12;

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

function txGasPriceLimit() payable {
    return txGasPriceLimit
}

function feeAddr() payable {
    return address(feeAddr)
}

function absMaxFee() payable {
    return absMaxFee
}

function refundGas() payable {
    return refundGas
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

function transferCallGas() payable {
    return transferCallGas
}

function remove() payable {
    if not address(stor0):
    call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 'owner', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
    selfdestruct(msg.sender)
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
    call address(stor0).getNodeAddress(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function balanceOf(address arg1) payable {
    call address(stor0).getNodeAddress(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 'elcoinDb'
    require ext_call.success
    call address(ext_call.return_data[0]).0xf8b2cb4f with:
         gas gas_remaining - 25050 wei
        args arg1
    return ext_call.return_data[0]
}

function setFeeAddr(address arg1) payable {
    if address(stor0):
        call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 25050 wei
            args name, 0x63757272656e63794f776e657200000000000000000000000000000000000000, msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            uint256(stor8) = arg1 or Mask(96, 160, uint256(stor8))
}

function setOperationsCallGas(uint256 arg1) payable {
    if 0 == address(stor0):
        return 0
    call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 0x63757272656e63794f776e657200000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    transferCallGas = arg1
    return 1
}

function setAmbiAddress(address arg1, bytes32 arg2) payable {
    if address(stor0) != 0:
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
    return 1
}

function setupTreasury(address arg1, uint256 arg2) payable {
    if 0 == address(stor0):
        return 0
    call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 0x63757272656e63794f776e657200000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if 0 == arg2:
        return 0
    uint256(stor12) = arg1 or Mask(96, 160, uint256(stor12))
    txGasPriceLimit = arg2
    if msg.value <= 0:
        return 1
    call address(stor12) with:
       value msg.value wei
         gas 0 wei
    require ext_call.success
    return 1
}

function rewardTo(address arg1, uint256 arg2) payable {
    if 0 == address(stor0):
        return 0
    call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 'reward', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    call address(stor0).getNodeAddress(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 'elcoinDb'
    require ext_call.success
    call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg2, 0, 0
    if ext_call.return_data[0]:
        totalSupply += arg2
    return ext_call.return_data[0]
}

function updateRefundGas() payable {
    if address(stor0) != 0:
        call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 25050 wei
            args name, 0x63757272656e63794f776e657200000000000000000000000000000000000000, msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            if block.gasprice <= txGasPriceLimit:
                call address(stor12).withdraw(address rg1, uint256 rg2) with:
                     gas gas_remaining - 25050 wei
                    args tx.origin, 1
                require ext_call.success
                if ext_call.return_data[0]:
                    refundGas = 0
                    return 0
                else:
                    return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function issueCoin(address arg1, uint256 arg2, uint256 arg3) payable {
    if 0 == address(stor0):
        return 0
    call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 0x63757272656e63794f776e657200000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if totalSupply > 0:
        emit code.data[6604 len 32]: 6, tx.origin, msg.sender
        return 0
    call address(stor0).getNodeAddress(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 'elcoinDb'
    require ext_call.success
    call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg2, 0, 0
    totalSupply = arg3
    return ext_call.return_data[0]
}

function setFee(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    if 0 == address(stor0):
        return 0
    call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 'cron', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if arg1 < 0:
        emit code.data[6604 len 32]: 1, tx.origin, msg.sender
        return 0
    if arg2 < 0:
        emit code.data[6604 len 32]: 1, tx.origin, msg.sender
        return 0
    if arg2 > 10000:
        emit code.data[6604 len 32]: 1, tx.origin, msg.sender
        return 0
    if arg3 < 0:
        emit code.data[6604 len 32]: 1, tx.origin, msg.sender
        return 0
    if arg3 < arg1:
        emit code.data[6604 len 32]: 1, tx.origin, msg.sender
        return 0
    absMinFee = arg1
    feePercent = arg2
    absMaxFee = arg3
    return 1
}

function recoverAccount(address arg1, address arg2) payable {
    if 0 == address(stor0):
        return 0
    call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 'recovery', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if recoveredIndex[address(arg1)] != 0:
        return 0
    call address(stor0).getNodeAddress(bytes32 rg1) with:
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
    call address(ext_call.return_data[0]).0xf8b2cb4f with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    call address(ext_call.return_data[0]).withdraw(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, ext_call.return_data[0], 0, 0
    if not ext_call.return_data[0]:
        emit code.data[6604 len 32]: 5, tx.origin, msg.sender
        return 0
    call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, ext_call.return_data[0], 0, 0
    require ext_call.success
    return 1
}

function transferPool(address arg1, address arg2, uint256 arg3) payable {
    if 0 == address(stor0):
        return 0
    call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 'pool', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    call address(stor0).getNodeAddress(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 'elcoinDb'
    require ext_call.success
    if arg3 < absMinFee:
        emit code.data[6604 len 32]: 2, tx.origin, msg.sender
        return 0
    if arg1 == arg2:
        emit code.data[6604 len 32]: 2, tx.origin, msg.sender
        return 0
    call address(ext_call.return_data[0]).0xf8b2cb4f with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[0] < arg3:
        emit code.data[6604 len 32]: 2, tx.origin, msg.sender
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
                args 0, uint32(stor8), absMinFee, 0, 0
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
                    args 0, uint32(stor8), arg3 * feePercent / 10000, 0, 0
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
                    args 0, uint32(stor8), absMaxFee, 0, 0
                require ext_call.success
    call address(stor0).getNodeAddress(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 'elcoinPoS'
    require ext_call.success
    call address(stor0).getNodeAddress(bytes32 rg1) with:
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

function transfer(address arg1, uint256 arg2) payable {
    call address(stor0).getNodeAddress(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 'elcoinDb'
    require ext_call.success
    if arg2 < absMinFee:
        emit code.data[6604 len 32]: 2, tx.origin, msg.sender
        return 0
    if msg.sender == arg1:
        emit code.data[6604 len 32]: 2, tx.origin, msg.sender
        return 0
    call address(ext_call.return_data[0]).0xf8b2cb4f with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    if ext_call.return_data[0] < arg2:
        emit code.data[6604 len 32]: 2, tx.origin, msg.sender
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
                args 0, uint32(stor8), absMinFee, 0, 0
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
                    args 0, uint32(stor8), arg2 * feePercent / 10000, 0, 0
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
                    args 0, uint32(stor8), absMaxFee, 0, 0
                require ext_call.success
    call address(stor0).getNodeAddress(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 'elcoinPoS'
    require ext_call.success
    call address(stor0).getNodeAddress(bytes32 rg1) with:
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
    if block.gasprice > txGasPriceLimit:
        return 0
    call address(stor12).withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args tx.origin, (transferCallGas * block.gasprice) + (refundGas * block.gasprice)
    require ext_call.success
    return ext_call.return_data[0]
}

function batchTransfer(address[] arg1, uint256[] arg2) payable {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if 0 == address(stor0):
        return 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = name
    mem[(32 * arg1.length) + (32 * arg2.length) + 196] = 0x63757272656e63794f776e657200000000000000000000000000000000000000
    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = msg.sender
    call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 0x63757272656e63794f776e657200000000000000000000000000000000000000, msg.sender
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if arg1.length != arg2.length:
        emit code.data[6604 len 32]: 7, tx.origin, msg.sender
        return 0
    idx = 0
    s = 0
    while uint8(idx) < arg2.length:
        require uint8(idx) < arg2.length
        idx = idx + 1
        s = s + mem[(32 * arg1.length) + (32 * uint8(idx)) + 160]
        continue 
    call address(stor0).getNodeAddress(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 'elcoinDb'
    require ext_call.success
    call address(ext_call.return_data[0]).0xf8b2cb4f with:
         gas gas_remaining - 25050 wei
        args msg.sender
    if ext_call.return_data[0] < s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None:
        emit code.data[6604 len 32]: 8, tx.origin, msg.sender
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
