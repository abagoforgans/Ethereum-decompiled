contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 4159]
}



// =====================  Runtime code  =====================


address contractOwner;
address pendingContractOwner;
uint256 stor1;
mapping of struct assets;
mapping of uint256 symbol;

function getSymbol() payable {
    return symbol[address(msg.sender)]
}

function pendingContractOwner() payable {
    return address(pendingContractOwner)
}

function access(address arg1) payable {
    return symbol[arg1]
}

function symbol() payable {
    return symbol[address(msg.sender)]
}

function assets(bytes32 arg1) payable {
    return assets[arg1].field_0, bool(assets[arg1].field_160), bool(assets[arg1].field_168)
}

function contractOwner() payable {
    return contractOwner
}

function _fallback() payable {
  stop
}

function removeAddress(address arg1) payable {
    if contractOwner != msg.sender:
        return 0
    symbol[address(arg1)] = 0
    return 1
}

function sub_57a12ae5(?) payable {
    if contractOwner != msg.sender:
        return 0
    if not assets[arg2].field_168:
        return 0
    symbol[address(arg1)] = arg2
    return 1
}

function multiAsset() payable {
    call assets[stor3[address(msg.sender)]].field_0.multiAsset() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function sub_69b57647(?) payable {
    if contractOwner != msg.sender:
        return 0
    if 0 == assets[arg1].field_0:
        return 0
    assets[arg1].field_160 = arg2
    assets[arg1].field_168 = Mask(88, 0, arg3)
    assets[arg1].field_176 = Mask(80, 16, arg2) >> 16
    assets[arg1].field_176 = 0
    return 1
}

function changeContractOwnership(address arg1) payable {
    if msg.value > 0:
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
    if contractOwner != msg.sender:
        return 0
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
    return 1
}

function balanceOf(address arg1) payable {
    call assets[stor3[address(msg.sender)]].field_0.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    if not assets[stor3[address(msg.sender)]].field_160:
        return ext_call.return_data[0]
    return (eth.balance(this.address) + ext_call.return_data[0])
}

function claimContractOwnership() payable {
    if msg.value > 0:
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
    if address(pendingContractOwner) != msg.sender:
        return 0
    contractOwner = address(pendingContractOwner)
    address(pendingContractOwner) = 0
    return 1
}

function sub_8d2ffdc9(?) payable {
    call assets[stor3[address(msg.sender)]].field_0.multiAsset() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).registryICAP() with:
         gas gas_remaining - 25050 wei
    call address(ext_call.return_data[0]).0x9fda5b66 with:
         gas gas_remaining - 25050 wei
        args sha3(Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 4) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 5) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 6) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256)
    return ext_call.return_data[0]
}

function forwardCall(address arg1, uint256 arg2, bytes arg3) payable {
    mem[128 len arg3.length] = arg3[all]
    if contractOwner != msg.sender:
        return 0
    mem[ceil32(arg3.length) + 128 len arg3.length] = arg3[all]
    if not arg3.length % 32:
        call arg1 with:
           value arg2 wei
             gas gas_remaining - 34050 wei
            args arg3[all]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
           value arg2 wei
             gas gas_remaining - 34050 wei
            args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
    if ext_call.success:
        return 1
    if msg.value <= 0:
        return 0
    call msg.sender with:
       value msg.value wei
         gas gas_remaining - 34050 wei
    require ext_call.success
    return 0
}

function transfer(address arg1, uint256 arg2) payable {
    if not assets[stor3[address(msg.sender)]].field_168:
        return 0
    if not assets[stor3[address(msg.sender)]].field_160:
        call assets[stor3[address(msg.sender)]].field_0.0xac35caee with:
             gas gas_remaining - 34050 wei
            args address(arg1), arg2, 96, 0
    else:
        call assets[stor3[address(msg.sender)]].field_0.0x70a08231 with:
             gas gas_remaining - 25050 wei
            args this.address
        require ext_call.success
        if ext_call.return_data[0] >= arg2:
            call assets[stor3[address(msg.sender)]].field_0.0xac35caee with:
                 gas gas_remaining - 34050 wei
                args address(arg1), arg2, 96, 0
        else:
            call assets[stor3[address(msg.sender)]].field_0.0xac35caee with:
               value eth.balance(this.address) wei
                 gas gas_remaining - 34050 wei
                args address(arg1), arg2, 96, 0
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit 0xae7443dd: arg2, 64, 0, msg.sender, arg1, symbol[address(msg.sender)]
    return 1
}

function transferWithReference(address arg1, uint256 arg2, string arg3) payable {
    if not assets[stor3[address(msg.sender)]].field_168:
        return 0
    if not assets[stor3[address(msg.sender)]].field_160:
        call assets[stor3[address(msg.sender)]].field_0.0xac35caee with:
             gas gas_remaining - 34050 wei
            args address(arg1), arg2, Array(len=arg3.length, data=arg3[all])
    else:
        call assets[stor3[address(msg.sender)]].field_0.0x70a08231 with:
             gas gas_remaining - 25050 wei
            args this.address
        require ext_call.success
        if ext_call.return_data[0] >= arg2:
            call assets[stor3[address(msg.sender)]].field_0.0xac35caee with:
                 gas gas_remaining - 34050 wei
                args address(arg1), arg2, Array(len=arg3.length, data=arg3[all])
        else:
            call assets[stor3[address(msg.sender)]].field_0.0xac35caee with:
               value eth.balance(this.address) wei
                 gas gas_remaining - 34050 wei
                args address(arg1), arg2, Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit 0xae7443dd: arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1, symbol[address(msg.sender)]
    return 1
}

function sub_28f256b4(?) payable {
    if contractOwner != msg.sender:
        return 0
    call arg1.0x95d89b41 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if assets[ext_call.return_data[0]].field_0 != 0:
        return 0
    call arg1.multiAsset() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if 0 == ext_call.return_data[12 len 20]:
        return 0
    call arg1.multiAsset() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).'/U=1' with:
         gas gas_remaining - 25050 wei
        args ext_call.return_data[0]
    if not ext_call.return_data[0]:
        return 0
    call arg1.multiAsset() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2, bytes32 rg3) with:
         gas gas_remaining - 25050 wei
        args address(arg1), -1, ext_call.return_data[0]
    if not ext_call.return_data[0]:
        return 0
    assets[ext_call.return_data[0]].field_0 = arg1
    assets[ext_call.return_data[0]].field_160 = arg2
    assets[ext_call.return_data[0]].field_168 = 1
    assets[ext_call.return_data[0]].field_176 = Mask(80, 176, arg1) >> 176
    assets[ext_call.return_data[0]].field_176 = Mask(80, 16, arg2) >> 16
    return 1
}

function transferToICAP(bytes32 arg1, uint256 arg2) payable {
    call assets[stor3[address(msg.sender)]].field_0.multiAsset() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).registryICAP() with:
         gas gas_remaining - 25050 wei
    call address(ext_call.return_data[0]).0x9fda5b66 with:
         gas gas_remaining - 25050 wei
        args sha3(Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 4) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 5) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 6) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256)
    if symbol[address(msg.sender)] != ext_call.return_data[0]:
        return 0
    if not assets[stor3[address(msg.sender)]].field_168:
        return 0
    call assets[stor3[address(msg.sender)]].field_0.multiAsset() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).registryICAP() with:
         gas gas_remaining - 25050 wei
    call address(ext_call.return_data[0]).0x9fda5b66 with:
         gas gas_remaining - 25050 wei
        args sha3(Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 4) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 5) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 6) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256)
    if not assets[ext_call.return_data[0]].field_160:
        call assets[ext_call.return_data[0]].field_0.0x77fe38a4 with:
             gas gas_remaining - 34050 wei
            args arg1, arg2, 96, 0
    else:
        call assets[ext_call.return_data[0]].field_0.0x70a08231 with:
             gas gas_remaining - 25050 wei
            args this.address
        require ext_call.success
        if ext_call.return_data[0] >= arg2:
            call assets[ext_call.return_data[0]].field_0.0x77fe38a4 with:
                 gas gas_remaining - 34050 wei
                args arg1, arg2, 96, 0
        else:
            call assets[ext_call.return_data[0]].field_0.0x77fe38a4 with:
               value eth.balance(this.address) wei
                 gas gas_remaining - 34050 wei
                args arg1, arg2, 96, 0
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit 0x73d7feb5: arg2, 64, 0, msg.sender, arg1
    return 1
}

function transferToICAPWithReference(bytes32 arg1, uint256 arg2, string arg3) payable {
    call assets[stor3[address(msg.sender)]].field_0.multiAsset() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).registryICAP() with:
         gas gas_remaining - 25050 wei
    call address(ext_call.return_data[0]).0x9fda5b66 with:
         gas gas_remaining - 25050 wei
        args sha3(Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 4) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 5) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 6) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256)
    if symbol[address(msg.sender)] != ext_call.return_data[0]:
        return 0
    if not assets[stor3[address(msg.sender)]].field_168:
        return 0
    call assets[stor3[address(msg.sender)]].field_0.multiAsset() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).registryICAP() with:
         gas gas_remaining - 25050 wei
    call address(ext_call.return_data[0]).0x9fda5b66 with:
         gas gas_remaining - 25050 wei
        args sha3(Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 4) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 5) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256, Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 6) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256)
    if not assets[ext_call.return_data[0]].field_160:
        call assets[ext_call.return_data[0]].field_0.0x77fe38a4 with:
             gas gas_remaining - 34050 wei
            args arg1, arg2, Array(len=arg3.length, data=arg3[all])
    else:
        call assets[ext_call.return_data[0]].field_0.0x70a08231 with:
             gas gas_remaining - 25050 wei
            args this.address
        require ext_call.success
        if ext_call.return_data[0] >= arg2:
            call assets[ext_call.return_data[0]].field_0.0x77fe38a4 with:
                 gas gas_remaining - 34050 wei
                args arg1, arg2, Array(len=arg3.length, data=arg3[all])
        else:
            call assets[ext_call.return_data[0]].field_0.0x77fe38a4 with:
               value eth.balance(this.address) wei
                 gas gas_remaining - 34050 wei
                args arg1, arg2, Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit 0x73d7feb5: arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1
    return 1
}



}
