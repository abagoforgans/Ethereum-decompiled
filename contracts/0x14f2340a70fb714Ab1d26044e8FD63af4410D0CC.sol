contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[1316 len 20]
    return code.data[96 len 1208]
}



// =====================  Runtime code  =====================


address owner;
address stor1;

function owner() {
    return owner
}

function kill() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function sub_5efa79e8(?) {
  stop
}

function _fallback() payable {
  stop
}

function collectFunds() {
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_2dd6ed7a(?) {
    mem[128] = 32
    idx = 0
    s = 15
    while idx < 16:
        require s < mem[128]
        mem[s + 160 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        s = s - 1
        continue 
    idx = 16
    s = 31
    while idx < 32:
        require s < mem[128]
        mem[s + 160 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        s = s - 1
        continue 
    mem[1216] = 20
    idx = 0
    s = 9
    while idx < 10:
        require s < mem[1216]
        mem[s + 1248 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 160, 96, -3, ('param', 'arg2')), 0))), ('add', -11, (('mask_shl', 160, 96, -3, ('param', 'arg2')), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 160, 96, -3, ('param', 'arg2')), 0))), ('add', -11, (('mask_shl', 160, 96, -3, ('param', 'arg2')), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        s = s - 1
        continue 
    idx = 10
    s = 19
    while idx < 20:
        require s < mem[1216]
        mem[s + 1248 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 160, 96, -3, ('param', 'arg2')), 0))), ('add', -11, (('mask_shl', 160, 96, -3, ('param', 'arg2')), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 160, 96, -3, ('param', 'arg2')), 0))), ('add', -11, (('mask_shl', 160, 96, -3, ('param', 'arg2')), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        s = s - 1
        continue 
    if ext_code.size(stor1):
        call stor1.sealedBids(address rg1, bytes32 rg2) with:
             gas gas_remaining - 710 wei
            args mem[1248 len 20], mem[160]
        if ext_call.success:
            if not address(ext_call.return_data[0]):
            if ext_code.size(stor1):
                call stor1.cancelBid(address rg1, bytes32 rg2) with:
                     gas gas_remaining wei
                    args address(mem[1236]), mem[160]
                if ext_call.success:
    revert
}



}
