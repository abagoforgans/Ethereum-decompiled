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

function _fallback() payable {
    stor4 = 21 * 10^9
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
    return code.data[89 len 7158]
}



// =====================  Runtime code  =====================


address multiAssetAddress;
uint256 stor0;
uint256 symbol;
address stor2;
uint256 stor2;
uint256 name;
uint256 txGasPriceLimit;
uint256 refundGas;
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
address treasuryAddress;
uint256 stor17;
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

function txGasPriceLimit() payable {
    return txGasPriceLimit
}

function approveCallGas() payable {
    return approveCallGas
}

function refundGas() payable {
    return refundGas
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

function symbol() payable {
    return symbol
}

function transferWithReferenceCallGas() payable {
    return transferWithReferenceCallGas
}

function transferFromToICAPWithReferenceCallGas() payable {
    return transferFromToICAPWithReferenceCallGas
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
    if address(multiAssetAddress) == msg.sender:
        emit Approve(arg3, arg1, arg2);
}

function emitTransfer(address arg1, address arg2, uint256 arg3) payable {
    if address(multiAssetAddress) == msg.sender:
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

function setCosignerAddress(address arg1) payable {
    call address(multiAssetAddress).proxySetCosignerAddress(address rg1, bytes32 rg2) with:
         gas gas_remaining - 25050 wei
        args address(arg1), symbol
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice <= txGasPriceLimit:
        call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args tx.origin, (setCosignerCallGas * block.gasprice) + (refundGas * block.gasprice)
        require ext_call.success
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    call address(multiAssetAddress).proxyApprove(address rg1, uint256 rg2, bytes32 rg3) with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2, symbol
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice <= txGasPriceLimit:
        call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
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

function transfer(address arg1, uint256 arg2) payable {
    call address(multiAssetAddress).proxyTransferWithReference(address rg1, uint256 rg2, bytes32 rg3, string rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg2, symbol, 128, 0
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice <= txGasPriceLimit:
        call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args tx.origin, (transferCallGas * block.gasprice) + (refundGas * block.gasprice)
        require ext_call.success
    return 1
}

function checkSetCosignerAddress(address arg1) payable {
    call address(multiAssetAddress).proxySetCosignerAddress(address rg1, bytes32 rg2) with:
         gas gas_remaining - 25050 wei
        args address(arg1), symbol
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice > txGasPriceLimit:
        return 1, 0
    call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args tx.origin, (setCosignerCallGas * block.gasprice) + (refundGas * block.gasprice)
    require ext_call.success
    return 1, bool(ext_call.return_data[0])
}

function transferToICAP(bytes32 arg1, uint256 arg2) payable {
    call address(multiAssetAddress).proxyTransferToICAPWithReference(bytes32 rg1, uint256 rg2, string rg3) with:
         gas gas_remaining - 25050 wei
        args 0, uint32(arg1), arg2, 96, 0
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice <= txGasPriceLimit:
        call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args tx.origin, (transferToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
        require ext_call.success
    return 1
}

function checkApprove(address arg1, uint256 arg2) payable {
    call address(multiAssetAddress).proxyApprove(address rg1, uint256 rg2, bytes32 rg3) with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2, symbol
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice > txGasPriceLimit:
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
    if block.gasprice > txGasPriceLimit:
        return 1, 0
    call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args tx.origin, (transferCallGas * block.gasprice) + (refundGas * block.gasprice)
    require ext_call.success
    return 1, bool(ext_call.return_data[0])
}

function transferFromToICAP(address arg1, bytes32 arg2, uint256 arg3) payable {
    call address(multiAssetAddress).proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg2, arg3, 128, 0
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice <= txGasPriceLimit:
        call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args tx.origin, (transferFromToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
        require ext_call.success
    return 1
}

function checkTransferToICAP(bytes32 arg1, uint256 arg2) payable {
    call address(multiAssetAddress).proxyTransferToICAPWithReference(bytes32 rg1, uint256 rg2, string rg3) with:
         gas gas_remaining - 25050 wei
        args 0, uint32(arg1), arg2, 96, 0
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice > txGasPriceLimit:
        return 1, 0
    call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args tx.origin, (transferToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
    require ext_call.success
    return 1, bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    call address(multiAssetAddress).proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
         gas gas_remaining - 25050 wei
        args 0, 0, address(arg2), arg3, symbol, 160, 0
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice <= txGasPriceLimit:
        call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args tx.origin, (transferFromCallGas * block.gasprice) + (refundGas * block.gasprice)
        require ext_call.success
    return 1
}

function setupTreasury(address arg1, uint256 arg2) payable {
    if 0 == address(stor2):
        return 0
    call address(stor2).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 0x61646d696e000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if 0 == arg2:
        return 0
    uint256(stor17) = arg1 or Mask(96, 160, uint256(stor17))
    txGasPriceLimit = arg2
    if msg.value <= 0:
        return 1
    call address(treasuryAddress) with:
       value msg.value wei
         gas 0 wei
    require ext_call.success
    return 1
}

function checkTransferFromToICAP(address arg1, bytes32 arg2, uint256 arg3) payable {
    call address(multiAssetAddress).proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg2, arg3, 128, 0
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice > txGasPriceLimit:
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
    if block.gasprice > txGasPriceLimit:
        return 1, 0
    call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args tx.origin, (transferFromCallGas * block.gasprice) + (refundGas * block.gasprice)
    require ext_call.success
    return 1, bool(ext_call.return_data[0])
}

function transferToICAPWithReference(bytes32 arg1, uint256 arg2, string arg3) payable {
    call address(multiAssetAddress).proxyTransferToICAPWithReference(bytes32 rg1, uint256 rg2, string rg3) with:
         gas gas_remaining - 25050 wei
        args arg1, arg2, Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice <= txGasPriceLimit:
        call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args tx.origin, (transferToICAPWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
        require ext_call.success
    return 1
}

function transferWithReference(address arg1, uint256 arg2, string arg3) payable {
    call address(multiAssetAddress).proxyTransferWithReference(address rg1, uint256 rg2, bytes32 rg3, string rg4) with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2, symbol, Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice <= txGasPriceLimit:
        call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
        require ext_call.success
    return 1
}

function checkTransferToICAPWithReference(bytes32 arg1, uint256 arg2, string arg3) payable {
    call address(multiAssetAddress).proxyTransferToICAPWithReference(bytes32 rg1, uint256 rg2, string rg3) with:
         gas gas_remaining - 25050 wei
        args arg1, arg2, Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice > txGasPriceLimit:
        return 1, 0
    call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args tx.origin, (transferToICAPWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
    require ext_call.success
    return 1, bool(ext_call.return_data[0])
}

function checkTransferWithReference(address arg1, uint256 arg2, string arg3) payable {
    call address(multiAssetAddress).proxyTransferWithReference(address rg1, uint256 rg2, bytes32 rg3, string rg4) with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2, symbol, Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice > txGasPriceLimit:
        return 1, 0
    call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
    require ext_call.success
    return 1, bool(ext_call.return_data[0])
}

function transferFromToICAPWithReference(address arg1, bytes32 arg2, uint256 arg3, string arg4) payable {
    call address(multiAssetAddress).proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2, arg3, Array(len=arg4.length, data=arg4[all])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice <= txGasPriceLimit:
        call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
        require ext_call.success
    return 1
}

function transferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4) payable {
    call address(multiAssetAddress).proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
         gas gas_remaining - 25050 wei
        args address(arg1), address(arg2), arg3, symbol, Array(len=arg4.length, data=arg4[all])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice <= txGasPriceLimit:
        call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
        require ext_call.success
    return 1
}

function checkTransferFromToICAPWithReference(address arg1, bytes32 arg2, uint256 arg3, string arg4) payable {
    call address(multiAssetAddress).proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2, arg3, Array(len=arg4.length, data=arg4[all])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice > txGasPriceLimit:
        return 1, 0
    call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
    require ext_call.success
    return 1, bool(ext_call.return_data[0])
}

function checkTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4) payable {
    call address(multiAssetAddress).proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
         gas gas_remaining - 25050 wei
        args address(arg1), address(arg2), arg3, symbol, Array(len=arg4.length, data=arg4[all])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice > txGasPriceLimit:
        return 1, 0
    call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
    require ext_call.success
    return 1, bool(ext_call.return_data[0])
}

function updateRefundGas() payable {
    if address(stor2) != 0:
        call address(stor2).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 25050 wei
            args name, 0x7365747570000000000000000000000000000000000000000000000000000000, msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            if block.gasprice <= txGasPriceLimit:
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
    else:
        return 0
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
    if block.gasprice > txGasPriceLimit:
        return 0
    call address(treasuryAddress).withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
    require ext_call.success
    return bool(ext_call.return_data[0])
}



}
