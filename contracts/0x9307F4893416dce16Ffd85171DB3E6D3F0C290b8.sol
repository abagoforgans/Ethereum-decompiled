contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
address stor2;
array of address stor3;

function _fallback() payable {
    mem[96 len -4909] = code.data[5283 len -4909]
    mem[64] = -4813
    stor3.length = mem[mem[96] + 96]
    if not mem[mem[96] + 96]:
        idx = 0
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[96] + 128
        while mem[96] + (32 * mem[mem[96] + 96]) + 128 > idx:
            stor3[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[96] + 96]) + 31) >> 5
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    stor1 = mem[128]
    stor2 = msg.sender
    stor0 = 1
    return code.data[374 len 4909]
}



// =====================  Runtime code  =====================


#
#  - transfer(uint256 arg1, address[] arg2, uint256[] arg3, uint256[3] arg4, bytes arg5, bytes arg6, bytes arg7)
#
uint256 m_opNum;
uint256 m_teamId;
address m_owner;
array of address m_cosigners;
array of address m_cosignersApprovedDisband;

function m_cosignersApprovedDisband(uint256 arg1) {
    require arg1 < m_cosignersApprovedDisband.length
    return address(m_cosignersApprovedDisband[arg1])
}

function m_cosigners(uint256 arg1) {
    require arg1 < m_cosigners.length
    return m_cosigners[arg1]
}

function m_teamId() {
    return m_teamId
}

function m_owner() {
    return m_owner
}

function m_opNum() {
    return m_opNum
}

function _fallback() payable {
  stop
}

function disbandTo(address arg1) {
    require msg.sender == m_owner
    if m_cosigners.length > 6:
        require m_cosignersApprovedDisband.length > 2
    if m_cosigners.length > 3:
        require m_cosignersApprovedDisband.length > 1
    require m_cosignersApprovedDisband.length > 0
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function approveDisband() {
    idx = 0
    while idx < m_cosignersApprovedDisband.length:
        mem[0] = 4
        if address(m_cosignersApprovedDisband[idx]) != msg.sender:
            idx = idx + 1
            continue 
    idx = 0
    while idx < m_cosigners.length:
        mem[0] = 3
        if m_cosigners[idx] == msg.sender:
            m_cosignersApprovedDisband.length++
            if not m_cosignersApprovedDisband.length <= m_cosignersApprovedDisband.length + 1:
                s = sha3(4) + m_cosignersApprovedDisband.length + 1
                while sha3(4) + m_cosignersApprovedDisband.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            mem[0] = 4
            address(m_cosignersApprovedDisband[m_cosignersApprovedDisband.length]) = msg.sender
        idx = idx + 1
        continue 
}

function changeAllCosigners(uint256 arg1, address[] arg2, uint256[3] arg3, bytes arg4, bytes arg5, bytes arg6) {
    require msg.sender == m_owner
    require arg1 >= m_opNum
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    mem[(32 * arg2.length) + 160] = 20 * arg2.length
    s = 0
    idx = 0
    while idx < arg2.length:
        s = 0
        while s < 20:
            require idx < arg2.length
            require 2^(8 * -s + 19)
            require (20 * idx) + s < 20 * arg2.length
            mem[(32 * arg2.length) + (20 * idx) + s + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('mem', ('range', ('add', 140, ('mask_shl', 251, 0, 5, ('var', 0))), 20)), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 1))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('mem', ('range', ('add', 140, ('mask_shl', 251, 0, 5, ('var', 0))), 20)), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 1))))))), 0) - 256
            s = s + 1
            continue 
        s = 20
        idx = idx + 1
        continue 
    mem[(32 * arg2.length) + (32 * 20 * arg2.length) + 192] = 'NS'
    mem[(32 * arg2.length) + (32 * 20 * arg2.length) + 194] = m_teamId
    mem[(32 * arg2.length) + (32 * 20 * arg2.length) + 226] = arg1
    mem[(32 * arg2.length) + (32 * 20 * arg2.length) + 258 len floor32(20 * arg2.length)] = mem[(32 * arg2.length) + 192 len floor32(20 * arg2.length)]
    mem[(32 * arg2.length) + (32 * 20 * arg2.length) + floor32(20 * arg2.length) + -(20 * arg2.length % 32) + 290 len 20 * arg2.length % 32] = mem[(32 * arg2.length) + floor32(20 * arg2.length) + -(20 * arg2.length % 32) + 224 len 20 * arg2.length % 32]
    _734 = sha3(mem[(32 * arg2.length) + (32 * 20 * arg2.length) + 192 len (84 * arg2.length) + 66])
    mem[(32 * arg2.length) + (32 * 20 * arg2.length) + 320 len arg6.length] = arg6[all]
    mem[(32 * arg2.length) + (32 * 20 * arg2.length) + ceil32(arg6.length) + 320] = ('cd', 196).length
    mem[(32 * arg2.length) + (32 * 20 * arg2.length) + ceil32(arg6.length) + 352 len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
    mem[(32 * arg2.length) + (32 * 20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 352] = ('cd', 228).length
    mem[(32 * arg2.length) + (32 * 20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 384 len ('cd', 228).length] = call.data[cd[228] + 36 len ('cd', 228).length]
    require call.data[68] < m_cosigners.length
    mem[(32 * arg2.length) + (32 * 20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + ceil32(('cd', 228).length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 384, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 0, 5, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 384, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 0, 5, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), 32))), 0) - 256
    signer = erecover(_734, 0, mem[(32 * arg2.length) + (32 * 20 * arg2.length) + 320], mem[(32 * arg2.length) + (32 * 20 * arg2.length) + 352]) 
    mem[(32 * arg2.length) + (32 * 20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + ceil32(('cd', 228).length) + 384] = signer
    if bool(erecover.result) != 1:
        if m_cosigners.length <= 3:
            require bool(erecover.result) == 1
        else:
            if bool(erecover.result) != 1:
                require bool(erecover.result) == 1
                if m_cosigners.length <= 6:
                else:
                    require call.data[132] < m_cosigners.length
                    signer = erecover(_734, 0, mem[(32 * arg2.length) + (32 * 20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 384], mem[(32 * arg2.length) + (32 * 20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 416]) 
                    require bool(erecover.result) == 1
                    require address(signer) == m_cosigners[call.data[132]]
            else:
                require call.data[100] < m_cosigners.length
                mem[(32 * arg2.length) + (32 * 20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + ceil32(('cd', 228).length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 0, 5, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 0, 5, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) - 256
                signer = erecover(_734, 0, mem[(32 * arg2.length) + (32 * 20 * arg2.length) + ceil32(arg6.length) + 352], mem[(32 * arg2.length) + (32 * 20 * arg2.length) + ceil32(arg6.length) + 384]) 
                mem[(32 * arg2.length) + (32 * 20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + ceil32(('cd', 228).length) + 384] = signer
                if bool(erecover.result) != 1:
                    require bool(erecover.result) == 1
                    if m_cosigners.length <= 6:
                    else:
                        require call.data[132] < m_cosigners.length
                        signer = erecover(_734, 0, mem[(32 * arg2.length) + (32 * 20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 384], mem[(32 * arg2.length) + (32 * 20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 416]) 
                        require bool(erecover.result) == 1
                        require address(signer) == m_cosigners[call.data[132]]
                else:
                    require address(signer) == m_cosigners[call.data[100]]
                    if m_cosigners.length <= 6:
                    else:
                        require call.data[132] < m_cosigners.length
                        signer = erecover(_734, 0, mem[(32 * arg2.length) + (32 * 20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 384], mem[(32 * arg2.length) + (32 * 20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 416]) 
                        require bool(erecover.result) == 1
                        require address(signer) == m_cosigners[call.data[132]]
    else:
        if m_cosigners.length <= 3:
            require address(signer) == m_cosigners[call.data[68]]
        else:
            if address(signer) != m_cosigners[call.data[68]]:
                require address(signer) == m_cosigners[call.data[68]]
                if m_cosigners.length <= 6:
                else:
                    require call.data[132] < m_cosigners.length
                    signer = erecover(_734, 0, mem[(32 * arg2.length) + (32 * 20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 384], mem[(32 * arg2.length) + (32 * 20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 416]) 
                    require bool(erecover.result) == 1
                    require address(signer) == m_cosigners[call.data[132]]
            else:
                require call.data[100] < m_cosigners.length
                mem[(32 * arg2.length) + (32 * 20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + ceil32(('cd', 228).length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 0, 5, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 0, 5, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) - 256
                signer = erecover(_734, 0, mem[(32 * arg2.length) + (32 * 20 * arg2.length) + ceil32(arg6.length) + 352], mem[(32 * arg2.length) + (32 * 20 * arg2.length) + ceil32(arg6.length) + 384]) 
                mem[(32 * arg2.length) + (32 * 20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + ceil32(('cd', 228).length) + 384] = signer
                if bool(erecover.result) != 1:
                    require bool(erecover.result) == 1
                    if m_cosigners.length <= 6:
                    else:
                        require call.data[132] < m_cosigners.length
                        signer = erecover(_734, 0, mem[(32 * arg2.length) + (32 * 20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 384], mem[(32 * arg2.length) + (32 * 20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 416]) 
                        require bool(erecover.result) == 1
                        require address(signer) == m_cosigners[call.data[132]]
                else:
                    require address(signer) == m_cosigners[call.data[100]]
                    if m_cosigners.length <= 6:
                    else:
                        require call.data[132] < m_cosigners.length
                        signer = erecover(_734, 0, mem[(32 * arg2.length) + (32 * 20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 384], mem[(32 * arg2.length) + (32 * 20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 416]) 
                        require bool(erecover.result) == 1
                        require address(signer) == m_cosigners[call.data[132]]
    m_opNum = arg1 + 1
    m_cosignersApprovedDisband.length = 0
    if not m_cosignersApprovedDisband.length <= 0:
        idx = 0
        while m_cosignersApprovedDisband.length > idx:
            uint256(m_cosignersApprovedDisband[idx]) = 0
            idx = idx + 1
            continue 
    m_cosigners.length = arg2.length
    if not arg2.length:
        idx = 0
        while m_cosigners.length > idx:
            m_cosigners[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg2 + 36
        while arg2 + (32 * arg2.length) + 36 > idx:
            m_cosigners[s] = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while m_cosigners.length > idx:
            m_cosigners[idx] = 0
            idx = idx + 1
            continue 
}



}
