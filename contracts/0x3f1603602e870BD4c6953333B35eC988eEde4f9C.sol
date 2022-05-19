contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOfToken;
mapping of uint256 sub_7eadebfe;
uint256 stor3; offset 1
uint256 totalVoteWeight;
mapping of uint8 stor4;

function sub_7eadebfe(?) {
    return sub_7eadebfe[arg1]
}

function voteWeightOf(address arg1) {
    return sub_7eadebfe[address(arg1)]
}

function owner() {
    return owner
}

function sub_9cf40c0b(?) {
    return bool(stor4[Mask(160, 96, arg1)])
}

function balanceOfToken(address arg1) {
    return balanceOfToken[address(arg1)]
}

function tokens(address arg1) {
    return balanceOfToken[arg1]
}

function totalVoteWeight() {
    return totalVoteWeight
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function depositToken(address arg1, uint256 arg2, string arg3) {
    require arg1 > 0
    require arg2 > 0
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require balanceOfToken[address(arg1)] + arg2 >= balanceOfToken[address(arg1)]
    balanceOfToken[address(arg1)] += arg2
    emit DepositEvent(address(arg1), msg.sender, arg2, Array(len=arg3.length, data=arg3[all]));
}

function deposit(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    require msg.value > 0
    require balanceOfToken[0] + msg.value >= balanceOfToken[0]
    balanceOfToken[0] += msg.value
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 288 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit DepositEvent(address arg1, address arg2, uint256 arg3, string arg4):
                          0,
                          msg.sender,
                          msg.value,
                          128,
                          arg1.length,
                          Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256,
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 288] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 320 len arg1.length % 32]
        emit DepositEvent(address arg1, address arg2, uint256 arg3, string arg4):
                          0,
                          msg.sender,
                          msg.value,
                          128,
                          arg1.length,
                          Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                          mem[(2 * ceil32(arg1.length)) + 288 len floor32(arg1.length) + -ceil32(arg1.length) + 32],
}

function withdrawBySigns(bytes20 arg1, address arg2, address arg3, uint256 arg4, address[] arg5, bytes32[] arg6, bytes32[] arg7, uint8[] arg8) payable {
    mem[96] = arg5.length
    mem[128 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg5.length) + 128] = arg6.length
    mem[(32 * arg5.length) + 160 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * arg5.length) + (32 * arg6.length) + 160] = arg7.length
    mem[(32 * arg5.length) + (32 * arg6.length) + 192 len 32 * arg7.length] = call.data[arg7 + 36 len 32 * arg7.length]
    mem[64] = (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 224
    mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192] = arg8.length
    mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 224 len 32 * arg8.length] = call.data[arg8 + 36 len 32 * arg8.length]
    require arg2 != this.address
    require arg4 > 0
    require not stor4[Mask(160, 96, arg1)]
    s = 0
    idx = 0
    while idx < arg5.length:
        s = idx + 1
        while s < arg5.length:
            require s < arg5.length
            require idx < arg5.length
            require mem[(32 * idx) + 140 len 20] != mem[(32 * s) + 140 len 20]
            s = s + 1
            continue 
        s = arg5.length
        idx = idx + 1
        continue 
    s = 0
    s = 0
    idx = 0
    while idx < arg5.length:
        mem[mem[64]] = Mask(160, 96, arg1)
        mem[mem[64] + 20] = address(arg2)
        mem[mem[64] + 40] = address(arg3)
        mem[mem[64] + 60] = arg4
        require idx < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192]
        _102 = mem[(32 * idx) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 224]
        require idx < mem[(32 * arg5.length) + 128]
        _107 = mem[(32 * idx) + (32 * arg5.length) + 160]
        require idx < mem[(32 * arg5.length) + (32 * arg6.length) + 160]
        _113 = mem[(32 * idx) + (32 * arg5.length) + (32 * arg6.length) + 192]
        _114 = mem[64]
        mem[64] = mem[64] + 32
        mem[_114 + 32] = sha3(Mask(160, 96, arg1) >> 96, arg2, arg3, arg4)
        mem[_114 + 64] = uint8(_102)
        mem[_114 + 96] = _107
        mem[_114 + 128] = _113
        signer = erecover(sha3(Mask(160, 96, arg1) >> 96, arg2, arg3, arg4), _102 << 248, _107, _113) 
        mem[_114] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < mem[96]
        require mem[(32 * idx) + 140 len 20] == address(signer)
        s = signer
        s = sha3(Mask(160, 96, arg1) >> 96, arg2, arg3, arg4)
        idx = idx + 1
        continue 
    s = 0
    idx = 0
    while idx < mem[96]:
        require idx < mem[96]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        require s + sub_7eadebfe[mem[(32 * idx) + 140 len 20]] >= s
        s = s + sub_7eadebfe[mem[(32 * idx) + 140 len 20]]
        idx = idx + 1
        continue 
    require s * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] <= totalVoteWeight
    stor4[Mask(160, 96, arg1)] = 1
    if s * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] > stor3:
        if not arg2:
            require balanceOfToken[0] >= arg4
            require arg4 <= balanceOfToken[0]
            balanceOfToken[0] -= arg4
            call msg.sender with:
               value arg4 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit WithdrawEvent(Mask(160, 96, arg1), 0, address(arg3), arg4);
        else:
            require balanceOfToken[address(arg2)] >= arg4
            require arg4 <= balanceOfToken[address(arg2)]
            balanceOfToken[address(arg2)] -= arg4
            require ext_code.size(arg2)
            call arg2.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg3), arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit WithdrawEvent(Mask(160, 96, arg1), address(arg2), address(arg3), arg4);
}

function createasset(address arg1, string arg2, string arg3) {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    call arg1.0x95d89b41 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 160
        require return_data.size >= 32
        _6 = mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]
        require mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] <= 4294967296
        require mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] + 32 <= return_data.size
        require mem[mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] + ceil32(arg2.length) + ceil32(arg3.length) + 160] <= 4294967296 and mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] + mem[mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] + ceil32(arg2.length) + ceil32(arg3.length) + 160] + 32 <= return_data.size
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 160] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        call arg1.name() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _11 = mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 160]
            require mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 160] <= 4294967296
            require mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 160] + 32 <= return_data.size
            require mem[mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 160] + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 160] <= 4294967296 and mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 160] + mem[mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 160] + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 160] + 32 <= return_data.size
            mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 160] = 0x313ce56700000000000000000000000000000000000000000000000000000000
            require ext_code.size(arg1)
            call arg1.0x313ce567 with:
                 gas gas_remaining wei
                args mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 160] = msg.sender
                mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 224] = arg1
                mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 320] = uint8(ext_call.return_data[0])
                mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 192] = 224
                mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] = arg2.length
                mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                if not arg2.length % 32:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 256] = arg2.length + 256
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] = mem[_6 + ceil32(arg2.length) + ceil32(arg3.length) + 160]
                    _96 = mem[_6 + ceil32(arg2.length) + ceil32(arg3.length) + 160]
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_6 + ceil32(arg2.length) + ceil32(arg3.length) + 160])] = mem[_6 + ceil32(arg2.length) + ceil32(arg3.length) + 192 len ceil32(mem[_6 + ceil32(arg2.length) + ceil32(arg3.length) + 160])]
                    if not _96 % 32:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 288] = _96 + arg2.length + 288
                        mem[_96 + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448] = mem[_11 + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 160]
                        _171 = mem[_11 + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 160]
                        mem[_96 + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[_11 + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 160])] = mem[_11 + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 192 len ceil32(mem[_11 + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 160])]
                        if not _171 % 32:
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = _171 + _96 + arg2.length + 320
                            mem[_171 + _96 + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = arg3.length
                            mem[_171 + _96 + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 512 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                emit CreateAsset(address arg1, string arg2, address arg3, string arg4, string arg5, uint8 arg6, string arg7):
                                                 mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 160 len arg3.length + _171 + _96 + arg2.length + ceil32(return_data.size) + 352],
                            else:
                                mem[floor32(arg3.length) + _171 + _96 + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 512] = mem[floor32(arg3.length) + _171 + _96 + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + -(arg3.length % 32) + 544 len arg3.length % 32]
                                emit CreateAsset(address arg1, string arg2, address arg3, string arg4, string arg5, uint8 arg6, string arg7):
                                                 mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 160 len floor32(arg3.length) + _171 + _96 + arg2.length + ceil32(return_data.size) + 384],
                        else:
                            mem[floor32(_171) + _96 + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(_171) + _96 + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + -(_171 % 32) + 512 len _171 % 32]
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = floor32(_171) + _96 + arg2.length + 352
                            mem[floor32(_171) + _96 + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 512] = arg3.length
                            mem[floor32(_171) + _96 + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 544 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                emit CreateAsset(address arg1, string arg2, address arg3, string arg4, string arg5, uint8 arg6, string arg7):
                                                 mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 160 len arg3.length + floor32(_171) + _96 + arg2.length + ceil32(return_data.size) + 384],
                            else:
                                mem[floor32(arg3.length) + floor32(_171) + _96 + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 544] = mem[floor32(arg3.length) + floor32(_171) + _96 + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + -(arg3.length % 32) + 576 len arg3.length % 32]
                                emit CreateAsset(address arg1, string arg2, address arg3, string arg4, string arg5, uint8 arg6, string arg7):
                                                 mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 160 len floor32(arg3.length) + floor32(_171) + _96 + arg2.length + ceil32(return_data.size) + 416],
                    else:
                        mem[floor32(_96) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(_96) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + -(_96 % 32) + 480 len _96 % 32]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 288] = floor32(_96) + arg2.length + 320
                        mem[floor32(_96) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = mem[_11 + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 160]
                        _177 = mem[_11 + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 160]
                        mem[floor32(_96) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 512 len ceil32(mem[_11 + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 160])] = mem[_11 + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 192 len ceil32(mem[_11 + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 160])]
                        if not _177 % 32:
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = _177 + floor32(_96) + arg2.length + 352
                            mem[_177 + floor32(_96) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 512] = arg3.length
                            mem[_177 + floor32(_96) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 544 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                emit CreateAsset(address arg1, string arg2, address arg3, string arg4, string arg5, uint8 arg6, string arg7):
                                                 mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 160 len arg3.length + _177 + floor32(_96) + arg2.length + ceil32(return_data.size) + 384],
                            else:
                                mem[floor32(arg3.length) + _177 + floor32(_96) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 544] = mem[floor32(arg3.length) + _177 + floor32(_96) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + -(arg3.length % 32) + 576 len arg3.length % 32]
                                emit CreateAsset(address arg1, string arg2, address arg3, string arg4, string arg5, uint8 arg6, string arg7):
                                                 mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 160 len floor32(arg3.length) + _177 + floor32(_96) + arg2.length + ceil32(return_data.size) + 416],
                        else:
                            mem[floor32(_177) + floor32(_96) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 512] = mem[floor32(_177) + floor32(_96) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + -(_177 % 32) + 544 len _177 % 32]
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = floor32(_177) + floor32(_96) + arg2.length + 384
                            mem[floor32(_177) + floor32(_96) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 544] = arg3.length
                            mem[floor32(_177) + floor32(_96) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 576 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                emit CreateAsset(address arg1, string arg2, address arg3, string arg4, string arg5, uint8 arg6, string arg7):
                                                 mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 160 len arg3.length + floor32(_177) + floor32(_96) + arg2.length + ceil32(return_data.size) + 416],
                            else:
                                mem[floor32(arg3.length) + floor32(_177) + floor32(_96) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 576] = mem[floor32(arg3.length) + floor32(_177) + floor32(_96) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + -(arg3.length % 32) + 608 len arg3.length % 32]
                                emit CreateAsset(address arg1, string arg2, address arg3, string arg4, string arg5, uint8 arg6, string arg7):
                                                 mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 160 len floor32(arg3.length) + floor32(_177) + floor32(_96) + arg2.length + ceil32(return_data.size) + 448],
                else:
                    mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + -(arg2.length % 32) + 448 len arg2.length % 32]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 256] = floor32(arg2.length) + 288
                    mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448] = mem[_6 + ceil32(arg2.length) + ceil32(arg3.length) + 160]
                    _99 = mem[_6 + ceil32(arg2.length) + ceil32(arg3.length) + 160]
                    mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[_6 + ceil32(arg2.length) + ceil32(arg3.length) + 160])] = mem[_6 + ceil32(arg2.length) + ceil32(arg3.length) + 192 len ceil32(mem[_6 + ceil32(arg2.length) + ceil32(arg3.length) + 160])]
                    if not _99 % 32:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 288] = _99 + floor32(arg2.length) + 320
                        mem[_99 + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = mem[_11 + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 160]
                        _174 = mem[_11 + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 160]
                        mem[_99 + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 512 len ceil32(mem[_11 + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 160])] = mem[_11 + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 192 len ceil32(mem[_11 + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 160])]
                        if not _174 % 32:
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = _174 + _99 + floor32(arg2.length) + 352
                            mem[_174 + _99 + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 512] = arg3.length
                            mem[_174 + _99 + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 544 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                emit CreateAsset(address arg1, string arg2, address arg3, string arg4, string arg5, uint8 arg6, string arg7):
                                                 mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 160 len arg3.length + _174 + _99 + floor32(arg2.length) + ceil32(return_data.size) + 384],
                            else:
                                mem[floor32(arg3.length) + _174 + _99 + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 544] = mem[floor32(arg3.length) + _174 + _99 + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + -(arg3.length % 32) + 576 len arg3.length % 32]
                                emit CreateAsset(address arg1, string arg2, address arg3, string arg4, string arg5, uint8 arg6, string arg7):
                                                 mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 160 len floor32(arg3.length) + _174 + _99 + floor32(arg2.length) + ceil32(return_data.size) + 416],
                        else:
                            mem[floor32(_174) + _99 + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 512] = mem[floor32(_174) + _99 + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + -(_174 % 32) + 544 len _174 % 32]
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = floor32(_174) + _99 + floor32(arg2.length) + 384
                            mem[floor32(_174) + _99 + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 544] = arg3.length
                            mem[floor32(_174) + _99 + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 576 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                emit CreateAsset(address arg1, string arg2, address arg3, string arg4, string arg5, uint8 arg6, string arg7):
                                                 mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 160 len arg3.length + floor32(_174) + _99 + floor32(arg2.length) + ceil32(return_data.size) + 416],
                            else:
                                mem[floor32(arg3.length) + floor32(_174) + _99 + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 576] = mem[floor32(arg3.length) + floor32(_174) + _99 + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + -(arg3.length % 32) + 608 len arg3.length % 32]
                                emit CreateAsset(address arg1, string arg2, address arg3, string arg4, string arg5, uint8 arg6, string arg7):
                                                 mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 160 len floor32(arg3.length) + floor32(_174) + _99 + floor32(arg2.length) + ceil32(return_data.size) + 448],
                    else:
                        mem[floor32(_99) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(_99) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + -(_99 % 32) + 512 len _99 % 32]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 288] = floor32(_99) + floor32(arg2.length) + 352
                        mem[floor32(_99) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 512] = mem[_11 + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 160]
                        _179 = mem[_11 + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 160]
                        mem[floor32(_99) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 544 len ceil32(mem[_11 + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 160])] = mem[_11 + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 192 len ceil32(mem[_11 + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 160])]
                        if not _179 % 32:
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = _179 + floor32(_99) + floor32(arg2.length) + 384
                            mem[_179 + floor32(_99) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 544] = arg3.length
                            mem[_179 + floor32(_99) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 576 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                emit CreateAsset(address arg1, string arg2, address arg3, string arg4, string arg5, uint8 arg6, string arg7):
                                                 mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 160 len arg3.length + _179 + floor32(_99) + floor32(arg2.length) + ceil32(return_data.size) + 416],
                            else:
                                mem[floor32(arg3.length) + _179 + floor32(_99) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 576] = mem[floor32(arg3.length) + _179 + floor32(_99) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + -(arg3.length % 32) + 608 len arg3.length % 32]
                                emit CreateAsset(address arg1, string arg2, address arg3, string arg4, string arg5, uint8 arg6, string arg7):
                                                 mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 160 len floor32(arg3.length) + _179 + floor32(_99) + floor32(arg2.length) + ceil32(return_data.size) + 448],
                        else:
                            mem[floor32(_179) + floor32(_99) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 544] = mem[floor32(_179) + floor32(_99) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + -(_179 % 32) + 576 len _179 % 32]
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = floor32(_179) + floor32(_99) + floor32(arg2.length) + 416
                            mem[floor32(_179) + floor32(_99) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 576] = arg3.length
                            mem[floor32(_179) + floor32(_99) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 608 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                emit CreateAsset(address arg1, string arg2, address arg3, string arg4, string arg5, uint8 arg6, string arg7):
                                                 mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 160 len arg3.length + floor32(_179) + floor32(_99) + floor32(arg2.length) + ceil32(return_data.size) + 448],
                            else:
                                mem[floor32(arg3.length) + floor32(_179) + floor32(_99) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 608] = mem[floor32(arg3.length) + floor32(_179) + floor32(_99) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + -(arg3.length % 32) + 640 len arg3.length % 32]
                                emit CreateAsset(address arg1, string arg2, address arg3, string arg4, string arg5, uint8 arg6, string arg7):
                                                 mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 160 len floor32(arg3.length) + floor32(_179) + floor32(_99) + floor32(arg2.length) + ceil32(return_data.size) + 480],
}



}
