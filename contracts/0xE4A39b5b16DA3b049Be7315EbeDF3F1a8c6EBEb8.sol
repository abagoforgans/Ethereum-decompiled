contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 1429]
}



// =====================  Runtime code  =====================


address contractOwner;
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

function contractOwner() payable {
    return address(contractOwner)
}

function _fallback() payable {
  stop
}

function changeContractOwnership(address arg1) payable {
    if address(contractOwner) != msg.sender:
        return 0
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    return 1
}

function request() payable {
    call address(multiAssetAddress).0xe0873c06 with:
         gas gas_remaining - 25050 wei
        args symbol, 10000
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    call address(multiAssetAddress).0x57cfeeee with:
         gas gas_remaining - 25050 wei
        args msg.sender, 10000, symbol
    require ext_call.success
    return ext_call.return_data[0]
}

function initProxy(address arg1) payable {
    if address(contractOwner) != msg.sender:
        return 0
    call address(multiAssetAddress).0x6489899 with:
         gas gas_remaining - 25050 wei
        args address(arg1), 1, symbol
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    call address(multiAssetAddress).0x30d30c89 with:
         gas gas_remaining - 25050 wei
        args address(arg1), symbol
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_8d0a9fc7(?) payable {
    if address(contractOwner) != msg.sender:
        return 0
    if address(multiAssetAddress) != 0:
        return 0
    call arg1.0x2f553d31 with:
         gas gas_remaining - 25050 wei
        args arg2
    require ext_call.success
    if ext_call.return_data[0]:
        return 0
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
    symbol = arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 388 len arg3.length] = arg3[all]
    if not arg3.length % 32:
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 420 len arg4.length] = arg4[all]
        if not arg4.length % 32:
            call arg1.issueAsset(bytes32 rg1, uint256 rg2, string rg3, string rg4, uint8 rg5, bool rg6) with:
                 gas gas_remaining - 25050 wei
                args arg2, 0, 192, arg3.length + 224, arg5 << 248, 1, arg3.length, arg3[all], arg4.length, arg4[all]
        else:
            mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 420] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 452 len arg4.length % 32]
            call arg1.issueAsset(bytes32 rg1, uint256 rg2, string rg3, string rg4, uint8 rg5, bool rg6) with:
                 gas gas_remaining - 25050 wei
                args arg2, 0, 192, arg3.length + 224, arg5 << 248, 1, arg3.length, arg3[all], arg4.length, arg4[all], mem[ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + arg4.length + 420 len -(arg4.length % 32) + 32]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 388] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 420 len arg3.length % 32]
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 452 len arg4.length] = arg4[all]
        if not arg4.length % 32:
            call arg1.issueAsset(bytes32 rg1, uint256 rg2, string rg3, string rg4, uint8 rg5, bool rg6) with:
                 gas gas_remaining - 25050 wei
                args arg2, 0, 192, floor32(arg3.length) + 256, arg5 << 248, 1, arg3.length, arg3[all], mem[ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 388 len -(arg3.length % 32) + 32], arg4.length, arg4[all]
        else:
            mem[floor32(arg4.length) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
            call arg1.issueAsset(bytes32 rg1, uint256 rg2, string rg3, string rg4, uint8 rg5, bool rg6) with:
                 gas gas_remaining - 25050 wei
                args arg2, 0, 192, floor32(arg3.length) + 256, arg5 << 248, 1, arg3.length, arg3[all], mem[ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 388 len -(arg3.length % 32) + 32], arg4.length, arg4[all], mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + arg4.length + 452 len -(arg4.length % 32) + 32]
    require ext_call.success
    return 1
}



}
