contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor1 = 0
    stor2 = 1
    stor3 = 0
    require not msg.value
    require code.data[3581 len 20]
    require code.data[3613 len 20]
    require code.data[3645 len 20]
    require code.data[3581 len 20] != code.data[3613 len 20]
    require code.data[3613 len 20] != code.data[3645 len 20]
    require code.data[3581 len 20] != code.data[3645 len 20]
    stor0[code.data[3581 len 20]] = 1
    stor0[address(code.data[3601 len 32])] = 1
    stor0[address(code.data[3633 len 32])] = 1
    return code.data[715 len 2854]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint256 spendNonce;
uint256 unchainedMultisigVersionMajor;
uint256 unchainedMultisigVersionMinor;

function unchainedMultisigVersionMajor() {
    return unchainedMultisigVersionMajor
}

function spendNonce() {
    return spendNonce
}

function unchainedMultisigVersionMinor() {
    return unchainedMultisigVersionMinor
}

function _fallback() payable {
    emit Funded(eth.balance(this.address));
}

function generateMessageToSign(address arg1, uint256 arg2) {
    require arg1 != this.address
    return sha3(spendNonce, this.address, arg2, arg1)
}

function spend(address arg1, uint256 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5, uint8 arg6, bytes32 arg7, bytes32 arg8) {
    require eth.balance(this.address) >= arg2
    require arg1 != this.address
    idx = 0
    while idx < 32:
        require 2 * idx < 64
        if Mask(4, -(('mask_shl', 256, 0, -3, ('sha3', ('data', ('stor', ('name', 'spendNonce', 1)), 'address', ('param', 'arg2'), ('param', 'arg1')))), 0) + 260, idx) << (('mask_shl', 256, 0, -3, ('sha3', ('data', ('stor', ('name', 'spendNonce', 1)), 'address', ('param', 'arg2'), ('param', 'arg1')))), 0) - 12 >= 0xa00000000000000000000000000000000000000000000000000000000000000:
            mem[(2 * idx) + 308 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 4, ('add', 260, ('mul', -1, (('mask_shl', 256, 0, -3, ('sha3', ('data', ('stor', ('name', 'spendNonce', 1)), 'address', ('param', 'arg2'), ('param', 'arg1')))), 0))), ('add', -260, (('mask_shl', 256, 0, -3, ('sha3', ('data', ('stor', ('name', 'spendNonce', 1)), 'address', ('param', 'arg2'), ('param', 'arg1')))), 0)), ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 4, ('add', 260, ('mul', -1, (('mask_shl', 256, 0, -3, ('sha3', ('data', ('stor', ('name', 'spendNonce', 1)), 'address', ('param', 'arg2'), ('param', 'arg1')))), 0))), ('add', -260, (('mask_shl', 256, 0, -3, ('sha3', ('data', ('stor', ('name', 'spendNonce', 1)), 'address', ('param', 'arg2'), ('param', 'arg1')))), 0)), ('var', 0)))), 0) - 256
        else:
            mem[(2 * idx) + 308 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, ('add', 260, ('mul', -1, (('mask_shl', 256, 0, -3, ('sha3', ('data', ('stor', ('name', 'spendNonce', 1)), 'address', ('param', 'arg2'), ('param', 'arg1')))), 0))), ('add', -260, (('mask_shl', 256, 0, -3, ('sha3', ('data', ('stor', ('name', 'spendNonce', 1)), 'address', ('param', 'arg2'), ('param', 'arg1')))), 0)), ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, ('add', 260, ('mul', -1, (('mask_shl', 256, 0, -3, ('sha3', ('data', ('stor', ('name', 'spendNonce', 1)), 'address', ('param', 'arg2'), ('param', 'arg1')))), 0))), ('add', -260, (('mask_shl', 256, 0, -3, ('sha3', ('data', ('stor', ('name', 'spendNonce', 1)), 'address', ('param', 'arg2'), ('param', 'arg1')))), 0)), ('var', 0)))), 0) - 256
        require (2 * idx) + 1 < 64
        if (Mask(8, -(('mask_shl', 256, 0, -3, ('sha3', ('data', ('stor', ('name', 'spendNonce', 1)), 'address', ('param', 'arg2'), ('param', 'arg1')))), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('sha3', ('data', ('stor', ('name', 'spendNonce', 1)), 'address', ('param', 'arg2'), ('param', 'arg1')))), 0) - 256) - (Mask(4, -(('mask_shl', 256, 0, -3, ('sha3', ('data', ('stor', ('name', 'spendNonce', 1)), 'address', ('param', 'arg2'), ('param', 'arg1')))), 0) + 260, idx) << (('mask_shl', 256, 0, -3, ('sha3', ('data', ('stor', ('name', 'spendNonce', 1)), 'address', ('param', 'arg2'), ('param', 'arg1')))), 0) - 256) << 248 >= 0xa00000000000000000000000000000000000000000000000000000000000000:
            mem[(2 * idx) + 309 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 8, 0, 0, ('add', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('sha3', ('data', ('stor', ('name', 'spendNonce', 1)), 'address', ('param', 'arg2'), ('param', 'arg1')))), 0))), ('add', -256, (('mask_shl', 256, 0, -3, ('sha3', ('data', ('stor', ('name', 'spendNonce', 1)), 'address', ('param', 'arg2'), ('param', 'arg1')))), 0)), ('var', 0)), ('mul', -1, ('mask_shl', 4, ('add', 260, ('mul', -1, (('mask_shl', 256, 0, -3, ('sha3', ('data', ('stor', ('name', 'spendNonce', 1)), 'address', ('param', 'arg2'), ('param', 'arg1')))), 0))), ('add', -256, (('mask_shl', 256, 0, -3, ('sha3', ('data', ('stor', ('name', 'spendNonce', 1)), 'address', ('param', 'arg2'), ('param', 'arg1')))), 0)), ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 8, 0, 0, ('add', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('sha3', ('data', ('stor', ('name', 'spendNonce', 1)), 'address', ('param', 'arg2'), ('param', 'arg1')))), 0))), ('add', -256, (('mask_shl', 256, 0, -3, ('sha3', ('data', ('stor', ('name', 'spendNonce', 1)), 'address', ('param', 'arg2'), ('param', 'arg1')))), 0)), ('var', 0)), ('mul', -1, ('mask_shl', 4, ('add', 260, ('mul', -1, (('mask_shl', 256, 0, -3, ('sha3', ('data', ('stor', ('name', 'spendNonce', 1)), 'address', ('param', 'arg2'), ('param', 'arg1')))), 0))), ('add', -256, (('mask_shl', 256, 0, -3, ('sha3', ('data', ('stor', ('name', 'spendNonce', 1)), 'address', ('param', 'arg2'), ('param', 'arg1')))), 0)), ('var', 0))))))), 0) - 256
        else:
            mem[(2 * idx) + 309 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('sha3', ('data', ('stor', ('name', 'spendNonce', 1)), 'address', ('param', 'arg2'), ('param', 'arg1')))), 0))), ('add', -256, (('mask_shl', 256, 0, -3, ('sha3', ('data', ('stor', ('name', 'spendNonce', 1)), 'address', ('param', 'arg2'), ('param', 'arg1')))), 0)), ('var', 0)), ('mul', -1, ('mask_shl', 4, ('add', 260, ('mul', -1, (('mask_shl', 256, 0, -3, ('sha3', ('data', ('stor', ('name', 'spendNonce', 1)), 'address', ('param', 'arg2'), ('param', 'arg1')))), 0))), ('add', -256, (('mask_shl', 256, 0, -3, ('sha3', ('data', ('stor', ('name', 'spendNonce', 1)), 'address', ('param', 'arg2'), ('param', 'arg1')))), 0)), ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('sha3', ('data', ('stor', ('name', 'spendNonce', 1)), 'address', ('param', 'arg2'), ('param', 'arg1')))), 0))), ('add', -256, (('mask_shl', 256, 0, -3, ('sha3', ('data', ('stor', ('name', 'spendNonce', 1)), 'address', ('param', 'arg2'), ('param', 'arg1')))), 0)), ('var', 0)), ('mul', -1, ('mask_shl', 4, ('add', 260, ('mul', -1, (('mask_shl', 256, 0, -3, ('sha3', ('data', ('stor', ('name', 'spendNonce', 1)), 'address', ('param', 'arg2'), ('param', 'arg1')))), 0))), ('add', -256, (('mask_shl', 256, 0, -3, ('sha3', ('data', ('stor', ('name', 'spendNonce', 1)), 'address', ('param', 'arg2'), ('param', 'arg1')))), 0)), ('var', 0))))))), 0) - 256
        idx = idx + 1
        continue 
    mem[436 len 0] = None
    signer = erecover(sha3(mem[436 len 6], 7310869555711666030, 0, mem[308 len 64]), arg3 + 27 << 248, arg4, arg5) 
    require erecover.result
    signer = erecover(sha3(mem[436 len 6], 7310869555711666030, 0, mem[308 len 64]), arg6 + 27 << 248, arg7, arg8) 
    require address(signer) != address(signer)
    require stor0[address(signer)]
    require stor0[address(signer)]
    spendNonce++
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Spent(address(arg1), arg2);
}



}
