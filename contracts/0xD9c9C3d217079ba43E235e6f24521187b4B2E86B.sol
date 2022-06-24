contract main {




// =====================  Runtime code  =====================


const masterToken = 0xb6ed7644c69416d67b522e20bc294a9a9b405b31

const getLavaPacketTypehash = sha3(0xfe4c6176615061636b657428737472696e67206d6574686f644e616d652c616464726573732072656c6179417574686f726974792c616464726573732066726f6d2c6164647265737320746f2c616464726573732077616c6c65742c75696e7432353620746f6b656e732c75696e743235362072656c61796572526577617264546f6b656e732c75696e7432353620657870697265732c75696e74323536206e6f6e6365)


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balances;
mapping of uint256 allowance;
mapping of uint256 burnedSignatures;
mapping of uint256 stor88809189972829598474333786259281416655886438707080018553428642047638242724862180925269901253500882360119407891570568067292856471368858668191809353160567264465140199495613709122746697441367793449958660142969439501157398791786344180875604136367496397706771969508632100158541898940264278595705456623201108657446674186182449303938523525414837947254102215846759292834415270152205498340761852726633317;

function name() {
    return name[0 len name.length]
}

function getAllowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function totalSupply() {
    return totalSupply
}

function signatureHashBurnStatus(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return burnedSignatures[arg1]
}

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function decimals() {
    return decimals
}

function burnedSignatures(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return burnedSignatures[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balances[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(arg2)]
    allowance[address(arg1)][address(arg2)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function unmutateTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 >= 0
    require arg1 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require ext_code.size(0xb6ed7644c69416d67b522e20bc294a9a9b405b31)
    call 0xb6ed7644c69416d67b522e20bc294a9a9b405b31.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1
}

function mutateTokens(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 >= 0
    require ext_code.size(0xb6ed7644c69416d67b522e20bc294a9a9b405b31)
    call 0xb6ed7644c69416d67b522e20bc294a9a9b405b31.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    return 1
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg3 == 0xb6ed7644c69416d67b522e20bc294a9a9b405b31
    require arg2 >= 0
    require ext_code.size(0xb6ed7644c69416d67b522e20bc294a9a9b405b31)
    call 0xb6ed7644c69416d67b522e20bc294a9a9b405b31.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    return 0, 1
}

function getLavaTypedDataHash(string arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9) {
    require calldata.size - 4 >= 288
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160] = sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), Mask(8 * -arg1.length + ceil32(arg1.length) + 132, 0, 0xfe4c6176615061636b657428737472696e67206d6574686f644e616d652c616464726573732072656c6179417574686f726974792c616464726573732066726f6d2c6164647265737320746f2c616464726573732077616c6c65742c75696e7432353620746f6b656e732c75696e743235362072656c61796572526577617264546f6b656e732c75696e7432353620657870697265732c75696e74323536206e6f6e6365))
    mem[ceil32(arg1.length) + 192] = sha3(arg1[all])
    mem[ceil32(arg1.length) + 224] = arg2
    mem[ceil32(arg1.length) + 256] = arg3
    mem[ceil32(arg1.length) + 288] = arg4
    mem[ceil32(arg1.length) + 320] = arg5
    mem[ceil32(arg1.length) + 352] = arg6
    mem[ceil32(arg1.length) + 384] = arg7
    mem[ceil32(arg1.length) + 416] = arg8
    mem[ceil32(arg1.length) + 448] = arg9
    mem[ceil32(arg1.length) + 128] = 320
    return sha3(0, sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]))
}

function getLavaPacketHash(string arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9) {
    require calldata.size - 4 >= 288
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160] = sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), Mask(8 * -arg1.length + ceil32(arg1.length) + 132, 0, 0xfe4c6176615061636b657428737472696e67206d6574686f644e616d652c616464726573732072656c6179417574686f726974792c616464726573732066726f6d2c6164647265737320746f2c616464726573732077616c6c65742c75696e7432353620746f6b656e732c75696e743235362072656c61796572526577617264546f6b656e732c75696e7432353620657870697265732c75696e74323536206e6f6e6365))
    mem[ceil32(arg1.length) + 192] = sha3(arg1[all])
    mem[ceil32(arg1.length) + 224] = arg2
    mem[ceil32(arg1.length) + 256] = arg3
    mem[ceil32(arg1.length) + 288] = arg4
    mem[ceil32(arg1.length) + 320] = arg5
    mem[ceil32(arg1.length) + 352] = arg6
    mem[ceil32(arg1.length) + 384] = arg7
    mem[ceil32(arg1.length) + 416] = arg8
    mem[ceil32(arg1.length) + 448] = arg9
    mem[ceil32(arg1.length) + 128] = 320
    mem[ceil32(arg1.length) + 480] = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    return memory
      from ceil32(arg1.length) + 480
       len 32
}

function burnSignature(string arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, bytes arg10) {
    require calldata.size - 4 >= 320
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg10 <= 4294967296
    require arg10 + 36 <= calldata.size
    require arg10.length <= 4294967296 and arg10 + arg10.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160 len arg10.length] = arg10[all]
    mem[ceil32(arg1.length) + arg10.length + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg10.length) + 192] = sha3(Mask(8 * -ceil32(arg10.length) + arg10.length + 32, 0, 0), Mask(8 * -arg10.length + ceil32(arg10.length) + 132, 0, 0xfe4c6176615061636b657428737472696e67206d6574686f644e616d652c616464726573732072656c6179417574686f726974792c616464726573732066726f6d2c6164647265737320746f2c616464726573732077616c6c65742c75696e7432353620746f6b656e732c75696e743235362072656c61796572526577617264546f6b656e732c75696e7432353620657870697265732c75696e74323536206e6f6e6365))
    mem[ceil32(arg1.length) + ceil32(arg10.length) + 224] = sha3(arg1[all])
    mem[ceil32(arg1.length) + ceil32(arg10.length) + 256] = arg2
    mem[ceil32(arg1.length) + ceil32(arg10.length) + 288] = arg3
    mem[ceil32(arg1.length) + ceil32(arg10.length) + 320] = arg4
    mem[ceil32(arg1.length) + ceil32(arg10.length) + 352] = arg5
    mem[ceil32(arg1.length) + ceil32(arg10.length) + 384] = arg6
    mem[ceil32(arg1.length) + ceil32(arg10.length) + 416] = arg7
    mem[ceil32(arg1.length) + ceil32(arg10.length) + 448] = arg8
    mem[ceil32(arg1.length) + ceil32(arg10.length) + 480] = arg9
    mem[ceil32(arg1.length) + ceil32(arg10.length) + 160] = 320
    if arg10.length != 65:
        require 0 == arg3
    else:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) - 256) + 27) == 27:
            signer = erecover(sha3(0, sha3(mem[ceil32(arg1.length) + ceil32(arg10.length) + 192 len Mask(8 * -ceil32(arg10.length) + arg10.length + 32, 0, 0), mem[ceil32(arg1.length) + arg10.length + 192 len -arg10.length + ceil32(arg10.length)]])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) - 256) + 27 << 248, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + 192]) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            require address(signer) == arg3
        else:
            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) - 256) + 27) != 28:
                require 0 == arg3
            else:
                signer = erecover(sha3(0, sha3(mem[ceil32(arg1.length) + ceil32(arg10.length) + 192 len Mask(8 * -ceil32(arg10.length) + arg10.length + 32, 0, 0), mem[ceil32(arg1.length) + arg10.length + 192 len -arg10.length + ceil32(arg10.length)]])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) - 256) + 27 << 248, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + 192]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require address(signer) == arg3
    require arg3 == msg.sender
    burnedSignatures[0][sha3(mem[ceil32(arg1.length) + ceil32(arg10.length) + 192 len Mask(8 * -ceil32(arg10.length) + arg10.length + 32, 0, 0), mem[ceil32(arg1.length) + arg10.length + 192 len -arg10.length + ceil32(arg10.length)]])] = 2
    require not burnedSignatures[0][sha3(mem[ceil32(arg1.length) + ceil32(arg10.length) + 192 len Mask(8 * -ceil32(arg10.length) + arg10.length + 32, 0, 0), mem[ceil32(arg1.length) + arg10.length + 192 len -arg10.length + ceil32(arg10.length)]])]
    return 1
}

function approveTokensWithSignature(string arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, bytes arg10) {
    require calldata.size - 4 >= 320
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg10 <= 4294967296
    require arg10 + 36 <= calldata.size
    require arg10.length <= 4294967296 and arg10 + arg10.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg10.length
    mem[ceil32(arg1.length) + 160 len arg10.length] = arg10[all]
    mem[ceil32(arg1.length) + arg10.length + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg10.length) + 160] = 7
    mem[ceil32(arg1.length) + ceil32(arg10.length) + 192] = 'approve'
    require 7 == arg1.length
    idx = 0
    while idx < 7:
        require idx < arg1.length
        require idx < 7
        require Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg10.length) + idx + 192]) == Mask(8, 248, mem[idx + 128])
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(arg10.length) + 224] = 320
    if arg2:
        if ext_code.size(arg2) > 0:
            require ext_code.size(arg2)
            call arg2.getRelayAuthority() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require msg.sender == ext_call.return_data[12 len 20]
        else:
            if arg2 != msg.sender:
                require ext_code.size(arg2) > 0
                require ext_code.size(arg2)
                call arg2.getRelayAuthority() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require msg.sender == ext_call.return_data[12 len 20]
    if arg10.length != 65:
        require not arg3
    else:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) - 256) + 27) == 27:
            signer = erecover(sha3(0, sha3(sha3(0xfe4c6176615061636b657428737472696e67206d6574686f644e616d652c616464726573732072656c6179417574686f726974792c616464726573732066726f6d2c6164647265737320746f2c616464726573732077616c6c65742c75696e7432353620746f6b656e732c75696e743235362072656c61796572526577617264546f6b656e732c75696e7432353620657870697265732c75696e74323536206e6f6e6365), sha3(arg1[all]), address(arg2), address(arg3), address(arg4), address(arg5), arg6, arg7, arg8, arg9)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) - 256) + 27 << 248, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + 192]) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            require arg3 == address(signer)
        else:
            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) - 256) + 27) != 28:
                require not arg3
            else:
                signer = erecover(sha3(0, sha3(sha3(0xfe4c6176615061636b657428737472696e67206d6574686f644e616d652c616464726573732072656c6179417574686f726974792c616464726573732066726f6d2c6164647265737320746f2c616464726573732077616c6c65742c75696e7432353620746f6b656e732c75696e743235362072656c61796572526577617264546f6b656e732c75696e7432353620657870697265732c75696e74323536206e6f6e6365), sha3(arg1[all]), address(arg2), address(arg3), address(arg4), address(arg5), arg6, arg7, arg8, arg9)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) - 256) + 27 << 248, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + 192]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg3 == address(signer)
    require this.address == arg5
    require block.number < arg8
    stor6[0][sha3(('name', 'storFE4C', 88809189972829598474333786259281416655886438707080018553428642047638242724862180925269901253500882360119407891570568067292856471368858668191809353160567264465140199495613709122746697441367793449958660142969439501157398791786344180875604136367496397706771969508632100158541898940264278595705456623201108657446674186182449303938523525414837947254102215846759292834415270152205498340761852726633317), sha3(arg1[all]), address(arg2), address(arg3), address(arg4), address(arg5), arg6, arg7, arg8, arg9)] = 1
    require not stor6[0][sha3(('name', 'storFE4C', 88809189972829598474333786259281416655886438707080018553428642047638242724862180925269901253500882360119407891570568067292856471368858668191809353160567264465140199495613709122746697441367793449958660142969439501157398791786344180875604136367496397706771969508632100158541898940264278595705456623201108657446674186182449303938523525414837947254102215846759292834415270152205498340761852726633317), sha3(arg1[all]), address(arg2), address(arg3), address(arg4), address(arg5), arg6, arg7, arg8, arg9)]
    require arg7 <= balances[address(arg3)]
    balances[address(arg3)] -= arg7
    require balances[address(msg.sender)] + arg7 >= balances[address(msg.sender)]
    balances[address(msg.sender)] += arg7
    emit Transfer(arg7, arg3, msg.sender);
    allowance[address(arg3)][address(arg4)] = arg6
    emit Approval(arg6, arg3, arg4);
    return 1
}

function transferTokensWithSignature(string arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, bytes arg10) {
    require calldata.size - 4 >= 320
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg10 <= 4294967296
    require arg10 + 36 <= calldata.size
    require arg10.length <= 4294967296 and arg10 + arg10.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg10.length
    mem[ceil32(arg1.length) + 160 len arg10.length] = arg10[all]
    mem[ceil32(arg1.length) + arg10.length + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg10.length) + 160] = 8
    mem[ceil32(arg1.length) + ceil32(arg10.length) + 192] = 'transfer'
    require 8 == arg1.length
    idx = 0
    while idx < 8:
        require idx < arg1.length
        require idx < 8
        require Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg10.length) + idx + 192]) == Mask(8, 248, mem[idx + 128])
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(arg10.length) + 224] = 320
    if arg2:
        if ext_code.size(arg2) > 0:
            require ext_code.size(arg2)
            call arg2.getRelayAuthority() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require msg.sender == ext_call.return_data[12 len 20]
        else:
            if arg2 != msg.sender:
                require ext_code.size(arg2) > 0
                require ext_code.size(arg2)
                call arg2.getRelayAuthority() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require msg.sender == ext_call.return_data[12 len 20]
    if arg10.length != 65:
        require not arg3
    else:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) - 256) + 27) == 27:
            signer = erecover(sha3(0, sha3(sha3(0xfe4c6176615061636b657428737472696e67206d6574686f644e616d652c616464726573732072656c6179417574686f726974792c616464726573732066726f6d2c6164647265737320746f2c616464726573732077616c6c65742c75696e7432353620746f6b656e732c75696e743235362072656c61796572526577617264546f6b656e732c75696e7432353620657870697265732c75696e74323536206e6f6e6365), sha3(arg1[all]), address(arg2), address(arg3), address(arg4), address(arg5), arg6, arg7, arg8, arg9)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) - 256) + 27 << 248, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + 192]) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            require arg3 == address(signer)
        else:
            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) - 256) + 27) != 28:
                require not arg3
            else:
                signer = erecover(sha3(0, sha3(sha3(0xfe4c6176615061636b657428737472696e67206d6574686f644e616d652c616464726573732072656c6179417574686f726974792c616464726573732066726f6d2c6164647265737320746f2c616464726573732077616c6c65742c75696e7432353620746f6b656e732c75696e743235362072656c61796572526577617264546f6b656e732c75696e7432353620657870697265732c75696e74323536206e6f6e6365), sha3(arg1[all]), address(arg2), address(arg3), address(arg4), address(arg5), arg6, arg7, arg8, arg9)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) - 256) + 27 << 248, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + 192]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg3 == address(signer)
    require this.address == arg5
    require block.number < arg8
    stor6[0][sha3(('name', 'storFE4C', 88809189972829598474333786259281416655886438707080018553428642047638242724862180925269901253500882360119407891570568067292856471368858668191809353160567264465140199495613709122746697441367793449958660142969439501157398791786344180875604136367496397706771969508632100158541898940264278595705456623201108657446674186182449303938523525414837947254102215846759292834415270152205498340761852726633317), sha3(arg1[all]), address(arg2), address(arg3), address(arg4), address(arg5), arg6, arg7, arg8, arg9)] = 1
    require not stor6[0][sha3(('name', 'storFE4C', 88809189972829598474333786259281416655886438707080018553428642047638242724862180925269901253500882360119407891570568067292856471368858668191809353160567264465140199495613709122746697441367793449958660142969439501157398791786344180875604136367496397706771969508632100158541898940264278595705456623201108657446674186182449303938523525414837947254102215846759292834415270152205498340761852726633317), sha3(arg1[all]), address(arg2), address(arg3), address(arg4), address(arg5), arg6, arg7, arg8, arg9)]
    require arg7 <= balances[address(arg3)]
    balances[address(arg3)] -= arg7
    require balances[address(msg.sender)] + arg7 >= balances[address(msg.sender)]
    balances[address(msg.sender)] += arg7
    emit Transfer(arg7, arg3, msg.sender);
    allowance[address(arg3)][address(arg4)] = arg6
    emit Approval(arg6, arg3, arg4);
    require arg6 <= balances[address(arg3)]
    balances[address(arg3)] -= arg6
    require arg6 <= allowance[address(arg3)][address(arg4)]
    allowance[address(arg3)][address(arg4)] -= arg6
    require balances[address(arg4)] + arg6 >= balances[address(arg4)]
    balances[address(arg4)] += arg6
    emit Transfer(arg6, arg3, arg4);
    return 1
}

function approveAndCallWithSignature(string arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, bytes arg10) {
    require calldata.size - 4 >= 320
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg10 <= 4294967296
    require arg10 + 36 <= calldata.size
    require arg10.length <= 4294967296 and arg10 + arg10.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg10.length
    mem[ceil32(arg1.length) + 160 len arg10.length] = arg10[all]
    mem[ceil32(arg1.length) + arg10.length + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg10.length) + 160] = 7
    mem[ceil32(arg1.length) + ceil32(arg10.length) + 192] = 'approve'
    if 7 == arg1.length:
        require 0 < 7
        require 0 < arg1.length
        require 0 < 7
        s = 0
        while Mask(8, 248, 'approve') == Mask(8, 248, mem[128]):
            require s + 1 < 7
            require s + 1 < arg1.length
            require s + 1 < 7
            s = s + 1
            continue 
    mem[ceil32(arg1.length) + ceil32(arg10.length) + 224] = 8
    if 8 == arg1.length:
        require 0 < 8
        require 0 < arg1.length
        require 0 < 8
        s = 0
        while Mask(8, 248, 'transfer') == Mask(8, 248, mem[128]):
            require s + 1 < 8
            require s + 1 < arg1.length
            require s + 1 < 8
            s = s + 1
            continue 
    if arg2:
        if ext_code.size(arg2) > 0:
            require ext_code.size(arg2)
            call arg2.getRelayAuthority() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require msg.sender == ext_call.return_data[12 len 20]
        else:
            if arg2 != msg.sender:
                require ext_code.size(arg2) > 0
                require ext_code.size(arg2)
                call arg2.getRelayAuthority() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require msg.sender == ext_call.return_data[12 len 20]
    if arg10.length != 65:
        require not arg3
    else:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) - 256) + 27) == 27:
            signer = erecover(sha3(0, sha3(sha3(0xfe4c6176615061636b657428737472696e67206d6574686f644e616d652c616464726573732072656c6179417574686f726974792c616464726573732066726f6d2c6164647265737320746f2c616464726573732077616c6c65742c75696e7432353620746f6b656e732c75696e743235362072656c61796572526577617264546f6b656e732c75696e7432353620657870697265732c75696e74323536206e6f6e6365), sha3(arg1[all]), address(arg2), address(arg3), address(arg4), address(arg5), arg6, arg7, arg8, arg9)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) - 256) + 27 << 248, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + 192]) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            require arg3 == address(signer)
        else:
            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) - 256) + 27) != 28:
                require not arg3
            else:
                signer = erecover(sha3(0, sha3(sha3(0xfe4c6176615061636b657428737472696e67206d6574686f644e616d652c616464726573732072656c6179417574686f726974792c616464726573732066726f6d2c6164647265737320746f2c616464726573732077616c6c65742c75696e7432353620746f6b656e732c75696e743235362072656c61796572526577617264546f6b656e732c75696e7432353620657870697265732c75696e74323536206e6f6e6365), sha3(arg1[all]), address(arg2), address(arg3), address(arg4), address(arg5), arg6, arg7, arg8, arg9)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) - 256) + 27 << 248, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + 192]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg3 == address(signer)
    require this.address == arg5
    require block.number < arg8
    stor6[0][sha3(('name', 'storFE4C', 88809189972829598474333786259281416655886438707080018553428642047638242724862180925269901253500882360119407891570568067292856471368858668191809353160567264465140199495613709122746697441367793449958660142969439501157398791786344180875604136367496397706771969508632100158541898940264278595705456623201108657446674186182449303938523525414837947254102215846759292834415270152205498340761852726633317), sha3(arg1[all]), address(arg2), address(arg3), address(arg4), address(arg5), arg6, arg7, arg8, arg9)] = 1
    require not stor6[0][sha3(('name', 'storFE4C', 88809189972829598474333786259281416655886438707080018553428642047638242724862180925269901253500882360119407891570568067292856471368858668191809353160567264465140199495613709122746697441367793449958660142969439501157398791786344180875604136367496397706771969508632100158541898940264278595705456623201108657446674186182449303938523525414837947254102215846759292834415270152205498340761852726633317), sha3(arg1[all]), address(arg2), address(arg3), address(arg4), address(arg5), arg6, arg7, arg8, arg9)]
    require arg7 <= balances[address(arg3)]
    balances[address(arg3)] -= arg7
    require balances[address(msg.sender)] + arg7 >= balances[address(msg.sender)]
    balances[address(msg.sender)] += arg7
    emit Transfer(arg7, arg3, msg.sender);
    allowance[address(arg3)][address(arg4)] = arg6
    emit Approval(arg6, arg3, arg4);
    require ext_code.size(arg4)
    call arg4.0x8f4ffcb1 with:
         gas gas_remaining wei
        args address(arg3), arg6, address(this.address), Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
