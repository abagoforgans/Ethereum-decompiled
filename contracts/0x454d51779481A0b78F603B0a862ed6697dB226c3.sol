contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[63 len 1204]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 balances;

function balances(bytes12 arg1) {
    return balances[arg1]
}

function owner() {
    return owner
}

function sub_4b706709(?) {
    if msg.sender == owner:
        require balances[Mask(96, 160, arg2)] >= arg3
        call arg1 with:
           value arg3 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        balances[Mask(96, 160, arg2)] -= arg3
        emit 0x98a8151b: address(arg1), block.timestamp, arg3, Mask(96, 160, arg2)
}

function _fallback() {
    if msg.value > 0:
        mem[64] = ceil32(calldata.size) + 128
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        idx = 0
        s = 0
        while idx < 12:
            if idx >= calldata.size:
                idx = idx + 1
                s = 256 * s
                continue 
            require idx < calldata.size
            idx = idx + 1
            s = 256 * s or mem[idx + 128 len 1]
            continue 
        balances[s << 160] += msg.value
        emit 0x4799938b: msg.sender, block.timestamp, msg.value, s << 160
}



}
