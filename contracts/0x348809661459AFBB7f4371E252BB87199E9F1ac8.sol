contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;

function _fallback() payable {
    stor2 = 40000
    stor3 = 40000
    stor4 = 21000
    stor5 = 21000
    stor6 = 21000
    stor7 = 21000
    stor8 = 21000
    stor9 = 21000
    stor10 = 1
    stor11 = 2
    stor12 = 0
    stor13 = 0
    stor14 = 0
    stor15 = 0
    return code.data[94 len 7855]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
uint256 name;
uint256 refundGas;
uint256 sub_580c7adc;
uint256 transferCallGas;
uint256 transferWithReferenceCallGas;
uint256 transferFromCallGas;
uint256 transferFromWithReferenceCallGas;
uint256 approveCallGas;
uint256 forwardCallGas;
uint256 sub_a6c4d737;
uint256 sub_20caf32e;
uint256 sub_27008531;
uint256 sub_33099ea0;
uint256 sub_fe50871c;
uint256 sub_8af23c4a;
address stor16;
uint256 stor16;
address feeAddress;
uint256 stor17;
uint32 stor18;
address exchangeAddress;
uint256 stor18;
mapping of address allowedForwards;
address stor20;
uint256 stor20;
uint256 stor21;

function name() payable {
    return name
}

function sub_20caf32e(?) payable {
    return sub_20caf32e
}

function approveCallGas() payable {
    return approveCallGas
}

function sub_27008531(?) payable {
    return sub_27008531
}

function sub_33099ea0(?) payable {
    return sub_33099ea0
}

function feeAddress() payable {
    return address(feeAddress)
}

function refundGas() payable {
    return refundGas
}

function sub_580c7adc(?) payable {
    return sub_580c7adc
}

function transferFromCallGas() payable {
    return transferFromCallGas
}

function forwardCallGas() payable {
    return forwardCallGas
}

function transferFromWithReferenceCallGas() payable {
    return transferFromWithReferenceCallGas
}

function sub_8af23c4a(?) payable {
    return sub_8af23c4a
}

function exchangeAddress() payable {
    return address(exchangeAddress)
}

function transferWithReferenceCallGas() payable {
    return transferWithReferenceCallGas
}

function sub_a6c4d737(?) payable {
    return sub_a6c4d737
}

function allowedForwards(uint32 arg1) payable {
    return address(allowedForwards[arg1])
}

function transferCallGas() payable {
    return transferCallGas
}

function sub_fe50871c(?) payable {
    return sub_fe50871c
}

function remove() payable {
    if address(stor0) != msg.sender:
    selfdestruct(msg.sender)
}

function emitApprove(address arg1, address arg2, uint256 arg3) payable {
    if msg.sender == address(stor20):
        emit Approve(arg3, arg1, arg2);
}

function emitTransfer(address arg1, address arg2, uint256 arg3) payable {
    if msg.sender == address(stor20):
        emit Transfer(arg3, arg1, arg2);
}

function init(address arg1, bytes32 arg2) payable {
    if address(stor20) != 0:
        return 0
    uint256(stor20) = arg1 or Mask(96, 160, uint256(stor20))
    stor21 = arg2
    return 1
}

function totalSupply() payable {
    call address(stor20).0xb524abcf with:
         gas gas_remaining - 25050 wei
        args stor21
    require ext_call.success
    return ext_call.return_data[0]
}

function balanceOf(address arg1) payable {
    call address(stor20).0x4d30b6be with:
         gas gas_remaining - 25050 wei
        args address(arg1), stor21
    require ext_call.success
    return ext_call.return_data[0]
}

function getAddress(bytes32 arg1) payable {
    call address(stor0).getNodeAddress(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function allowance(address arg1, address arg2) payable {
    call address(stor20).0x1c8d5d38 with:
         gas gas_remaining - 25050 wei
        args address(arg1), address(arg2), stor21
    require ext_call.success
    return ext_call.return_data[0]
}

function setupFee(address arg1) payable {
    if 0 == address(stor0):
        return 0
    call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 0x61646d696e000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    uint256(stor17) = arg1 or Mask(96, 160, uint256(stor17))
    return 1
}

function setTokenPrice(uint256 arg1, uint256 arg2) payable {
    if 0 == address(stor0):
        return 0
    call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 'cron', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if 0 == arg1:
        return 0
    if 0 == arg2:
        return 0
    if arg1 > arg2:
        return 0
    sub_a6c4d737 = arg1
    sub_20caf32e = arg2
    return 1
}

function setForward(bytes4 arg1, address arg2) payable {
    if 0 == address(stor0):
        return 0
    call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 0x61646d696e000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    uint256(allowedForwards[arg1 << 224]) = arg2 or Mask(96, 160, uint256(allowedForwards[arg1 << 224]))
    return 1
}

function sub_c05d46a5(?) payable {
    if 0 == address(stor0):
        return 0
    call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 0x7365747570000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    transferCallGas = arg1
    transferFromCallGas = arg2
    transferWithReferenceCallGas = arg3
    transferFromWithReferenceCallGas = arg4
    approveCallGas = arg5
    forwardCallGas = arg6
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

function sub_5fe47f1d(?) payable {
    if 0 == address(stor0):
        return 0
    call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 0x61646d696e000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if arg2 > arg3:
        return 0
    if arg4 > arg5:
        return 0
    uint256(stor18) = arg1 or Mask(96, 160, uint256(stor18))
    sub_27008531 = arg2
    sub_33099ea0 = arg3
    sub_fe50871c = arg4
    sub_8af23c4a = arg5
    return 1
}

function sub_51171896(?) payable {
    if 0 == address(stor0):
        return 0
    call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 0x61646d696e000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    uint256(stor16) = arg1 or Mask(96, 160, uint256(stor16))
    if msg.value <= 0:
        return 1
    call address(stor16).depositWithReference(string rg1) with:
       value msg.value wei
         gas gas_remaining - 34050 wei
        args Array(len=14, data='Setup Treasury')
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}

function updateRefundGas() payable {
    if address(stor0) != 0:
        call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 25050 wei
            args name, 0x7365747570000000000000000000000000000000000000000000000000000000, msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            call address(stor16).withdraw(address rg1, uint256 rg2) with:
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
}

function buy(address arg1) payable {
    if 0 == address(exchangeAddress):
        return 0
    if msg.value / sub_20caf32e < sub_27008531:
        return 0
    if msg.value / sub_20caf32e > sub_33099ea0:
        return 0
    call address(stor16).depositWithReference(string rg1) with:
       value msg.value wei
         gas gas_remaining - 34050 wei
        args 'Buy'
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    call address(stor20).0x31c6c4cf with:
         gas gas_remaining - 25050 wei
        args 0, uint32(stor18), address(arg1), msg.value / sub_20caf32e, stor21, 160, 3, 0x4275790000000000000000000000000000000000000000000000000000000000
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}

function sell(address arg1, uint256 arg2) payable {
    if 0 == address(exchangeAddress):
        return 0
    if arg2 < sub_fe50871c:
        return 0
    if arg2 > sub_8af23c4a:
        return 0
    call address(stor20).0x31c6c4cf with:
         gas gas_remaining - 25050 wei
        args 0, uint32(msg.sender), address(exchangeAddress), arg2, stor21, 160, 4, 0x53656c6c00000000000000000000000000000000000000000000000000000000
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    call address(stor16).withdrawWithReference(address rg1, uint256 rg2, string rg3) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg2 * sub_a6c4d737, 96, 4, 0x53656c6c00000000000000000000000000000000000000000000000000000000
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}

function sub_dfc3b970(?) payable {
    call address(stor20).0xdc86e6f0 with:
         gas gas_remaining - 25050 wei
        args stor21
    require ext_call.success
    if 0 == address(stor0):
        return 0
    call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 'cron', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if 0 == arg1 / uint8(10^ext_call.return_data[0]):
        return 0
    if 0 == arg2 / uint8(10^ext_call.return_data[0]):
        return 0
    if arg1 / uint8(10^ext_call.return_data[0]) > arg2 / uint8(10^ext_call.return_data[0]):
        return 0
    sub_a6c4d737 = arg1 / uint8(10^ext_call.return_data[0])
    sub_20caf32e = arg2 / uint8(10^ext_call.return_data[0])
    return 1
}

function takeFee(address arg1, uint256 arg2, string arg3) payable {
    if address(stor0) != 0:
        call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 25050 wei
            args name, 'fee', msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            if 0 == address(feeAddress):
                return 1
            if address(feeAddress) == arg1:
                return 1
            call address(stor20).0x31c6c4cf with:
                 gas gas_remaining - 25050 wei
                args address(arg1), address(feeAddress), arg2, stor21, Array(len=arg3.length, data=arg3[all])
            require ext_call.success
            if ext_call.return_data[0]:
                return 1
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function sub_bed16fe9(?) payable {
    if address(stor0) != 0:
        call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 25050 wei
            args name, 0x7365747570000000000000000000000000000000000000000000000000000000, msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            if 0 == address(feeAddress):
                sub_580c7adc = 0
            else:
                if address(feeAddress) == msg.sender:
                    sub_580c7adc = 0
                else:
                    mem[356] = mem[373 len 15]
                    call address(stor20).0x31c6c4cf with:
                         gas gas_remaining - 25050 wei
                        args 0, uint32(msg.sender), address(feeAddress), 1, stor21, 160, 15, 'Update fee conf', mem[371 len 17]
                    require ext_call.success
                    if ext_call.return_data[0]:
                        sub_580c7adc = 0
            return 0
        else:
            return 0
    else:
        return 0
}

function checkApprove(address arg1, uint256 arg2) payable {
    call address(stor20).0x4f09eba7 with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2, stor21
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if address(feeAddress) != 0:
        if address(feeAddress) != msg.sender:
            mem[356] = mem[377 len 11]
            call address(stor20).0x31c6c4cf with:
                 gas gas_remaining - 25050 wei
                args 0, uint32(msg.sender), address(feeAddress), ((approveCallGas * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, stor21, 160, 11, 'Approve fee', mem[367 len 21]
            require ext_call.success
            if not ext_call.return_data[0]:
                return 1, 0
    call address(stor16).withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
    require ext_call.success
    return 1, ext_call.return_data[0]
}

function checkTransfer(address arg1, uint256 arg2) payable {
    call address(stor20).0x88d4531d with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2, stor21
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if address(feeAddress) != 0:
        if address(feeAddress) != msg.sender:
            mem[356] = mem[376 len 12]
            call address(stor20).0x31c6c4cf with:
                 gas gas_remaining - 25050 wei
                args 0, uint32(msg.sender), address(feeAddress), ((transferCallGas * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, stor21, 160, 12, Mask(96, 0, 'Transfer fee'), mem[368 len 20]
            require ext_call.success
            if not ext_call.return_data[0]:
                return 1, 0
    call address(stor16).withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args tx.origin, (transferCallGas * block.gasprice) + (refundGas * block.gasprice)
    require ext_call.success
    return 1, ext_call.return_data[0]
}

function checkTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    call address(stor20).0x2c8ed735 with:
         gas gas_remaining - 25050 wei
        args 0, 0, address(arg2), arg3, stor21
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if address(feeAddress) != 0:
        if address(feeAddress) != arg1:
            mem[356] = mem[376 len 12]
            call address(stor20).0x31c6c4cf with:
                 gas gas_remaining - 25050 wei
                args 0, 0, address(feeAddress), ((transferFromCallGas * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, stor21, 160, 12, Mask(96, 0, 'Transfer fee'), mem[368 len 20]
            require ext_call.success
            if not ext_call.return_data[0]:
                return 1, 0
    call address(stor16).withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args tx.origin, (transferFromCallGas * block.gasprice) + (refundGas * block.gasprice)
    require ext_call.success
    return 1, ext_call.return_data[0]
}

function checkTransferWithReference(address arg1, uint256 arg2, string arg3) payable {
    mem[ceil32(arg3.length) + 292 len arg3.length] = arg3[all]
    call address(stor20).0x64ef212e with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2, stor21, Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if address(feeAddress) != 0:
        if address(feeAddress) != msg.sender:
            mem[ceil32(arg3.length) + 388] = mem[ceil32(arg3.length) + 408 len 12]
            call address(stor20).0x31c6c4cf with:
                 gas gas_remaining - 25050 wei
                args msg.sender, address(feeAddress), ((transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, stor21, Array(len=12, data=mem[ceil32(arg3.length) + 388])
            require ext_call.success
            if not ext_call.return_data[0]:
                return 1, 0
    call address(stor16).withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
    require ext_call.success
    return 1, ext_call.return_data[0]
}

function checkTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4) payable {
    mem[ceil32(arg4.length) + 324 len arg4.length] = arg4[all]
    call address(stor20).0xf0cbe059 with:
         gas gas_remaining - 25050 wei
        args address(arg1), address(arg2), arg3, stor21, Array(len=arg4.length, data=arg4[all])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if address(feeAddress) != 0:
        if address(feeAddress) != arg1:
            mem[ceil32(arg4.length) + 388] = mem[ceil32(arg4.length) + 408 len 12]
            call address(stor20).0x31c6c4cf with:
                 gas gas_remaining - 25050 wei
                args address(arg1), address(feeAddress), ((transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, stor21, Array(len=12, data=mem[ceil32(arg4.length) + 388])
            require ext_call.success
            if not ext_call.return_data[0]:
                return 1, 0
    call address(stor16).withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
    require ext_call.success
    return 1, ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) payable {
    call address(stor20).0x4f09eba7 with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2, stor21
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if 0 == address(feeAddress):
        call address(stor16).withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
        require ext_call.success
    else:
        if address(feeAddress) == msg.sender:
            call address(stor16).withdraw(address rg1, uint256 rg2) with:
                 gas gas_remaining - 25050 wei
                args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
            require ext_call.success
        else:
            mem[356] = mem[377 len 11]
            call address(stor20).0x31c6c4cf with:
                 gas gas_remaining - 25050 wei
                args 0, uint32(msg.sender), address(feeAddress), ((approveCallGas * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, stor21, 160, 11, 'Approve fee', mem[367 len 21]
            require ext_call.success
            if ext_call.return_data[0]:
                call address(stor16).withdraw(address rg1, uint256 rg2) with:
                     gas gas_remaining - 25050 wei
                    args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
                require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    call address(stor20).0x88d4531d with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2, stor21
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if 0 == address(feeAddress):
        call address(stor16).withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args tx.origin, (transferCallGas * block.gasprice) + (refundGas * block.gasprice)
        require ext_call.success
    else:
        if address(feeAddress) == msg.sender:
            call address(stor16).withdraw(address rg1, uint256 rg2) with:
                 gas gas_remaining - 25050 wei
                args tx.origin, (transferCallGas * block.gasprice) + (refundGas * block.gasprice)
            require ext_call.success
        else:
            mem[356] = mem[376 len 12]
            call address(stor20).0x31c6c4cf with:
                 gas gas_remaining - 25050 wei
                args 0, uint32(msg.sender), address(feeAddress), ((transferCallGas * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, stor21, 160, 12, Mask(96, 0, 'Transfer fee'), mem[368 len 20]
            require ext_call.success
            if ext_call.return_data[0]:
                call address(stor16).withdraw(address rg1, uint256 rg2) with:
                     gas gas_remaining - 25050 wei
                    args tx.origin, (transferCallGas * block.gasprice) + (refundGas * block.gasprice)
                require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    call address(stor20).0x2c8ed735 with:
         gas gas_remaining - 25050 wei
        args 0, 0, address(arg2), arg3, stor21
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if 0 == address(feeAddress):
        call address(stor16).withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args tx.origin, (transferFromCallGas * block.gasprice) + (refundGas * block.gasprice)
        require ext_call.success
    else:
        if address(feeAddress) == arg1:
            call address(stor16).withdraw(address rg1, uint256 rg2) with:
                 gas gas_remaining - 25050 wei
                args tx.origin, (transferFromCallGas * block.gasprice) + (refundGas * block.gasprice)
            require ext_call.success
        else:
            mem[356] = mem[376 len 12]
            call address(stor20).0x31c6c4cf with:
                 gas gas_remaining - 25050 wei
                args 0, 0, address(feeAddress), ((transferFromCallGas * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, stor21, 160, 12, Mask(96, 0, 'Transfer fee'), mem[368 len 20]
            require ext_call.success
            if ext_call.return_data[0]:
                call address(stor16).withdraw(address rg1, uint256 rg2) with:
                     gas gas_remaining - 25050 wei
                    args tx.origin, (transferFromCallGas * block.gasprice) + (refundGas * block.gasprice)
                require ext_call.success
    return 1
}

function _fallback() payable {
    if 0 == address(allowedForwards[call.func_hash << 224]):
        return 0
    mem[ceil32(calldata.size) + 128 len calldata.size] = call.data[0 len calldata.size]
    if not calldata.size % 32:
        call address(allowedForwards[call.func_hash << 224]) with:
           funct call.data[0 len 4]
           value msg.value wei
             gas gas_remaining - 34050 wei
            args call.data[4 len calldata.size - 4]
    else:
        mem[floor32(calldata.size) + ceil32(calldata.size) + 128] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 160 len calldata.size % 32]
        call address(allowedForwards[call.func_hash << 224]) with:
           funct call.data[0 len 4]
           value msg.value wei
             gas gas_remaining - 34050 wei
            args call.data[4 len calldata.size - 4], mem[ceil32(calldata.size) + calldata.size + 128 len -(calldata.size % 32) + 32]
    if address(feeAddress) != 0:
        if address(feeAddress) != msg.sender:
            mem[ceil32(calldata.size) + 388] = mem[ceil32(calldata.size) + 409 len 11]
            call address(stor20).0x31c6c4cf with:
                 gas gas_remaining - 25050 wei
                args msg.sender, address(feeAddress), ((forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, stor21, Array(len=11, data=mem[ceil32(calldata.size) + 388])
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
    call address(stor16).withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
    require ext_call.success
    return ext_call.return_data[0]
}

function transferWithReference(address arg1, uint256 arg2, string arg3) payable {
    mem[ceil32(arg3.length) + 292 len arg3.length] = arg3[all]
    call address(stor20).0x64ef212e with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2, stor21, Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if 0 == address(feeAddress):
        call address(stor16).withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
        require ext_call.success
    else:
        if address(feeAddress) == msg.sender:
            call address(stor16).withdraw(address rg1, uint256 rg2) with:
                 gas gas_remaining - 25050 wei
                args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
            require ext_call.success
        else:
            mem[ceil32(arg3.length) + 388] = mem[ceil32(arg3.length) + 408 len 12]
            call address(stor20).0x31c6c4cf with:
                 gas gas_remaining - 25050 wei
                args msg.sender, address(feeAddress), ((transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, stor21, Array(len=12, data=mem[ceil32(arg3.length) + 388])
            require ext_call.success
            if ext_call.return_data[0]:
                call address(stor16).withdraw(address rg1, uint256 rg2) with:
                     gas gas_remaining - 25050 wei
                    args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                require ext_call.success
    return 1
}

function transferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4) payable {
    mem[ceil32(arg4.length) + 324 len arg4.length] = arg4[all]
    call address(stor20).0xf0cbe059 with:
         gas gas_remaining - 25050 wei
        args address(arg1), address(arg2), arg3, stor21, Array(len=arg4.length, data=arg4[all])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if 0 == address(feeAddress):
        call address(stor16).withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
        require ext_call.success
    else:
        if address(feeAddress) == arg1:
            call address(stor16).withdraw(address rg1, uint256 rg2) with:
                 gas gas_remaining - 25050 wei
                args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
            require ext_call.success
        else:
            mem[ceil32(arg4.length) + 388] = mem[ceil32(arg4.length) + 408 len 12]
            call address(stor20).0x31c6c4cf with:
                 gas gas_remaining - 25050 wei
                args address(arg1), address(feeAddress), ((transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, stor21, Array(len=12, data=mem[ceil32(arg4.length) + 388])
            require ext_call.success
            if ext_call.return_data[0]:
                call address(stor16).withdraw(address rg1, uint256 rg2) with:
                     gas gas_remaining - 25050 wei
                    args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                require ext_call.success
    return 1
}



}
