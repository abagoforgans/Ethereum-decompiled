contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
array of struct registeredTokens;

function registeredTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < registeredTokens.length
    return registeredTokens[arg1].field_0
}

function sub_a2e1ce62(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function addToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    staticcall stor0.0xd936547e with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'NOT_SYSTEM_PARAM_ADMIN'
    stor1[address(arg1)] = 1
    registeredTokens.length++
    registeredTokens[registeredTokens.length].field_0 = arg1
    emit TokenAdded(arg1);
}

function removeToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    staticcall stor0.0xd936547e with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'NOT_SYSTEM_PARAM_ADMIN'
    stor1[address(arg1)] = 0
    idx = 0
    while idx < registeredTokens.length:
        mem[0] = 2
        if registeredTokens[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        require registeredTokens.length - 1 < registeredTokens.length
        require idx < registeredTokens.length
        registeredTokens[idx].field_0 = registeredTokens[registeredTokens.length].field_0
        require registeredTokens.length
        registeredTokens[registeredTokens.length].field_0 = 0
        registeredTokens.length--
        emit TokenRemoved(arg1);
    emit TokenRemoved(arg1);
}

function getRegisteredTokens() payable {
    mem[64] = (32 * registeredTokens.length) + 128
    mem[96] = registeredTokens.length
    if not registeredTokens.length:
        mem[(32 * registeredTokens.length) + 128] = 32
        mem[(32 * registeredTokens.length) + 160] = registeredTokens.length
        idx = 0
        s = 128
        t = (32 * registeredTokens.length) + 192
        while idx < registeredTokens.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * registeredTokens.length) + 128
           len (96 * registeredTokens.length) + 64
    mem[128] = address(registeredTokens.field_0)
    idx = 128
    s = 0
    while (32 * registeredTokens.length) + 96 > idx:
        mem[idx + 32] = registeredTokens[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * registeredTokens.length) + 128] = 32
    mem[(32 * registeredTokens.length) + 160] = registeredTokens.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < registeredTokens.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * registeredTokens.length) + -mem[64] + 192
}



}
