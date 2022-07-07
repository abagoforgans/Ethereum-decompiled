contract main {




// =====================  Runtime code  =====================


mapping of struct schemeParameters;
address avatarAddress;
address nativeTokenAddress;
address nativeReputationAddress;
address newControllerAddress;
array of struct globalConstraintsPre;
array of struct globalConstraintsPost;
mapping of struct globalConstraintsRegisterPre;
mapping of struct globalConstraintsRegisterPost;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699761;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986688;

function globalConstraintsRegisterPre(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(globalConstraintsRegisterPre[arg1].field_0), globalConstraintsRegisterPre[arg1].field_256
}

function getSchemeParameters(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require avatarAddress == arg2
    return schemeParameters[address(arg1)].field_0
}

function newController() payable {
    return newControllerAddress
}

function globalConstraintsPre(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < globalConstraintsPre.length
    return globalConstraintsPre[arg1].field_0, globalConstraintsPre[arg1].field_256
}

function avatar() payable {
    return avatarAddress
}

function globalConstraintsRegisterPost(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(globalConstraintsRegisterPost[arg1].field_0), globalConstraintsRegisterPost[arg1].field_256
}

function nativeReputation() payable {
    return nativeReputationAddress
}

function getNativeReputation(address arg1) payable {
    require calldata.size - 4 >= 32
    require avatarAddress == arg1
    return nativeReputationAddress
}

function getSchemePermissions(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require avatarAddress == arg2
    return Mask(32, 224, schemeParameters[address(arg1)].field_256)
}

function nativeToken() payable {
    return nativeTokenAddress
}

function globalConstraintsPost(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < globalConstraintsPost.length
    return globalConstraintsPost[arg1].field_0, globalConstraintsPost[arg1].field_256
}

function _fallback() payable {
    revert
}

function schemes(address arg1) payable {
    require calldata.size - 4 >= 32
    return schemeParameters[arg1].field_0, Mask(32, 224, schemeParameters[arg1].field_256)
}

function globalConstraintsCount(address arg1) payable {
    require calldata.size - 4 >= 32
    require avatarAddress == arg1
    return globalConstraintsPre.length, globalConstraintsPost.length
}

function isSchemeRegistered(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require avatarAddress == arg2
    return bool(Mask(1, 224, schemeParameters[address(arg1)].field_256))
}

function isGlobalConstraintRegistered(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require avatarAddress == arg2
    if globalConstraintsRegisterPre[address(arg1)].field_0:
        return bool(globalConstraintsRegisterPre[address(arg1)].field_0)
    return bool(globalConstraintsRegisterPost[address(arg1)].field_0)
}

function unregisterSelf(address arg1) payable {
    require calldata.size - 4 >= 32
    require avatarAddress == arg1
    if not Mask(1, 224, schemeParameters[address(msg.sender)].field_256):
        return 0
    schemeParameters[msg.sender].field_0 = 0
    schemeParameters[msg.sender].field_256 = 0
    emit UnregisterScheme(msg.sender, msg.sender);
    return 1
}

function getGlobalConstraintParameters(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if globalConstraintsRegisterPre[address(arg1)].field_0:
        if globalConstraintsRegisterPre[address(arg1)].field_256 < globalConstraintsPre.length:
            return globalConstraintsPre[stor7[address(arg1)].field_256].field_256
    else:
        if not globalConstraintsRegisterPost[address(arg1)].field_0:
            return 0
        if globalConstraintsRegisterPost[address(arg1)].field_256 < globalConstraintsPost.length:
            return globalConstraintsPost[stor8[address(arg1)].field_256].field_256
    revert
}

function metaData(string arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require Mask(1, 228, schemeParameters[msg.sender].field_256) == 0x1000000000000000000000000000000000000000000000000000000000
    require avatarAddress == arg2
    require ext_code.size(avatarAddress)
    call avatarAddress.0x890ac46c with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sendEther(uint256 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require Mask(1, 224, schemeParameters[msg.sender].field_256) == 0x100000000000000000000000000000000000000000000000000000000
    idx = 0
    while idx < globalConstraintsPre.length:
        mem[0] = 5
        mem[100] = msg.sender
        mem[132] = globalConstraintsPre[idx].field_256
        mem[164] = 'sendEther'
        require ext_code.size(globalConstraintsPre[idx].field_0)
        call globalConstraintsPre[idx].field_0.pre(address arg1, bytes32 arg2, bytes32 arg3) with:
             gas gas_remaining wei
            args msg.sender, globalConstraintsPre[idx].field_256, 'sendEther'
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    require avatarAddress == arg3
    require ext_code.size(avatarAddress)
    call avatarAddress.0xcb16d4a2 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < globalConstraintsPost.length:
        mem[0] = 6
        mem[100] = msg.sender
        mem[132] = globalConstraintsPost[idx].field_256
        mem[164] = 'sendEther'
        require ext_code.size(globalConstraintsPost[idx].field_0)
        call globalConstraintsPost[idx].field_0.post(address arg1, bytes32 arg2, bytes32 arg3) with:
             gas gas_remaining wei
            args msg.sender, globalConstraintsPost[idx].field_256, 'sendEther'
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    return bool(ext_call.return_data[0])
}

function mintTokens(uint256 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require Mask(1, 224, schemeParameters[msg.sender].field_256) == 0x100000000000000000000000000000000000000000000000000000000
    idx = 0
    while idx < globalConstraintsPre.length:
        mem[0] = 5
        mem[100] = msg.sender
        mem[132] = globalConstraintsPre[idx].field_256
        mem[164] = 'mintTokens'
        require ext_code.size(globalConstraintsPre[idx].field_0)
        call globalConstraintsPre[idx].field_0.pre(address arg1, bytes32 arg2, bytes32 arg3) with:
             gas gas_remaining wei
            args msg.sender, globalConstraintsPre[idx].field_256, 'mintTokens'
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    require avatarAddress == arg3
    emit MintTokens(arg1, msg.sender, arg2);
    require ext_code.size(nativeTokenAddress)
    call nativeTokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < globalConstraintsPost.length:
        mem[0] = 6
        mem[100] = msg.sender
        mem[132] = globalConstraintsPost[idx].field_256
        mem[164] = 'mintTokens'
        require ext_code.size(globalConstraintsPost[idx].field_0)
        call globalConstraintsPost[idx].field_0.post(address arg1, bytes32 arg2, bytes32 arg3) with:
             gas gas_remaining wei
            args msg.sender, globalConstraintsPost[idx].field_256, 'mintTokens'
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    return bool(ext_call.return_data[0])
}

function externalTokenTransfer(address arg1, address arg2, uint256 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require Mask(1, 224, schemeParameters[msg.sender].field_256) == 0x100000000000000000000000000000000000000000000000000000000
    idx = 0
    while idx < globalConstraintsPre.length:
        mem[0] = 5
        mem[100] = msg.sender
        mem[132] = globalConstraintsPre[idx].field_256
        mem[164] = 'externalTokenTransfer'
        require ext_code.size(globalConstraintsPre[idx].field_0)
        call globalConstraintsPre[idx].field_0.pre(address arg1, bytes32 arg2, bytes32 arg3) with:
             gas gas_remaining wei
            args msg.sender, globalConstraintsPre[idx].field_256, 'externalTokenTransfer'
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    require avatarAddress == arg4
    require ext_code.size(avatarAddress)
    call avatarAddress.0xdab0efff with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < globalConstraintsPost.length:
        mem[0] = 6
        mem[100] = msg.sender
        mem[132] = globalConstraintsPost[idx].field_256
        mem[164] = 'externalTokenTransfer'
        require ext_code.size(globalConstraintsPost[idx].field_0)
        call globalConstraintsPost[idx].field_0.post(address arg1, bytes32 arg2, bytes32 arg3) with:
             gas gas_remaining wei
            args msg.sender, globalConstraintsPost[idx].field_256, 'externalTokenTransfer'
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    return bool(ext_call.return_data[0])
}

function burnReputation(uint256 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require Mask(1, 224, schemeParameters[msg.sender].field_256) == 0x100000000000000000000000000000000000000000000000000000000
    idx = 0
    while idx < globalConstraintsPre.length:
        mem[0] = 5
        mem[100] = msg.sender
        mem[132] = globalConstraintsPre[idx].field_256
        mem[164] = 'burnReputation'
        require ext_code.size(globalConstraintsPre[idx].field_0)
        call globalConstraintsPre[idx].field_0.pre(address arg1, bytes32 arg2, bytes32 arg3) with:
             gas gas_remaining wei
            args msg.sender, globalConstraintsPre[idx].field_256, 'burnReputation'
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    require avatarAddress == arg3
    emit BurnReputation(arg1, msg.sender, arg2);
    require ext_code.size(nativeReputationAddress)
    call nativeReputationAddress.0x9dc29fac with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < globalConstraintsPost.length:
        mem[0] = 6
        mem[100] = msg.sender
        mem[132] = globalConstraintsPost[idx].field_256
        mem[164] = 'burnReputation'
        require ext_code.size(globalConstraintsPost[idx].field_0)
        call globalConstraintsPost[idx].field_0.post(address arg1, bytes32 arg2, bytes32 arg3) with:
             gas gas_remaining wei
            args msg.sender, globalConstraintsPost[idx].field_256, 'burnReputation'
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    return bool(ext_call.return_data[0])
}

function mintReputation(uint256 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require Mask(1, 224, schemeParameters[msg.sender].field_256) == 0x100000000000000000000000000000000000000000000000000000000
    idx = 0
    while idx < globalConstraintsPre.length:
        mem[0] = 5
        mem[100] = msg.sender
        mem[132] = globalConstraintsPre[idx].field_256
        mem[164] = 'mintReputation'
        require ext_code.size(globalConstraintsPre[idx].field_0)
        call globalConstraintsPre[idx].field_0.pre(address arg1, bytes32 arg2, bytes32 arg3) with:
             gas gas_remaining wei
            args msg.sender, globalConstraintsPre[idx].field_256, 'mintReputation'
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    require avatarAddress == arg3
    emit MintReputation(arg1, msg.sender, arg2);
    require ext_code.size(nativeReputationAddress)
    call nativeReputationAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < globalConstraintsPost.length:
        mem[0] = 6
        mem[100] = msg.sender
        mem[132] = globalConstraintsPost[idx].field_256
        mem[164] = 'mintReputation'
        require ext_code.size(globalConstraintsPost[idx].field_0)
        call globalConstraintsPost[idx].field_0.post(address arg1, bytes32 arg2, bytes32 arg3) with:
             gas gas_remaining wei
            args msg.sender, globalConstraintsPost[idx].field_256, 'mintReputation'
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    return bool(ext_call.return_data[0])
}

function externalTokenApproval(address arg1, address arg2, uint256 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require Mask(1, 224, schemeParameters[msg.sender].field_256) == 0x100000000000000000000000000000000000000000000000000000000
    idx = 0
    while idx < globalConstraintsPre.length:
        mem[0] = 5
        mem[100] = msg.sender
        mem[132] = globalConstraintsPre[idx].field_256
        mem[164] = 'externalTokenIncreaseApproval'
        require ext_code.size(globalConstraintsPre[idx].field_0)
        call globalConstraintsPre[idx].field_0.pre(address arg1, bytes32 arg2, bytes32 arg3) with:
             gas gas_remaining wei
            args msg.sender, globalConstraintsPre[idx].field_256, 'externalTokenIncreaseApproval'
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    require avatarAddress == arg4
    require ext_code.size(avatarAddress)
    call avatarAddress.0xab751f71 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < globalConstraintsPost.length:
        mem[0] = 6
        mem[100] = msg.sender
        mem[132] = globalConstraintsPost[idx].field_256
        mem[164] = 'externalTokenIncreaseApproval'
        require ext_code.size(globalConstraintsPost[idx].field_0)
        call globalConstraintsPost[idx].field_0.post(address arg1, bytes32 arg2, bytes32 arg3) with:
             gas gas_remaining wei
            args msg.sender, globalConstraintsPost[idx].field_256, 'externalTokenIncreaseApproval'
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    return bool(ext_call.return_data[0])
}

function externalTokenTransferFrom(address arg1, address arg2, address arg3, uint256 arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    require Mask(1, 224, schemeParameters[msg.sender].field_256) == 0x100000000000000000000000000000000000000000000000000000000
    idx = 0
    while idx < globalConstraintsPre.length:
        mem[0] = 5
        mem[100] = msg.sender
        mem[132] = globalConstraintsPre[idx].field_256
        mem[164] = 'externalTokenTransferFrom'
        require ext_code.size(globalConstraintsPre[idx].field_0)
        call globalConstraintsPre[idx].field_0.pre(address arg1, bytes32 arg2, bytes32 arg3) with:
             gas gas_remaining wei
            args msg.sender, globalConstraintsPre[idx].field_256, 'externalTokenTransferFrom'
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    require avatarAddress == arg5
    require ext_code.size(avatarAddress)
    call avatarAddress.0xb756d5a2 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < globalConstraintsPost.length:
        mem[0] = 6
        mem[100] = msg.sender
        mem[132] = globalConstraintsPost[idx].field_256
        mem[164] = 'externalTokenTransferFrom'
        require ext_code.size(globalConstraintsPost[idx].field_0)
        call globalConstraintsPost[idx].field_0.post(address arg1, bytes32 arg2, bytes32 arg3) with:
             gas gas_remaining wei
            args msg.sender, globalConstraintsPost[idx].field_256, 'externalTokenTransferFrom'
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    return bool(ext_call.return_data[0])
}

function registerScheme(address arg1, bytes32 arg2, bytes4 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require Mask(1, 225, schemeParameters[msg.sender].field_256) == 0x200000000000000000000000000000000000000000000000000000000
    idx = 0
    while idx < globalConstraintsPre.length:
        mem[0] = 5
        mem[100] = msg.sender
        mem[132] = globalConstraintsPre[idx].field_256
        mem[164] = 'registerScheme'
        require ext_code.size(globalConstraintsPre[idx].field_0)
        call globalConstraintsPre[idx].field_0.pre(address arg1, bytes32 arg2, bytes32 arg3) with:
             gas gas_remaining wei
            args msg.sender, globalConstraintsPre[idx].field_256, 'registerScheme'
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    require avatarAddress == arg4
    require not Mask(5, 224, !schemeParameters[msg.sender].field_256 and Mask(32, 224, arg3) xor Mask(32, 224, schemeParameters[address(arg1)].field_256))
    require not Mask(5, 224, !schemeParameters[msg.sender].field_256 and Mask(32, 224, schemeParameters[address(arg1)].field_256))
    schemeParameters[address(arg1)].field_0 = arg2
    schemeParameters[address(arg1)].field_256 = 1
    schemeParameters[address(arg1)].field_256 = arg3
    emit RegisterScheme(msg.sender, arg1);
    idx = 0
    while idx < globalConstraintsPost.length:
        mem[0] = 6
        mem[228] = msg.sender
        mem[260] = globalConstraintsPost[idx].field_256
        mem[292] = 'registerScheme'
        require ext_code.size(globalConstraintsPost[idx].field_0)
        call globalConstraintsPost[idx].field_0.post(address arg1, bytes32 arg2, bytes32 arg3) with:
             gas gas_remaining wei
            args msg.sender, globalConstraintsPost[idx].field_256, 'registerScheme'
        mem[224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    return 1
}

function upgradeController(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require Mask(1, 227, schemeParameters[msg.sender].field_256) == 0x800000000000000000000000000000000000000000000000000000000
    require avatarAddress == arg2
    require not newControllerAddress
    require arg1
    newControllerAddress = arg1
    require ext_code.size(avatarAddress)
    call avatarAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(avatarAddress)
    staticcall avatarAddress.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == arg1
    require ext_code.size(nativeTokenAddress)
    staticcall nativeTokenAddress.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == this.address:
        require ext_code.size(nativeTokenAddress)
        call nativeTokenAddress.0xf2fde38b with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(nativeTokenAddress)
        staticcall nativeTokenAddress.0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[12 len 20] == arg1
    require ext_code.size(nativeReputationAddress)
    staticcall nativeReputationAddress.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == this.address:
        require ext_code.size(nativeReputationAddress)
        call nativeReputationAddress.0xf2fde38b with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(nativeReputationAddress)
        staticcall nativeReputationAddress.0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[12 len 20] == arg1
    emit UpgradeController(newControllerAddress, this.address);
    return 1
}

function unregisterScheme(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require Mask(1, 225, schemeParameters[msg.sender].field_256) == 0x200000000000000000000000000000000000000000000000000000000
    idx = 0
    while idx < globalConstraintsPre.length:
        mem[0] = 5
        mem[100] = msg.sender
        mem[132] = globalConstraintsPre[idx].field_256
        mem[164] = 'unregisterScheme'
        require ext_code.size(globalConstraintsPre[idx].field_0)
        call globalConstraintsPre[idx].field_0.pre(address arg1, bytes32 arg2, bytes32 arg3) with:
             gas gas_remaining wei
            args msg.sender, globalConstraintsPre[idx].field_256, 'unregisterScheme'
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    require avatarAddress == arg2
    if not Mask(1, 224, schemeParameters[address(arg1)].field_256):
        idx = 0
        while idx < globalConstraintsPost.length:
            mem[0] = 6
            mem[100] = msg.sender
            mem[132] = globalConstraintsPost[idx].field_256
            mem[164] = 'unregisterScheme'
            require ext_code.size(globalConstraintsPost[idx].field_0)
            call globalConstraintsPost[idx].field_0.post(address arg1, bytes32 arg2, bytes32 arg3) with:
                 gas gas_remaining wei
                args msg.sender, globalConstraintsPost[idx].field_256, 'unregisterScheme'
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            idx = idx + 1
            continue 
        return 0
    require not Mask(5, 224, schemeParameters[arg1].field_256 and !schemeParameters[msg.sender].field_256)
    emit UnregisterScheme(msg.sender, arg1);
    schemeParameters[address(arg1)].field_0 = 0
    schemeParameters[address(arg1)].field_256 = 0
    idx = 0
    while idx < globalConstraintsPost.length:
        mem[0] = 6
        mem[100] = msg.sender
        mem[132] = globalConstraintsPost[idx].field_256
        mem[164] = 'unregisterScheme'
        require ext_code.size(globalConstraintsPost[idx].field_0)
        call globalConstraintsPost[idx].field_0.post(address arg1, bytes32 arg2, bytes32 arg3) with:
             gas gas_remaining wei
            args msg.sender, globalConstraintsPost[idx].field_256, 'unregisterScheme'
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    return 1
}

function addGlobalConstraint(address arg1, bytes32 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require Mask(1, 226, schemeParameters[msg.sender].field_256) == 0x400000000000000000000000000000000000000000000000000000000
    require avatarAddress == arg3
    require ext_code.size(arg1)
    call arg1.when() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 2
    if not ext_call.return_data[0]:
        if globalConstraintsRegisterPre[address(arg1)].field_0:
            require globalConstraintsRegisterPre[address(arg1)].field_256 < globalConstraintsPre.length
            globalConstraintsPre[stor7[address(arg1)].field_256].field_256 = arg2
        else:
            globalConstraintsPre.length++
            stor36B6[stor5.length] = arg1
            stor36B6[stor5.length] = arg2
            globalConstraintsRegisterPre[address(arg1)].field_0 = 1
            globalConstraintsRegisterPre[address(arg1)].field_256 = globalConstraintsPre.length - 1
    else:
        require ext_call.return_data[0] <= 2
        if ext_call.return_data[0] == 2:
            if globalConstraintsRegisterPre[address(arg1)].field_0:
                require globalConstraintsRegisterPre[address(arg1)].field_256 < globalConstraintsPre.length
                globalConstraintsPre[stor7[address(arg1)].field_256].field_256 = arg2
            else:
                globalConstraintsPre.length++
                stor36B6[stor5.length] = arg1
                stor36B6[stor5.length] = arg2
                globalConstraintsRegisterPre[address(arg1)].field_0 = 1
                globalConstraintsRegisterPre[address(arg1)].field_256 = globalConstraintsPre.length - 1
    require ext_call.return_data[0] <= 2
    if ext_call.return_data[0] == 1:
        if globalConstraintsRegisterPost[address(arg1)].field_0:
            require globalConstraintsRegisterPost[address(arg1)].field_256 < globalConstraintsPost.length
            globalConstraintsPost[stor8[address(arg1)].field_256].field_256 = arg2
        else:
            globalConstraintsPost.length++
            globalConstraintsPost[globalConstraintsPost.length].field_0 = arg1
            storF652[stor6.length] = arg2
            globalConstraintsRegisterPost[address(arg1)].field_0 = 1
            globalConstraintsRegisterPost[address(arg1)].field_256 = globalConstraintsPost.length - 1
    else:
        require ext_call.return_data[0] <= 2
        if ext_call.return_data[0] == 2:
            if globalConstraintsRegisterPost[address(arg1)].field_0:
                require globalConstraintsRegisterPost[address(arg1)].field_256 < globalConstraintsPost.length
                globalConstraintsPost[stor8[address(arg1)].field_256].field_256 = arg2
            else:
                globalConstraintsPost.length++
                globalConstraintsPost[globalConstraintsPost.length].field_0 = arg1
                storF652[stor6.length] = arg2
                globalConstraintsRegisterPost[address(arg1)].field_0 = 1
                globalConstraintsRegisterPost[address(arg1)].field_256 = globalConstraintsPost.length - 1
    require ext_call.return_data[0] <= 2
    emit 0x78800d73: arg2, uint8(ext_call.return_data[0]), arg1
    return 1
}

function genericCall(address arg1, bytes arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require Mask(1, 228, schemeParameters[msg.sender].field_256) == 0x1000000000000000000000000000000000000000000000000000000000
    idx = 0
    while idx < globalConstraintsPre.length:
        mem[0] = 5
        mem[100] = msg.sender
        mem[132] = globalConstraintsPre[idx].field_256
        mem[164] = 'genericCall'
        require ext_code.size(globalConstraintsPre[idx].field_0)
        call globalConstraintsPre[idx].field_0.pre(address arg1, bytes32 arg2, bytes32 arg3) with:
             gas gas_remaining wei
            args msg.sender, globalConstraintsPre[idx].field_256, 'genericCall'
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    require avatarAddress == arg3
    mem[96] = 0x2bf1645800000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[164] = arg4
    mem[132] = 96
    mem[196] = arg2.length
    mem[228 len arg2.length] = arg2[all]
    mem[arg2.length + 228] = 0
    require ext_code.size(avatarAddress)
    call avatarAddress.0x2bf16458 with:
         gas gas_remaining wei
        args address(arg1), Array(len=arg2.length, data=arg2[all]), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    _34 = mem[96 len 4], address(arg1) << 64
    require 32 <= return_data.size
    require return_data.size >= mem[96 len 4], address(arg1) << 64 + 32 and mem[96 len 4], address(arg1) << 64 <= 4294967296
    idx = 0
    while idx < globalConstraintsPost.length:
        mem[0] = 6
        mem[ceil32(return_data.size) + 100] = msg.sender
        mem[ceil32(return_data.size) + 132] = globalConstraintsPost[idx].field_256
        mem[ceil32(return_data.size) + 164] = 'genericCall'
        require ext_code.size(globalConstraintsPost[idx].field_0)
        call globalConstraintsPost[idx].field_0.post(address arg1, bytes32 arg2, bytes32 arg3) with:
             gas gas_remaining wei
            args msg.sender, globalConstraintsPost[idx].field_256, 'genericCall'
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[ceil32(return_data.size) + 96] = bool(_34)
    mem[ceil32(return_data.size) + 128] = 64
    mem[ceil32(return_data.size) + 160] = mem[96]
    mem[ceil32(return_data.size) + 192 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if not mem[96] % 32:
        return bool(_34), 64, mem[ceil32(return_data.size) + 160 len mem[96] + 32]
    mem[floor32(mem[96]) + ceil32(return_data.size) + 192] = mem[floor32(mem[96]) + ceil32(return_data.size) + -(mem[96] % 32) + 224 len mem[96] % 32]
    return bool(_34), Array(len=mem[96], data=mem[ceil32(return_data.size) + 192 len floor32(mem[96]) + 32])
}

function removeGlobalConstraint(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require Mask(1, 226, schemeParameters[msg.sender].field_256) == 0x400000000000000000000000000000000000000000000000000000000
    require avatarAddress == arg2
    require ext_code.size(arg1)
    call arg1.when() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 2
    if not ext_call.return_data[0]:
        if not globalConstraintsRegisterPre[address(arg1)].field_0:
            require ext_call.return_data[0] <= 2
            if ext_call.return_data[0] != 1:
                require ext_call.return_data[0] <= 2
                if ext_call.return_data[0] != 2:
                    return 0
            if not globalConstraintsRegisterPost[address(arg1)].field_0:
                return 0
            if globalConstraintsRegisterPost[address(arg1)].field_256 < globalConstraintsPost.length - 1:
                require globalConstraintsPost.length - 1 < globalConstraintsPost.length
                require globalConstraintsRegisterPost[address(arg1)].field_256 < globalConstraintsPost.length
                globalConstraintsPost[stor8[address(arg1)].field_256].field_0 = globalConstraintsPost[globalConstraintsPost.length - 1].field_0
                globalConstraintsPost[stor8[address(arg1)].field_256].field_256 = globalConstraintsPost[globalConstraintsPost.length - 1].field_256
                globalConstraintsRegisterPost[stor6[stor6.length - 1].field_0].field_256 = globalConstraintsRegisterPost[address(arg1)].field_256
            globalConstraintsPost.length--
            if globalConstraintsPost.length > globalConstraintsPost.length - 1:
                idx = 2 * globalConstraintsPost.length - 1
                while 2 * globalConstraintsPost.length > idx:
                    globalConstraintsPost[idx].field_0 = 0
                    globalConstraintsPost[idx].field_256 = 0
                    idx = idx + 2
                    continue 
            globalConstraintsRegisterPost[address(arg1)].field_0 = 0
            globalConstraintsRegisterPost[address(arg1)].field_256 = 0
            require ext_call.return_data[0] <= 2
            emit RemoveGlobalConstraint(globalConstraintsRegisterPost[address(arg1)].field_256, 0 == ext_call.return_data[0], arg1);
        else:
            if globalConstraintsRegisterPre[address(arg1)].field_256 < globalConstraintsPre.length - 1:
                require globalConstraintsPre.length - 1 < globalConstraintsPre.length
                require globalConstraintsRegisterPre[address(arg1)].field_256 < globalConstraintsPre.length
                globalConstraintsPre[stor7[address(arg1)].field_256].field_0 = globalConstraintsPre[globalConstraintsPre.length - 1].field_0
                globalConstraintsPre[stor7[address(arg1)].field_256].field_256 = globalConstraintsPre[globalConstraintsPre.length - 1].field_256
                globalConstraintsRegisterPre[stor5[stor5.length - 1].field_0].field_256 = globalConstraintsRegisterPre[address(arg1)].field_256
            globalConstraintsPre.length--
            if globalConstraintsPre.length > globalConstraintsPre.length - 1:
                idx = 2 * globalConstraintsPre.length - 1
                while 2 * globalConstraintsPre.length > idx:
                    globalConstraintsPre[idx].field_0 = 0
                    globalConstraintsPre[idx].field_256 = 0
                    idx = idx + 2
                    continue 
            globalConstraintsRegisterPre[address(arg1)].field_0 = 0
            globalConstraintsRegisterPre[address(arg1)].field_256 = 0
            require ext_call.return_data[0] <= 2
            if ext_call.return_data[0] == 1:
                if globalConstraintsRegisterPost[address(arg1)].field_0:
                    if globalConstraintsRegisterPost[address(arg1)].field_256 < globalConstraintsPost.length - 1:
                        require globalConstraintsPost.length - 1 < globalConstraintsPost.length
                        require globalConstraintsRegisterPost[address(arg1)].field_256 < globalConstraintsPost.length
                        globalConstraintsPost[stor8[address(arg1)].field_256].field_0 = globalConstraintsPost[globalConstraintsPost.length - 1].field_0
                        globalConstraintsPost[stor8[address(arg1)].field_256].field_256 = globalConstraintsPost[globalConstraintsPost.length - 1].field_256
                        globalConstraintsRegisterPost[stor6[stor6.length - 1].field_0].field_256 = globalConstraintsRegisterPost[address(arg1)].field_256
                    globalConstraintsPost.length--
                    if globalConstraintsPost.length > globalConstraintsPost.length - 1:
                        idx = 2 * globalConstraintsPost.length - 1
                        while 2 * globalConstraintsPost.length > idx:
                            globalConstraintsPost[idx].field_0 = 0
                            globalConstraintsPost[idx].field_256 = 0
                            idx = idx + 2
                            continue 
                    globalConstraintsRegisterPost[address(arg1)].field_0 = 0
                    globalConstraintsRegisterPost[address(arg1)].field_256 = 0
                require ext_call.return_data[0] <= 2
                emit RemoveGlobalConstraint(globalConstraintsRegisterPost[address(arg1)].field_256, 0 == ext_call.return_data[0], arg1);
            else:
                require ext_call.return_data[0] <= 2
                if ext_call.return_data[0] != 2:
                    require ext_call.return_data[0] <= 2
                    emit RemoveGlobalConstraint(globalConstraintsRegisterPre[address(arg1)].field_256, 0 == ext_call.return_data[0], arg1);
                else:
                    if globalConstraintsRegisterPost[address(arg1)].field_0:
                        if globalConstraintsRegisterPost[address(arg1)].field_256 < globalConstraintsPost.length - 1:
                            require globalConstraintsPost.length - 1 < globalConstraintsPost.length
                            require globalConstraintsRegisterPost[address(arg1)].field_256 < globalConstraintsPost.length
                            globalConstraintsPost[stor8[address(arg1)].field_256].field_0 = globalConstraintsPost[globalConstraintsPost.length - 1].field_0
                            globalConstraintsPost[stor8[address(arg1)].field_256].field_256 = globalConstraintsPost[globalConstraintsPost.length - 1].field_256
                            globalConstraintsRegisterPost[stor6[stor6.length - 1].field_0].field_256 = globalConstraintsRegisterPost[address(arg1)].field_256
                        globalConstraintsPost.length--
                        if globalConstraintsPost.length > globalConstraintsPost.length - 1:
                            idx = 2 * globalConstraintsPost.length - 1
                            while 2 * globalConstraintsPost.length > idx:
                                globalConstraintsPost[idx].field_0 = 0
                                globalConstraintsPost[idx].field_256 = 0
                                idx = idx + 2
                                continue 
                        globalConstraintsRegisterPost[address(arg1)].field_0 = 0
                        globalConstraintsRegisterPost[address(arg1)].field_256 = 0
                    require ext_call.return_data[0] <= 2
                    emit RemoveGlobalConstraint(globalConstraintsRegisterPost[address(arg1)].field_256, 0 == ext_call.return_data[0], arg1);
    else:
        require ext_call.return_data[0] <= 2
        if ext_call.return_data[0] != 2:
            require ext_call.return_data[0] <= 2
            if ext_call.return_data[0] != 1:
                require ext_call.return_data[0] <= 2
                if ext_call.return_data[0] != 2:
                    return 0
            if not globalConstraintsRegisterPost[address(arg1)].field_0:
                return 0
            if globalConstraintsRegisterPost[address(arg1)].field_256 < globalConstraintsPost.length - 1:
                require globalConstraintsPost.length - 1 < globalConstraintsPost.length
                require globalConstraintsRegisterPost[address(arg1)].field_256 < globalConstraintsPost.length
                globalConstraintsPost[stor8[address(arg1)].field_256].field_0 = globalConstraintsPost[globalConstraintsPost.length - 1].field_0
                globalConstraintsPost[stor8[address(arg1)].field_256].field_256 = globalConstraintsPost[globalConstraintsPost.length - 1].field_256
                globalConstraintsRegisterPost[stor6[stor6.length - 1].field_0].field_256 = globalConstraintsRegisterPost[address(arg1)].field_256
            globalConstraintsPost.length--
            if globalConstraintsPost.length > globalConstraintsPost.length - 1:
                idx = 2 * globalConstraintsPost.length - 1
                while 2 * globalConstraintsPost.length > idx:
                    globalConstraintsPost[idx].field_0 = 0
                    globalConstraintsPost[idx].field_256 = 0
                    idx = idx + 2
                    continue 
            globalConstraintsRegisterPost[address(arg1)].field_0 = 0
            globalConstraintsRegisterPost[address(arg1)].field_256 = 0
            require ext_call.return_data[0] <= 2
            emit RemoveGlobalConstraint(globalConstraintsRegisterPost[address(arg1)].field_256, 0 == ext_call.return_data[0], arg1);
        else:
            if not globalConstraintsRegisterPre[address(arg1)].field_0:
                require ext_call.return_data[0] <= 2
                if ext_call.return_data[0] != 1:
                    require ext_call.return_data[0] <= 2
                    if ext_call.return_data[0] != 2:
                        return 0
                if not globalConstraintsRegisterPost[address(arg1)].field_0:
                    return 0
                if globalConstraintsRegisterPost[address(arg1)].field_256 < globalConstraintsPost.length - 1:
                    require globalConstraintsPost.length - 1 < globalConstraintsPost.length
                    require globalConstraintsRegisterPost[address(arg1)].field_256 < globalConstraintsPost.length
                    globalConstraintsPost[stor8[address(arg1)].field_256].field_0 = globalConstraintsPost[globalConstraintsPost.length - 1].field_0
                    globalConstraintsPost[stor8[address(arg1)].field_256].field_256 = globalConstraintsPost[globalConstraintsPost.length - 1].field_256
                    globalConstraintsRegisterPost[stor6[stor6.length - 1].field_0].field_256 = globalConstraintsRegisterPost[address(arg1)].field_256
                globalConstraintsPost.length--
                if globalConstraintsPost.length > globalConstraintsPost.length - 1:
                    idx = 2 * globalConstraintsPost.length - 1
                    while 2 * globalConstraintsPost.length > idx:
                        globalConstraintsPost[idx].field_0 = 0
                        globalConstraintsPost[idx].field_256 = 0
                        idx = idx + 2
                        continue 
                globalConstraintsRegisterPost[address(arg1)].field_0 = 0
                globalConstraintsRegisterPost[address(arg1)].field_256 = 0
                require ext_call.return_data[0] <= 2
                emit RemoveGlobalConstraint(globalConstraintsRegisterPost[address(arg1)].field_256, 0 == ext_call.return_data[0], arg1);
            else:
                if globalConstraintsRegisterPre[address(arg1)].field_256 < globalConstraintsPre.length - 1:
                    require globalConstraintsPre.length - 1 < globalConstraintsPre.length
                    require globalConstraintsRegisterPre[address(arg1)].field_256 < globalConstraintsPre.length
                    globalConstraintsPre[stor7[address(arg1)].field_256].field_0 = globalConstraintsPre[globalConstraintsPre.length - 1].field_0
                    globalConstraintsPre[stor7[address(arg1)].field_256].field_256 = globalConstraintsPre[globalConstraintsPre.length - 1].field_256
                    globalConstraintsRegisterPre[stor5[stor5.length - 1].field_0].field_256 = globalConstraintsRegisterPre[address(arg1)].field_256
                globalConstraintsPre.length--
                if globalConstraintsPre.length > globalConstraintsPre.length - 1:
                    idx = 2 * globalConstraintsPre.length - 1
                    while 2 * globalConstraintsPre.length > idx:
                        globalConstraintsPre[idx].field_0 = 0
                        globalConstraintsPre[idx].field_256 = 0
                        idx = idx + 2
                        continue 
                globalConstraintsRegisterPre[address(arg1)].field_0 = 0
                globalConstraintsRegisterPre[address(arg1)].field_256 = 0
                require ext_call.return_data[0] <= 2
                if ext_call.return_data[0] == 1:
                    if globalConstraintsRegisterPost[address(arg1)].field_0:
                        if globalConstraintsRegisterPost[address(arg1)].field_256 < globalConstraintsPost.length - 1:
                            require globalConstraintsPost.length - 1 < globalConstraintsPost.length
                            require globalConstraintsRegisterPost[address(arg1)].field_256 < globalConstraintsPost.length
                            globalConstraintsPost[stor8[address(arg1)].field_256].field_0 = globalConstraintsPost[globalConstraintsPost.length - 1].field_0
                            globalConstraintsPost[stor8[address(arg1)].field_256].field_256 = globalConstraintsPost[globalConstraintsPost.length - 1].field_256
                            globalConstraintsRegisterPost[stor6[stor6.length - 1].field_0].field_256 = globalConstraintsRegisterPost[address(arg1)].field_256
                        globalConstraintsPost.length--
                        if globalConstraintsPost.length > globalConstraintsPost.length - 1:
                            idx = 2 * globalConstraintsPost.length - 1
                            while 2 * globalConstraintsPost.length > idx:
                                globalConstraintsPost[idx].field_0 = 0
                                globalConstraintsPost[idx].field_256 = 0
                                idx = idx + 2
                                continue 
                        globalConstraintsRegisterPost[address(arg1)].field_0 = 0
                        globalConstraintsRegisterPost[address(arg1)].field_256 = 0
                    require ext_call.return_data[0] <= 2
                    emit RemoveGlobalConstraint(globalConstraintsRegisterPost[address(arg1)].field_256, 0 == ext_call.return_data[0], arg1);
                else:
                    require ext_call.return_data[0] <= 2
                    if ext_call.return_data[0] != 2:
                        require ext_call.return_data[0] <= 2
                        emit RemoveGlobalConstraint(globalConstraintsRegisterPre[address(arg1)].field_256, 0 == ext_call.return_data[0], arg1);
                    else:
                        if globalConstraintsRegisterPost[address(arg1)].field_0:
                            if globalConstraintsRegisterPost[address(arg1)].field_256 < globalConstraintsPost.length - 1:
                                require globalConstraintsPost.length - 1 < globalConstraintsPost.length
                                require globalConstraintsRegisterPost[address(arg1)].field_256 < globalConstraintsPost.length
                                globalConstraintsPost[stor8[address(arg1)].field_256].field_0 = globalConstraintsPost[globalConstraintsPost.length - 1].field_0
                                globalConstraintsPost[stor8[address(arg1)].field_256].field_256 = globalConstraintsPost[globalConstraintsPost.length - 1].field_256
                                globalConstraintsRegisterPost[stor6[stor6.length - 1].field_0].field_256 = globalConstraintsRegisterPost[address(arg1)].field_256
                            globalConstraintsPost.length--
                            if globalConstraintsPost.length > globalConstraintsPost.length - 1:
                                idx = 2 * globalConstraintsPost.length - 1
                                while 2 * globalConstraintsPost.length > idx:
                                    globalConstraintsPost[idx].field_0 = 0
                                    globalConstraintsPost[idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            globalConstraintsRegisterPost[address(arg1)].field_0 = 0
                            globalConstraintsRegisterPost[address(arg1)].field_256 = 0
                        require ext_call.return_data[0] <= 2
                        emit RemoveGlobalConstraint(globalConstraintsRegisterPost[address(arg1)].field_256, 0 == ext_call.return_data[0], arg1);
    return 1
}



}
