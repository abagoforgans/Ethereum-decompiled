contract main {


// =======================  Init code  ======================


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
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;

function _fallback() payable {
    stor4 = 40000
    stor5 = 40000
    stor6 = 21000
    stor7 = 21000
    stor8 = 21000
    stor9 = 21000
    stor10 = 21000
    stor11 = 21000
    stor12 = 21000
    stor13 = 21000
    stor14 = 21000
    stor15 = 21000
    stor16 = 21000
    stor17 = 1
    stor18 = 2
    stor19 = 0
    stor20 = 0
    stor21 = 0
    stor22 = 0
    return code.data[118 len 10135]
}



// =====================  Runtime code  =====================


address multiAssetAddress;
uint256 stor0;
uint256 symbol;
address stor2;
uint256 stor2;
uint256 name;
uint256 refundGas;
uint256 sub_580c7adc;
uint256 transferCallGas;
uint256 transferWithReferenceCallGas;
uint256 transferFromCallGas;
uint256 transferFromWithReferenceCallGas;
uint256 transferToICAPCallGas;
uint256 transferToICAPWithReferenceCallGas;
uint256 transferFromToICAPCallGas;
uint256 transferFromToICAPWithReferenceCallGas;
uint256 approveCallGas;
uint256 forwardCallGas;
uint256 setCosignerCallGas;
uint256 sub_a6c4d737;
uint256 sub_20caf32e;
uint256 sub_27008531;
uint256 sub_33099ea0;
uint256 sub_fe50871c;
uint256 sub_8af23c4a;
uint32 stor23;
address exchangeAddress;
uint256 stor23;
address treasuryAddress;
uint256 stor24;
address feeAddress;
uint256 stor25;
mapping of address allowedForwards;

function multiAsset() payable {
    return address(multiAssetAddress)
}

function name() payable {
    return name
}

function setCosignerCallGas() payable {
    return setCosignerCallGas
}

function transferFromToICAPCallGas() payable {
    return transferFromToICAPCallGas
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

function transferToICAPWithReferenceCallGas() payable {
    return transferToICAPWithReferenceCallGas
}

function transferFromCallGas() payable {
    return transferFromCallGas
}

function treasury() payable {
    return address(treasuryAddress)
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

function symbol() payable {
    return symbol
}

function exchangeAddress() payable {
    return address(exchangeAddress)
}

function transferWithReferenceCallGas() payable {
    return transferWithReferenceCallGas
}

function transferFromToICAPWithReferenceCallGas() payable {
    return transferFromToICAPWithReferenceCallGas
}

function sub_a6c4d737(?) payable {
    return sub_a6c4d737
}

function transferToICAPCallGas() payable {
    return transferToICAPCallGas
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
    if 0 == address(stor2):
    call address(stor2).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 'owner', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
    selfdestruct(msg.sender)
}

function emitApprove(address arg1, address arg2, uint256 arg3) payable {
    if msg.sender == address(multiAssetAddress):
        emit Approve(arg3, arg1, arg2);
}

function emitTransfer(address arg1, address arg2, uint256 arg3) payable {
    if msg.sender == address(multiAssetAddress):
        emit Transfer(arg3, arg1, arg2);
}

function totalSupply() payable {
    call address(multiAssetAddress).totalSupply(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args symbol
    require ext_call.success
    return ext_call.return_data[0]
}

function getAddress(bytes32 arg1) payable {
    call address(stor2).getNodeAddress(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function balanceOf(address arg1) payable {
    call address(multiAssetAddress).balanceOf(address rg1, bytes32 rg2) with:
         gas gas_remaining - 25050 wei
        args address(arg1), symbol
    require ext_call.success
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) payable {
    call address(multiAssetAddress).allowance(address rg1, address rg2, bytes32 rg3) with:
         gas gas_remaining - 25050 wei
        args address(arg1), address(arg2), symbol
    require ext_call.success
    return ext_call.return_data[0]
}

function init(address arg1, bytes32 arg2) payable {
    if address(multiAssetAddress) != 0:
        return 0
    call arg1.isCreated(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args arg2
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    symbol = arg2
    return 1
}

function setupFee(address arg1) payable {
    if 0 == address(stor2):
        return 0
    call address(stor2).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 0x61646d696e000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    uint256(stor25) = arg1 or Mask(96, 160, uint256(stor25))
    return 1
}

function setTokenPrice(uint256 arg1, uint256 arg2) payable {
    if 0 == address(stor2):
        return 0
    call address(stor2).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
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
    if 0 == address(stor2):
        return 0
    call address(stor2).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 0x61646d696e000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    uint256(allowedForwards[arg1 << 224]) = arg2 or Mask(96, 160, uint256(allowedForwards[arg1 << 224]))
    return 1
}

function sendToOwner() payable {
    call address(multiAssetAddress).owner(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args symbol
    require ext_call.success
    call address(multiAssetAddress).balanceOf(address rg1, bytes32 rg2) with:
         gas gas_remaining - 25050 wei
        args address(this.address), symbol
    call address(multiAssetAddress).transfer(address rg1, uint256 rg2, bytes32 rg3) with:
         gas gas_remaining - 25050 wei
        args address(ext_call.return_data[0]), ext_call.return_data[0], symbol
    return bool(ext_call.return_data[0])
}

function sub_51171896(?) payable {
    if 0 == address(stor2):
        return 0
    call address(stor2).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 0x61646d696e000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    uint256(stor24) = arg1 or Mask(96, 160, uint256(stor24))
    if msg.value <= 0:
        return 1
    call address(treasuryAddress) with:
       value msg.value wei
         gas 0 wei
    require ext_call.success
    return 1
}

function setAmbiAddress(address arg1, bytes32 arg2) payable {
    if address(stor2) != 0:
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
    uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
    return 1
}

function sub_5fe47f1d(?) payable {
    if 0 == address(stor2):
        return 0
    call address(stor2).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 0x61646d696e000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if arg2 > arg3:
        return 0
    if arg4 > arg5:
        return 0
    uint256(stor23) = arg1 or Mask(96, 160, uint256(stor23))
    sub_27008531 = arg2
    sub_33099ea0 = arg3
    sub_fe50871c = arg4
    sub_8af23c4a = arg5
    return 1
}

function buy(address arg1) payable {
    if 0 == address(exchangeAddress):
        return 0
    if msg.value / sub_20caf32e < sub_27008531:
        return 0
    if msg.value / sub_20caf32e > sub_33099ea0:
        return 0
    call address(exchangeAddress) with:
       value msg.value wei
         gas 0 wei
    if not ext_call.success:
        return 0
    call address(multiAssetAddress).transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
         gas gas_remaining - 25050 wei
        args 0, uint32(stor23), address(arg1), msg.value / sub_20caf32e, symbol, 160, 3, 'Buy'
    require ext_call.return_data[0]
    return 1
}

function updateRefundGas() payable {
    if address(stor2) != 0:
        call address(stor2).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 25050 wei
            args name, 0x7365747570000000000000000000000000000000000000000000000000000000, msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
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

function sub_dfc3b970(?) payable {
    call address(multiAssetAddress).baseUnit(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args symbol
    require ext_call.success
    if 0 == address(stor2):
        return 0
    call address(stor2).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
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

function sell(address arg1, uint256 arg2) payable {
    if 0 == address(exchangeAddress):
        return 0
    if arg2 < sub_fe50871c:
        return 0
    if arg2 > sub_8af23c4a:
        return 0
    call address(multiAssetAddress).transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
         gas gas_remaining - 25050 wei
        args 0, uint32(msg.sender), address(exchangeAddress), arg2, symbol, 160, 4, 0x53656c6c00000000000000000000000000000000000000000000000000000000
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    call address(treasuryAddress).withdrawWithReference(address rg1, uint256 rg2, string rg3) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg2 * sub_a6c4d737, 96, 4, 0x53656c6c00000000000000000000000000000000000000000000000000000000
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}

function setOperationsCallGas(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, uint256 arg11) payable {
    if 0 == address(stor2):
        return 0
    call address(stor2).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 0x7365747570000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    transferCallGas = arg1
    transferFromCallGas = arg2
    transferToICAPCallGas = arg3
    transferFromToICAPCallGas = arg4
    transferWithReferenceCallGas = arg5
    transferFromWithReferenceCallGas = arg6
    transferToICAPWithReferenceCallGas = arg7
    transferFromToICAPWithReferenceCallGas = arg8
    approveCallGas = arg9
    forwardCallGas = arg10
    setCosignerCallGas = arg11
    return 1
}

function takeFee(address arg1, uint256 arg2, string arg3) payable {
    if address(stor2) != 0:
        call address(stor2).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 25050 wei
            args name, 'fee', msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            if 0 == address(feeAddress):
                return 1
            if address(feeAddress) == arg1:
                return 1
            call address(multiAssetAddress).transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 25050 wei
                args address(arg1), address(feeAddress), arg2, symbol, Array(len=arg3.length, data=arg3[all])
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
    if address(stor2) != 0:
        call address(stor2).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
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
                    call address(multiAssetAddress).transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 25050 wei
                        args 0, uint32(msg.sender), address(feeAddress), 1, symbol, 160, 15, 'Update fee conf', mem[371 len 17]
                    require ext_call.success
                    if ext_call.return_data[0]:
                        sub_580c7adc = 0
            return 0
        else:
            return 0
    else:
        return 0
}

function checkSetCosignerAddress(address arg1) payable {
    call address(multiAssetAddress).proxySetCosignerAddress(address rg1, bytes32 rg2) with:
         gas gas_remaining - 25050 wei
        args address(arg1), symbol
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if address(feeAddress) != 0:
        if address(feeAddress) != msg.sender:
            mem[356] = mem[376 len 12]
            call address(multiAssetAddress).transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 25050 wei
                args 0, uint32(msg.sender), address(feeAddress), ((setCosignerCallGas * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, symbol, 160, 12, 'Cosigner fee', mem[368 len 20]
            require ext_call.success
            if not ext_call.return_data[0]:
                return 1, 0
    call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args tx.origin, (setCosignerCallGas * block.gasprice) + (refundGas * block.gasprice)
    require ext_call.success
    return 1, bool(ext_call.return_data[0])
}

function checkApprove(address arg1, uint256 arg2) payable {
    call address(multiAssetAddress).proxyApprove(address rg1, uint256 rg2, bytes32 rg3) with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2, symbol
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if address(feeAddress) != 0:
        if address(feeAddress) != msg.sender:
            mem[356] = mem[377 len 11]
            call address(multiAssetAddress).transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 25050 wei
                args 0, uint32(msg.sender), address(feeAddress), ((approveCallGas * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, symbol, 160, 11, 'Approve fee', mem[367 len 21]
            require ext_call.success
            if not ext_call.return_data[0]:
                return 1, 0
    call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
    require ext_call.success
    return 1, bool(ext_call.return_data[0])
}

function checkTransfer(address arg1, uint256 arg2) payable {
    call address(multiAssetAddress).proxyTransferWithReference(address rg1, uint256 rg2, bytes32 rg3, string rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg2, symbol, 128, 0
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if address(feeAddress) != 0:
        if address(feeAddress) != msg.sender:
            mem[356] = mem[376 len 12]
            call address(multiAssetAddress).transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 25050 wei
                args 0, uint32(msg.sender), address(feeAddress), ((transferCallGas * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, symbol, 160, 12, Mask(96, 0, 'Transfer fee'), mem[368 len 20]
            require ext_call.success
            if not ext_call.return_data[0]:
                return 1, 0
    call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args tx.origin, (transferCallGas * block.gasprice) + (refundGas * block.gasprice)
    require ext_call.success
    return 1, bool(ext_call.return_data[0])
}

function checkTransferToICAP(bytes32 arg1, uint256 arg2) payable {
    call address(multiAssetAddress).proxyTransferToICAPWithReference(bytes32 rg1, uint256 rg2, string rg3) with:
         gas gas_remaining - 25050 wei
        args 0, uint32(arg1), arg2, 96, 0
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if address(feeAddress) != 0:
        if address(feeAddress) != msg.sender:
            mem[356] = mem[376 len 12]
            call address(multiAssetAddress).transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 25050 wei
                args 0, uint32(msg.sender), address(feeAddress), ((transferToICAPCallGas * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, symbol, 160, 12, Mask(96, 0, 'Transfer fee'), mem[368 len 20]
            require ext_call.success
            if not ext_call.return_data[0]:
                return 1, 0
    call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args tx.origin, (transferToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
    require ext_call.success
    return 1, bool(ext_call.return_data[0])
}

function checkTransferFromToICAP(address arg1, bytes32 arg2, uint256 arg3) payable {
    call address(multiAssetAddress).proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg2, arg3, 128, 0
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if address(feeAddress) != 0:
        if address(feeAddress) != arg1:
            mem[356] = mem[376 len 12]
            call address(multiAssetAddress).transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 25050 wei
                args 0, 0, address(feeAddress), ((transferFromToICAPCallGas * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, symbol, 160, 12, Mask(96, 0, 'Transfer fee'), mem[368 len 20]
            require ext_call.success
            if not ext_call.return_data[0]:
                return 1, 0
    call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args tx.origin, (transferFromToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
    require ext_call.success
    return 1, bool(ext_call.return_data[0])
}

function checkTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    call address(multiAssetAddress).proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
         gas gas_remaining - 25050 wei
        args 0, 0, address(arg2), arg3, symbol, 160, 0
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if address(feeAddress) != 0:
        if address(feeAddress) != arg1:
            mem[356] = mem[376 len 12]
            call address(multiAssetAddress).transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 25050 wei
                args 0, 0, address(feeAddress), ((transferFromCallGas * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, symbol, 160, 12, Mask(96, 0, 'Transfer fee'), mem[368 len 20]
            require ext_call.success
            if not ext_call.return_data[0]:
                return 1, 0
    call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args tx.origin, (transferFromCallGas * block.gasprice) + (refundGas * block.gasprice)
    require ext_call.success
    return 1, bool(ext_call.return_data[0])
}

function checkTransferToICAPWithReference(bytes32 arg1, uint256 arg2, string arg3) payable {
    mem[ceil32(arg3.length) + 260 len arg3.length] = arg3[all]
    call address(multiAssetAddress).proxyTransferToICAPWithReference(bytes32 rg1, uint256 rg2, string rg3) with:
         gas gas_remaining - 25050 wei
        args arg1, arg2, Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if address(feeAddress) != 0:
        if address(feeAddress) != msg.sender:
            mem[ceil32(arg3.length) + 388] = mem[ceil32(arg3.length) + 408 len 12]
            call address(multiAssetAddress).transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 25050 wei
                args msg.sender, address(feeAddress), ((transferToICAPWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, symbol, Array(len=12, data=mem[ceil32(arg3.length) + 388])
            require ext_call.success
            if not ext_call.return_data[0]:
                return 1, 0
    call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args tx.origin, (transferToICAPWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
    require ext_call.success
    return 1, bool(ext_call.return_data[0])
}

function checkTransferWithReference(address arg1, uint256 arg2, string arg3) payable {
    mem[ceil32(arg3.length) + 292 len arg3.length] = arg3[all]
    call address(multiAssetAddress).proxyTransferWithReference(address rg1, uint256 rg2, bytes32 rg3, string rg4) with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2, symbol, Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if address(feeAddress) != 0:
        if address(feeAddress) != msg.sender:
            mem[ceil32(arg3.length) + 388] = mem[ceil32(arg3.length) + 408 len 12]
            call address(multiAssetAddress).transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 25050 wei
                args msg.sender, address(feeAddress), ((transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, symbol, Array(len=12, data=mem[ceil32(arg3.length) + 388])
            require ext_call.success
            if not ext_call.return_data[0]:
                return 1, 0
    call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
    require ext_call.success
    return 1, bool(ext_call.return_data[0])
}

function checkTransferFromToICAPWithReference(address arg1, bytes32 arg2, uint256 arg3, string arg4) payable {
    mem[ceil32(arg4.length) + 292 len arg4.length] = arg4[all]
    call address(multiAssetAddress).proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2, arg3, Array(len=arg4.length, data=arg4[all])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if address(feeAddress) != 0:
        if address(feeAddress) != arg1:
            mem[ceil32(arg4.length) + 388] = mem[ceil32(arg4.length) + 408 len 12]
            call address(multiAssetAddress).transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 25050 wei
                args address(arg1), address(feeAddress), ((transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, symbol, Array(len=12, data=mem[ceil32(arg4.length) + 388])
            require ext_call.success
            if not ext_call.return_data[0]:
                return 1, 0
    call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
    require ext_call.success
    return 1, bool(ext_call.return_data[0])
}

function checkTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4) payable {
    mem[ceil32(arg4.length) + 324 len arg4.length] = arg4[all]
    call address(multiAssetAddress).proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
         gas gas_remaining - 25050 wei
        args address(arg1), address(arg2), arg3, symbol, Array(len=arg4.length, data=arg4[all])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if address(feeAddress) != 0:
        if address(feeAddress) != arg1:
            mem[ceil32(arg4.length) + 388] = mem[ceil32(arg4.length) + 408 len 12]
            call address(multiAssetAddress).transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 25050 wei
                args address(arg1), address(feeAddress), ((transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, symbol, Array(len=12, data=mem[ceil32(arg4.length) + 388])
            require ext_call.success
            if not ext_call.return_data[0]:
                return 1, 0
    call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
    require ext_call.success
    return 1, bool(ext_call.return_data[0])
}

function approve(address arg1, uint256 arg2) payable {
    call address(multiAssetAddress).proxyApprove(address rg1, uint256 rg2, bytes32 rg3) with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2, symbol
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if 0 == address(feeAddress):
        call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
        require ext_call.success
    else:
        if address(feeAddress) == msg.sender:
            call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
                 gas gas_remaining - 25050 wei
                args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
            require ext_call.success
        else:
            mem[356] = mem[377 len 11]
            call address(multiAssetAddress).transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 25050 wei
                args 0, uint32(msg.sender), address(feeAddress), ((approveCallGas * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, symbol, 160, 11, 'Approve fee', mem[367 len 21]
            require ext_call.success
            if ext_call.return_data[0]:
                call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
                     gas gas_remaining - 25050 wei
                    args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
                require ext_call.success
    return 1
}

function setCosignerAddress(address arg1) payable {
    call address(multiAssetAddress).proxySetCosignerAddress(address rg1, bytes32 rg2) with:
         gas gas_remaining - 25050 wei
        args address(arg1), symbol
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if 0 == address(feeAddress):
        call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args tx.origin, (setCosignerCallGas * block.gasprice) + (refundGas * block.gasprice)
        require ext_call.success
    else:
        if address(feeAddress) == msg.sender:
            call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
                 gas gas_remaining - 25050 wei
                args tx.origin, (setCosignerCallGas * block.gasprice) + (refundGas * block.gasprice)
            require ext_call.success
        else:
            mem[356] = mem[376 len 12]
            call address(multiAssetAddress).transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 25050 wei
                args 0, uint32(msg.sender), address(feeAddress), ((setCosignerCallGas * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, symbol, 160, 12, 'Cosigner fee', mem[368 len 20]
            require ext_call.success
            if ext_call.return_data[0]:
                call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
                     gas gas_remaining - 25050 wei
                    args tx.origin, (setCosignerCallGas * block.gasprice) + (refundGas * block.gasprice)
                require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    call address(multiAssetAddress).proxyTransferWithReference(address rg1, uint256 rg2, bytes32 rg3, string rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg2, symbol, 128, 0
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if 0 == address(feeAddress):
        call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args tx.origin, (transferCallGas * block.gasprice) + (refundGas * block.gasprice)
        require ext_call.success
    else:
        if address(feeAddress) == msg.sender:
            call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
                 gas gas_remaining - 25050 wei
                args tx.origin, (transferCallGas * block.gasprice) + (refundGas * block.gasprice)
            require ext_call.success
        else:
            mem[356] = mem[376 len 12]
            call address(multiAssetAddress).transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 25050 wei
                args 0, uint32(msg.sender), address(feeAddress), ((transferCallGas * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, symbol, 160, 12, Mask(96, 0, 'Transfer fee'), mem[368 len 20]
            require ext_call.success
            if ext_call.return_data[0]:
                call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
                     gas gas_remaining - 25050 wei
                    args tx.origin, (transferCallGas * block.gasprice) + (refundGas * block.gasprice)
                require ext_call.success
    return 1
}

function transferToICAP(bytes32 arg1, uint256 arg2) payable {
    call address(multiAssetAddress).proxyTransferToICAPWithReference(bytes32 rg1, uint256 rg2, string rg3) with:
         gas gas_remaining - 25050 wei
        args 0, uint32(arg1), arg2, 96, 0
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if 0 == address(feeAddress):
        call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args tx.origin, (transferToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
        require ext_call.success
    else:
        if address(feeAddress) == msg.sender:
            call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
                 gas gas_remaining - 25050 wei
                args tx.origin, (transferToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
            require ext_call.success
        else:
            mem[356] = mem[376 len 12]
            call address(multiAssetAddress).transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 25050 wei
                args 0, uint32(msg.sender), address(feeAddress), ((transferToICAPCallGas * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, symbol, 160, 12, Mask(96, 0, 'Transfer fee'), mem[368 len 20]
            require ext_call.success
            if ext_call.return_data[0]:
                call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
                     gas gas_remaining - 25050 wei
                    args tx.origin, (transferToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
                require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    call address(multiAssetAddress).proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
         gas gas_remaining - 25050 wei
        args 0, 0, address(arg2), arg3, symbol, 160, 0
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if 0 == address(feeAddress):
        call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args tx.origin, (transferFromCallGas * block.gasprice) + (refundGas * block.gasprice)
        require ext_call.success
    else:
        if address(feeAddress) == arg1:
            call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
                 gas gas_remaining - 25050 wei
                args tx.origin, (transferFromCallGas * block.gasprice) + (refundGas * block.gasprice)
            require ext_call.success
        else:
            mem[356] = mem[376 len 12]
            call address(multiAssetAddress).transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 25050 wei
                args 0, 0, address(feeAddress), ((transferFromCallGas * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, symbol, 160, 12, Mask(96, 0, 'Transfer fee'), mem[368 len 20]
            require ext_call.success
            if ext_call.return_data[0]:
                call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
                     gas gas_remaining - 25050 wei
                    args tx.origin, (transferFromCallGas * block.gasprice) + (refundGas * block.gasprice)
                require ext_call.success
    return 1
}

function transferFromToICAP(address arg1, bytes32 arg2, uint256 arg3) payable {
    call address(multiAssetAddress).proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg2, arg3, 128, 0
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if 0 == address(feeAddress):
        call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args tx.origin, (transferFromToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
        require ext_call.success
    else:
        if address(feeAddress) == arg1:
            call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
                 gas gas_remaining - 25050 wei
                args tx.origin, (transferFromToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
            require ext_call.success
        else:
            mem[356] = mem[376 len 12]
            call address(multiAssetAddress).transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 25050 wei
                args 0, 0, address(feeAddress), ((transferFromToICAPCallGas * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, symbol, 160, 12, Mask(96, 0, 'Transfer fee'), mem[368 len 20]
            require ext_call.success
            if ext_call.return_data[0]:
                call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
                     gas gas_remaining - 25050 wei
                    args tx.origin, (transferFromToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
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
            call address(multiAssetAddress).transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 25050 wei
                args msg.sender, address(feeAddress), ((forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, symbol, Array(len=11, data=mem[ceil32(calldata.size) + 388])
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
    call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferWithReference(address arg1, uint256 arg2, string arg3) payable {
    mem[ceil32(arg3.length) + 292 len arg3.length] = arg3[all]
    call address(multiAssetAddress).proxyTransferWithReference(address rg1, uint256 rg2, bytes32 rg3, string rg4) with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2, symbol, Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if 0 == address(feeAddress):
        call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
        require ext_call.success
    else:
        if address(feeAddress) == msg.sender:
            call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
                 gas gas_remaining - 25050 wei
                args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
            require ext_call.success
        else:
            mem[ceil32(arg3.length) + 388] = mem[ceil32(arg3.length) + 408 len 12]
            call address(multiAssetAddress).transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 25050 wei
                args msg.sender, address(feeAddress), ((transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, symbol, Array(len=12, data=mem[ceil32(arg3.length) + 388])
            require ext_call.success
            if ext_call.return_data[0]:
                call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
                     gas gas_remaining - 25050 wei
                    args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                require ext_call.success
    return 1
}

function transferToICAPWithReference(bytes32 arg1, uint256 arg2, string arg3) payable {
    mem[ceil32(arg3.length) + 260 len arg3.length] = arg3[all]
    call address(multiAssetAddress).proxyTransferToICAPWithReference(bytes32 rg1, uint256 rg2, string rg3) with:
         gas gas_remaining - 25050 wei
        args arg1, arg2, Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if 0 == address(feeAddress):
        call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args tx.origin, (transferToICAPWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
        require ext_call.success
    else:
        if address(feeAddress) == msg.sender:
            call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
                 gas gas_remaining - 25050 wei
                args tx.origin, (transferToICAPWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
            require ext_call.success
        else:
            mem[ceil32(arg3.length) + 388] = mem[ceil32(arg3.length) + 408 len 12]
            call address(multiAssetAddress).transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 25050 wei
                args msg.sender, address(feeAddress), ((transferToICAPWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, symbol, Array(len=12, data=mem[ceil32(arg3.length) + 388])
            require ext_call.success
            if ext_call.return_data[0]:
                call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
                     gas gas_remaining - 25050 wei
                    args tx.origin, (transferToICAPWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                require ext_call.success
    return 1
}

function transferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4) payable {
    mem[ceil32(arg4.length) + 324 len arg4.length] = arg4[all]
    call address(multiAssetAddress).proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
         gas gas_remaining - 25050 wei
        args address(arg1), address(arg2), arg3, symbol, Array(len=arg4.length, data=arg4[all])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if 0 == address(feeAddress):
        call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
        require ext_call.success
    else:
        if address(feeAddress) == arg1:
            call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
                 gas gas_remaining - 25050 wei
                args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
            require ext_call.success
        else:
            mem[ceil32(arg4.length) + 388] = mem[ceil32(arg4.length) + 408 len 12]
            call address(multiAssetAddress).transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 25050 wei
                args address(arg1), address(feeAddress), ((transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, symbol, Array(len=12, data=mem[ceil32(arg4.length) + 388])
            require ext_call.success
            if ext_call.return_data[0]:
                call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
                     gas gas_remaining - 25050 wei
                    args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                require ext_call.success
    return 1
}

function transferFromToICAPWithReference(address arg1, bytes32 arg2, uint256 arg3, string arg4) payable {
    mem[ceil32(arg4.length) + 292 len arg4.length] = arg4[all]
    call address(multiAssetAddress).proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2, arg3, Array(len=arg4.length, data=arg4[all])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if 0 == address(feeAddress):
        call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
        require ext_call.success
    else:
        if address(feeAddress) == arg1:
            call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
                 gas gas_remaining - 25050 wei
                args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
            require ext_call.success
        else:
            mem[ceil32(arg4.length) + 388] = mem[ceil32(arg4.length) + 408 len 12]
            call address(multiAssetAddress).transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 25050 wei
                args address(arg1), address(feeAddress), ((transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, symbol, Array(len=12, data=mem[ceil32(arg4.length) + 388])
            require ext_call.success
            if ext_call.return_data[0]:
                call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
                     gas gas_remaining - 25050 wei
                    args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                require ext_call.success
    return 1
}



}
