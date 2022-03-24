contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160

function _fallback() payable {
    stor0 = 0
    return code.data[35 len 4047]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
address multiAssetAddress;
uint256 stor1;
uint256 symbol;

function multiAsset() payable {
    return address(multiAssetAddress)
}

function symbol() payable {
    return symbol
}

function _fallback() payable {
  stop
}

function emitApprove(address arg1, address arg2, uint256 arg3) payable {
    if msg.sender == address(multiAssetAddress):
        emit Approve(arg3, arg1, arg2);
}

function emitTransfer(address arg1, address arg2, uint256 arg3) payable {
    if msg.sender == address(multiAssetAddress):
        emit Transfer(arg3, arg1, arg2);
}

function setupStackDepthLib(address arg1) payable {
    if address(stor0) != 0:
        return 0
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    return 1
}

function totalSupply() payable {
    call address(multiAssetAddress).totalSupply(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args symbol
    require ext_call.success
    return ext_call.return_data[0]
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

function setCosignerAddress(address arg1) payable {
    if msg.value > 0:
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
    if tx.origin != msg.sender:
        return 0
    call address(multiAssetAddress).proxySetCosignerAddress(address rg1, bytes32 rg2) with:
         gas gas_remaining - 25050 wei
        args address(arg1), symbol
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function approve(address arg1, uint256 arg2) payable {
    if msg.value > 0:
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
    if tx.origin != msg.sender:
        return 0
    call address(multiAssetAddress).proxyApprove(address rg1, uint256 rg2, bytes32 rg3) with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2, symbol
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function init(address arg1, bytes32 arg2) payable {
    if msg.value > 0:
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
    if address(multiAssetAddress):
        return 0
    call arg1.isCreated(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args arg2
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
    symbol = arg2
    return 1
}

function transferFromToICAP(address arg1, bytes32 arg2, uint256 arg3) payable {
    if msg.value > 0:
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
    if tx.origin != msg.sender:
        return 0
    call address(multiAssetAddress).proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg2, arg3, 128, 0, 0, None
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    if msg.value > 0:
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
    if tx.origin != msg.sender:
        return 0
    call address(multiAssetAddress).proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
         gas gas_remaining - 25050 wei
        args 0, 0, address(arg2), arg3, symbol, 160, 0, None
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFromToICAPWithReference(address arg1, bytes32 arg2, uint256 arg3, string arg4) payable {
    if msg.value > 0:
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
    if tx.origin != msg.sender:
        return 0
    call address(multiAssetAddress).proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2, arg3, Array(len=arg4.length, data=arg4[all])
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4) payable {
    if msg.value > 0:
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
    if tx.origin != msg.sender:
        return 0
    call address(multiAssetAddress).proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
         gas gas_remaining - 25050 wei
        args address(arg1), address(arg2), arg3, symbol, Array(len=arg4.length, data=arg4[all])
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferToICAP(bytes32 arg1, uint256 arg2) payable {
    if msg.value > 0:
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
    if msg.sender == tx.origin:
        call address(multiAssetAddress).proxyTransferToICAPWithReference(bytes32 rg1, uint256 rg2, string rg3) with:
             gas gas_remaining - 25050 wei
            args arg1, arg2, 96, 0
    else:
        call address(multiAssetAddress).0xa48a663c with:
             gas gas_remaining - 25050 wei
            args 0, uint32(msg.sender), arg1, arg2, 128, 0, 0, None
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferToICAPWithReference(bytes32 arg1, uint256 arg2, string arg3) payable {
    if msg.value > 0:
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
    if msg.sender == tx.origin:
        call address(multiAssetAddress).proxyTransferToICAPWithReference(bytes32 rg1, uint256 rg2, string rg3) with:
             gas gas_remaining - 25050 wei
            args arg1, arg2, Array(len=arg3.length, data=arg3[all])
    else:
        call address(multiAssetAddress).0xa48a663c with:
             gas gas_remaining - 25050 wei
            args msg.sender, arg1, arg2, Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) payable {
    if msg.value > 0:
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
    if msg.sender == tx.origin:
        call address(multiAssetAddress).proxyTransferWithReference(address rg1, uint256 rg2, bytes32 rg3, string rg4) with:
             gas gas_remaining - 25050 wei
            args 0, 0, arg2, symbol, 128, 0, 0, None
    else:
        call address(multiAssetAddress).transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
             gas gas_remaining - 25050 wei
            args 0, uint32(msg.sender), address(arg1), arg2, symbol, 160, 0, None
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferWithReference(address arg1, uint256 arg2, string arg3) payable {
    if msg.value > 0:
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
    if msg.sender == tx.origin:
        call address(multiAssetAddress).proxyTransferWithReference(address rg1, uint256 rg2, bytes32 rg3, string rg4) with:
             gas gas_remaining - 25050 wei
            args address(arg1), arg2, symbol, Array(len=arg3.length, data=arg3[all])
    else:
        call address(multiAssetAddress).transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
             gas gas_remaining - 25050 wei
            args msg.sender, address(arg1), arg2, symbol, Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sendToOwner() payable {
    if msg.value <= 0:
        call address(multiAssetAddress).owner(bytes32 rg1) with:
             gas gas_remaining - 25050 wei
            args symbol
        require ext_call.success
    else:
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
        call address(multiAssetAddress).owner(bytes32 rg1) with:
             gas gas_remaining - 25050 wei
            args symbol
    if eth.balance(this.address) <= 0:
        call address(multiAssetAddress).balanceOf(address rg1, bytes32 rg2) with:
             gas gas_remaining - 25050 wei
            args address(ext_call.return_data[0]), symbol
        require ext_call.success
        call address(multiAssetAddress).transfer(address rg1, uint256 rg2, bytes32 rg3) with:
             gas gas_remaining - 25050 wei
            args address(ext_call.return_data[0]), ext_call.return_data[0], symbol
        if not ext_call.return_data[0]:
            return bool(ext_call.return_data[0])
        return 1
    call ext_call.return_data[12 len 20] with:
       value eth.balance(this.address) wei
         gas gas_remaining - 34050 wei
    call address(multiAssetAddress).balanceOf(address rg1, bytes32 rg2) with:
         gas gas_remaining - 25050 wei
        args address(ext_call.return_data[0]), symbol
    require ext_call.success
    call address(multiAssetAddress).transfer(address rg1, uint256 rg2, bytes32 rg3) with:
         gas gas_remaining - 25050 wei
        args address(ext_call.return_data[0]), ext_call.return_data[0], symbol
    if not ext_call.return_data[0]:
        return bool(ext_call.return_data[0])
    return bool(ext_call.success)
}



}
