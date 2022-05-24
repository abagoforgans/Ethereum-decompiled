contract main {




// =====================  Runtime code  =====================


const sub_d4c0ed3e(?) = 20


address owner;
address newOwner;
address tokenAddress;
array of struct sub_26f34782;

function proposals(uint256 arg1) {
    require arg1 < sub_26f34782.length
    return bool(sub_26f34782[arg1].field_0)
}

function sub_01bd0bb2(?) {
    require arg1 < sub_26f34782.length
    require arg2 < sub_26f34782[arg1].field_768
    return stor[sha3((4 * arg1) + ('name', 'sub_26f34782', 3) + 3) + arg2].field_0
}

function sub_26f34782(?) {
    require arg1 < sub_26f34782.length
    return sub_26f34782[arg1].field_512
}

function sub_652afb7d(?) {
    require arg1 < sub_26f34782.length
    return sub_26f34782[arg1].field_256
}

function isProposalOpen(uint256 arg1) {
    require arg1 < sub_26f34782.length
    return bool(sub_26f34782[arg1].field_0)
}

function getNumProposals() {
    return sub_26f34782.length
}

function owner() {
    return owner
}

function sub_a31dc57c(?) {
    require arg1 < sub_26f34782.length
    require arg2 < sub_26f34782[arg1].field_512
    return stor[sha3((4 * arg1) + ('name', 'sub_26f34782', 3) + 2) + arg2].field_0
}

function sub_bf53e99b(?) {
    require arg1 < sub_26f34782.length
    require arg2 < sub_26f34782[arg1].field_256
    return stor[sha3((4 * arg1) + ('name', 'sub_26f34782', 3) + 1) + arg2].field_0
}

function newOwner() {
    return newOwner
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function setToken(address arg1) {
    require msg.sender == owner
    tokenAddress = arg1
}

function acceptOwnership() {
    if msg.sender == newOwner:
        owner = newOwner
        newOwner = 0
}

function sub_5f2ba6b2(?) {
    require msg.sender == owner
    require arg1 < sub_26f34782.length
    sub_26f34782[arg1].field_0 = 1
    emit VotingOpened(arg1);
}

function sub_d2111a72(?) {
    require msg.sender == owner
    require arg1 < sub_26f34782.length
    sub_26f34782[arg1].field_0 = 0
    emit VotingClosed(arg1);
}

function sub_f7589b54(?) {
    require arg1 < sub_26f34782.length
    s = 0
    idx = 0
    s = 0
    while idx < sub_26f34782[arg1].field_256:
        mem[0] = (4 * arg1) + sha3(3) + 1
        if stor[sha3((4 * arg1) + ('name', 'sub_26f34782', 3) + 1) + idx].field_0:
            if stor[sha3((4 * arg1) + ('name', 'sub_26f34782', 3) + 1) + idx].field_0 <= 0:
                s = stor[sha3((4 * arg1) + ('name', 'sub_26f34782', 3) + 1) + idx].field_0
                idx = idx + 1
                s = s
                continue 
            s = stor[sha3((4 * arg1) + ('name', 'sub_26f34782', 3) + 1) + idx].field_0
            idx = idx + 1
            s = 1
            continue 
        require s + 1 >= s
        s = stor[sha3((4 * arg1) + ('name', 'sub_26f34782', 3) + 1) + idx].field_0
        idx = idx + 1
        s = s + 1
        continue 
    return ''
}

function vote(uint256 arg1, uint256 arg2, uint256 arg3) {
    require arg1 < sub_26f34782.length
    require sub_26f34782[arg1].field_0
    require arg2 < sub_26f34782[arg1].field_256
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 < sub_26f34782[arg1].field_256
    require arg3 + stor[sha3((4 * arg1) + ('name', 'sub_26f34782', 3) + 1) + arg2].field_0 >= stor[sha3((4 * arg1) + ('name', 'sub_26f34782', 3) + 1) + arg2].field_0
    require arg2 < sub_26f34782[arg1].field_256
    stor[sha3((4 * arg1) + ('name', 'sub_26f34782', 3) + 1) + arg2].field_0 += arg3
    sub_26f34782[arg1].field_512++
    stor[sha3((4 * arg1) + ('name', 'sub_26f34782', 3) + 2) + sub_26f34782[arg1].field_512].field_0 = msg.sender or Mask(96, 160, stor[sha3((4 * arg1) + ('name', 'sub_26f34782', 3) + 2) + sub_26f34782[arg1].field_512].field_0)
    sub_26f34782[arg1].field_768++
    stor[sha3((4 * arg1) + ('name', 'sub_26f34782', 3) + 3) + sub_26f34782[arg1].field_768].field_0 = arg3
    return 1
}

function sub_1f832cd6(?) {
    require msg.sender == owner
    require arg1 >= 2
    require arg1 <= 20
    if arg1:
        mem[256 len 32 * arg1] = code.data[4206 len 32 * arg1]
    mem[(32 * arg1) + 256] = 0
    sub_26f34782.length++
    sub_26f34782[sub_26f34782.length].field_0 = uint8(arg2)
    sub_26f34782[sub_26f34782.length].field_256 = arg1
    if not arg1:
        idx = 0
        while sub_26f34782[sub_26f34782.length].field_256 > idx:
            stor[idx + sha3((4 * sub_26f34782.length) + ('name', 'sub_26f34782', 3) + 1)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 256
        while (32 * arg1) + 256 > idx:
            stor[s + sha3((4 * sub_26f34782.length) + ('name', 'sub_26f34782', 3) + 1)].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1) + 31) >> 5
        while sub_26f34782[sub_26f34782.length].field_256 > idx:
            stor[idx + sha3((4 * sub_26f34782.length) + ('name', 'sub_26f34782', 3) + 1)].field_0 = 0
            idx = idx + 1
            continue 
    sub_26f34782[sub_26f34782.length].field_512 = 0
    idx = 0
    while sub_26f34782[sub_26f34782.length].field_512 > idx:
        stor[idx + sha3((4 * sub_26f34782.length) + ('name', 'sub_26f34782', 3) + 2)].field_0 = 0
        idx = idx + 1
        continue 
    sub_26f34782[sub_26f34782.length].field_768 = 0
    idx = 0
    while sub_26f34782[sub_26f34782.length].field_768 > idx:
        stor[idx + sha3((4 * sub_26f34782.length) + ('name', 'sub_26f34782', 3) + 3)].field_0 = 0
        idx = idx + 1
        continue 
    emit 0xfcf3b1aa: arg1, sub_26f34782.length - 1
    if arg2:
        emit VotingOpened(sub_26f34782.length - 1);
    return (sub_26f34782.length - 1)
}

function sub_dad82bfc(?) {
    require msg.sender == owner
    require arg1 < sub_26f34782.length
    if arg3 != 0:
        mem[96] = arg3
        if not arg3:
            mem[(32 * arg3) + 128] = arg3
        else:
            mem[128 len 32 * arg3] = code.data[4206 len 32 * arg3]
            mem[(32 * arg3) + 128] = arg3
            mem[(32 * arg3) + 160 len 32 * arg3] = code.data[4206 len 32 * arg3]
        require arg3 + arg2 <= sub_26f34782[arg1].field_512
        idx = arg2
        while idx < arg3 + arg2:
            require idx < sub_26f34782[arg1].field_768
            mem[0] = (4 * arg1) + sha3(3) + 3
            if stor[sha3((4 * arg1) + ('name', 'sub_26f34782', 3) + 3) + idx].field_0 != 0:
                require idx < sub_26f34782[arg1].field_512
                require idx - arg2 < mem[96]
                mem[(32 * idx - arg2) + 128] = stor[sha3((4 * arg1) + ('name', 'sub_26f34782', 3) + 2) + idx].field_0
                require idx < sub_26f34782[arg1].field_768
                require idx - arg2 < mem[(32 * arg3) + 128]
                mem[(32 * arg3) + (32 * idx - arg2) + 160] = stor[sha3((4 * arg1) + ('name', 'sub_26f34782', 3) + 3) + idx].field_0
                require idx < sub_26f34782[arg1].field_512
                stor[sha3((4 * arg1) + ('name', 'sub_26f34782', 3) + 2) + idx].field_0 = 0
                require idx < sub_26f34782[arg1].field_768
                mem[0] = (4 * arg1) + sha3(3) + 3
                stor[sha3((4 * arg1) + ('name', 'sub_26f34782', 3) + 3) + idx].field_0 = 0
            idx = idx + 1
            continue 
        mem[(64 * arg3) + 160] = 0x153a1f3e00000000000000000000000000000000000000000000000000000000
        mem[(64 * arg3) + 164] = 64
        mem[(64 * arg3) + 228] = mem[96]
        mem[(64 * arg3) + 260 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[(64 * arg3) + 196] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + (64 * arg3) + 260] = mem[(32 * arg3) + 128]
        mem[(32 * mem[96]) + (64 * arg3) + 292 len floor32(mem[(32 * arg3) + 128])] = mem[(32 * arg3) + 160 len floor32(mem[(32 * arg3) + 128])]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x153a1f3e with:
             gas gas_remaining wei
            args Array(len=mem[96], data=mem[(64 * arg3) + 260 len (32 * mem[(32 * arg3) + 128]) + (32 * mem[96]) + 32]), (32 * mem[96]) + 96
    else:
        mem[96] = sub_26f34782[arg1].field_512 - arg2
        if not sub_26f34782[arg1].field_512 - arg2:
            mem[(32 * sub_26f34782[arg1].field_512 - arg2) + 128] = sub_26f34782[arg1].field_512 - arg2
            require sub_26f34782[arg1].field_512 <= sub_26f34782[arg1].field_512
            idx = arg2
            while idx < sub_26f34782[arg1].field_512:
                require idx < sub_26f34782[arg1].field_768
                mem[0] = (4 * arg1) + sha3(3) + 3
                if stor[sha3((4 * arg1) + ('name', 'sub_26f34782', 3) + 3) + idx].field_0 != 0:
                    require idx < sub_26f34782[arg1].field_512
                    require idx - arg2 < mem[96]
                    mem[(32 * idx - arg2) + 128] = stor[sha3((4 * arg1) + ('name', 'sub_26f34782', 3) + 2) + idx].field_0
                    require idx < sub_26f34782[arg1].field_768
                    require idx - arg2 < mem[(32 * sub_26f34782[arg1].field_512 - arg2) + 128]
                    mem[(32 * sub_26f34782[arg1].field_512 - arg2) + (32 * idx - arg2) + 160] = stor[sha3((4 * arg1) + ('name', 'sub_26f34782', 3) + 3) + idx].field_0
                    require idx < sub_26f34782[arg1].field_512
                    stor[sha3((4 * arg1) + ('name', 'sub_26f34782', 3) + 2) + idx].field_0 = 0
                    require idx < sub_26f34782[arg1].field_768
                    mem[0] = (4 * arg1) + sha3(3) + 3
                    stor[sha3((4 * arg1) + ('name', 'sub_26f34782', 3) + 3) + idx].field_0 = 0
                idx = idx + 1
                continue 
            mem[(64 * sub_26f34782[arg1].field_512 - arg2) + 160] = 0x153a1f3e00000000000000000000000000000000000000000000000000000000
            mem[(64 * sub_26f34782[arg1].field_512 - arg2) + 164] = 64
            mem[(64 * sub_26f34782[arg1].field_512 - arg2) + 228] = mem[96]
            mem[(64 * sub_26f34782[arg1].field_512 - arg2) + 260 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[(64 * sub_26f34782[arg1].field_512 - arg2) + 196] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + (64 * sub_26f34782[arg1].field_512 - arg2) + 260] = mem[(32 * sub_26f34782[arg1].field_512 - arg2) + 128]
            _135 = mem[(32 * sub_26f34782[arg1].field_512 - arg2) + 128]
            mem[(32 * mem[96]) + (64 * sub_26f34782[arg1].field_512 - arg2) + 292 len floor32(mem[(32 * sub_26f34782[arg1].field_512 - arg2) + 128])] = mem[(32 * sub_26f34782[arg1].field_512 - arg2) + 160 len floor32(mem[(32 * sub_26f34782[arg1].field_512 - arg2) + 128])]
            require ext_code.size(tokenAddress)
            call tokenAddress.0x153a1f3e with:
                 gas gas_remaining wei
                args Array(len=mem[96], data=mem[(64 * sub_26f34782[arg1].field_512 - arg2) + 260 len (32 * _135) + (32 * mem[96]) + 32]), (32 * mem[96]) + 96
        else:
            mem[128 len 32 * sub_26f34782[arg1].field_512 - arg2] = code.data[4206 len 32 * sub_26f34782[arg1].field_512 - arg2]
            mem[(32 * sub_26f34782[arg1].field_512 - arg2) + 128] = sub_26f34782[arg1].field_512 - arg2
            mem[(32 * sub_26f34782[arg1].field_512 - arg2) + 160 len 32 * sub_26f34782[arg1].field_512 - arg2] = code.data[4206 len 32 * sub_26f34782[arg1].field_512 - arg2]
            require sub_26f34782[arg1].field_512 <= sub_26f34782[arg1].field_512
            idx = arg2
            while idx < sub_26f34782[arg1].field_512:
                require idx < sub_26f34782[arg1].field_768
                mem[0] = (4 * arg1) + sha3(3) + 3
                if stor[sha3((4 * arg1) + ('name', 'sub_26f34782', 3) + 3) + idx].field_0 != 0:
                    require idx < sub_26f34782[arg1].field_512
                    require idx - arg2 < mem[96]
                    mem[(32 * idx - arg2) + 128] = stor[sha3((4 * arg1) + ('name', 'sub_26f34782', 3) + 2) + idx].field_0
                    require idx < sub_26f34782[arg1].field_768
                    require idx - arg2 < mem[(32 * sub_26f34782[arg1].field_512 - arg2) + 128]
                    mem[(32 * sub_26f34782[arg1].field_512 - arg2) + (32 * idx - arg2) + 160] = stor[sha3((4 * arg1) + ('name', 'sub_26f34782', 3) + 3) + idx].field_0
                    require idx < sub_26f34782[arg1].field_512
                    stor[sha3((4 * arg1) + ('name', 'sub_26f34782', 3) + 2) + idx].field_0 = 0
                    require idx < sub_26f34782[arg1].field_768
                    mem[0] = (4 * arg1) + sha3(3) + 3
                    stor[sha3((4 * arg1) + ('name', 'sub_26f34782', 3) + 3) + idx].field_0 = 0
                idx = idx + 1
                continue 
            mem[(64 * sub_26f34782[arg1].field_512 - arg2) + 160] = 0x153a1f3e00000000000000000000000000000000000000000000000000000000
            mem[(64 * sub_26f34782[arg1].field_512 - arg2) + 164] = 64
            mem[(64 * sub_26f34782[arg1].field_512 - arg2) + 228] = mem[96]
            mem[(64 * sub_26f34782[arg1].field_512 - arg2) + 260 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[(64 * sub_26f34782[arg1].field_512 - arg2) + 196] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + (64 * sub_26f34782[arg1].field_512 - arg2) + 260] = mem[(32 * sub_26f34782[arg1].field_512 - arg2) + 128]
            _138 = mem[(32 * sub_26f34782[arg1].field_512 - arg2) + 128]
            mem[(32 * mem[96]) + (64 * sub_26f34782[arg1].field_512 - arg2) + 292 len floor32(mem[(32 * sub_26f34782[arg1].field_512 - arg2) + 128])] = mem[(32 * sub_26f34782[arg1].field_512 - arg2) + 160 len floor32(mem[(32 * sub_26f34782[arg1].field_512 - arg2) + 128])]
            require ext_code.size(tokenAddress)
            call tokenAddress.0x153a1f3e with:
                 gas gas_remaining wei
                args Array(len=mem[96], data=mem[(64 * sub_26f34782[arg1].field_512 - arg2) + 260 len (32 * _138) + (32 * mem[96]) + 32]), (32 * mem[96]) + 96
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
