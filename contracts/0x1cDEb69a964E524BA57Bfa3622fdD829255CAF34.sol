contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[56 len 5119]
}



// =====================  Runtime code  =====================


uint8 contractState; offset 160
address owner;
mapping of struct sub_1a9fcb9c;
array of address stor2;

function sub_1a9fcb9c(?) {
    return sub_1a9fcb9c[address(arg1)].field_1024
}

function sub_5f01d7df(?) {
    return stor2.length
}

function sub_70fb7d19(?) {
    require sub_1a9fcb9c[address(arg1)].field_256 <= 8
    return 1 == bool(sub_1a9fcb9c[address(arg1)].field_768), sub_1a9fcb9c[address(arg1)].field_256
}

function contractState() {
    require contractState <= 1
    return contractState
}

function owner() {
    return owner
}

function getAffiliate(address arg1) {
    return sub_1a9fcb9c[address(arg1)].field_776
}

function checkRegistration(address arg1) {
    require sub_1a9fcb9c[address(arg1)].field_256 <= 8
    return 1 == bool(sub_1a9fcb9c[address(arg1)].field_768), sub_1a9fcb9c[address(arg1)].field_256
}

function kill() {
    if owner != msg.sender:
    contractState = 0
    selfdestruct(owner)
}

function _fallback() payable {
    revert 
}

function isContract(address arg1) {
    return (ext_code.size(arg1) > 1)
}

function sub_fbbc1171(?) {
    if owner == msg.sender:
        contractState = 0
}

function activateContract() {
    if owner == msg.sender:
        contractState = 1
}

function changeOwner(address arg1) {
    if owner == msg.sender:
        owner = arg1
        emit OwnerChanged(owner, arg1);
}

function sub_bc8343bc(?) {
    require sub_1a9fcb9c[address(msg.sender)].field_256 <= 8
    if not sub_1a9fcb9c[address(msg.sender)].field_256:
        if arg1 != msg.sender:
            sub_1a9fcb9c[address(msg.sender)].field_1024 = arg1
            emit 0x512dad2b: arg1, msg.sender
}

function setAffiliate(address arg1) {
    require sub_1a9fcb9c[address(msg.sender)].field_256 <= 8
    if not sub_1a9fcb9c[address(msg.sender)].field_256:
        if arg1 != msg.sender:
            sub_1a9fcb9c[address(msg.sender)].field_776 = arg1
            emit 0xba2837e1: arg1, msg.sender
}

function sub_7720b7e9(?) {
    if not sub_1a9fcb9c[address(arg1)].field_768:
        if bool(sub_1a9fcb9c[address(msg.sender)].field_768) == 1:
            require sub_1a9fcb9c[address(msg.sender)].field_256 <= 8
            if sub_1a9fcb9c[address(msg.sender)].field_256 == 1:
                sub_1a9fcb9c[address(arg1)].field_768 = 1
                emit 0xb9963d19: arg1
}

function sub_c57303fc(?) {
    if 1 == bool(sub_1a9fcb9c[address(arg1)].field_768):
        if bool(sub_1a9fcb9c[address(msg.sender)].field_768) == 1:
            require sub_1a9fcb9c[address(msg.sender)].field_256 <= 8
            if sub_1a9fcb9c[address(msg.sender)].field_256 == 1:
                sub_1a9fcb9c[address(arg1)].field_768 = 0
                emit 0x5554feec: arg1
}

function sub_d7380ca0(?) {
    if 1 == bool(sub_1a9fcb9c[address(arg1)].field_768):
        if bool(sub_1a9fcb9c[address(msg.sender)].field_768) == 1:
            require sub_1a9fcb9c[address(msg.sender)].field_256 <= 8
            if sub_1a9fcb9c[address(msg.sender)].field_256 == 1:
                require arg2 <= 8
                if arg2 != 1:
                    require arg2 <= 8
                    sub_1a9fcb9c[address(arg1)].field_256 = arg2
                    emit 0x8a019592: arg2, arg1
}

function sub_0778d72d(?) {
    if owner == msg.sender:
        sub_1a9fcb9c[address(arg1)].field_0 = arg2
        sub_1a9fcb9c[address(arg1)].field_256 = 1
        sub_1a9fcb9c[address(arg1)][2][].field_0 = Array(len=arg3.length, data=arg3[all])
        sub_1a9fcb9c[address(arg1)].field_768 = 1
        sub_1a9fcb9c[address(arg1)].field_776 = arg1
        sub_1a9fcb9c[address(arg1)].field_936 = 0
        sub_1a9fcb9c[address(arg1)].field_1024 = arg1
        stor2.length++
        stor2[stor2.length] = arg1
        emit 0x8d93da78: 1, arg1
}

function getUserDetails(address arg1) {
    mem[160] = sub_1a9fcb9c[address(arg1)][2].field_0
    idx = 160
    s = 0
    while sub_1a9fcb9c[address(arg1)][2].length + 128 > idx:
        mem[idx + 32] = sub_1a9fcb9c[address(arg1)][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(sub_1a9fcb9c[address(arg1)][2].length) + 160] = sub_1a9fcb9c[address(arg1)].field_0
    require sub_1a9fcb9c[address(arg1)].field_256 <= 8
    mem[ceil32(sub_1a9fcb9c[address(arg1)][2].length) + 192] = sub_1a9fcb9c[address(arg1)].field_256
    mem[ceil32(sub_1a9fcb9c[address(arg1)][2].length) + 224] = 96
    mem[ceil32(sub_1a9fcb9c[address(arg1)][2].length) + 256] = sub_1a9fcb9c[address(arg1)][2].length
    if sub_1a9fcb9c[address(arg1)][2].length:
        mem[ceil32(sub_1a9fcb9c[address(arg1)][2].length) + 288] = mem[160]
        mem[ceil32(sub_1a9fcb9c[address(arg1)][2].length) + 320 len floor32(sub_1a9fcb9c[address(arg1)][2].length - 1)] = mem[192 len floor32(sub_1a9fcb9c[address(arg1)][2].length - 1)]
    return sub_1a9fcb9c[address(arg1)].field_0, 
           sub_1a9fcb9c[address(arg1)].field_256,
           Array(len=sub_1a9fcb9c[address(arg1)][2].length, data=mem[ceil32(sub_1a9fcb9c[address(arg1)][2].length) + 288 len sub_1a9fcb9c[address(arg1)][2].length])
}

function sub_c068664f(?) {
    if not sub_1a9fcb9c[address(arg1)].field_768:
        if ext_code.size(arg1) <= 1:
            if arg1:
                mem[320 len arg5.length] = arg5[all]
                sub_1a9fcb9c[address(arg1)].field_0 = arg4
                sub_1a9fcb9c[address(arg1)].field_256 = 0
                sub_1a9fcb9c[address(arg1)].field_512 = 0
                sub_1a9fcb9c[address(arg1)].field_512 = (2 * arg5.length) + 1
                s = 0
                idx = 320
                while arg5.length + 320 > idx:
                    sub_1a9fcb9c[address(arg1)][s + 2].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                if sub_1a9fcb9c[address(arg1)][2].length + 31 / 32 > Mask(251, 0, arg5.length + 31) >> 5:
                    stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_1a9fcb9c', 1))) + (Mask(251, 0, arg5.length + 31) >> 5)].field_0 = 0
                    idx = (Mask(251, 0, arg5.length + 31) >> 5) + 1
                    while sub_1a9fcb9c[address(arg1)][2].length + 31 / 32 > idx:
                        sub_1a9fcb9c[address(arg1)][idx + 2].field_0 = 0
                        idx = idx + 1
                        continue 
                sub_1a9fcb9c[address(arg1)].field_768 = 1
                sub_1a9fcb9c[address(arg1)].field_776 = arg2
                sub_1a9fcb9c[address(arg1)].field_936 = 0
                sub_1a9fcb9c[address(arg1)].field_1024 = arg3
                stor2.length++
                stor2[stor2.length] = arg1
                emit 0x8d93da78: 0, arg1
                return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function sub_0d2da3fd(?) {
    mem[128 len arg3.length] = arg3[all]
    if 1 == bool(sub_1a9fcb9c[address(arg1)].field_768):
        if arg1 == msg.sender:
            sub_1a9fcb9c[address(msg.sender)].field_512 = (2 * arg3.length) + 1
            s = 0
            idx = 128
            while arg3.length + 128 > idx:
                sub_1a9fcb9c[address(msg.sender)][s + 2].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            if sub_1a9fcb9c[address(msg.sender)][2].length + 31 / 32 > Mask(251, 0, arg3.length + 31) >> 5:
                stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_1a9fcb9c', 1))) + (Mask(251, 0, arg3.length + 31) >> 5)].field_0 = 0
                idx = (Mask(251, 0, arg3.length + 31) >> 5) + 1
                while sub_1a9fcb9c[address(msg.sender)][2].length + 31 / 32 > idx:
                    sub_1a9fcb9c[address(msg.sender)][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
            sub_1a9fcb9c[address(msg.sender)].field_0 = arg2
            sub_1a9fcb9c[address(msg.sender)].field_776 = arg4
            sub_1a9fcb9c[address(msg.sender)].field_1024 = arg5
            emit 0x1e28ec5e: msg.sender
            emit 0xba2837e1: arg4, msg.sender
            emit 0x512dad2b: arg5, msg.sender
        else:
            require sub_1a9fcb9c[address(msg.sender)].field_256 <= 8
            if sub_1a9fcb9c[address(msg.sender)].field_256 == 1:
                sub_1a9fcb9c[address(msg.sender)].field_512 = (2 * arg3.length) + 1
                s = 0
                idx = 128
                while arg3.length + 128 > idx:
                    sub_1a9fcb9c[address(msg.sender)][s + 2].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                if sub_1a9fcb9c[address(msg.sender)][2].length + 31 / 32 > Mask(251, 0, arg3.length + 31) >> 5:
                    stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_1a9fcb9c', 1))) + (Mask(251, 0, arg3.length + 31) >> 5)].field_0 = 0
                    idx = (Mask(251, 0, arg3.length + 31) >> 5) + 1
                    while sub_1a9fcb9c[address(msg.sender)][2].length + 31 / 32 > idx:
                        sub_1a9fcb9c[address(msg.sender)][idx + 2].field_0 = 0
                        idx = idx + 1
                        continue 
                sub_1a9fcb9c[address(msg.sender)].field_0 = arg2
                sub_1a9fcb9c[address(msg.sender)].field_776 = arg4
                sub_1a9fcb9c[address(msg.sender)].field_1024 = arg5
                emit 0x1e28ec5e: msg.sender
                emit 0xba2837e1: arg4, msg.sender
                emit 0x512dad2b: arg5, msg.sender
}



}
