contract main {




// =====================  Runtime code  =====================


address stor0;
array of address signers;
uint8 stor2;
uint8 stor2; offset 8
uint256 stor2; offset 8
array of uint256 stor3;

function signers(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < signers.length
    return signers[arg1]
}

function safeMode() {
    return bool(uint8(stor2.field_0))
}

function sub_e66632fb(?) {
    return bool(uint8(stor2.field_8))
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposited(address(msg.sender), msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]));
}

function isSigner(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < signers.length:
        mem[0] = 1
        if signers[idx] != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function getNextSequenceId() {
    idx = 0
    s = 0
    while idx < 10:
        if stor3[idx] <= s:
            idx = idx + 1
            s = s
            continue 
        require idx < 10
        idx = idx + 1
        s = stor3[idx]
        continue 
    return (s + 1)
}

function activateSafeMode() {
    require 0 < signers.length
    idx = 0
    while signers[idx] != msg.sender:
        require idx + 1 < signers.length
        mem[0] = 1
        idx = idx + 1
        continue 
    uint8(stor2.field_0) = 1
    emit SafeModeActivated(msg.sender);
}

function addSigners(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == stor0
    require uint8(stor2.field_8)
    require arg1.length == 3
    signers.length = arg1.length
    if not arg1.length:
        idx = 0
        while signers.length > idx:
            signers[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            signers[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while signers.length > idx:
            signers[idx] = 0
            idx = idx + 1
            continue 
    Mask(248, 0, stor2.field_8) = 0
}

function sub_56a01000(?) {
    require calldata.size - 4 >= 224
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    mem[96] = arg6.length
    mem[128 len arg6.length] = arg6[all]
    mem[arg6.length + 128] = 0
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + arg7.length + 36 <= calldata.size
    mem[64] = ceil32(arg6.length) + ceil32(arg7.length) + 160
    mem[ceil32(arg6.length) + 128] = arg7.length
    mem[ceil32(arg6.length) + 160 len arg7.length] = arg7[all]
    mem[ceil32(arg6.length) + arg7.length + 160] = 0
    require 0 < signers.length
    mem[0] = 1
    idx = 0
    while signers[idx] != msg.sender:
        require idx + 1 < signers.length
        mem[0] = 1
        idx = idx + 1
        continue 
    mem[ceil32(arg6.length) + ceil32(arg7.length) + 192] = 'ERC20'
    mem[ceil32(arg6.length) + ceil32(arg7.length) + 197] = address(arg1)
    mem[ceil32(arg6.length) + ceil32(arg7.length) + 217] = arg2
    mem[ceil32(arg6.length) + ceil32(arg7.length) + 249] = address(arg3)
    mem[ceil32(arg6.length) + ceil32(arg7.length) + 269] = arg4
    mem[ceil32(arg6.length) + ceil32(arg7.length) + 301] = arg5
    _34 = Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[arg6.length + 160 len -arg6.length + ceil32(arg6.length)]
    mem[ceil32(arg6.length) + ceil32(arg7.length) + 333 len floor32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[arg6.length + 160 len -arg6.length + ceil32(arg6.length)])] = mem[ceil32(arg6.length) + 160 len floor32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[arg6.length + 160 len -arg6.length + ceil32(arg6.length)])]
    mem[ceil32(arg6.length) + ceil32(arg7.length) + floor32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[arg6.length + 160 len -arg6.length + ceil32(arg6.length)]) + 333] = mem[ceil32(arg6.length) + floor32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[arg6.length + 160 len -arg6.length + ceil32(arg6.length)]) + -(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[arg6.length + 160 len -arg6.length + ceil32(arg6.length)] % 32) + 192 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[arg6.length + 160 len -arg6.length + ceil32(arg6.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[arg6.length + 160 len -arg6.length + ceil32(arg6.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[arg6.length + 160 len -arg6.length + ceil32(arg6.length)] % 32) + 32) + 256, mem[ceil32(arg6.length) + ceil32(arg7.length) + floor32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[arg6.length + 160 len -arg6.length + ceil32(arg6.length)]) + 333])
    mem[ceil32(arg6.length) + ceil32(arg7.length) + 160] = Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[arg6.length + 160 len -arg6.length + ceil32(arg6.length)] + 141
    _65 = sha3(mem[ceil32(arg6.length) + ceil32(arg7.length) + 192 len Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg6.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)]])
    require arg6.length == 65
    mem[64] = _34 + ceil32(arg6.length) + ceil32(arg7.length) + 365
    if mem[192 len 1] >= 27:
        signer = erecover(sha3(mem[ceil32(arg6.length) + ceil32(arg7.length) + 192 len Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg6.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)]]), mem[192 len 1], mem[128], mem[160]) 
    else:
        signer = erecover(sha3(mem[ceil32(arg6.length) + ceil32(arg7.length) + 192 len Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg6.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)]]), mem[192 len 1] + 27 << 248, mem[128], mem[160]) 
    mem[_34 + ceil32(arg6.length) + ceil32(arg7.length) + 333] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if uint8(stor2.field_0):
        require 0 < signers.length
        idx = 0
        while signers[idx] != arg1:
            require idx + 1 < signers.length
            mem[0] = 1
            idx = idx + 1
            continue 
    require arg4 >= block.timestamp
    require 0 < signers.length
    idx = 0
    while signers[idx] != msg.sender:
        require idx + 1 < signers.length
        mem[0] = 1
        idx = idx + 1
        continue 
    idx = 0
    while idx < 10:
        require stor3[idx] != arg5
        require idx < 10
        idx = idx + 1
        continue 
    require arg5 >= stor3.length
    require arg5 <= stor3.length + 10000
    stor3.length = arg5
    require 0 < signers.length
    mem[0] = 1
    idx = 0
    while signers[idx] != address(signer):
        require idx + 1 < signers.length
        mem[0] = 1
        idx = idx + 1
        continue 
    require address(signer) != msg.sender
    require ext_code.size(arg3)
    call arg3.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    mem[_34 + ceil32(arg6.length) + ceil32(arg7.length) + 365] = msg.sender
    mem[_34 + ceil32(arg6.length) + ceil32(arg7.length) + 397] = address(signer)
    mem[_34 + ceil32(arg6.length) + ceil32(arg7.length) + 429] = _65
    mem[_34 + ceil32(arg6.length) + ceil32(arg7.length) + 461] = arg1
    mem[_34 + ceil32(arg6.length) + ceil32(arg7.length) + 493] = arg2
    mem[_34 + ceil32(arg6.length) + ceil32(arg7.length) + 525] = arg3
    mem[_34 + ceil32(arg6.length) + ceil32(arg7.length) + 557] = 224
    mem[_34 + ceil32(arg6.length) + ceil32(arg7.length) + 589] = Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[arg6.length + 160 len -arg6.length + ceil32(arg6.length)]
    mem[_34 + ceil32(arg6.length) + ceil32(arg7.length) + 621 len ceil32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[arg6.length + 160 len -arg6.length + ceil32(arg6.length)])] = mem[ceil32(arg6.length) + 160 len ceil32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[arg6.length + 160 len -arg6.length + ceil32(arg6.length)])]
    if not Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[arg6.length + 160 len -arg6.length + ceil32(arg6.length)] % 32:
        emit 0x850d8230: mem[_34 + ceil32(arg6.length) + ceil32(arg7.length) + 365 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[arg6.length + 160 len -arg6.length + ceil32(arg6.length)] + 256]
    else:
        mem[floor32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[arg6.length + 160 len -arg6.length + ceil32(arg6.length)]) + _34 + ceil32(arg6.length) + ceil32(arg7.length) + 621] = mem[floor32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[arg6.length + 160 len -arg6.length + ceil32(arg6.length)]) + _34 + ceil32(arg6.length) + ceil32(arg7.length) + -(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[arg6.length + 160 len -arg6.length + ceil32(arg6.length)] % 32) + 653 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[arg6.length + 160 len -arg6.length + ceil32(arg6.length)] % 32]
        emit 0x850d8230: mem[_34 + ceil32(arg6.length) + ceil32(arg7.length) + 365 len floor32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[arg6.length + 160 len -arg6.length + ceil32(arg6.length)]) + 288]
}

function sub_76b8f9c8(?) {
    require calldata.size - 4 >= 224
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 128] = arg6.length
    mem[ceil32(arg3.length) + 160 len arg6.length] = arg6[all]
    mem[ceil32(arg3.length) + arg6.length + 160] = 0
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + arg7.length + 36 <= calldata.size
    mem[64] = ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 192
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 160] = arg7.length
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len arg7.length] = arg7[all]
    mem[ceil32(arg3.length) + ceil32(arg6.length) + arg7.length + 192] = 0
    require 0 < signers.length
    mem[0] = 1
    idx = 0
    while signers[idx] != msg.sender:
        require idx + 1 < signers.length
        mem[0] = 1
        idx = idx + 1
        continue 
    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 224] = 'ETHER'
    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 229] = address(arg1)
    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 249] = arg2
    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 281 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + floor32(arg3.length) + -(arg3.length % 32) + 313 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 281] = arg4
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 313] = arg5
    _72 = Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)]
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 345 len floor32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)])] = mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len floor32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)])]
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + floor32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)]) + 345] = mem[ceil32(arg3.length) + ceil32(arg6.length) + floor32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)]) + -(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] % 32) + 224 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] % 32) + 32) + 256, mem[arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + floor32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)]) + 345])
    mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 192] = Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] + arg3.length + 121
    _104 = sha3(mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 224 len Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(arg6.length) + arg7.length + 224 len -arg7.length + ceil32(arg7.length)]])
    require Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] == 65
    mem[64] = _72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 377
    if mem[ceil32(arg3.length) + 224 len 1] >= 27:
        signer = erecover(sha3(mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 224 len Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(arg6.length) + arg7.length + 224 len -arg7.length + ceil32(arg7.length)]]), mem[ceil32(arg3.length) + 224 len 1], mem[ceil32(arg3.length) + 160], mem[ceil32(arg3.length) + 192]) 
        mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 345] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not uint8(stor2.field_0):
            require arg4 >= block.timestamp
            require 0 < signers.length
            idx = 0
            while signers[idx] != msg.sender:
                require idx + 1 < signers.length
                mem[0] = 1
                idx = idx + 1
                continue 
            idx = 0
            while idx < 10:
                require stor3[idx] != arg5
                require idx < 10
                idx = idx + 1
                continue 
            require arg5 >= stor3.length
            require arg5 <= stor3.length + 10000
            stor3.length = arg5
            require 0 < signers.length
            mem[0] = 1
            idx = 0
            while signers[idx] != address(signer):
                require idx + 1 < signers.length
                mem[0] = 1
                idx = idx + 1
                continue 
            require address(signer) != msg.sender
            call arg1 with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 377] = msg.sender
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 409] = address(signer)
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 441] = _104
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 473] = arg1
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 505] = arg2
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 537] = 0
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 569] = 224
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 601] = Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)]
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 633 len ceil32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)])] = mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len ceil32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)])]
            var71001 = ceil32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)])
        else:
            require 0 < signers.length
            idx = 0
            while signers[idx] != arg1:
                require idx + 1 < signers.length
                mem[0] = 1
                idx = idx + 1
                continue 
            require arg4 >= block.timestamp
            require 0 < signers.length
            idx = 0
            while signers[idx] != msg.sender:
                require idx + 1 < signers.length
                mem[0] = 1
                idx = idx + 1
                continue 
            idx = 0
            while idx < 10:
                require stor3[idx] != arg5
                require idx < 10
                idx = idx + 1
                continue 
            require arg5 >= stor3.length
            require arg5 <= stor3.length + 10000
            stor3.length = arg5
            require 0 < signers.length
            mem[0] = 1
            idx = 0
            while signers[idx] != address(signer):
                require idx + 1 < signers.length
                mem[0] = 1
                idx = idx + 1
                continue 
            require address(signer) != msg.sender
            call arg1 with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 377] = msg.sender
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 409] = address(signer)
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 441] = _104
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 473] = arg1
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 505] = arg2
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 537] = 0
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 569] = 224
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 601] = Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)]
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 633 len ceil32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)])] = mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len ceil32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)])]
    else:
        signer = erecover(sha3(mem[ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 224 len Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(arg6.length) + arg7.length + 224 len -arg7.length + ceil32(arg7.length)]]), mem[ceil32(arg3.length) + 224 len 1] + 27 << 248, mem[ceil32(arg3.length) + 160], mem[ceil32(arg3.length) + 192]) 
        mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 345] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not uint8(stor2.field_0):
            require arg4 >= block.timestamp
            require 0 < signers.length
            idx = 0
            while signers[idx] != msg.sender:
                require idx + 1 < signers.length
                mem[0] = 1
                idx = idx + 1
                continue 
            idx = 0
            while idx < 10:
                require stor3[idx] != arg5
                require idx < 10
                idx = idx + 1
                continue 
            require arg5 >= stor3.length
            require arg5 <= stor3.length + 10000
            stor3.length = arg5
            require 0 < signers.length
            mem[0] = 1
            idx = 0
            while signers[idx] != address(signer):
                require idx + 1 < signers.length
                mem[0] = 1
                idx = idx + 1
                continue 
            require address(signer) != msg.sender
            call arg1 with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 377] = msg.sender
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 409] = address(signer)
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 441] = _104
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 473] = arg1
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 505] = arg2
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 537] = 0
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 569] = 224
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 601] = Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)]
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 633 len ceil32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)])] = mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len ceil32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)])]
            var72001 = ceil32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)])
        else:
            require 0 < signers.length
            idx = 0
            while signers[idx] != arg1:
                require idx + 1 < signers.length
                mem[0] = 1
                idx = idx + 1
                continue 
            require arg4 >= block.timestamp
            require 0 < signers.length
            idx = 0
            while signers[idx] != msg.sender:
                require idx + 1 < signers.length
                mem[0] = 1
                idx = idx + 1
                continue 
            idx = 0
            while idx < 10:
                require stor3[idx] != arg5
                require idx < 10
                idx = idx + 1
                continue 
            require arg5 >= stor3.length
            require arg5 <= stor3.length + 10000
            stor3.length = arg5
            require 0 < signers.length
            mem[0] = 1
            idx = 0
            while signers[idx] != address(signer):
                require idx + 1 < signers.length
                mem[0] = 1
                idx = idx + 1
                continue 
            require address(signer) != msg.sender
            call arg1 with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 377] = msg.sender
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 409] = address(signer)
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 441] = _104
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 473] = arg1
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 505] = arg2
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 537] = 0
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 569] = 224
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 601] = Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)]
            mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 633 len ceil32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)])] = mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len ceil32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)])]
    if not Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] % 32:
        emit 0x850d8230: mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 377 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] + 256]
    else:
        mem[floor32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)]) + _72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 633] = mem[floor32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)]) + _72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + -(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] % 32) + 665 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] % 32]
        emit 0x850d8230: mem[_72 + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 377 len floor32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)]) + 288]
}



}
