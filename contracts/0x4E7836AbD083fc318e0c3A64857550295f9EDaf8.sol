contract main {




// =====================  Runtime code  =====================


#
#  - changeAllCosigners2(uint256 arg1, address[] arg2, bytes arg3, bytes arg4, bytes arg5, bytes arg6)
#
uint256 m_opNum;
uint256 m_teamId;
address m_owner;
array of address m_cosigners;
array of address m_cosignersApprovedDisband;
address stor5;

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
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function rescue(address arg1) {
    require msg.sender == m_owner
    require ext_code.size(stor5)
    call stor5.canRescue(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
            mem[0] = 4
            uint256(m_cosignersApprovedDisband[m_cosignersApprovedDisband.length]) = msg.sender or Mask(96, 160, uint256(m_cosignersApprovedDisband[m_cosignersApprovedDisband.length]))
        idx = idx + 1
        continue 
}

function assignOwner(address[] arg1, uint256 arg2, address arg3) {
    require msg.sender == m_owner
    if not m_cosigners.length:
        m_cosigners.length = arg1.length
        if not arg1.length:
            idx = 0
            while m_cosigners.length > idx:
                m_cosigners[idx] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = arg1 + 36
            while arg1 + (32 * arg1.length) + 36 > idx:
                m_cosigners[s] = address(cd[idx])
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
            while m_cosigners.length > idx:
                m_cosigners[idx] = 0
                idx = idx + 1
                continue 
        m_teamId = arg2
        m_owner = arg3
}

function changeAllCosigners(uint256 arg1, address[] arg2, uint256[3] arg3, bytes arg4, bytes arg5, bytes arg6) {
    require msg.sender == m_owner
    require arg1 >= m_opNum
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 20 * arg2.length
    if not 20 * arg2.length:
        s = 0
        idx = 0
        while idx < arg2.length:
            s = 0
            while s < 20:
                require idx < arg2.length
                require 2^(8 * -s + 19)
                require (20 * idx) + s < 20 * arg2.length
                mem[(32 * arg2.length) + (20 * idx) + s + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('mem', ('range', ('add', 140, ('mask_shl', 251, 0, 5, ('var', 0))), 20)), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 1))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('mem', ('range', ('add', 140, ('mask_shl', 251, 0, 5, ('var', 0))), 20)), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 1))))))), 0) - 256
                s = s + 1
                continue 
            s = 20
            idx = idx + 1
            continue 
        mem[(32 * arg2.length) + ceil32(20 * arg2.length) + 160] = 'NS'
        mem[(32 * arg2.length) + ceil32(20 * arg2.length) + 162] = m_teamId
        mem[(32 * arg2.length) + ceil32(20 * arg2.length) + 194] = arg1
        mem[(32 * arg2.length) + ceil32(20 * arg2.length) + 226 len floor32(20 * arg2.length)] = mem[(32 * arg2.length) + 160 len floor32(20 * arg2.length)]
        mem[(32 * arg2.length) + ceil32(20 * arg2.length) + floor32(20 * arg2.length) + -(20 * arg2.length % 32) + 258 len 20 * arg2.length % 32] = mem[(32 * arg2.length) + floor32(20 * arg2.length) + -(20 * arg2.length % 32) + 192 len 20 * arg2.length % 32]
        _721 = sha3(mem[(32 * arg2.length) + ceil32(20 * arg2.length) + 160 len (84 * arg2.length) + 66])
        mem[(32 * arg2.length) + ceil32(20 * arg2.length) + 288 len arg6.length] = arg6[all]
        mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + 288] = ('cd', 196).length
        mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + 320 len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
        mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 320] = ('cd', 228).length
        mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 352 len ('cd', 228).length] = call.data[cd[228] + 36 len ('cd', 228).length]
        require call.data[68] < m_cosigners.length
        mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + ceil32(('cd', 228).length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 352, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2'))))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 352, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2'))))))), 32))), 0) - 256
        signer = erecover(_721, 0, mem[(32 * arg2.length) + ceil32(20 * arg2.length) + 288], mem[(32 * arg2.length) + ceil32(20 * arg2.length) + 320]) 
        mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + ceil32(('cd', 228).length) + 352] = signer
        if bool(erecover.result) != 1:
            if m_cosigners.length <= 3:
                require bool(erecover.result) == 1
            else:
                if bool(erecover.result) != 1:
                    require bool(erecover.result) == 1
                    if m_cosigners.length <= 6:
                    else:
                        require call.data[132] < m_cosigners.length
                        signer = erecover(_721, 0, mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 352], mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 384]) 
                        require bool(erecover.result) == 1
                        require address(signer) == m_cosigners[call.data[132]]
                else:
                    require call.data[100] < m_cosigners.length
                    mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + ceil32(('cd', 228).length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 384, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 384, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) - 256
                    signer = erecover(_721, 0, mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + 320], mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + 352]) 
                    mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + ceil32(('cd', 228).length) + 352] = signer
                    if bool(erecover.result) != 1:
                        require bool(erecover.result) == 1
                        if m_cosigners.length <= 6:
                        else:
                            require call.data[132] < m_cosigners.length
                            signer = erecover(_721, 0, mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 352], mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 384]) 
                            require bool(erecover.result) == 1
                            require address(signer) == m_cosigners[call.data[132]]
                    else:
                        require address(signer) == m_cosigners[call.data[100]]
                        if m_cosigners.length <= 6:
                        else:
                            require call.data[132] < m_cosigners.length
                            signer = erecover(_721, 0, mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 352], mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 384]) 
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
                        signer = erecover(_721, 0, mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 352], mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 384]) 
                        require bool(erecover.result) == 1
                        require address(signer) == m_cosigners[call.data[132]]
                else:
                    require call.data[100] < m_cosigners.length
                    mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + ceil32(('cd', 228).length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 384, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 384, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) - 256
                    signer = erecover(_721, 0, mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + 320], mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + 352]) 
                    mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + ceil32(('cd', 228).length) + 352] = signer
                    if bool(erecover.result) != 1:
                        require bool(erecover.result) == 1
                        if m_cosigners.length <= 6:
                        else:
                            require call.data[132] < m_cosigners.length
                            signer = erecover(_721, 0, mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 352], mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 384]) 
                            require bool(erecover.result) == 1
                            require address(signer) == m_cosigners[call.data[132]]
                    else:
                        require address(signer) == m_cosigners[call.data[100]]
                        if m_cosigners.length <= 6:
                        else:
                            require call.data[132] < m_cosigners.length
                            signer = erecover(_721, 0, mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 352], mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 384]) 
                            require bool(erecover.result) == 1
                            require address(signer) == m_cosigners[call.data[132]]
    else:
        mem[(32 * arg2.length) + 160 len 32 * 20 * arg2.length] = code.data[5531 len 32 * 20 * arg2.length]
        s = 0
        idx = 0
        while idx < arg2.length:
            s = 0
            while s < 20:
                require idx < arg2.length
                require 2^(8 * -s + 19)
                require (20 * idx) + s < 20 * arg2.length
                mem[(32 * arg2.length) + (20 * idx) + s + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('mem', ('range', ('add', 140, ('mask_shl', 251, 0, 5, ('var', 0))), 20)), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 1))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('mem', ('range', ('add', 140, ('mask_shl', 251, 0, 5, ('var', 0))), 20)), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 1))))))), 0) - 256
                s = s + 1
                continue 
            s = 20
            idx = idx + 1
            continue 
        mem[(32 * arg2.length) + ceil32(20 * arg2.length) + 160] = 'NS'
        mem[(32 * arg2.length) + ceil32(20 * arg2.length) + 162] = m_teamId
        mem[(32 * arg2.length) + ceil32(20 * arg2.length) + 194] = arg1
        mem[(32 * arg2.length) + ceil32(20 * arg2.length) + 226 len floor32(20 * arg2.length)] = mem[(32 * arg2.length) + 160 len floor32(20 * arg2.length)]
        mem[(32 * arg2.length) + ceil32(20 * arg2.length) + floor32(20 * arg2.length) + -(20 * arg2.length % 32) + 258 len 20 * arg2.length % 32] = mem[(32 * arg2.length) + floor32(20 * arg2.length) + -(20 * arg2.length % 32) + 192 len 20 * arg2.length % 32]
        _731 = sha3(mem[(32 * arg2.length) + ceil32(20 * arg2.length) + 160 len (84 * arg2.length) + 66])
        mem[(32 * arg2.length) + ceil32(20 * arg2.length) + 288 len arg6.length] = arg6[all]
        mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + 288] = ('cd', 196).length
        mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + 320 len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
        mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 320] = ('cd', 228).length
        mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 352 len ('cd', 228).length] = call.data[cd[228] + 36 len ('cd', 228).length]
        require call.data[68] < m_cosigners.length
        mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + ceil32(('cd', 228).length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 352, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2'))))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 352, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2'))))))), 32))), 0) - 256
        signer = erecover(_731, 0, mem[(32 * arg2.length) + ceil32(20 * arg2.length) + 288], mem[(32 * arg2.length) + ceil32(20 * arg2.length) + 320]) 
        mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + ceil32(('cd', 228).length) + 352] = signer
        if bool(erecover.result) != 1:
            if m_cosigners.length <= 3:
                require bool(erecover.result) == 1
            else:
                if bool(erecover.result) != 1:
                    require bool(erecover.result) == 1
                    if m_cosigners.length <= 6:
                    else:
                        require call.data[132] < m_cosigners.length
                        signer = erecover(_731, 0, mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 352], mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 384]) 
                        require bool(erecover.result) == 1
                        require address(signer) == m_cosigners[call.data[132]]
                else:
                    require call.data[100] < m_cosigners.length
                    mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + ceil32(('cd', 228).length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 384, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 384, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) - 256
                    signer = erecover(_731, 0, mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + 320], mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + 352]) 
                    mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + ceil32(('cd', 228).length) + 352] = signer
                    if bool(erecover.result) != 1:
                        require bool(erecover.result) == 1
                        if m_cosigners.length <= 6:
                        else:
                            require call.data[132] < m_cosigners.length
                            signer = erecover(_731, 0, mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 352], mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 384]) 
                            require bool(erecover.result) == 1
                            require address(signer) == m_cosigners[call.data[132]]
                    else:
                        require address(signer) == m_cosigners[call.data[100]]
                        if m_cosigners.length <= 6:
                        else:
                            require call.data[132] < m_cosigners.length
                            signer = erecover(_731, 0, mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 352], mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 384]) 
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
                        signer = erecover(_731, 0, mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 352], mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 384]) 
                        require bool(erecover.result) == 1
                        require address(signer) == m_cosigners[call.data[132]]
                else:
                    require call.data[100] < m_cosigners.length
                    mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + ceil32(('cd', 228).length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 384, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 384, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) - 256
                    signer = erecover(_731, 0, mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + 320], mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + 352]) 
                    mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + ceil32(('cd', 228).length) + 352] = signer
                    if bool(erecover.result) != 1:
                        require bool(erecover.result) == 1
                        if m_cosigners.length <= 6:
                        else:
                            require call.data[132] < m_cosigners.length
                            signer = erecover(_731, 0, mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 352], mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 384]) 
                            require bool(erecover.result) == 1
                            require address(signer) == m_cosigners[call.data[132]]
                    else:
                        require address(signer) == m_cosigners[call.data[100]]
                        if m_cosigners.length <= 6:
                        else:
                            require call.data[132] < m_cosigners.length
                            signer = erecover(_731, 0, mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 352], mem[(32 * arg2.length) + ceil32(20 * arg2.length) + ceil32(arg6.length) + ceil32(('cd', 196).length) + 384]) 
                            require bool(erecover.result) == 1
                            require address(signer) == m_cosigners[call.data[132]]
    m_opNum = arg1 + 1
    m_cosignersApprovedDisband.length = 0
    if m_cosignersApprovedDisband.length > 0:
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

function transfer(uint256 arg1, address[] arg2, uint256[] arg3, uint256[3] arg4, bytes arg5, bytes arg6, bytes arg7) {
    require msg.sender == m_owner
    require arg1 >= m_opNum
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    idx = 0
    s = 0
    while idx < arg3.length:
        require idx < arg3.length
        idx = idx + 1
        s = mem[(32 * idx) + 128] + s
        continue 
    require _800 * arg3.length <= eth.balance(this.address)
    mem[(32 * arg3.length) + 128] = arg2.length
    mem[(32 * arg3.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 20 * arg2.length
    if not 20 * arg2.length:
        s = 0
        idx = 0
        while idx < arg2.length:
            s = 0
            while s < 20:
                require idx < arg2.length
                require 2^(8 * -s + 19)
                require (20 * idx) + s < 20 * arg2.length
                mem[(32 * arg3.length) + (32 * arg2.length) + (20 * idx) + s + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('mem', ('range', ('add', 172, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg3'))))), 20)), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 1))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('mem', ('range', ('add', 172, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg3'))))), 20)), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 1))))))), 0) - 256
                s = s + 1
                continue 
            s = 20
            idx = idx + 1
            continue 
        mem[(32 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 192] = arg3.length
        mem[(32 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 224 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 224] = 32 * arg3.length
        mem[64] = (64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 256
        if not Mask(251, 0, arg3.length):
            s = 0
            idx = 0
            while idx < arg3.length:
                s = 0
                while s < 32:
                    require idx < mem[(32 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 192]
                    require 2^(8 * -s + 31)
                    require (32 * idx) + s < 32 * arg3.length
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + (32 * idx) + s + 256 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('mem', ('range', ('add', 224, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2'))))))), 32)), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 1))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('mem', ('range', ('add', 224, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2'))))))), 32)), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 1))))))), 0) - 256
                    s = s + 1
                    continue 
                s = 32
                idx = idx + 1
                continue 
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 256] = 'TR'
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 258] = m_teamId
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 290] = arg1
            _3929 = mem[(32 * arg3.length) + (32 * arg2.length) + 160]
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 322 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160])] = mem[(32 * arg3.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160])]
            var26002 = (64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + 322
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + 322] = 256^(-(mem[(32 * arg3.length) + (32 * arg2.length) + 160] % 32) + 32) - 1 and mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + 322] or mem[(32 * arg3.length) + (32 * arg2.length) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + 192] and !(256^(-(mem[(32 * arg3.length) + (32 * arg2.length) + 160] % 32) + 32) - 1)
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + _3929 + 322 len 32 * arg3.length] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 256 len 32 * arg3.length]
            var29001 = (98 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 256
            mem[(98 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + _3929 + 354 len 0] = None
            _5467 = sha3(mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 256 len (161 * arg3.length) + _3929 + 66])
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 256 len 96] = call.data[100 len 96]
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 352] = arg7.length
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 384 len arg7.length] = arg7[all]
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 384] = ('cd', 228).length
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 416 len ('cd', 228).length] = call.data[cd[228] + 36 len ('cd', 228).length]
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 416] = ('cd', 260).length
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448 len ('cd', 260).length] = call.data[cd[260] + 36 len ('cd', 260).length]
            require call.data[100] < m_cosigners.length
            mem[0] = 3
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 32))), 0) - 256
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 384]
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 416]
            signer = erecover(_5467, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 416]) 
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 448] = signer
            if bool(erecover.result) != 1:
                if m_cosigners.length <= 3:
                    require bool(erecover.result) == 1
                else:
                    if bool(erecover.result) != 1:
                        require bool(erecover.result) == 1
                        if m_cosigners.length <= 6:
                        else:
                            require call.data[164] < m_cosigners.length
                            mem[0] = 3
                            _5664 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 480]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) - 256
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = _5664
                            signer = erecover(_5467, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448], _5664) 
                            require bool(erecover.result) == 1
                            require address(signer) == m_cosigners[call.data[164]]
                    else:
                        require call.data[132] < m_cosigners.length
                        mem[0] = 3
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 480, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 480, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7')))))), 32))), 0) - 256
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 416]
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 448]
                        signer = erecover(_5467, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 416], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 448]) 
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 448] = signer
                        if bool(erecover.result) != 1:
                            require bool(erecover.result) == 1
                            if m_cosigners.length <= 6:
                            else:
                                require call.data[164] < m_cosigners.length
                                mem[0] = 3
                                _5836 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 480]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = _5836
                                signer = erecover(_5467, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448], _5836) 
                                require bool(erecover.result) == 1
                                require address(signer) == m_cosigners[call.data[164]]
                        else:
                            require address(signer) == m_cosigners[call.data[132]]
                            if m_cosigners.length <= 6:
                            else:
                                require call.data[164] < m_cosigners.length
                                mem[0] = 3
                                _5874 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 480]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = _5874
                                signer = erecover(_5467, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448], _5874) 
                                require bool(erecover.result) == 1
                                require address(signer) == m_cosigners[call.data[164]]
            else:
                if m_cosigners.length <= 3:
                    require address(signer) == m_cosigners[call.data[100]]
                else:
                    if address(signer) != m_cosigners[call.data[100]]:
                        require address(signer) == m_cosigners[call.data[100]]
                        if m_cosigners.length <= 6:
                        else:
                            require call.data[164] < m_cosigners.length
                            mem[0] = 3
                            _5704 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 480]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) - 256
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = _5704
                            signer = erecover(_5467, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448], _5704) 
                            require bool(erecover.result) == 1
                            require address(signer) == m_cosigners[call.data[164]]
                    else:
                        require call.data[132] < m_cosigners.length
                        mem[0] = 3
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 480, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 480, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7')))))), 32))), 0) - 256
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 416]
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 448]
                        signer = erecover(_5467, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 416], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 448]) 
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 448] = signer
                        if bool(erecover.result) != 1:
                            require bool(erecover.result) == 1
                            if m_cosigners.length <= 6:
                            else:
                                require call.data[164] < m_cosigners.length
                                mem[0] = 3
                                _5880 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 480]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = _5880
                                signer = erecover(_5467, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448], _5880) 
                                require bool(erecover.result) == 1
                                require address(signer) == m_cosigners[call.data[164]]
                        else:
                            require address(signer) == m_cosigners[call.data[132]]
                            if m_cosigners.length <= 6:
                            else:
                                require call.data[164] < m_cosigners.length
                                mem[0] = 3
                                _5941 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 480]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = _5941
                                signer = erecover(_5467, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448], _5941) 
                                require bool(erecover.result) == 1
                                require address(signer) == m_cosigners[call.data[164]]
        else:
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 256 len 1024 * arg3.length] = code.data[5531 len 1024 * arg3.length]
            s = 0
            idx = 0
            while idx < arg3.length:
                s = 0
                while s < 32:
                    require idx < mem[(32 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 192]
                    require 2^(8 * -s + 31)
                    require (32 * idx) + s < 32 * arg3.length
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + (32 * idx) + s + 256 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('mem', ('range', ('add', 224, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2'))))))), 32)), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 1))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('mem', ('range', ('add', 224, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2'))))))), 32)), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 1))))))), 0) - 256
                    s = s + 1
                    continue 
                s = 32
                idx = idx + 1
                continue 
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 256] = 'TR'
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 258] = m_teamId
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 290] = arg1
            _3931 = mem[(32 * arg3.length) + (32 * arg2.length) + 160]
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 322 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160])] = mem[(32 * arg3.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160])]
            var27002 = (64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + 322
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + 322] = 256^(-(mem[(32 * arg3.length) + (32 * arg2.length) + 160] % 32) + 32) - 1 and mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + 322] or mem[(32 * arg3.length) + (32 * arg2.length) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + 192] and !(256^(-(mem[(32 * arg3.length) + (32 * arg2.length) + 160] % 32) + 32) - 1)
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + _3931 + 322 len 32 * arg3.length] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 256 len 32 * arg3.length]
            var30001 = (98 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 256
            mem[(98 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + _3931 + 354 len 0] = None
            _5476 = sha3(mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 256 len (161 * arg3.length) + _3931 + 66])
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 256 len 96] = call.data[100 len 96]
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 352] = arg7.length
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 384 len arg7.length] = arg7[all]
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 384] = ('cd', 228).length
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 416 len ('cd', 228).length] = call.data[cd[228] + 36 len ('cd', 228).length]
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 416] = ('cd', 260).length
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448 len ('cd', 260).length] = call.data[cd[260] + 36 len ('cd', 260).length]
            require call.data[100] < m_cosigners.length
            mem[0] = 3
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 32))), 0) - 256
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 384]
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 416]
            signer = erecover(_5476, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 416]) 
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 448] = signer
            if bool(erecover.result) != 1:
                if m_cosigners.length <= 3:
                    require bool(erecover.result) == 1
                else:
                    if bool(erecover.result) != 1:
                        require bool(erecover.result) == 1
                        if m_cosigners.length <= 6:
                        else:
                            require call.data[164] < m_cosigners.length
                            mem[0] = 3
                            _5673 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 480]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) - 256
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = _5673
                            signer = erecover(_5476, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448], _5673) 
                            require bool(erecover.result) == 1
                            require address(signer) == m_cosigners[call.data[164]]
                    else:
                        require call.data[132] < m_cosigners.length
                        mem[0] = 3
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 480, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 480, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7')))))), 32))), 0) - 256
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 416]
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 448]
                        signer = erecover(_5476, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 416], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 448]) 
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 448] = signer
                        if bool(erecover.result) != 1:
                            require bool(erecover.result) == 1
                            if m_cosigners.length <= 6:
                            else:
                                require call.data[164] < m_cosigners.length
                                mem[0] = 3
                                _5845 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 480]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = _5845
                                signer = erecover(_5476, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448], _5845) 
                                require bool(erecover.result) == 1
                                require address(signer) == m_cosigners[call.data[164]]
                        else:
                            require address(signer) == m_cosigners[call.data[132]]
                            if m_cosigners.length <= 6:
                            else:
                                require call.data[164] < m_cosigners.length
                                mem[0] = 3
                                _5889 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 480]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = _5889
                                signer = erecover(_5476, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448], _5889) 
                                require bool(erecover.result) == 1
                                require address(signer) == m_cosigners[call.data[164]]
            else:
                if m_cosigners.length <= 3:
                    require address(signer) == m_cosigners[call.data[100]]
                else:
                    if address(signer) != m_cosigners[call.data[100]]:
                        require address(signer) == m_cosigners[call.data[100]]
                        if m_cosigners.length <= 6:
                        else:
                            require call.data[164] < m_cosigners.length
                            mem[0] = 3
                            _5714 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 480]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) - 256
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = _5714
                            signer = erecover(_5476, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448], _5714) 
                            require bool(erecover.result) == 1
                            require address(signer) == m_cosigners[call.data[164]]
                    else:
                        require call.data[132] < m_cosigners.length
                        mem[0] = 3
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 480, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 480, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7')))))), 32))), 0) - 256
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 416]
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 448]
                        signer = erecover(_5476, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 416], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 448]) 
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 448] = signer
                        if bool(erecover.result) != 1:
                            require bool(erecover.result) == 1
                            if m_cosigners.length <= 6:
                            else:
                                require call.data[164] < m_cosigners.length
                                mem[0] = 3
                                _5895 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 480]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = _5895
                                signer = erecover(_5476, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448], _5895) 
                                require bool(erecover.result) == 1
                                require address(signer) == m_cosigners[call.data[164]]
                        else:
                            require address(signer) == m_cosigners[call.data[132]]
                            if m_cosigners.length <= 6:
                            else:
                                require call.data[164] < m_cosigners.length
                                mem[0] = 3
                                _5956 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 480]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = _5956
                                signer = erecover(_5476, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448], _5956) 
                                require bool(erecover.result) == 1
                                require address(signer) == m_cosigners[call.data[164]]
    else:
        mem[(32 * arg3.length) + (32 * arg2.length) + 192 len 32 * 20 * arg2.length] = code.data[5531 len 32 * 20 * arg2.length]
        s = 0
        idx = 0
        while idx < arg2.length:
            s = 0
            while s < 20:
                require idx < arg2.length
                require 2^(8 * -s + 19)
                require (20 * idx) + s < 20 * arg2.length
                mem[(32 * arg3.length) + (32 * arg2.length) + (20 * idx) + s + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('mem', ('range', ('add', 172, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg3'))))), 20)), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 1))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('mem', ('range', ('add', 172, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg3'))))), 20)), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 1))))))), 0) - 256
                s = s + 1
                continue 
            s = 20
            idx = idx + 1
            continue 
        mem[(32 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 192] = arg3.length
        mem[(32 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 224 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 224] = 32 * arg3.length
        mem[64] = (64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 256
        if not Mask(251, 0, arg3.length):
            s = 0
            idx = 0
            while idx < arg3.length:
                s = 0
                while s < 32:
                    require idx < mem[(32 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 192]
                    require 2^(8 * -s + 31)
                    require (32 * idx) + s < 32 * arg3.length
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + (32 * idx) + s + 256 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('mem', ('range', ('add', 224, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2'))))))), 32)), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 1))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('mem', ('range', ('add', 224, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2'))))))), 32)), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 1))))))), 0) - 256
                    s = s + 1
                    continue 
                s = 32
                idx = idx + 1
                continue 
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 256] = 'TR'
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 258] = m_teamId
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 290] = arg1
            _3933 = mem[(32 * arg3.length) + (32 * arg2.length) + 160]
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 322 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160])] = mem[(32 * arg3.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160])]
            var27002 = (64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + 322
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + 322] = 256^(-(mem[(32 * arg3.length) + (32 * arg2.length) + 160] % 32) + 32) - 1 and mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + 322] or mem[(32 * arg3.length) + (32 * arg2.length) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + 192] and !(256^(-(mem[(32 * arg3.length) + (32 * arg2.length) + 160] % 32) + 32) - 1)
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + _3933 + 322 len 32 * arg3.length] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 256 len 32 * arg3.length]
            var30001 = (98 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 256
            mem[(98 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + _3933 + 354 len 0] = None
            _5485 = sha3(mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 256 len (161 * arg3.length) + _3933 + 66])
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 256 len 96] = call.data[100 len 96]
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 352] = arg7.length
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 384 len arg7.length] = arg7[all]
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 384] = ('cd', 228).length
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 416 len ('cd', 228).length] = call.data[cd[228] + 36 len ('cd', 228).length]
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 416] = ('cd', 260).length
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448 len ('cd', 260).length] = call.data[cd[260] + 36 len ('cd', 260).length]
            require call.data[100] < m_cosigners.length
            mem[0] = 3
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 32))), 0) - 256
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 384]
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 416]
            signer = erecover(_5485, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 416]) 
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 448] = signer
            if bool(erecover.result) != 1:
                if m_cosigners.length <= 3:
                    require bool(erecover.result) == 1
                else:
                    if bool(erecover.result) != 1:
                        require bool(erecover.result) == 1
                        if m_cosigners.length <= 6:
                        else:
                            require call.data[164] < m_cosigners.length
                            mem[0] = 3
                            _5682 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 480]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) - 256
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = _5682
                            signer = erecover(_5485, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448], _5682) 
                            require bool(erecover.result) == 1
                            require address(signer) == m_cosigners[call.data[164]]
                    else:
                        require call.data[132] < m_cosigners.length
                        mem[0] = 3
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 480, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 480, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7')))))), 32))), 0) - 256
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 416]
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 448]
                        signer = erecover(_5485, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 416], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 448]) 
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 448] = signer
                        if bool(erecover.result) != 1:
                            require bool(erecover.result) == 1
                            if m_cosigners.length <= 6:
                            else:
                                require call.data[164] < m_cosigners.length
                                mem[0] = 3
                                _5854 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 480]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = _5854
                                signer = erecover(_5485, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448], _5854) 
                                require bool(erecover.result) == 1
                                require address(signer) == m_cosigners[call.data[164]]
                        else:
                            require address(signer) == m_cosigners[call.data[132]]
                            if m_cosigners.length <= 6:
                            else:
                                require call.data[164] < m_cosigners.length
                                mem[0] = 3
                                _5904 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 480]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = _5904
                                signer = erecover(_5485, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448], _5904) 
                                require bool(erecover.result) == 1
                                require address(signer) == m_cosigners[call.data[164]]
            else:
                if m_cosigners.length <= 3:
                    require address(signer) == m_cosigners[call.data[100]]
                else:
                    if address(signer) != m_cosigners[call.data[100]]:
                        require address(signer) == m_cosigners[call.data[100]]
                        if m_cosigners.length <= 6:
                        else:
                            require call.data[164] < m_cosigners.length
                            mem[0] = 3
                            _5724 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 480]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) - 256
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = _5724
                            signer = erecover(_5485, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448], _5724) 
                            require bool(erecover.result) == 1
                            require address(signer) == m_cosigners[call.data[164]]
                    else:
                        require call.data[132] < m_cosigners.length
                        mem[0] = 3
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 480, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 480, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7')))))), 32))), 0) - 256
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 416]
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 448]
                        signer = erecover(_5485, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 416], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 448]) 
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 448] = signer
                        if bool(erecover.result) != 1:
                            require bool(erecover.result) == 1
                            if m_cosigners.length <= 6:
                            else:
                                require call.data[164] < m_cosigners.length
                                mem[0] = 3
                                _5910 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 480]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = _5910
                                signer = erecover(_5485, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448], _5910) 
                                require bool(erecover.result) == 1
                                require address(signer) == m_cosigners[call.data[164]]
                        else:
                            require address(signer) == m_cosigners[call.data[132]]
                            if m_cosigners.length <= 6:
                            else:
                                require call.data[164] < m_cosigners.length
                                mem[0] = 3
                                _5971 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 480]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = _5971
                                signer = erecover(_5485, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448], _5971) 
                                require bool(erecover.result) == 1
                                require address(signer) == m_cosigners[call.data[164]]
        else:
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 256 len 1024 * arg3.length] = code.data[5531 len 1024 * arg3.length]
            s = 0
            idx = 0
            while idx < arg3.length:
                s = 0
                while s < 32:
                    require idx < mem[(32 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 192]
                    require 2^(8 * -s + 31)
                    require (32 * idx) + s < 32 * arg3.length
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + (32 * idx) + s + 256 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('mem', ('range', ('add', 224, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2'))))))), 32)), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 1))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('mem', ('range', ('add', 224, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2'))))))), 32)), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 1))))))), 0) - 256
                    s = s + 1
                    continue 
                s = 32
                idx = idx + 1
                continue 
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 256] = 'TR'
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 258] = m_teamId
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 290] = arg1
            _3935 = mem[(32 * arg3.length) + (32 * arg2.length) + 160]
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 322 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160])] = mem[(32 * arg3.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160])]
            var28001 = (32 * arg3.length) + (32 * arg2.length) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + 192
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + 322] = 256^(-(mem[(32 * arg3.length) + (32 * arg2.length) + 160] % 32) + 32) - 1 and mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + 322] or mem[(32 * arg3.length) + (32 * arg2.length) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + 192] and !(256^(-(mem[(32 * arg3.length) + (32 * arg2.length) + 160] % 32) + 32) - 1)
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + _3935 + 322 len 32 * arg3.length] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 256 len 32 * arg3.length]
            mem[(98 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + _3935 + 354 len 0] = None
            _5494 = sha3(mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 256 len (161 * arg3.length) + _3935 + 66])
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 256 len 96] = call.data[100 len 96]
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 352] = arg7.length
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 384 len arg7.length] = arg7[all]
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 384] = ('cd', 228).length
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 416 len ('cd', 228).length] = call.data[cd[228] + 36 len ('cd', 228).length]
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 416] = ('cd', 260).length
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448 len ('cd', 260).length] = call.data[cd[260] + 36 len ('cd', 260).length]
            require call.data[100] < m_cosigners.length
            mem[0] = 3
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 32))), 0) - 256
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 384]
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 416]
            signer = erecover(_5494, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 416]) 
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 448] = signer
            if bool(erecover.result) != 1:
                if m_cosigners.length <= 3:
                    require bool(erecover.result) == 1
                else:
                    if bool(erecover.result) != 1:
                        require bool(erecover.result) == 1
                        if m_cosigners.length <= 6:
                        else:
                            require call.data[164] < m_cosigners.length
                            mem[0] = 3
                            _5691 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 480]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) - 256
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = _5691
                            signer = erecover(_5494, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448], _5691) 
                            require bool(erecover.result) == 1
                            require address(signer) == m_cosigners[call.data[164]]
                    else:
                        require call.data[132] < m_cosigners.length
                        mem[0] = 3
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 480, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 480, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7')))))), 32))), 0) - 256
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 416]
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 448]
                        signer = erecover(_5494, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 416], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 448]) 
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 448] = signer
                        if bool(erecover.result) != 1:
                            require bool(erecover.result) == 1
                            if m_cosigners.length <= 6:
                            else:
                                require call.data[164] < m_cosigners.length
                                mem[0] = 3
                                _5863 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 480]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = _5863
                                signer = erecover(_5494, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448], _5863) 
                                require bool(erecover.result) == 1
                                require address(signer) == m_cosigners[call.data[164]]
                        else:
                            require address(signer) == m_cosigners[call.data[132]]
                            if m_cosigners.length <= 6:
                            else:
                                require call.data[164] < m_cosigners.length
                                mem[0] = 3
                                _5919 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 480]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = _5919
                                signer = erecover(_5494, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448], _5919) 
                                require bool(erecover.result) == 1
                                require address(signer) == m_cosigners[call.data[164]]
            else:
                if m_cosigners.length <= 3:
                    require address(signer) == m_cosigners[call.data[100]]
                else:
                    if address(signer) != m_cosigners[call.data[100]]:
                        require address(signer) == m_cosigners[call.data[100]]
                        if m_cosigners.length <= 6:
                        else:
                            require call.data[164] < m_cosigners.length
                            mem[0] = 3
                            _5734 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 480]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) - 256
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = _5734
                            signer = erecover(_5494, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448], _5734) 
                            require bool(erecover.result) == 1
                            require address(signer) == m_cosigners[call.data[164]]
                    else:
                        require call.data[132] < m_cosigners.length
                        mem[0] = 3
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 480, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 480, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7')))))), 32))), 0) - 256
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 416]
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 448]
                        signer = erecover(_5494, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 416], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + 448]) 
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 448] = signer
                        if bool(erecover.result) != 1:
                            require bool(erecover.result) == 1
                            if m_cosigners.length <= 6:
                            else:
                                require call.data[164] < m_cosigners.length
                                mem[0] = 3
                                _5925 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 480]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = _5925
                                signer = erecover(_5494, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448], _5925) 
                                require bool(erecover.result) == 1
                                require address(signer) == m_cosigners[call.data[164]]
                        else:
                            require address(signer) == m_cosigners[call.data[132]]
                            if m_cosigners.length <= 6:
                            else:
                                require call.data[164] < m_cosigners.length
                                mem[0] = 3
                                _5986 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 480]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 512, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 228)))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 544] = _5986
                                signer = erecover(_5494, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + 448], _5986) 
                                require bool(erecover.result) == 1
                                require address(signer) == m_cosigners[call.data[164]]
    m_opNum = arg1 + 1
    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 448] = arg2.length
    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (98 * arg3.length) + (64 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512
    mem[(64 * arg3.length) + (64 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 480] = arg3.length
    mem[(64 * arg3.length) + (64 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 512 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    idx = 0
    while idx < arg3.length:
        require idx < arg2.length
        require idx < arg3.length
        call mem[(32 * idx) + (64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + 492 len 20] with:
           value mem[(64 * arg3.length) + (64 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg7.length) + ceil32(('cd', 228).length) + ceil32(('cd', 260).length) + (32 * idx) + 512] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function transfer2(uint256 arg1, address[] arg2, uint256[] arg3, bytes arg4, bytes arg5, bytes arg6, bytes arg7) {
    require arg1 >= m_opNum
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    idx = 0
    s = 0
    while idx < arg3.length:
        require idx < arg3.length
        idx = idx + 1
        s = mem[(32 * idx) + 128] + s
        continue 
    require _1168 * arg3.length <= eth.balance(this.address)
    mem[(32 * arg3.length) + 128] = arg2.length
    mem[(32 * arg3.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 20 * arg2.length
    if not 20 * arg2.length:
        s = 0
        idx = 0
        while idx < arg2.length:
            s = 0
            while s < 20:
                require idx < arg2.length
                require 2^(8 * -s + 19)
                require (20 * idx) + s < 20 * arg2.length
                mem[(32 * arg3.length) + (32 * arg2.length) + (20 * idx) + s + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('mem', ('range', ('add', 172, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg3'))))), 20)), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 1))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('mem', ('range', ('add', 172, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg3'))))), 20)), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 1))))))), 0) - 256
                s = s + 1
                continue 
            s = 20
            idx = idx + 1
            continue 
        mem[(32 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 192] = arg3.length
        mem[(32 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 224 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 224] = 32 * arg3.length
        mem[64] = (64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 256
        if not Mask(251, 0, arg3.length):
            s = 0
            idx = 0
            while idx < arg3.length:
                s = 0
                while s < 32:
                    require idx < mem[(32 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 192]
                    require 2^(8 * -s + 31)
                    require (32 * idx) + s < 32 * arg3.length
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + (32 * idx) + s + 256 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('mem', ('range', ('add', 224, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2'))))))), 32)), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 1))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('mem', ('range', ('add', 224, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2'))))))), 32)), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 1))))))), 0) - 256
                    s = s + 1
                    continue 
                s = 32
                idx = idx + 1
                continue 
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 256] = 'TR'
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 258] = m_teamId
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 290] = arg1
            _5769 = mem[(32 * arg3.length) + (32 * arg2.length) + 160]
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 322 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160])] = mem[(32 * arg3.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160])]
            var25002 = (64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + 322
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + 322] = 256^(-(mem[(32 * arg3.length) + (32 * arg2.length) + 160] % 32) + 32) - 1 and mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + 322] or mem[(32 * arg3.length) + (32 * arg2.length) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + 192] and !(256^(-(mem[(32 * arg3.length) + (32 * arg2.length) + 160] % 32) + 32) - 1)
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + _5769 + 322 len 32 * arg3.length] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 256 len 32 * arg3.length]
            var28001 = (98 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 256
            mem[(98 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + _5769 + 354 len 0] = None
            _8043 = sha3(mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 256 len (161 * arg3.length) + _5769 + 66])
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 256] = arg4.length
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len arg4.length] = arg4[all]
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 288] = arg5.length
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320 len arg5.length] = arg5[all]
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 320] = arg6.length
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352 len arg6.length] = arg6[all]
            require 65 < arg4.length
            _8076 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 353]
            require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 353 len 1] < m_cosigners.length
            mem[0] = 3
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 352, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 352, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 32))), 0) - 256
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = uint16(arg1), mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 322 len 30]
            signer = erecover(_8043, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], arg1, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 322 len 30]) 
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = signer
            if bool(erecover.result) != 1:
                if m_cosigners.length <= 3:
                    require bool(erecover.result) == 1
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 16, 0, 0, ('param', 'arg1')), ('mem', ('range', ('add', 322, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 30)))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 16, 0, 0, ('param', 'arg1')), ('mem', ('range', ('add', 322, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 30)))), 0) - 256
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16
                    signer = erecover(_8043, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16) 
                else:
                    require 65 < arg5.length
                    _8108 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 385]
                    if bool(erecover.result) != 1:
                        if m_cosigners.length <= 6:
                            require bool(erecover.result) == 1
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 16, 0, 0, ('param', 'arg1')), ('mem', ('range', ('add', 322, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 30)))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 16, 0, 0, ('param', 'arg1')), ('mem', ('range', ('add', 322, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 30)))), 0) - 256
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16
                            signer = erecover(_8043, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16) 
                        else:
                            require 65 < arg6.length
                            _8143 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417]
                            require bool(erecover.result) == 1
                            require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417 len 1] < m_cosigners.length
                            mem[0] = 3
                            _8263 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 384]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) - 256
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = _8263
                            signer = erecover(_8043, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352], _8263) 
                            require bool(erecover.result) == 1
                            require address(signer) == m_cosigners[Mask(8, 248, _8143) >> 248]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                            _8659 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_8263')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_8263')), 0) - 256
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = _8659
                            signer = erecover(_8043, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], _8659) 
                            require bool(erecover.result) == 1
                    else:
                        require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 385 len 1] < m_cosigners.length
                        mem[0] = 3
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 384, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 384, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4')))))), 32))), 0) - 256
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 352]
                        signer = erecover(_8043, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 352]) 
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = signer
                        if bool(erecover.result) != 1:
                            if m_cosigners.length <= 6:
                                require bool(erecover.result) == 1
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]
                                signer = erecover(_8043, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]) 
                            else:
                                require 65 < arg6.length
                                _8340 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417]
                                require bool(erecover.result) == 1
                                require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417 len 1] < m_cosigners.length
                                mem[0] = 3
                                _8462 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = _8462
                                signer = erecover(_8043, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352], _8462) 
                                require bool(erecover.result) == 1
                                require address(signer) == m_cosigners[Mask(8, 248, _8340) >> 248]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                                _8819 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_8462')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_8462')), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = _8819
                                signer = erecover(_8043, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], _8819) 
                                require bool(erecover.result) == 1
                        else:
                            if m_cosigners.length <= 6:
                                require address(signer) == m_cosigners[Mask(8, 248, _8108) >> 248]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]
                                signer = erecover(_8043, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]) 
                            else:
                                require 65 < arg6.length
                                _8362 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417]
                                require address(signer) == m_cosigners[Mask(8, 248, _8108) >> 248]
                                require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417 len 1] < m_cosigners.length
                                mem[0] = 3
                                _8531 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = _8531
                                signer = erecover(_8043, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352], _8531) 
                                require bool(erecover.result) == 1
                                require address(signer) == m_cosigners[Mask(8, 248, _8362) >> 248]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                                _8874 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_8531')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_8531')), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = _8874
                                signer = erecover(_8043, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], _8874) 
                            require bool(erecover.result) == 1
            else:
                if m_cosigners.length <= 3:
                    require address(signer) == m_cosigners[Mask(8, 248, _8076) >> 248]
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 16, 0, 0, ('param', 'arg1')), ('mem', ('range', ('add', 322, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 30)))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 16, 0, 0, ('param', 'arg1')), ('mem', ('range', ('add', 322, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 30)))), 0) - 256
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16
                    signer = erecover(_8043, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16) 
                    require bool(erecover.result) == 1
                else:
                    require 65 < arg5.length
                    _8116 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 385]
                    if address(signer) != m_cosigners[Mask(8, 248, _8076) >> 248]:
                        if m_cosigners.length <= 6:
                            require address(signer) == m_cosigners[Mask(8, 248, _8076) >> 248]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 16, 0, 0, ('param', 'arg1')), ('mem', ('range', ('add', 322, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 30)))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 16, 0, 0, ('param', 'arg1')), ('mem', ('range', ('add', 322, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 30)))), 0) - 256
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16
                            signer = erecover(_8043, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16) 
                        else:
                            require 65 < arg6.length
                            _8180 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417]
                            require address(signer) == m_cosigners[Mask(8, 248, _8076) >> 248]
                            require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417 len 1] < m_cosigners.length
                            mem[0] = 3
                            _8297 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 384]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) - 256
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = _8297
                            signer = erecover(_8043, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352], _8297) 
                            require bool(erecover.result) == 1
                            require address(signer) == m_cosigners[Mask(8, 248, _8180) >> 248]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                            _8697 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_8297')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_8297')), 0) - 256
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = _8697
                            signer = erecover(_8043, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], _8697) 
                        require bool(erecover.result) == 1
                    else:
                        require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 385 len 1] < m_cosigners.length
                        mem[0] = 3
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 384, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 384, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4')))))), 32))), 0) - 256
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 352]
                        signer = erecover(_8043, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 352]) 
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = signer
                        if bool(erecover.result) != 1:
                            if m_cosigners.length <= 6:
                                require bool(erecover.result) == 1
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]
                                signer = erecover(_8043, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]) 
                            else:
                                require 65 < arg6.length
                                _8363 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417]
                                require bool(erecover.result) == 1
                                require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417 len 1] < m_cosigners.length
                                mem[0] = 3
                                _8539 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = _8539
                                signer = erecover(_8043, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352], _8539) 
                                require bool(erecover.result) == 1
                                require address(signer) == m_cosigners[Mask(8, 248, _8363) >> 248]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                                _8879 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_8539')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_8539')), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = _8879
                                signer = erecover(_8043, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], _8879) 
                                require bool(erecover.result) == 1
                        else:
                            if m_cosigners.length <= 6:
                                require address(signer) == m_cosigners[Mask(8, 248, _8116) >> 248]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]
                                signer = erecover(_8043, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]) 
                            else:
                                require 65 < arg6.length
                                _8387 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417]
                                require address(signer) == m_cosigners[Mask(8, 248, _8116) >> 248]
                                require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417 len 1] < m_cosigners.length
                                mem[0] = 3
                                _8615 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = _8615
                                signer = erecover(_8043, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352], _8615) 
                                require bool(erecover.result) == 1
                                require address(signer) == m_cosigners[Mask(8, 248, _8387) >> 248]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                                _8937 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_8615')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_8615')), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = _8937
                                signer = erecover(_8043, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], _8937) 
                            require bool(erecover.result) == 1
        else:
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 256 len 1024 * arg3.length] = code.data[5531 len 1024 * arg3.length]
            s = 0
            idx = 0
            while idx < arg3.length:
                s = 0
                while s < 32:
                    require idx < mem[(32 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 192]
                    require 2^(8 * -s + 31)
                    require (32 * idx) + s < 32 * arg3.length
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + (32 * idx) + s + 256 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('mem', ('range', ('add', 224, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2'))))))), 32)), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 1))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('mem', ('range', ('add', 224, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2'))))))), 32)), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 1))))))), 0) - 256
                    s = s + 1
                    continue 
                s = 32
                idx = idx + 1
                continue 
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 256] = 'TR'
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 258] = m_teamId
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 290] = arg1
            _5771 = mem[(32 * arg3.length) + (32 * arg2.length) + 160]
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 322 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160])] = mem[(32 * arg3.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160])]
            var26002 = (64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + 322
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + 322] = 256^(-(mem[(32 * arg3.length) + (32 * arg2.length) + 160] % 32) + 32) - 1 and mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + 322] or mem[(32 * arg3.length) + (32 * arg2.length) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + 192] and !(256^(-(mem[(32 * arg3.length) + (32 * arg2.length) + 160] % 32) + 32) - 1)
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + _5771 + 322 len 32 * arg3.length] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 256 len 32 * arg3.length]
            var29001 = (98 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 256
            mem[(98 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + _5771 + 354 len 0] = None
            _8051 = sha3(mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 256 len (161 * arg3.length) + _5771 + 66])
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 256] = arg4.length
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len arg4.length] = arg4[all]
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 288] = arg5.length
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320 len arg5.length] = arg5[all]
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 320] = arg6.length
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352 len arg6.length] = arg6[all]
            require 65 < arg4.length
            _8077 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 353]
            require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 353 len 1] < m_cosigners.length
            mem[0] = 3
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 352, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 352, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 32))), 0) - 256
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = uint16(arg1), mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 322 len 30]
            signer = erecover(_8051, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], arg1, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 322 len 30]) 
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = signer
            if bool(erecover.result) != 1:
                if m_cosigners.length <= 3:
                    require bool(erecover.result) == 1
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 16, 0, 0, ('param', 'arg1')), ('mem', ('range', ('add', 322, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 30)))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 16, 0, 0, ('param', 'arg1')), ('mem', ('range', ('add', 322, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 30)))), 0) - 256
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16
                    signer = erecover(_8051, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16) 
                else:
                    require 65 < arg5.length
                    _8110 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 385]
                    if bool(erecover.result) != 1:
                        if m_cosigners.length <= 6:
                            require bool(erecover.result) == 1
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 16, 0, 0, ('param', 'arg1')), ('mem', ('range', ('add', 322, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 30)))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 16, 0, 0, ('param', 'arg1')), ('mem', ('range', ('add', 322, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 30)))), 0) - 256
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16
                            signer = erecover(_8051, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16) 
                        else:
                            require 65 < arg6.length
                            _8151 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417]
                            require bool(erecover.result) == 1
                            require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417 len 1] < m_cosigners.length
                            mem[0] = 3
                            _8271 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 384]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) - 256
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = _8271
                            signer = erecover(_8051, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352], _8271) 
                            require bool(erecover.result) == 1
                            require address(signer) == m_cosigners[Mask(8, 248, _8151) >> 248]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                            _8668 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_8271')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_8271')), 0) - 256
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = _8668
                            signer = erecover(_8051, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], _8668) 
                            require bool(erecover.result) == 1
                    else:
                        require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 385 len 1] < m_cosigners.length
                        mem[0] = 3
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 384, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 384, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4')))))), 32))), 0) - 256
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 352]
                        signer = erecover(_8051, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 352]) 
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = signer
                        if bool(erecover.result) != 1:
                            if m_cosigners.length <= 6:
                                require bool(erecover.result) == 1
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]
                                signer = erecover(_8051, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]) 
                            else:
                                require 65 < arg6.length
                                _8345 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417]
                                require bool(erecover.result) == 1
                                require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417 len 1] < m_cosigners.length
                                mem[0] = 3
                                _8479 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = _8479
                                signer = erecover(_8051, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352], _8479) 
                                require bool(erecover.result) == 1
                                require address(signer) == m_cosigners[Mask(8, 248, _8345) >> 248]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                                _8832 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_8479')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_8479')), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = _8832
                                signer = erecover(_8051, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], _8832) 
                                require bool(erecover.result) == 1
                        else:
                            if m_cosigners.length <= 6:
                                require address(signer) == m_cosigners[Mask(8, 248, _8110) >> 248]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]
                                signer = erecover(_8051, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]) 
                            else:
                                require 65 < arg6.length
                                _8367 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417]
                                require address(signer) == m_cosigners[Mask(8, 248, _8110) >> 248]
                                require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417 len 1] < m_cosigners.length
                                mem[0] = 3
                                _8551 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = _8551
                                signer = erecover(_8051, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352], _8551) 
                                require bool(erecover.result) == 1
                                require address(signer) == m_cosigners[Mask(8, 248, _8367) >> 248]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                                _8889 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_8551')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_8551')), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = _8889
                                signer = erecover(_8051, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], _8889) 
                            require bool(erecover.result) == 1
            else:
                if m_cosigners.length <= 3:
                    require address(signer) == m_cosigners[Mask(8, 248, _8077) >> 248]
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 16, 0, 0, ('param', 'arg1')), ('mem', ('range', ('add', 322, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 30)))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 16, 0, 0, ('param', 'arg1')), ('mem', ('range', ('add', 322, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 30)))), 0) - 256
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16
                    signer = erecover(_8051, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16) 
                    require bool(erecover.result) == 1
                else:
                    require 65 < arg5.length
                    _8117 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 385]
                    if address(signer) != m_cosigners[Mask(8, 248, _8077) >> 248]:
                        if m_cosigners.length <= 6:
                            require address(signer) == m_cosigners[Mask(8, 248, _8077) >> 248]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 16, 0, 0, ('param', 'arg1')), ('mem', ('range', ('add', 322, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 30)))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 16, 0, 0, ('param', 'arg1')), ('mem', ('range', ('add', 322, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 30)))), 0) - 256
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16
                            signer = erecover(_8051, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16) 
                        else:
                            require 65 < arg6.length
                            _8192 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417]
                            require address(signer) == m_cosigners[Mask(8, 248, _8077) >> 248]
                            require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417 len 1] < m_cosigners.length
                            mem[0] = 3
                            _8304 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 384]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) - 256
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = _8304
                            signer = erecover(_8051, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352], _8304) 
                            require bool(erecover.result) == 1
                            require address(signer) == m_cosigners[Mask(8, 248, _8192) >> 248]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                            _8704 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_8304')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_8304')), 0) - 256
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = _8704
                            signer = erecover(_8051, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], _8704) 
                        require bool(erecover.result) == 1
                    else:
                        require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 385 len 1] < m_cosigners.length
                        mem[0] = 3
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 384, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 384, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4')))))), 32))), 0) - 256
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 352]
                        signer = erecover(_8051, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 352]) 
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = signer
                        if bool(erecover.result) != 1:
                            if m_cosigners.length <= 6:
                                require bool(erecover.result) == 1
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]
                                signer = erecover(_8051, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]) 
                            else:
                                require 65 < arg6.length
                                _8368 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417]
                                require bool(erecover.result) == 1
                                require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417 len 1] < m_cosigners.length
                                mem[0] = 3
                                _8559 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = _8559
                                signer = erecover(_8051, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352], _8559) 
                                require bool(erecover.result) == 1
                                require address(signer) == m_cosigners[Mask(8, 248, _8368) >> 248]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                                _8894 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_8559')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_8559')), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = _8894
                                signer = erecover(_8051, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], _8894) 
                                require bool(erecover.result) == 1
                        else:
                            if m_cosigners.length <= 6:
                                require address(signer) == m_cosigners[Mask(8, 248, _8117) >> 248]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]
                                signer = erecover(_8051, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]) 
                            else:
                                require 65 < arg6.length
                                _8395 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417]
                                require address(signer) == m_cosigners[Mask(8, 248, _8117) >> 248]
                                require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417 len 1] < m_cosigners.length
                                mem[0] = 3
                                _8628 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = _8628
                                signer = erecover(_8051, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352], _8628) 
                                require bool(erecover.result) == 1
                                require address(signer) == m_cosigners[Mask(8, 248, _8395) >> 248]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                                _8948 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_8628')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_8628')), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = _8948
                                signer = erecover(_8051, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], _8948) 
                            require bool(erecover.result) == 1
    else:
        mem[(32 * arg3.length) + (32 * arg2.length) + 192 len 32 * 20 * arg2.length] = code.data[5531 len 32 * 20 * arg2.length]
        s = 0
        idx = 0
        while idx < arg2.length:
            s = 0
            while s < 20:
                require idx < arg2.length
                require 2^(8 * -s + 19)
                require (20 * idx) + s < 20 * arg2.length
                mem[(32 * arg3.length) + (32 * arg2.length) + (20 * idx) + s + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('mem', ('range', ('add', 172, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg3'))))), 20)), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 1))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('mem', ('range', ('add', 172, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg3'))))), 20)), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 1))))))), 0) - 256
                s = s + 1
                continue 
            s = 20
            idx = idx + 1
            continue 
        mem[(32 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 192] = arg3.length
        mem[(32 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 224 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 224] = 32 * arg3.length
        mem[64] = (64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 256
        if not Mask(251, 0, arg3.length):
            s = 0
            idx = 0
            while idx < arg3.length:
                s = 0
                while s < 32:
                    require idx < mem[(32 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 192]
                    require 2^(8 * -s + 31)
                    require (32 * idx) + s < 32 * arg3.length
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + (32 * idx) + s + 256 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('mem', ('range', ('add', 224, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2'))))))), 32)), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 1))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('mem', ('range', ('add', 224, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2'))))))), 32)), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 1))))))), 0) - 256
                    s = s + 1
                    continue 
                s = 32
                idx = idx + 1
                continue 
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 256] = 'TR'
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 258] = m_teamId
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 290] = arg1
            _5773 = mem[(32 * arg3.length) + (32 * arg2.length) + 160]
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 322 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160])] = mem[(32 * arg3.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160])]
            var26002 = (64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + 322
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + 322] = 256^(-(mem[(32 * arg3.length) + (32 * arg2.length) + 160] % 32) + 32) - 1 and mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + 322] or mem[(32 * arg3.length) + (32 * arg2.length) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + 192] and !(256^(-(mem[(32 * arg3.length) + (32 * arg2.length) + 160] % 32) + 32) - 1)
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + _5773 + 322 len 32 * arg3.length] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 256 len 32 * arg3.length]
            var29001 = (98 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 256
            mem[(98 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + _5773 + 354 len 0] = None
            _8059 = sha3(mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 256 len (161 * arg3.length) + _5773 + 66])
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 256] = arg4.length
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len arg4.length] = arg4[all]
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 288] = arg5.length
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320 len arg5.length] = arg5[all]
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 320] = arg6.length
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352 len arg6.length] = arg6[all]
            require 65 < arg4.length
            _8078 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 353]
            require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 353 len 1] < m_cosigners.length
            mem[0] = 3
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 352, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 352, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 32))), 0) - 256
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = uint16(arg1), mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 322 len 30]
            signer = erecover(_8059, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], arg1, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 322 len 30]) 
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = signer
            if bool(erecover.result) != 1:
                if m_cosigners.length <= 3:
                    require bool(erecover.result) == 1
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 16, 0, 0, ('param', 'arg1')), ('mem', ('range', ('add', 322, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 30)))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 16, 0, 0, ('param', 'arg1')), ('mem', ('range', ('add', 322, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 30)))), 0) - 256
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16
                    signer = erecover(_8059, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16) 
                else:
                    require 65 < arg5.length
                    _8112 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 385]
                    if bool(erecover.result) != 1:
                        if m_cosigners.length <= 6:
                            require bool(erecover.result) == 1
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 16, 0, 0, ('param', 'arg1')), ('mem', ('range', ('add', 322, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 30)))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 16, 0, 0, ('param', 'arg1')), ('mem', ('range', ('add', 322, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 30)))), 0) - 256
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16
                            signer = erecover(_8059, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16) 
                        else:
                            require 65 < arg6.length
                            _8159 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417]
                            require bool(erecover.result) == 1
                            require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417 len 1] < m_cosigners.length
                            mem[0] = 3
                            _8279 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 384]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) - 256
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = _8279
                            signer = erecover(_8059, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352], _8279) 
                            require bool(erecover.result) == 1
                            require address(signer) == m_cosigners[Mask(8, 248, _8159) >> 248]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                            _8677 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_8279')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_8279')), 0) - 256
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = _8677
                            signer = erecover(_8059, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], _8677) 
                            require bool(erecover.result) == 1
                    else:
                        require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 385 len 1] < m_cosigners.length
                        mem[0] = 3
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 384, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 384, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4')))))), 32))), 0) - 256
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 352]
                        signer = erecover(_8059, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 352]) 
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = signer
                        if bool(erecover.result) != 1:
                            if m_cosigners.length <= 6:
                                require bool(erecover.result) == 1
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]
                                signer = erecover(_8059, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]) 
                            else:
                                require 65 < arg6.length
                                _8350 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417]
                                require bool(erecover.result) == 1
                                require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417 len 1] < m_cosigners.length
                                mem[0] = 3
                                _8496 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = _8496
                                signer = erecover(_8059, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352], _8496) 
                                require bool(erecover.result) == 1
                                require address(signer) == m_cosigners[Mask(8, 248, _8350) >> 248]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                                _8845 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_8496')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_8496')), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = _8845
                                signer = erecover(_8059, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], _8845) 
                                require bool(erecover.result) == 1
                        else:
                            if m_cosigners.length <= 6:
                                require address(signer) == m_cosigners[Mask(8, 248, _8112) >> 248]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]
                                signer = erecover(_8059, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]) 
                            else:
                                require 65 < arg6.length
                                _8372 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417]
                                require address(signer) == m_cosigners[Mask(8, 248, _8112) >> 248]
                                require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417 len 1] < m_cosigners.length
                                mem[0] = 3
                                _8571 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = _8571
                                signer = erecover(_8059, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352], _8571) 
                                require bool(erecover.result) == 1
                                require address(signer) == m_cosigners[Mask(8, 248, _8372) >> 248]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                                _8904 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_8571')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_8571')), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = _8904
                                signer = erecover(_8059, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], _8904) 
                            require bool(erecover.result) == 1
            else:
                if m_cosigners.length <= 3:
                    require address(signer) == m_cosigners[Mask(8, 248, _8078) >> 248]
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 16, 0, 0, ('param', 'arg1')), ('mem', ('range', ('add', 322, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 30)))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 16, 0, 0, ('param', 'arg1')), ('mem', ('range', ('add', 322, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 30)))), 0) - 256
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16
                    signer = erecover(_8059, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16) 
                    require bool(erecover.result) == 1
                else:
                    require 65 < arg5.length
                    _8118 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 385]
                    if address(signer) != m_cosigners[Mask(8, 248, _8078) >> 248]:
                        if m_cosigners.length <= 6:
                            require address(signer) == m_cosigners[Mask(8, 248, _8078) >> 248]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 16, 0, 0, ('param', 'arg1')), ('mem', ('range', ('add', 322, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 30)))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 16, 0, 0, ('param', 'arg1')), ('mem', ('range', ('add', 322, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 30)))), 0) - 256
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16
                            signer = erecover(_8059, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16) 
                        else:
                            require 65 < arg6.length
                            _8204 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417]
                            require address(signer) == m_cosigners[Mask(8, 248, _8078) >> 248]
                            require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417 len 1] < m_cosigners.length
                            mem[0] = 3
                            _8311 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 384]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) - 256
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = _8311
                            signer = erecover(_8059, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352], _8311) 
                            require bool(erecover.result) == 1
                            require address(signer) == m_cosigners[Mask(8, 248, _8204) >> 248]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                            _8711 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_8311')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_8311')), 0) - 256
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = _8711
                            signer = erecover(_8059, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], _8711) 
                        require bool(erecover.result) == 1
                    else:
                        require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 385 len 1] < m_cosigners.length
                        mem[0] = 3
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 384, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 384, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4')))))), 32))), 0) - 256
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 352]
                        signer = erecover(_8059, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 352]) 
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = signer
                        if bool(erecover.result) != 1:
                            if m_cosigners.length <= 6:
                                require bool(erecover.result) == 1
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]
                                signer = erecover(_8059, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]) 
                            else:
                                require 65 < arg6.length
                                _8373 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417]
                                require bool(erecover.result) == 1
                                require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417 len 1] < m_cosigners.length
                                mem[0] = 3
                                _8579 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = _8579
                                signer = erecover(_8059, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352], _8579) 
                                require bool(erecover.result) == 1
                                require address(signer) == m_cosigners[Mask(8, 248, _8373) >> 248]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                                _8909 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_8579')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_8579')), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = _8909
                                signer = erecover(_8059, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], _8909) 
                                require bool(erecover.result) == 1
                        else:
                            if m_cosigners.length <= 6:
                                require address(signer) == m_cosigners[Mask(8, 248, _8118) >> 248]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]
                                signer = erecover(_8059, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]) 
                            else:
                                require 65 < arg6.length
                                _8403 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417]
                                require address(signer) == m_cosigners[Mask(8, 248, _8118) >> 248]
                                require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417 len 1] < m_cosigners.length
                                mem[0] = 3
                                _8641 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = _8641
                                signer = erecover(_8059, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352], _8641) 
                                require bool(erecover.result) == 1
                                require address(signer) == m_cosigners[Mask(8, 248, _8403) >> 248]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                                _8959 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_8641')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_8641')), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = _8959
                                signer = erecover(_8059, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], _8959) 
                            require bool(erecover.result) == 1
        else:
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 256 len 1024 * arg3.length] = code.data[5531 len 1024 * arg3.length]
            s = 0
            idx = 0
            while idx < arg3.length:
                s = 0
                while s < 32:
                    require idx < mem[(32 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 192]
                    require 2^(8 * -s + 31)
                    require (32 * idx) + s < 32 * arg3.length
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + (32 * idx) + s + 256 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('mem', ('range', ('add', 224, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2'))))))), 32)), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 1))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('mem', ('range', ('add', 224, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2'))))))), 32)), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 1))))))), 0) - 256
                    s = s + 1
                    continue 
                s = 32
                idx = idx + 1
                continue 
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 256] = 'TR'
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 258] = m_teamId
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 290] = arg1
            _5775 = mem[(32 * arg3.length) + (32 * arg2.length) + 160]
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 322 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160])] = mem[(32 * arg3.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160])]
            var27001 = (32 * arg3.length) + (32 * arg2.length) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + 192
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + 322] = 256^(-(mem[(32 * arg3.length) + (32 * arg2.length) + 160] % 32) + 32) - 1 and mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + 322] or mem[(32 * arg3.length) + (32 * arg2.length) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + 192] and !(256^(-(mem[(32 * arg3.length) + (32 * arg2.length) + 160] % 32) + 32) - 1)
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + _5775 + 322 len 32 * arg3.length] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + 256 len 32 * arg3.length]
            mem[(98 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + _5775 + 354 len 0] = None
            _8067 = sha3(mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 256 len (161 * arg3.length) + _5775 + 66])
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 256] = arg4.length
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len arg4.length] = arg4[all]
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 288] = arg5.length
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320 len arg5.length] = arg5[all]
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 320] = arg6.length
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352 len arg6.length] = arg6[all]
            require 65 < arg4.length
            _8079 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 353]
            require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 353 len 1] < m_cosigners.length
            mem[0] = 3
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 352, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 352, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 32))), 0) - 256
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = uint16(arg1), mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 322 len 30]
            signer = erecover(_8067, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], arg1, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 322 len 30]) 
            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = signer
            if bool(erecover.result) != 1:
                if m_cosigners.length <= 3:
                    require bool(erecover.result) == 1
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 16, 0, 0, ('param', 'arg1')), ('mem', ('range', ('add', 322, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 30)))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 16, 0, 0, ('param', 'arg1')), ('mem', ('range', ('add', 322, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 30)))), 0) - 256
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16
                    signer = erecover(_8067, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16) 
                else:
                    require 65 < arg5.length
                    _8114 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 385]
                    if bool(erecover.result) != 1:
                        if m_cosigners.length <= 6:
                            require bool(erecover.result) == 1
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 16, 0, 0, ('param', 'arg1')), ('mem', ('range', ('add', 322, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 30)))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 16, 0, 0, ('param', 'arg1')), ('mem', ('range', ('add', 322, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 30)))), 0) - 256
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16
                            signer = erecover(_8067, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16) 
                        else:
                            require 65 < arg6.length
                            _8167 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417]
                            require bool(erecover.result) == 1
                            require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417 len 1] < m_cosigners.length
                            mem[0] = 3
                            _8287 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 384]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) - 256
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = _8287
                            signer = erecover(_8067, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352], _8287) 
                            require bool(erecover.result) == 1
                            require address(signer) == m_cosigners[Mask(8, 248, _8167) >> 248]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                            _8686 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_8287')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_8287')), 0) - 256
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = _8686
                            signer = erecover(_8067, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], _8686) 
                            require bool(erecover.result) == 1
                    else:
                        require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 385 len 1] < m_cosigners.length
                        mem[0] = 3
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 384, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 384, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4')))))), 32))), 0) - 256
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 352]
                        signer = erecover(_8067, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 352]) 
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = signer
                        if bool(erecover.result) != 1:
                            if m_cosigners.length <= 6:
                                require bool(erecover.result) == 1
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]
                                signer = erecover(_8067, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]) 
                            else:
                                require 65 < arg6.length
                                _8355 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417]
                                require bool(erecover.result) == 1
                                require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417 len 1] < m_cosigners.length
                                mem[0] = 3
                                _8513 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = _8513
                                signer = erecover(_8067, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352], _8513) 
                                require bool(erecover.result) == 1
                                require address(signer) == m_cosigners[Mask(8, 248, _8355) >> 248]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                                _8858 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_8513')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_8513')), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = _8858
                                signer = erecover(_8067, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], _8858) 
                                require bool(erecover.result) == 1
                        else:
                            if m_cosigners.length <= 6:
                                require address(signer) == m_cosigners[Mask(8, 248, _8114) >> 248]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]
                                signer = erecover(_8067, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]) 
                            else:
                                require 65 < arg6.length
                                _8377 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417]
                                require address(signer) == m_cosigners[Mask(8, 248, _8114) >> 248]
                                require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417 len 1] < m_cosigners.length
                                mem[0] = 3
                                _8591 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = _8591
                                signer = erecover(_8067, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352], _8591) 
                                require bool(erecover.result) == 1
                                require address(signer) == m_cosigners[Mask(8, 248, _8377) >> 248]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                                _8919 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_8591')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_8591')), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = _8919
                                signer = erecover(_8067, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], _8919) 
                            require bool(erecover.result) == 1
            else:
                if m_cosigners.length <= 3:
                    require address(signer) == m_cosigners[Mask(8, 248, _8079) >> 248]
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 16, 0, 0, ('param', 'arg1')), ('mem', ('range', ('add', 322, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 30)))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 16, 0, 0, ('param', 'arg1')), ('mem', ('range', ('add', 322, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 30)))), 0) - 256
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16
                    signer = erecover(_8067, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16) 
                    require bool(erecover.result) == 1
                else:
                    require 65 < arg5.length
                    _8119 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 385]
                    if address(signer) != m_cosigners[Mask(8, 248, _8079) >> 248]:
                        if m_cosigners.length <= 6:
                            require address(signer) == m_cosigners[Mask(8, 248, _8079) >> 248]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 16, 0, 0, ('param', 'arg1')), ('mem', ('range', ('add', 322, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 30)))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 16, 0, 0, ('param', 'arg1')), ('mem', ('range', ('add', 322, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), 30)))), 0) - 256
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16
                            signer = erecover(_8067, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + 288 len 2], Mask(240, 16, arg1) >> 16) 
                        else:
                            require 65 < arg6.length
                            _8216 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417]
                            require address(signer) == m_cosigners[Mask(8, 248, _8079) >> 248]
                            require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417 len 1] < m_cosigners.length
                            mem[0] = 3
                            _8318 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 384]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) - 256
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = _8318
                            signer = erecover(_8067, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352], _8318) 
                            require bool(erecover.result) == 1
                            require address(signer) == m_cosigners[Mask(8, 248, _8216) >> 248]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                            _8718 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_8318')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_8318')), 0) - 256
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                            mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = _8718
                            signer = erecover(_8067, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], _8718) 
                        require bool(erecover.result) == 1
                    else:
                        require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 385 len 1] < m_cosigners.length
                        mem[0] = 3
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 384, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 384, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4')))))), 32))), 0) - 256
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 352]
                        signer = erecover(_8067, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 352]) 
                        mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = signer
                        if bool(erecover.result) != 1:
                            if m_cosigners.length <= 6:
                                require bool(erecover.result) == 1
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]
                                signer = erecover(_8067, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]) 
                            else:
                                require 65 < arg6.length
                                _8378 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417]
                                require bool(erecover.result) == 1
                                require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417 len 1] < m_cosigners.length
                                mem[0] = 3
                                _8599 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = _8599
                                signer = erecover(_8067, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352], _8599) 
                                require bool(erecover.result) == 1
                                require address(signer) == m_cosigners[Mask(8, 248, _8378) >> 248]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                                _8924 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_8599')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_8599')), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = _8924
                                signer = erecover(_8067, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], _8924) 
                                require bool(erecover.result) == 1
                        else:
                            if m_cosigners.length <= 6:
                                require address(signer) == m_cosigners[Mask(8, 248, _8119) >> 248]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 448, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]
                                signer = erecover(_8067, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + 320]) 
                            else:
                                require 65 < arg6.length
                                _8411 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417]
                                require address(signer) == m_cosigners[Mask(8, 248, _8119) >> 248]
                                require mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 417 len 1] < m_cosigners.length
                                mem[0] = 3
                                _8654 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 416, ('mask_shl', 250, 0, 6, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('mul', 20, ('cd', ('add', 4, ('param', 'arg2')))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32))), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = _8654
                                signer = erecover(_8067, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352], _8654) 
                                require bool(erecover.result) == 1
                                require address(signer) == m_cosigners[Mask(8, 248, _8411) >> 248]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg7.length
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len arg7.length] = arg7[all]
                                _8970 = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_8654')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_8654')), 0) - 256
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384]
                                mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = _8970
                                signer = erecover(_8067, 0, mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384], _8970) 
                            require bool(erecover.result) == 1
    require address(signer) == m_owner
    m_opNum = arg1 + 1
    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384] = arg2.length
    mem[(64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (98 * arg3.length) + (64 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448
    mem[(64 * arg3.length) + (64 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = arg3.length
    mem[(64 * arg3.length) + (64 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    idx = 0
    while idx < arg3.length:
        require idx < arg2.length
        require idx < arg3.length
        call mem[(32 * idx) + (64 * arg3.length) + (32 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 428 len 20] with:
           value mem[(64 * arg3.length) + (64 * arg2.length) + ceil32(20 * arg2.length) + floor32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + (32 * idx) + 448] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
