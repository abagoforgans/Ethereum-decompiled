contract main {




// =====================  Runtime code  =====================


array of address signers;
uint8 stor1;
array of uint256 stor2;

function signers(uint256 arg1) {
    require arg1 < signers.length
    return signers[arg1]
}

function safeMode() {
    return bool(stor1)
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposited(address(msg.sender), msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]));
}

function isSigner(address arg1) {
    idx = 0
    while idx < signers.length:
        mem[0] = 0
        if signers[idx] != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function createForwarder() {
    create contract with 0 wei
                    code: code.data[2897 len 918]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}

function activateSafeMode() {
    require 0 < signers.length
    idx = 0
    while signers[idx] != msg.sender:
        require idx + 1 < signers.length
        mem[0] = 0
        idx = idx + 1
        continue 
    stor1 = 1
    emit SafeModeActivated(msg.sender);
}

function getNextSequenceId() {
    idx = 0
    s = 0
    while idx < 10:
        if stor2[idx] <= s:
            idx = idx + 1
            s = s
            continue 
        require idx < 10
        idx = idx + 1
        s = stor2[idx]
        continue 
    return (s + 1)
}

function flushForwarderTokens(address arg1, address arg2) {
    require 0 < signers.length
    idx = 0
    while signers[idx] != msg.sender:
        require idx + 1 < signers.length
        mem[0] = 0
        idx = idx + 1
        continue 
    require ext_code.size(arg1)
    call arg1.flushTokens(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ff30dd4f(?) {
    mem[128 len arg6.length] = arg6[all]
    mem[ceil32(arg6.length) + 128] = arg7.length
    mem[ceil32(arg6.length) + 160 len arg7.length] = arg7[all]
    mem[ceil32(arg6.length) + ceil32(arg7.length) + 160] = 'ERC20'
    mem[ceil32(arg6.length) + ceil32(arg7.length) + 165] = address(arg1)
    mem[ceil32(arg6.length) + ceil32(arg7.length) + 185] = arg2
    require 65 == arg6.length
    _9 = mem[161]
    mem[ceil32(arg6.length) + ceil32(arg7.length) + 192] = sha3('ERC20', arg1, arg2, arg3, arg4, arg5)
    if mem[192 len 1] >= 27:
        mem[ceil32(arg6.length) + ceil32(arg7.length) + 224] = uint8(_9)
        signer = erecover(sha3('ERC20', arg1, arg2, arg3, arg4, arg5), _9 << 248, mem[128], mem[160]) 
    else:
        mem[ceil32(arg6.length) + ceil32(arg7.length) + 224] = uint8(uint8(_9) + 27)
        signer = erecover(sha3('ERC20', arg1, arg2, arg3, arg4, arg5), uint8(_9) + 27 << 248, mem[128], mem[160]) 
    mem[ceil32(arg6.length) + ceil32(arg7.length) + 160] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if stor1:
        require 0 < signers.length
        idx = 0
        while signers[idx] != arg1:
            require idx + 1 < signers.length
            mem[0] = 0
            idx = idx + 1
            continue 
    require arg4 >= block.timestamp
    require 0 < signers.length
    idx = 0
    while signers[idx] != address(signer):
        require idx + 1 < signers.length
        mem[0] = 0
        idx = idx + 1
        continue 
    require address(signer) != msg.sender
    require 65 == arg7.length
    if mem[ceil32(arg6.length) + 224 len 1] >= 27:
        signer = erecover(sha3('ERC20', arg1, arg2, arg3, arg4, arg5), mem[ceil32(arg6.length) + 193] << 248, mem[ceil32(arg6.length) + 160], mem[ceil32(arg6.length) + 192]) 
    else:
        signer = erecover(sha3('ERC20', arg1, arg2, arg3, arg4, arg5), mem[ceil32(arg6.length) + 224 len 1] + 27 << 248, mem[ceil32(arg6.length) + 160], mem[ceil32(arg6.length) + 192]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if stor1:
        require 0 < signers.length
        idx = 0
        while signers[idx] != arg1:
            require idx + 1 < signers.length
            mem[0] = 0
            idx = idx + 1
            continue 
    require arg4 >= block.timestamp
    require 0 < signers.length
    idx = 0
    while signers[idx] != address(signer):
        require idx + 1 < signers.length
        mem[0] = 0
        idx = idx + 1
        continue 
    require address(signer) != msg.sender
    idx = 0
    while idx < 10:
        require stor2[idx] != arg5
        require idx < 10
        idx = idx + 1
        continue 
    require arg5 >= stor2.length
    require arg5 <= stor2.length + 10000
    stor2.length = arg5
    require ext_code.size(arg3)
    call arg3.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_f4ea099d(?) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg6.length
    mem[ceil32(arg3.length) + 160 len arg6.length] = arg6[all]
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 160] = arg7.length
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len arg7.length] = arg7[all]
    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 192] = 'ETHER'
    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 197] = address(arg1)
    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 217] = arg2
    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 249 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + floor32(arg3.length) + 249] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + floor32(arg3.length) + 249] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[arg3.length + 128 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + arg3.length + 249] = arg4
    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + arg3.length + 281] = arg5
    _104 = sha3('ETHER', arg1, arg2, call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + floor32(arg3.length) + 249 len (arg3.length % 32) + 32], arg5, None)
    require 65 == arg6.length
    _109 = mem[ceil32(arg3.length) + 193]
    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 224] = sha3('ETHER', arg1, arg2, call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + floor32(arg3.length) + 249 len (arg3.length % 32) + 32], arg5, None)
    if mem[ceil32(arg3.length) + 224 len 1] >= 27:
        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = uint8(_109)
        signer = erecover(_104, _109 << 248, mem[ceil32(arg3.length) + 160], mem[ceil32(arg3.length) + 192]) 
        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 192] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not stor1:
            require arg4 >= block.timestamp
            require 0 < signers.length
            idx = 0
            while signers[idx] != address(signer):
                require idx + 1 < signers.length
                mem[0] = 0
                idx = idx + 1
                continue 
            require address(signer) != msg.sender
            require 65 == arg7.length
            _204 = mem[ceil32(arg3.length) + ceil32(arg6.length) + 225]
            mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = _104
            if mem[ceil32(arg3.length) + ceil32(arg6.length) + 256 len 1] >= 27:
                mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 288] = uint8(_204)
                mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 320] = mem[ceil32(arg3.length) + ceil32(arg6.length) + 192]
                mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 352] = mem[ceil32(arg3.length) + ceil32(arg6.length) + 224]
                signer = erecover(_104, _204 << 248, mem[ceil32(arg3.length) + ceil32(arg6.length) + 192], mem[ceil32(arg3.length) + ceil32(arg6.length) + 224]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if not stor1:
                    require arg4 >= block.timestamp
                    require 0 < signers.length
                    idx = 0
                    while signers[idx] != address(signer):
                        require idx + 1 < signers.length
                        mem[0] = 0
                        idx = idx + 1
                        continue 
                    require address(signer) != msg.sender
                    idx = 0
                    while idx < 10:
                        require stor2[idx] != arg5
                        require idx < 10
                        idx = idx + 1
                        continue 
                    require arg5 >= stor2.length
                    require arg5 <= stor2.length + 10000
                    stor2.length = arg5
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    if not arg3.length % 32:
                        call arg1.mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len 4] with:
                           value arg2 wei
                             gas gas_remaining wei
                            args mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 260 len arg3.length - 4]
                        require ext_call.success
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = msg.sender
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 288] = address(signer)
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 320] = address(signer)
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 352] = _104
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384] = arg1
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = arg2
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = 224
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg3.length
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    else:
                        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + -(arg3.length % 32) + 288 len arg3.length % 32]
                        call arg1.mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len 4] with:
                           value arg2 wei
                             gas gas_remaining wei
                            args mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 260 len floor32(arg3.length) + 28]
                        require ext_call.success
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = msg.sender
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 288] = address(signer)
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 320] = address(signer)
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 352] = _104
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384] = arg1
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = arg2
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = 224
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg3.length
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                        var65001 = ceil32(arg3.length)
                else:
                    require 0 < signers.length
                    idx = 0
                    while signers[idx] != arg1:
                        require idx + 1 < signers.length
                        mem[0] = 0
                        idx = idx + 1
                        continue 
                    require arg4 >= block.timestamp
                    require 0 < signers.length
                    idx = 0
                    while signers[idx] != address(signer):
                        require idx + 1 < signers.length
                        mem[0] = 0
                        idx = idx + 1
                        continue 
                    require address(signer) != msg.sender
                    idx = 0
                    while idx < 10:
                        require stor2[idx] != arg5
                        require idx < 10
                        idx = idx + 1
                        continue 
                    require arg5 >= stor2.length
                    require arg5 <= stor2.length + 10000
                    stor2.length = arg5
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    if not arg3.length % 32:
                        call arg1.mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len 4] with:
                           value arg2 wei
                             gas gas_remaining wei
                            args mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 260 len arg3.length - 4]
                    else:
                        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + -(arg3.length % 32) + 288 len arg3.length % 32]
                        call arg1.mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len 4] with:
                           value arg2 wei
                             gas gas_remaining wei
                            args mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 260 len floor32(arg3.length) + 28]
                    require ext_call.success
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = msg.sender
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 288] = address(signer)
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 320] = address(signer)
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 352] = _104
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384] = arg1
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = arg2
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = 224
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg3.length
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            else:
                mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 288] = uint8(uint8(_204) + 27)
                mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 320] = mem[ceil32(arg3.length) + ceil32(arg6.length) + 192]
                mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 352] = mem[ceil32(arg3.length) + ceil32(arg6.length) + 224]
                signer = erecover(_104, uint8(_204) + 27 << 248, mem[ceil32(arg3.length) + ceil32(arg6.length) + 192], mem[ceil32(arg3.length) + ceil32(arg6.length) + 224]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if not stor1:
                    require arg4 >= block.timestamp
                    require 0 < signers.length
                    idx = 0
                    while signers[idx] != address(signer):
                        require idx + 1 < signers.length
                        mem[0] = 0
                        idx = idx + 1
                        continue 
                    require address(signer) != msg.sender
                    idx = 0
                    while idx < 10:
                        require stor2[idx] != arg5
                        require idx < 10
                        idx = idx + 1
                        continue 
                    require arg5 >= stor2.length
                    require arg5 <= stor2.length + 10000
                    stor2.length = arg5
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    if not arg3.length % 32:
                        call arg1.mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len 4] with:
                           value arg2 wei
                             gas gas_remaining wei
                            args mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 260 len arg3.length - 4]
                        require ext_call.success
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = msg.sender
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 288] = address(signer)
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 320] = address(signer)
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 352] = _104
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384] = arg1
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = arg2
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = 224
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg3.length
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                        var65001 = ceil32(arg3.length)
                    else:
                        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + -(arg3.length % 32) + 288 len arg3.length % 32]
                        call arg1.mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len 4] with:
                           value arg2 wei
                             gas gas_remaining wei
                            args mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 260 len floor32(arg3.length) + 28]
                        require ext_call.success
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = msg.sender
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 288] = address(signer)
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 320] = address(signer)
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 352] = _104
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384] = arg1
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = arg2
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = 224
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg3.length
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                        var66001 = ceil32(arg3.length)
                else:
                    require 0 < signers.length
                    idx = 0
                    while signers[idx] != arg1:
                        require idx + 1 < signers.length
                        mem[0] = 0
                        idx = idx + 1
                        continue 
                    require arg4 >= block.timestamp
                    require 0 < signers.length
                    idx = 0
                    while signers[idx] != address(signer):
                        require idx + 1 < signers.length
                        mem[0] = 0
                        idx = idx + 1
                        continue 
                    require address(signer) != msg.sender
                    idx = 0
                    while idx < 10:
                        require stor2[idx] != arg5
                        require idx < 10
                        idx = idx + 1
                        continue 
                    require arg5 >= stor2.length
                    require arg5 <= stor2.length + 10000
                    stor2.length = arg5
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    if not arg3.length % 32:
                        call arg1.mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len 4] with:
                           value arg2 wei
                             gas gas_remaining wei
                            args mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 260 len arg3.length - 4]
                    else:
                        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + -(arg3.length % 32) + 288 len arg3.length % 32]
                        call arg1.mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len 4] with:
                           value arg2 wei
                             gas gas_remaining wei
                            args mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 260 len floor32(arg3.length) + 28]
                    require ext_call.success
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = msg.sender
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 288] = address(signer)
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 320] = address(signer)
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 352] = _104
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384] = arg1
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = arg2
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = 224
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg3.length
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        else:
            require 0 < signers.length
            idx = 0
            while signers[idx] != arg1:
                require idx + 1 < signers.length
                mem[0] = 0
                idx = idx + 1
                continue 
            require arg4 >= block.timestamp
            require 0 < signers.length
            idx = 0
            while signers[idx] != address(signer):
                require idx + 1 < signers.length
                mem[0] = 0
                idx = idx + 1
                continue 
            require address(signer) != msg.sender
            require 65 == arg7.length
            _288 = mem[ceil32(arg3.length) + ceil32(arg6.length) + 225]
            mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = _104
            if mem[ceil32(arg3.length) + ceil32(arg6.length) + 256 len 1] >= 27:
                mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 288] = uint8(_288)
                mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 320] = mem[ceil32(arg3.length) + ceil32(arg6.length) + 192]
                mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 352] = mem[ceil32(arg3.length) + ceil32(arg6.length) + 224]
                signer = erecover(_104, _288 << 248, mem[ceil32(arg3.length) + ceil32(arg6.length) + 192], mem[ceil32(arg3.length) + ceil32(arg6.length) + 224]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if not stor1:
                    require arg4 >= block.timestamp
                    require 0 < signers.length
                    idx = 0
                    while signers[idx] != address(signer):
                        require idx + 1 < signers.length
                        mem[0] = 0
                        idx = idx + 1
                        continue 
                    require address(signer) != msg.sender
                    idx = 0
                    while idx < 10:
                        require stor2[idx] != arg5
                        require idx < 10
                        idx = idx + 1
                        continue 
                    require arg5 >= stor2.length
                    require arg5 <= stor2.length + 10000
                    stor2.length = arg5
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    if not arg3.length % 32:
                        call arg1.mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len 4] with:
                           value arg2 wei
                             gas gas_remaining wei
                            args mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 260 len arg3.length - 4]
                        require ext_call.success
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = msg.sender
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 288] = address(signer)
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 320] = address(signer)
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 352] = _104
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384] = arg1
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = arg2
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = 224
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg3.length
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    else:
                        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + -(arg3.length % 32) + 288 len arg3.length % 32]
                        call arg1.mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len 4] with:
                           value arg2 wei
                             gas gas_remaining wei
                            args mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 260 len floor32(arg3.length) + 28]
                        require ext_call.success
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = msg.sender
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 288] = address(signer)
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 320] = address(signer)
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 352] = _104
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384] = arg1
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = arg2
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = 224
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg3.length
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                        var74001 = ceil32(arg3.length)
                else:
                    require 0 < signers.length
                    idx = 0
                    while signers[idx] != arg1:
                        require idx + 1 < signers.length
                        mem[0] = 0
                        idx = idx + 1
                        continue 
                    require arg4 >= block.timestamp
                    require 0 < signers.length
                    idx = 0
                    while signers[idx] != address(signer):
                        require idx + 1 < signers.length
                        mem[0] = 0
                        idx = idx + 1
                        continue 
                    require address(signer) != msg.sender
                    idx = 0
                    while idx < 10:
                        require stor2[idx] != arg5
                        require idx < 10
                        idx = idx + 1
                        continue 
                    require arg5 >= stor2.length
                    require arg5 <= stor2.length + 10000
                    stor2.length = arg5
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    if not arg3.length % 32:
                        call arg1.mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len 4] with:
                           value arg2 wei
                             gas gas_remaining wei
                            args mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 260 len arg3.length - 4]
                    else:
                        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + -(arg3.length % 32) + 288 len arg3.length % 32]
                        call arg1.mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len 4] with:
                           value arg2 wei
                             gas gas_remaining wei
                            args mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 260 len floor32(arg3.length) + 28]
                    require ext_call.success
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = msg.sender
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 288] = address(signer)
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 320] = address(signer)
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 352] = _104
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384] = arg1
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = arg2
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = 224
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg3.length
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            else:
                mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 288] = uint8(uint8(_288) + 27)
                mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 320] = mem[ceil32(arg3.length) + ceil32(arg6.length) + 192]
                mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 352] = mem[ceil32(arg3.length) + ceil32(arg6.length) + 224]
                signer = erecover(_104, uint8(_288) + 27 << 248, mem[ceil32(arg3.length) + ceil32(arg6.length) + 192], mem[ceil32(arg3.length) + ceil32(arg6.length) + 224]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if not stor1:
                    require arg4 >= block.timestamp
                    require 0 < signers.length
                    idx = 0
                    while signers[idx] != address(signer):
                        require idx + 1 < signers.length
                        mem[0] = 0
                        idx = idx + 1
                        continue 
                    require address(signer) != msg.sender
                    idx = 0
                    while idx < 10:
                        require stor2[idx] != arg5
                        require idx < 10
                        idx = idx + 1
                        continue 
                    require arg5 >= stor2.length
                    require arg5 <= stor2.length + 10000
                    stor2.length = arg5
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    if not arg3.length % 32:
                        call arg1.mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len 4] with:
                           value arg2 wei
                             gas gas_remaining wei
                            args mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 260 len arg3.length - 4]
                        require ext_call.success
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = msg.sender
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 288] = address(signer)
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 320] = address(signer)
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 352] = _104
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384] = arg1
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = arg2
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = 224
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg3.length
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                        var74001 = ceil32(arg3.length)
                    else:
                        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + -(arg3.length % 32) + 288 len arg3.length % 32]
                        call arg1.mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len 4] with:
                           value arg2 wei
                             gas gas_remaining wei
                            args mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 260 len floor32(arg3.length) + 28]
                        require ext_call.success
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = msg.sender
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 288] = address(signer)
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 320] = address(signer)
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 352] = _104
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384] = arg1
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = arg2
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = 224
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg3.length
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                        var75001 = ceil32(arg3.length)
                else:
                    require 0 < signers.length
                    idx = 0
                    while signers[idx] != arg1:
                        require idx + 1 < signers.length
                        mem[0] = 0
                        idx = idx + 1
                        continue 
                    require arg4 >= block.timestamp
                    require 0 < signers.length
                    idx = 0
                    while signers[idx] != address(signer):
                        require idx + 1 < signers.length
                        mem[0] = 0
                        idx = idx + 1
                        continue 
                    require address(signer) != msg.sender
                    idx = 0
                    while idx < 10:
                        require stor2[idx] != arg5
                        require idx < 10
                        idx = idx + 1
                        continue 
                    require arg5 >= stor2.length
                    require arg5 <= stor2.length + 10000
                    stor2.length = arg5
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    if not arg3.length % 32:
                        call arg1.mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len 4] with:
                           value arg2 wei
                             gas gas_remaining wei
                            args mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 260 len arg3.length - 4]
                    else:
                        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + -(arg3.length % 32) + 288 len arg3.length % 32]
                        call arg1.mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len 4] with:
                           value arg2 wei
                             gas gas_remaining wei
                            args mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 260 len floor32(arg3.length) + 28]
                    require ext_call.success
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = msg.sender
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 288] = address(signer)
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 320] = address(signer)
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 352] = _104
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384] = arg1
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = arg2
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = 224
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg3.length
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    else:
        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = uint8(uint8(_109) + 27)
        signer = erecover(_104, uint8(_109) + 27 << 248, mem[ceil32(arg3.length) + 160], mem[ceil32(arg3.length) + 192]) 
        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 192] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not stor1:
            require arg4 >= block.timestamp
            require 0 < signers.length
            idx = 0
            while signers[idx] != address(signer):
                require idx + 1 < signers.length
                mem[0] = 0
                idx = idx + 1
                continue 
            require address(signer) != msg.sender
            require 65 == arg7.length
            _207 = mem[ceil32(arg3.length) + ceil32(arg6.length) + 225]
            mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = _104
            if mem[ceil32(arg3.length) + ceil32(arg6.length) + 256 len 1] >= 27:
                mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 288] = uint8(_207)
                mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 320] = mem[ceil32(arg3.length) + ceil32(arg6.length) + 192]
                mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 352] = mem[ceil32(arg3.length) + ceil32(arg6.length) + 224]
                signer = erecover(_104, _207 << 248, mem[ceil32(arg3.length) + ceil32(arg6.length) + 192], mem[ceil32(arg3.length) + ceil32(arg6.length) + 224]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if not stor1:
                    require arg4 >= block.timestamp
                    require 0 < signers.length
                    idx = 0
                    while signers[idx] != address(signer):
                        require idx + 1 < signers.length
                        mem[0] = 0
                        idx = idx + 1
                        continue 
                    require address(signer) != msg.sender
                    idx = 0
                    while idx < 10:
                        require stor2[idx] != arg5
                        require idx < 10
                        idx = idx + 1
                        continue 
                    require arg5 >= stor2.length
                    require arg5 <= stor2.length + 10000
                    stor2.length = arg5
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    if not arg3.length % 32:
                        call arg1.mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len 4] with:
                           value arg2 wei
                             gas gas_remaining wei
                            args mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 260 len arg3.length - 4]
                        require ext_call.success
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = msg.sender
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 288] = address(signer)
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 320] = address(signer)
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 352] = _104
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384] = arg1
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = arg2
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = 224
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg3.length
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    else:
                        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + -(arg3.length % 32) + 288 len arg3.length % 32]
                        call arg1.mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len 4] with:
                           value arg2 wei
                             gas gas_remaining wei
                            args mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 260 len floor32(arg3.length) + 28]
                        require ext_call.success
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = msg.sender
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 288] = address(signer)
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 320] = address(signer)
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 352] = _104
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384] = arg1
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = arg2
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = 224
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg3.length
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                        var66001 = ceil32(arg3.length)
                else:
                    require 0 < signers.length
                    idx = 0
                    while signers[idx] != arg1:
                        require idx + 1 < signers.length
                        mem[0] = 0
                        idx = idx + 1
                        continue 
                    require arg4 >= block.timestamp
                    require 0 < signers.length
                    idx = 0
                    while signers[idx] != address(signer):
                        require idx + 1 < signers.length
                        mem[0] = 0
                        idx = idx + 1
                        continue 
                    require address(signer) != msg.sender
                    idx = 0
                    while idx < 10:
                        require stor2[idx] != arg5
                        require idx < 10
                        idx = idx + 1
                        continue 
                    require arg5 >= stor2.length
                    require arg5 <= stor2.length + 10000
                    stor2.length = arg5
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    if not arg3.length % 32:
                        call arg1.mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len 4] with:
                           value arg2 wei
                             gas gas_remaining wei
                            args mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 260 len arg3.length - 4]
                    else:
                        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + -(arg3.length % 32) + 288 len arg3.length % 32]
                        call arg1.mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len 4] with:
                           value arg2 wei
                             gas gas_remaining wei
                            args mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 260 len floor32(arg3.length) + 28]
                    require ext_call.success
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = msg.sender
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 288] = address(signer)
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 320] = address(signer)
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 352] = _104
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384] = arg1
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = arg2
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = 224
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg3.length
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            else:
                mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 288] = uint8(uint8(_207) + 27)
                mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 320] = mem[ceil32(arg3.length) + ceil32(arg6.length) + 192]
                mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 352] = mem[ceil32(arg3.length) + ceil32(arg6.length) + 224]
                signer = erecover(_104, uint8(_207) + 27 << 248, mem[ceil32(arg3.length) + ceil32(arg6.length) + 192], mem[ceil32(arg3.length) + ceil32(arg6.length) + 224]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if not stor1:
                    require arg4 >= block.timestamp
                    require 0 < signers.length
                    idx = 0
                    while signers[idx] != address(signer):
                        require idx + 1 < signers.length
                        mem[0] = 0
                        idx = idx + 1
                        continue 
                    require address(signer) != msg.sender
                    idx = 0
                    while idx < 10:
                        require stor2[idx] != arg5
                        require idx < 10
                        idx = idx + 1
                        continue 
                    require arg5 >= stor2.length
                    require arg5 <= stor2.length + 10000
                    stor2.length = arg5
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    if not arg3.length % 32:
                        call arg1.mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len 4] with:
                           value arg2 wei
                             gas gas_remaining wei
                            args mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 260 len arg3.length - 4]
                        require ext_call.success
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = msg.sender
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 288] = address(signer)
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 320] = address(signer)
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 352] = _104
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384] = arg1
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = arg2
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = 224
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg3.length
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                        var66001 = ceil32(arg3.length)
                    else:
                        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + -(arg3.length % 32) + 288 len arg3.length % 32]
                        call arg1.mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len 4] with:
                           value arg2 wei
                             gas gas_remaining wei
                            args mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 260 len floor32(arg3.length) + 28]
                        require ext_call.success
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = msg.sender
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 288] = address(signer)
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 320] = address(signer)
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 352] = _104
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384] = arg1
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = arg2
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = 224
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg3.length
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                        var67001 = ceil32(arg3.length)
                else:
                    require 0 < signers.length
                    idx = 0
                    while signers[idx] != arg1:
                        require idx + 1 < signers.length
                        mem[0] = 0
                        idx = idx + 1
                        continue 
                    require arg4 >= block.timestamp
                    require 0 < signers.length
                    idx = 0
                    while signers[idx] != address(signer):
                        require idx + 1 < signers.length
                        mem[0] = 0
                        idx = idx + 1
                        continue 
                    require address(signer) != msg.sender
                    idx = 0
                    while idx < 10:
                        require stor2[idx] != arg5
                        require idx < 10
                        idx = idx + 1
                        continue 
                    require arg5 >= stor2.length
                    require arg5 <= stor2.length + 10000
                    stor2.length = arg5
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    if not arg3.length % 32:
                        call arg1.mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len 4] with:
                           value arg2 wei
                             gas gas_remaining wei
                            args mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 260 len arg3.length - 4]
                    else:
                        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + -(arg3.length % 32) + 288 len arg3.length % 32]
                        call arg1.mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len 4] with:
                           value arg2 wei
                             gas gas_remaining wei
                            args mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 260 len floor32(arg3.length) + 28]
                    require ext_call.success
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = msg.sender
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 288] = address(signer)
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 320] = address(signer)
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 352] = _104
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384] = arg1
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = arg2
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = 224
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg3.length
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        else:
            require 0 < signers.length
            idx = 0
            while signers[idx] != arg1:
                require idx + 1 < signers.length
                mem[0] = 0
                idx = idx + 1
                continue 
            require arg4 >= block.timestamp
            require 0 < signers.length
            idx = 0
            while signers[idx] != address(signer):
                require idx + 1 < signers.length
                mem[0] = 0
                idx = idx + 1
                continue 
            require address(signer) != msg.sender
            require 65 == arg7.length
            _291 = mem[ceil32(arg3.length) + ceil32(arg6.length) + 225]
            mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = _104
            if mem[ceil32(arg3.length) + ceil32(arg6.length) + 256 len 1] >= 27:
                mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 288] = uint8(_291)
                mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 320] = mem[ceil32(arg3.length) + ceil32(arg6.length) + 192]
                mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 352] = mem[ceil32(arg3.length) + ceil32(arg6.length) + 224]
                signer = erecover(_104, _291 << 248, mem[ceil32(arg3.length) + ceil32(arg6.length) + 192], mem[ceil32(arg3.length) + ceil32(arg6.length) + 224]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if not stor1:
                    require arg4 >= block.timestamp
                    require 0 < signers.length
                    idx = 0
                    while signers[idx] != address(signer):
                        require idx + 1 < signers.length
                        mem[0] = 0
                        idx = idx + 1
                        continue 
                    require address(signer) != msg.sender
                    idx = 0
                    while idx < 10:
                        require stor2[idx] != arg5
                        require idx < 10
                        idx = idx + 1
                        continue 
                    require arg5 >= stor2.length
                    require arg5 <= stor2.length + 10000
                    stor2.length = arg5
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    if not arg3.length % 32:
                        call arg1.mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len 4] with:
                           value arg2 wei
                             gas gas_remaining wei
                            args mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 260 len arg3.length - 4]
                        require ext_call.success
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = msg.sender
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 288] = address(signer)
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 320] = address(signer)
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 352] = _104
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384] = arg1
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = arg2
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = 224
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg3.length
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    else:
                        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + -(arg3.length % 32) + 288 len arg3.length % 32]
                        call arg1.mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len 4] with:
                           value arg2 wei
                             gas gas_remaining wei
                            args mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 260 len floor32(arg3.length) + 28]
                        require ext_call.success
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = msg.sender
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 288] = address(signer)
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 320] = address(signer)
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 352] = _104
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384] = arg1
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = arg2
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = 224
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg3.length
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                        var75001 = ceil32(arg3.length)
                else:
                    require 0 < signers.length
                    idx = 0
                    while signers[idx] != arg1:
                        require idx + 1 < signers.length
                        mem[0] = 0
                        idx = idx + 1
                        continue 
                    require arg4 >= block.timestamp
                    require 0 < signers.length
                    idx = 0
                    while signers[idx] != address(signer):
                        require idx + 1 < signers.length
                        mem[0] = 0
                        idx = idx + 1
                        continue 
                    require address(signer) != msg.sender
                    idx = 0
                    while idx < 10:
                        require stor2[idx] != arg5
                        require idx < 10
                        idx = idx + 1
                        continue 
                    require arg5 >= stor2.length
                    require arg5 <= stor2.length + 10000
                    stor2.length = arg5
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    if not arg3.length % 32:
                        call arg1.mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len 4] with:
                           value arg2 wei
                             gas gas_remaining wei
                            args mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 260 len arg3.length - 4]
                    else:
                        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + -(arg3.length % 32) + 288 len arg3.length % 32]
                        call arg1.mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len 4] with:
                           value arg2 wei
                             gas gas_remaining wei
                            args mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 260 len floor32(arg3.length) + 28]
                    require ext_call.success
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = msg.sender
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 288] = address(signer)
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 320] = address(signer)
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 352] = _104
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384] = arg1
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = arg2
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = 224
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg3.length
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            else:
                mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 288] = uint8(uint8(_291) + 27)
                mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 320] = mem[ceil32(arg3.length) + ceil32(arg6.length) + 192]
                mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 352] = mem[ceil32(arg3.length) + ceil32(arg6.length) + 224]
                signer = erecover(_104, uint8(_291) + 27 << 248, mem[ceil32(arg3.length) + ceil32(arg6.length) + 192], mem[ceil32(arg3.length) + ceil32(arg6.length) + 224]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if not stor1:
                    require arg4 >= block.timestamp
                    require 0 < signers.length
                    idx = 0
                    while signers[idx] != address(signer):
                        require idx + 1 < signers.length
                        mem[0] = 0
                        idx = idx + 1
                        continue 
                    require address(signer) != msg.sender
                    idx = 0
                    while idx < 10:
                        require stor2[idx] != arg5
                        require idx < 10
                        idx = idx + 1
                        continue 
                    require arg5 >= stor2.length
                    require arg5 <= stor2.length + 10000
                    stor2.length = arg5
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    if not arg3.length % 32:
                        call arg1.mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len 4] with:
                           value arg2 wei
                             gas gas_remaining wei
                            args mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 260 len arg3.length - 4]
                        require ext_call.success
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = msg.sender
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 288] = address(signer)
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 320] = address(signer)
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 352] = _104
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384] = arg1
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = arg2
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = 224
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg3.length
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                        var75001 = ceil32(arg3.length)
                    else:
                        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + -(arg3.length % 32) + 288 len arg3.length % 32]
                        call arg1.mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len 4] with:
                           value arg2 wei
                             gas gas_remaining wei
                            args mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 260 len floor32(arg3.length) + 28]
                        require ext_call.success
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = msg.sender
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 288] = address(signer)
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 320] = address(signer)
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 352] = _104
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384] = arg1
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = arg2
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = 224
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg3.length
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                        var76001 = ceil32(arg3.length)
                else:
                    require 0 < signers.length
                    idx = 0
                    while signers[idx] != arg1:
                        require idx + 1 < signers.length
                        mem[0] = 0
                        idx = idx + 1
                        continue 
                    require arg4 >= block.timestamp
                    require 0 < signers.length
                    idx = 0
                    while signers[idx] != address(signer):
                        require idx + 1 < signers.length
                        mem[0] = 0
                        idx = idx + 1
                        continue 
                    require address(signer) != msg.sender
                    idx = 0
                    while idx < 10:
                        require stor2[idx] != arg5
                        require idx < 10
                        idx = idx + 1
                        continue 
                    require arg5 >= stor2.length
                    require arg5 <= stor2.length + 10000
                    stor2.length = arg5
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    if not arg3.length % 32:
                        call arg1.mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len 4] with:
                           value arg2 wei
                             gas gas_remaining wei
                            args mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 260 len arg3.length - 4]
                    else:
                        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + -(arg3.length % 32) + 288 len arg3.length % 32]
                        call arg1.mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len 4] with:
                           value arg2 wei
                             gas gas_remaining wei
                            args mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 260 len floor32(arg3.length) + 28]
                    require ext_call.success
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = msg.sender
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 288] = address(signer)
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 320] = address(signer)
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 352] = _104
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384] = arg1
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = arg2
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = 224
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg3.length
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit 0x41c66bda: mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len arg3.length + 25], arg5, mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + arg3.length + 313 len 199]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 512] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + -(arg3.length % 32) + 544 len arg3.length % 32]
        emit 0x41c66bda: mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len arg3.length + 25], arg5, mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + arg3.length + 313 len -(arg3.length % 32) + 231]
}



}
