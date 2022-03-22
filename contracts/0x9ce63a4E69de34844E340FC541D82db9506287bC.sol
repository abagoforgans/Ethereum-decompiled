contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 3080]




// =====================  Runtime code  =====================


address multiAssetAddress;
uint256 stor0;
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
    if address(multiAssetAddress) == msg.sender:
        emit Approve(arg3, arg1, arg2);
}

function emitTransfer(address arg1, address arg2, uint256 arg3) payable {
    if address(multiAssetAddress) == msg.sender:
        emit Transfer(arg3, arg1, arg2);
}

function totalSupply() payable {
    call address(multiAssetAddress).0xb524abcf with:
         gas gas_remaining - 25050 wei
        args symbol
    require ext_call.success
    return ext_call.return_data[0]
}

function balanceOf(address arg1) payable {
    call address(multiAssetAddress).0x4d30b6be with:
         gas gas_remaining - 25050 wei
        args address(arg1), symbol
    require ext_call.success
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) payable {
    call address(multiAssetAddress).0x1c8d5d38 with:
         gas gas_remaining - 25050 wei
        args address(arg1), address(arg2), symbol
    require ext_call.success
    return ext_call.return_data[0]
}

function setCosignerAddress(address arg1) payable {
    call address(multiAssetAddress).0xe82b7cb2 with:
         gas gas_remaining - 25050 wei
        args address(arg1), symbol
    require ext_call.success
    if ext_call.return_data[0]:
        return 1
    else:
        return 0
}

function transferToICAP(bytes32 arg1, uint256 arg2) payable {
    call address(multiAssetAddress).0xc5487661 with:
         gas gas_remaining - 25050 wei
        args arg1, arg2, 96, 0
    require ext_call.success
    if ext_call.return_data[0]:
        return 1
    else:
        return 0
}

function approve(address arg1, uint256 arg2) payable {
    call address(multiAssetAddress).0x4f09eba7 with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2, symbol
    require ext_call.success
    if ext_call.return_data[0]:
        return 1
    else:
        return 0
}

function transfer(address arg1, uint256 arg2) payable {
    call address(multiAssetAddress).0x64ef212e with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg2, symbol, 128, 0, 0, None
    require ext_call.success
    if ext_call.return_data[0]:
        return 1
    else:
        return 0
}

function transferFromToICAP(address arg1, bytes32 arg2, uint256 arg3) payable {
    call address(multiAssetAddress).0xea98e540 with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg2, arg3, 128, 0, 0, None
    require ext_call.success
    if ext_call.return_data[0]:
        return 1
    else:
        return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    call address(multiAssetAddress).0xf0cbe059 with:
         gas gas_remaining - 25050 wei
        args 0, 0, address(arg2), arg3, symbol, 160, 0, None
    require ext_call.success
    if ext_call.return_data[0]:
        return 1
    else:
        return 0
}

function transferToICAPWithReference(bytes32 arg1, uint256 arg2, string arg3) payable {
    call address(multiAssetAddress).0xc5487661 with:
         gas gas_remaining - 25050 wei
        args arg1, arg2, Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    if ext_call.return_data[0]:
        return 1
    else:
        return 0
}

function transferWithReference(address arg1, uint256 arg2, string arg3) payable {
    call address(multiAssetAddress).0x64ef212e with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2, symbol, Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    if ext_call.return_data[0]:
        return 1
    else:
        return 0
}

function init(address arg1, bytes32 arg2) payable {
    if address(multiAssetAddress) != 0:
        return 0
    call arg1.0x2f553d31 with:
         gas gas_remaining - 25050 wei
        args arg2
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    symbol = arg2
    return 1
}

function transferFromToICAPWithReference(address arg1, bytes32 arg2, uint256 arg3, string arg4) payable {
    call address(multiAssetAddress).0xea98e540 with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2, arg3, Array(len=arg4.length, data=arg4[all])
    require ext_call.success
    if ext_call.return_data[0]:
        return 1
    else:
        return 0
}

function transferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4) payable {
    call address(multiAssetAddress).0xf0cbe059 with:
         gas gas_remaining - 25050 wei
        args address(arg1), address(arg2), arg3, symbol, Array(len=arg4.length, data=arg4[all])
    require ext_call.success
    if ext_call.return_data[0]:
        return 1
    else:
        return 0
}

function sendToOwner() payable {
    call address(multiAssetAddress).owner(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args symbol
    require ext_call.success
    call address(multiAssetAddress).0x4d30b6be with:
         gas gas_remaining - 25050 wei
        args address(this.address), symbol
    call address(multiAssetAddress).0x57cfeeee with:
         gas gas_remaining - 25050 wei
        args address(ext_call.return_data[0]), ext_call.return_data[0], symbol
    return ext_call.return_data[0]
}



}
